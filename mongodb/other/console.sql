use insy;

show collections;



// count timezones WRONG
db.countries.find();
db.countries.aggregate([{
    $match: {
        $and: [{
            $expr: {
                $gt: [{$size: "$timezones"}, 5]
            }
        }, {
            $expr: {
                $lt: [{$size: "$timezones"}, 10]
            }
        }]
    }
}, {
    $project: {
        "name": 1,
        "timezones": 1
    }
}, {
    $limit: 1000
}, {
    $out: "output1"
}]);

db.output1.aggregate([{
    $count : "count"
}]);

db.output1.aggregate([{
    $project:{
        "timezoneCount": { $size: "$timezones" }
    }
}]);

db.output1.aggregate([{
    $unwind: "$timezones"
}])

// count countries timezones
db.countries.find();
db.countries.aggregate([{
    $project: {
        _id: 0,
        name: 1,
        timezones: 1,
        region: 1
    }
}, {
    $unwind: "$timezones"
}, {
    $group: {
        _id: "$name",
        region: { $first: "$region" },
        capital: { $first: "capital" },
        currency: { $first: "currency" },
        timezones: {
            $addToSet:"$timezones.gmtOffsetName"
        }
    }
}, {
    $project: {
        "_id": 0,
        "name": "$_id",
        "capital": 1,
        "currency": 1,
        "continent": "$region",
        "timezoneCount": { $size : "$timezones" }
    }
}, {
    $match: {
        "timezoneCount" : { $gt:2 }
    }
}, {
    $limit: 5
}, {
    $sort : { "timezoneCount":1 }
}, {
    $out: "output2"
}]);

// addFields
db.countries.find();
db.countries.aggregate([{
    $addFields: {
        "coordinates": ["$latitude", "$longitude"]
    }
}, {
    $unset: ["latitude", "longitude"]
}]);

// arrays
db.results.insertMany([
    { _id : 1, values : [ 5, 6, 7 ] },
    { _id : 2, values : [ ] },
    { _id : 3, values : [ 3, 8, 9 ] }
]);
db.results.find();
db.results.aggregate([{
    $project : {
        adjustedValues : {
            $map : {
                input : "$values",
                as : "value",
                in : { $add : [ "$$value", 2 ] }
            }
        }
    }
}]);
db.results.aggregate([{
    $project: {
        values: {
            $filter: {
                input: "$values",
                as: "value",
                cond: { $gt:["$$value",3] }
            }
        }
    }
}]);

// replace root
db.countries.find();
db.countries.aggregate([{
    $project: {
        name: 1,
        timezones: 1
    }
}, {
    $unwind: "$timezones"
}, {
    $group: {
        _id: "$_id",
        name: { $first: "$name"},
        timezones: {
            $addToSet: "$timezones.gmtOffsetName"
        }
    }
}, {
    $replaceRoot: {
        newRoot: {
            $mergeObjects: [{"name":"$name"}, {"timezones":"$timezones"}]
        }
    }
}, {
    $match: {
        $expr: { $gt: [{ $size: "$timezones"}, 1 ]}
    }
}]);

