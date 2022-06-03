use insy_og;

// wer war am längsten an der macht?
db.personalities.find()
db.personalities.aggregate([{
    $addFields : {
        regent : {
            $sum : "$events.duration"
        }
    }
},{
    $group : {
        _id : null,
        maxregent : {
            $max :"$regent"
        },
        personalities : {
            $addToSet : {
                name :"$name",
                regent : "$regent"
            }
        }
    }
},{
    $addFields : {
        personalities : {
            $filter : {
                input : "$personalities",
                as :"p",
                cond : {
                    $eq : ["$$p.regent","$maxregent"]
                }
            }
        }
    }
},
{
    $unwind : "$personalities"
},{
    $replaceRoot : {
        newRoot : "$personalities"
    }
}]);

// Zerfetzung
db.matches.aggregate([{
    $addFields : {
        teams : {
            $map: {
                input: "$teams",
                as: "team",
                in: {
                    $mergeObjects: [ "$$team", {
                        goals : {
                            $size : {
                                $filter: {
                                    input: "$$team.events",
                                    as: "event",
                                    cond: {
                                        $eq : ["$$event.eventType", "GOAL"]
                                    }
                                }
                            }
                        },
                        yellow_cards : {
                            $size : {
                                $filter: {
                                    input: "$$team.events",
                                    as: "event",
                                    cond: {
                                        $eq : ["$$event.eventType", "YELLOW_CARD"]
                                    }
                                }
                            }
                        },
                        red_cards : {
                            $size : {
                                $filter: {
                                    input: "$$team.events",
                                    as: "event",
                                    cond: {
                                        $eq : ["$$event.eventType", "RED_CARD"]
                                    }
                                }
                            }
                        }
                    } ]
                }
            }
        }
    }
}, {
    $addFields : {
        teams : {
            $map: {
                input: "$teams",
                as: "team",
                in: {
                	$mergeObjects: [ "$$team", {
                	    enemy : {
                	        $filter: {
                	            input: "$teams",
                	            as: "fteam",
                	            cond: {
                	            	$ne : ["$$fteam.teamType", "$$team.teamType"]
                	            }
                	        }
                	    }
                	} ]
                }
            }
        }
    }
}, {
    $addFields : {
        teams : {
            $map: {
                input: "$teams",
                as: "team",
                in: {
                	$mergeObjects: [ "$$team", {
                	    stadium : "$venue.name"
                	} ]
                }
            }
        }
    }
}, {
    $unwind : "$teams"
}, {
    $unwind : "$teams.enemy"
}, {
    $addFields : {
        "teams.enemy" : "$teams.enemy.name"
    }
}, {
    $group: {
        _id: "$teams.name",
        passes : {
            $sum : "$teams.passes"
        },
        fouls : {
            $sum : "$teams.fouls"
        },
        goals : {
            $sum : "$teams.goals"
        },
        yellow_cards : {
            $sum : "$teams.yellow_cards"
        },
        red_cards : {
            $sum : "$teams.red_cards"
        },
        enemies : {
            $addToSet : "$teams.enemy"
        },
        stadiums : {
            $addToSet : "$teams.stadium"
        }
    }
}, {
    $lookup: {
        from: "matches",
        let: {
            name : "$_id"
        },
        pipeline: [{
                    $addFields : {
                teams : {
                    $map: {
                        input: "$teams",
                        as: "team",
                        in: {
                            $mergeObjects: ["$$team", {
                                goals : {
                                    $filter: {
                                        input: "$$team.events",
                                        as: "event",
                                        cond: {
                                            $eq : ["$$event.eventType", "GOAL"]
                                        }
                                    }
                                }
                            } ]
                        }
                    }
                }
            }
            }, {
                $unwind : "$teams"
            }, {
                $addFields : {
                    "teams.goals" : {
                        $map: {
                            input: "$teams.goals",
                            as: "goal",
                            in: {
                                $mergeObjects: [ "$$goal", {
                                    team : "$teams.name"
                                } ]
                            }
                        }
                    }
                }
            }, {
                $unwind : "$teams.goals"
            }, {
                $replaceRoot: {
                    newRoot: "$teams.goals"
                }
            }, {
                $group: {
                    _id: {
                        player : "$player",
                        team : "$team"
                    },
                    goals : {
                        $sum : 1
                    }
                }
            }, {
                $addFields : {
                    "_id.goals" : "$goals"
                }
            }, {
                $replaceRoot: {
                    newRoot: "$_id"
                }
        }],
        as: "players"
    }
}, {
    $addFields : {
        players : {
            $filter: {
                input: "$players",
                as: "player",
                cond: {
                	$eq : ["$$player.team", "$_id"]
                }
            }
        }
    }
}, {
    $addFields : {
        maxgoals : {
            $max : "$players.goals"
        }
    }
}, {
    $addFields : {
        players : {
            $filter: {
                input: "$players",
                as: "player",
                cond: {
                	$eq : ["$$player.goals", "$maxgoals"]
                }
            }
        }
    }
}, {
    $unset : ["players.goals", "players.team"]
}])