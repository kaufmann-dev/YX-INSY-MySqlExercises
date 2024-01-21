-- ---------------------------------------------------------------------------- --
--   BOOKS
-- ---------------------------------------------------------------------------- --
INSERT INTO BOOKS (BOOK_ID, TITLE, IMAGE_URL) VALUES (1, 'Flight from the dark', 'images/flight/title.jpg');

-- ---------------------------------------------------------------------------- --
--   AUTHORS
-- ---------------------------------------------------------------------------- --
INSERT INTO AUTHORS (AUTHOR_ID, FIRST_NAME, LAST_NAME)
VALUES (1, 'Joe', 'Dever');
INSERT INTO AUTHORS (AUTHOR_ID, FIRST_NAME, LAST_NAME)
VALUES (2, 'Gary', 'Chalk');

-- ---------------------------------------------------------------------------- --
--   PB_BOOK_HAS_AUTHORS_JT
-- ---------------------------------------------------------------------------- --
INSERT INTO BOOK_HAS_AUTHORS_JT (BOOK_ID, AUTHOR_ID, OCCUPATION_TYPE)
VALUES (1, 1, 'AUTHOR');
INSERT INTO BOOK_HAS_AUTHORS_JT (BOOK_ID, AUTHOR_ID, OCCUPATION_TYPE)
VALUES (1, 2, 'ILLUSTRATOR');

-- ---------------------------------------------------------------------------- --
--   PLAYER_LEVELS
-- ---------------------------------------------------------------------------- --
INSERT INTO PLAYER_LEVELS (PLAYER_LEVEL, ABILITY_COUNT, IMAGE_URL)
VALUES ('INITIATE', 5, 'images/flight/player-levels/initiate.png');
INSERT INTO PLAYER_LEVELS (PLAYER_LEVEL, ABILITY_COUNT, IMAGE_URL)
VALUES ('ASPIRANT', 6, 'images/flight/player-levels/aspirant.png');
INSERT INTO PLAYER_LEVELS (PLAYER_LEVEL, ABILITY_COUNT, IMAGE_URL)
VALUES ('GUARDIAN', 7, 'images/flight/player-levels/guardian.png');
INSERT INTO PLAYER_LEVELS (PLAYER_LEVEL, ABILITY_COUNT, IMAGE_URL)
VALUES ('WARMARN', 8, 'images/flight/player-levels/warmarn.png');
INSERT INTO PLAYER_LEVELS (PLAYER_LEVEL, ABILITY_COUNT, IMAGE_URL)
VALUES ('SAVANT', 9, 'images/flight/player-levels/savant.png');
INSERT INTO PLAYER_LEVELS (PLAYER_LEVEL, ABILITY_COUNT, IMAGE_URL)
VALUES ('MASTER', 10, 'images/flight/player-levels/master.png');

-- ---------------------------------------------------------------------------- --
--   ABILITIES
-- ---------------------------------------------------------------------------- --
INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('CAMOUFLAGE', 'This Discipline enables a Kai Lord to blend in with his surroundings. In the countryside, he can
hide undetected among trees and rocks and pass close to an enemy without being seen. In a town or city, it enables him to
look and sound like a native of that area, and can help him to find shelter or a safe hiding place.',
        'images/flight/abilities/camouflage.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('HUNTING', 'This skill ensures that a Kai Lord will never starve in the wild. He will always be able to hunt for
food for himself except in areas of wasteland and desert. The skill also enables a Kai Lord to be able to move stealthily
when stalking his prey.', 'images/flight/abilities/hunting.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('SIXTH_SENSE', 'This skill may warn a Kai Lord of imminent danger. It may also reveal the true purpose of a stranger or strange object encountered in your adventure.', 'images/flight/abilities/sixthsense.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('TRACKING', 'This skill enables a Kai Lord to make the correct choice of a path in the wild, to discover the
location of a person or object in a town or city and to read the secrets of footprints or tracks.', 'images/flight/abilities/tracking.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('HEALING', 'This Discipline can be used to restore ENDURANCE points lost in combat. If you possess this skill you
may restore 1 ENDURANCE point to your total for every numbered section of the book you pass through in which you are involved in combat. (This is only to be used after your ENDURANCE has fallen below its original level.) Remember that your ENDURANCE cannot rise above its original level.', 'images/flight/abilities/healing.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('WEAPONSKILL', 'Upon entering the Kai Monastery, each initiate is taught to master one type of weapon. If Weaponskill is to be one of your Kai Disciplines, pick a number in the usual way from the Random Number Table, and then find the corresponding weapon from the list below. This is the weapon in which you have skill. When you enter combat carrying this weapon, you add 2 points to your COMBAT SKILL.', 'images/flight/abilities/weaponskill.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('MINDSHIELD', 'The Darklords and many of the evil creatures in their command have the ability to attack you using their Mindforce. The Kai Discipline of Mindshield prevents you from losing any ENDURANCE points when subjected to this form of attack.', 'images/flight/abilities/mindshield.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('MINDBLAST', 'This enables a Kai Lord to attack an enemy using the force of his mind. It can be used at the same time as normal combat weapons and adds two extra points to your COMBAT SKILL. Not all the creatures encountered on this adventure will be harmed by Mindblast. You will be told if a creature is immune.', 'images/flight/abilities/mindblast.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('ANIMAL_KINSHIP', 'This skill enables a Kai Lord to communicate with some animals and to be able to guess the intentions of others.', 'images/flight/abilities/animalkinship.png');

INSERT INTO ABILITIES (ABILITY_TYPE, DESCRIPTION, IMAGE_URL)
VALUES ('MIND_OVER_MATTER', 'Mastery of this Discipline enables a Kai Lord to move small objects with his powers of concentration.', 'images/flight/abilities/mindovermatter.png');


-- ---------------------------------------------------------------------------- --
--   REGIONS_BT
-- ---------------------------------------------------------------------------- --
INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (1, 'Magnamund', 'CONTINENT', null,'Originally Magnamund comprised one land mass. During the Age of Chaos, when Naar sought to destroy the wise dragon Nyxator, Magnamund was torn asunder, and the Tentarias strait split the land into the two continents of Northern Magnamund and Southern Magnamund. There are many notable geographic features on Magnamund. Features of other worlds and places can also be found here. The northwestern quarter of Northern Magnamund is the Darklands, a hellish wasteland ruled by the Darklords. It is in this terrible land that the Darklords create their armies and breed creatures of darkness. The northeastern quarter of Northern Magnamund is the Lastlands, giving rise to the human nations of Sommerlund and Durenor. It is against these bastions of hope that the full might of the Darklords is directed, for if Sommerlund and Durenor should fall, the rest of Magnamund would fall in their wake. The eastern third of Southern Magnamund is characterized by the Sadi desert and the Shadakine Empire. The tyrannical Shadakine Empire arose under the rulership of Shasarak the Wytch-king to conquer the free states of the south.','images/flight/regions/magnamund.png');
INSERT INTO AREAS (REGION_ID) VALUES (1);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (2, 'Sommerlund', 'KINGDOM', 1, 'The country is situated on the Northern continent of Magnamund in the Northeastern corner. It is a sunlit land of verdant hills, deep forests and rich farmland. Its principal cities are Holmgard, Toran, Anskaven, Tyso, and Ruanon. It has been the Darklords bane since the time of King Kian.','images/flight/regions/sommerlund.png');
INSERT INTO AREAS (REGION_ID) VALUES (2);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (3, 'Kai Monastary', 'BUILDING', 2, 'Kai Monastery is spiritual home and training ground of the Order of the Kai. The Tower of the Sun is the tallest tower in the Monastery. It contains the Lore Halls, the Kai Masters Hall and the Grandmasters Hall. The Kai Masters Hall is a chamber in the Tower of the Sun, positioned above the Lore Hall of the Spirit and below the Grandmasters Hall. It contains a plain, wooden throne and green pillars. The Grandmasters Hall is located in the topmost part of the Tower of the Sun. The order was founded in MS 3810 by a Baron of Sommerlund who later renamed himself Sun Eagle. He set out on a quest to find all the Lorestones of Nyxator and cultivate his inner talents, to the point where he became a Kai, with many superhuman abilities in fighting, his senses, and the ability to cure himself and others. He founded his monastery at the northwestern corner of Sommerlund near the Durcrag Mountains.
During their long history, the First Order was renowned for their defense of Sommerlund, a vastly smaller country against the Darklords vaste hordes. During their time, it became almost a cyclical event of the Darklords attack and their repulsion from Sommerlund, thanks to the Kai. During Darklord Zagarnas war, the first order of the Kai was wiped out. And even after Lone Wolf successfully killed Archlord Zagarna and helped eject his armies from his country, he did not have time to attend to the creation of a new order. While Lone Wolf was sent to defeat the Deathlord of Ixia, other troubles were stirring far away in Sommerlund.','images/flight/regions/kaimonastary.png');
INSERT INTO POINTS_OF_INTEREST VALUES (3);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (4, 'Sommerlund Woodlands', 'WOODS', 2, 'Deep Woods near the Kai Monastary','images/flight/regions/sommerlundwoodlands.png');
INSERT INTO AREAS (REGION_ID) VALUES (4);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (5, 'Holmgard', 'CITY', 2, 'Holmgard is the capital of Sommerlund and is a seaport on the Holmgulf. It is located near the Graveyard of the Ancients. The city is enclosed by grey-white walls two hundred feet in height whose gatehouses are 100 yards long. At the center of the city is the Citadel of the King.','images/flight/regions/holmguard.png');
INSERT INTO AREAS (REGION_ID) VALUES (5);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (6, 'Kings Citadel', 'CITADEL', 5, 'The Kings Citadel is the highest law enforcement and paramilitary organization in Holmgard.','images/flight/regions/holmguardcitadel.png');
INSERT INTO POINTS_OF_INTEREST VALUES (6);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (7, 'River Valley', 'RIVER_VALLEY', 4, 'River Valley','images/flight/regions/sommerlundrivervalley.png');
INSERT INTO POINTS_OF_INTEREST VALUES (7);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (8, 'River Bridge', 'BRIDGE', 4, 'Wooden bridge in the Summerlund Woodlands.','images/flight/regions/woodenbridge.png');
INSERT INTO POINTS_OF_INTEREST VALUES (8);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (9, 'Graveyard of the Ancients', 'GRAVEYARD', 4, 'The Graveyard of the Ancients is an ancient, mist-shrouded graveyard just North of Holmgard. This place is taboo because of the nameless horrors that inhabit it. No one knows who lies in eternal unrest here but the Evil that "lives" there is more ancient than the Darklords.','images/flight/regions/graveyardofancients.png');
INSERT INTO POINTS_OF_INTEREST VALUES (9);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (10, 'Treehouse', 'WOOD_BUILDING', 4, 'Looking up through the massive branches you can see a large treehouse some twhety-five feet above teh ground. There is no ladder, but the ganreld bark of teh tree offers many footholds.','images/flight/regions/treehouse.png');
INSERT INTO POINTS_OF_INTEREST VALUES (10);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (11, 'Stoneclearing', 'PLACES_OF_WORSHIP', 4, 'Your reach the top of a small wooded hill on which several large boulders form a rough circle.','images/flight/regions/stoneclearing.png');
INSERT INTO POINTS_OF_INTEREST VALUES (11);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (12, 'Clearing', 'CLEARING', 4, 'You pass through a long, dark tunnel of voerhanging branches that eventually opens out into a large clearing.','images/flight/regions/clearing.png');
INSERT INTO POINTS_OF_INTEREST VALUES (12);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (13, 'Main Road', 'ROAD', 4, 'The Main Road is the main passage between the port of Toran in the north and the capital in the south.','images/flight/regions/sommerlundmainroad.png');
INSERT INTO AREAS (REGION_ID) VALUES (13);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (14, 'Silvermoon Lake', 'LAKE', 4, 'The Silvermoon Lake is a ...','images/flight/regions/silvermoonlake.png');
INSERT INTO AREAS (REGION_ID) VALUES (14);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (15, 'Village', 'VILLAGE', 4, 'A small Village in the middle of the Summerlund Woodland.','images/flight/regions/sommerlundvillage.png');
INSERT INTO AREAS (REGION_ID) VALUES (15);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (16, 'Boat Crossing', 'CITY_OUTSKIRTS', 5, 'The outer fildworks of the city can now be seen.','images/flight/regions/holmguardoutskirts.png');
INSERT INTO AREAS (REGION_ID) VALUES (16);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (17, 'Holmgard Robbers Lane', 'CITY', 5, 'The Homgard Robbers Lane is...','images/flight/regions/holmguardupperlane.png');
INSERT INTO POINTS_OF_INTEREST VALUES (17);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (18, 'Inner Courtyard', 'STONE_BUILDING', 5, 'The inner courtyard is a bustle of activity. Cavalry scouts are waiting beside their nervous horses for messages from their unit commanders inside the  Great Hall. They  take orders with great speed to the defenders of the outer fieldworks.','images/flight/regions/stonebuilding.png');
INSERT INTO POINTS_OF_INTEREST VALUES (18);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (19, 'Wafford Clearing', 'CLEARING', 4, 'You soon reach a small clearing in the woods.','images/flight/regions/waffordclearing.png');
INSERT INTO POINTS_OF_INTEREST VALUES (19);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (20, 'Cave', 'CAVE', 13, 'The floor of the cave is quite dry and dusty. As you explore deeper in the half-light, you detect the stale odour of rotting flesh.','images/flight/regions/cave.png');
INSERT INTO POINTS_OF_INTEREST VALUES (20);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (21, 'Old Watch Tower', 'WOOD_BUILDING', 4, 'The old Watchtower is ...','images/flight/regions/ruinwatchtower.png');
INSERT INTO POINTS_OF_INTEREST VALUES (21);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (22, 'Dragon Bridge', 'BRIDGE', 13, 'The Dragon Bridge connects the northern and southern part of Summerlund.','images/flight/regions/dragonbridge.png');
INSERT INTO POINTS_OF_INTEREST VALUES (22);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (23, 'Holmgard - City Outscirts', 'CITY_OUTSKIRTS', 5, 'You climb the wooded bank of the river and see the log walls of the fieldworks disappeiring into the distance. The log wall ahead of you has collapsed in several places.','images/flight/regions/holmguardoutskirts.png');
INSERT INTO AREAS VALUES (23);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (24, 'Ruins of Raumas', 'TEMPLE_RUIN', 4, 'Edging nearer, you soon make out a clearing that you recognize to be the site of the ruins of Raumas.','images/flight/regions/runinsofraumas.png');
INSERT INTO AREAS VALUES (24);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (25, 'Great Hall', 'STONE_BUILDING', 5, 'The Great Hall is','images/flight/regions/greathall.png');
INSERT INTO POINTS_OF_INTEREST VALUES (25);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (26, 'Fogwood', 'VILLAGE',4 , 'A little path through the wood leads to Gogwood, a small cluster of huts that have beein used by a family of charcoal burnder for nearly fifty years.','images/flight/regions/fogwood.png');
INSERT INTO POINTS_OF_INTEREST VALUES (26);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (27, 'Riverbank', 'RIVER_BANK',23 , 'Peering over the steep undercut of the riverbank, you can see a tanble of driftwood along the waters edge.','images/flight/regions/riverbank.png');
INSERT INTO POINTS_OF_INTEREST VALUES (27);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (28, 'Darkstone Temple', 'EVIL_TEMPLE', 4, 'It was only by an unlucky chance you discovered teh secret temple of a sect of evil druids','images/flight/regions/darkstonetemple.png');
INSERT INTO POINTS_OF_INTEREST VALUES (28);

INSERT INTO REGIONS_BT (REGION_ID, NAME, REGION_TYPE, AREA_ID, DESCRIPTION, IMAGE_URL)
VALUES (29, 'Yellow Marsh', 'MARSH', 4, 'You soon realize that you are walking deeper into a wooded marsh.','images/flight/regions/yellowmarch.png');
INSERT INTO POINTS_OF_INTEREST VALUES (29);


-- ---------------------------------------------------------------------------- --
--   ITEMS_ST
-- ---------------------------------------------------------------------------- --
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (1, 'Dagger', 'Dagger', 'WEAPON', 'SMALL', 'images/flight/items/dagger.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (2, 'Spear', 'Spear', 'WEAPON', 'MEDIUM', 'images/flight/items/spear.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (3, 'Mace', 'Mace', 'WEAPON', 'MEDIUM', 'images/flight/items/mace.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (4, 'Short Sword', 'Short Sword', 'WEAPON', 'MEDIUM', 'images/flight/items/shortsword.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (5, 'Warhammer', 'Warhammer', 'WEAPON', 'HEAVY', 'images/flight/items/warhammer.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (6, 'Sword', 'Sword', 'WEAPON', 'MEDIUM', 'images/flight/items/sword.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (7, 'Axe', 'Axe', 'WEAPON', 'HEAVY', 'images/flight/items/axe.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (8, 'Quarterstaff', 'Quarterstaff', 'WEAPON', 'SMALL', 'images/flight/items/quarterstaff.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (9, 'Broadsword', 'Broadsword', 'WEAPON', 'MEDIUM', 'images/flight/items/broadsword.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (11, 'Vordak Gem', 'Vordak Gem', 'MAGICAL_ITEM', 'SMALL','images/flight/items/vordakgem.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (12, 'Backpack', 'Backpack', 'BACK_PACK', 'SMALL', 'images/flight/items/backpack.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (13, 'Golden Key', 'Golden Key', 'KEY', 'SMALL', 'images/flight/items/goldenkey.png');


-- ---------------------------------------------------------------------------- --
--   RULE_SECTIONS
-- ---------------------------------------------------------------------------- --
SET FOREIGN_KEY_CHECKS=0;

INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (1, 1, 'You are Lone Wolf. In a devastating attack the Darklords have destroyed the monastery where you were learning the skills of the Kai Lords. You are the sole survivor. In Flight from the Dark, you swear revenge. But first you must reach Holmgard to warn the King of the gathering evil. Relentlessly the servants of darkness hunt you across your country and every turn of the page presents a new challenge. Choose your skills and your weapons carefully—for they can help you succeed in the most fantastic and terrifying journey of your life.');
INSERT INTO RULE_SECTIONS (SECTION_ID, SECTION_TYPE)
VALUES (1, 'TITLE_PAGE');

INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (2, 1, '<p>In the northern land of Sommerlund, it has been the custom for many centuries to send the children of the Warrior Lords to the monastery of Kai. There they are taught the skills and disciplines of their noble fathers.The Kai monks are masters of their art, and the children in their charge love and respect them in spite of the hardships of their training. For one day when they have finally learnt the secret skills of the Kai, they will return to their homes equipped in mind and body to defend themselves against the constant threat of war from the Darklords of the west.</p> <p>In olden times, during the Age of the Black Moon, the Darklords waged war on Sommerlund. The conflict was a long and bitter trial of strength that ended in victory for the Sommlending at the great battle of Maakengorge. King Ulnar and the allies of Durenor broke the Darkland armies at the pass of Moytura and forced them back into the bottomless abyss of Maakengorge. Vashna, mightiest of the Darklords, was slain upon the sword of King Ulnar, called Sommerswerd, the sword of the sun. Since that age, the Darklords have vowed vengeance upon Sommerlund and the House of Ulnar.</p> <p>Now it is in the morning of the feast of Fehmarn, when all of the Kai Lords are present at the monastery for the celebrations. Suddenly a great black cloud comes from out of the western skies. So many are the numbers of the black-winged beasts that fill the sky, that the sun is completely hidden. The Darklords, ancient enemy of the Sommlending, are attacking. War has begun. On this fateful morning, you, Silent Wolf (the name given to you by the Kai) have been sent to collect firewood in the forest as a punishment for your inattention in class. As you are preparing to return, you see to your horror a vast cloud of black leathery creatures swoop down and engulf the monastery. Dropping the wood, you race to the battle that has already begun. But in the unnatural dark, you stumble and strike your head on a low tree branch. As you lose consciousness, the last thing that you see in the poor light is the walls of the monastery crashing to the ground.</p> <p>Many hours pass before you awake. With tears in your eyes you now survey the scene of destruction. Raising your face to the clear sky, you swear vengeance on the Darklords for the massacre of the Kai warriors, and with a sudden flash of realization you know what you must do. You must set off on a perilous journey to the capital city to warn the King of the terrible threat that now faces his people. For you are now the last of the Kai—you are now the Lone Wolf.</p>');
INSERT INTO RULE_SECTIONS (SECTION_ID, SECTION_TYPE)
VALUES (2, 'THE_STORY_SO_FAR');

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 1
-- ---------------------------------------------------------------------------- --
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (3, 1, 'You must make haste for you sense it is not safe to linger by the smoking remain of the ruined monastery. The black-winged beasts could return at any moment. You must set out for the Sommlending capital of Holmgard and tell the King the terrible news of the massacre: that the whole elite of Kai warriors, save yourself, have been slaughtered. Without the Kai Lords to lead her armies, Sommerlund will be at the mercy of their ancient enemy, the Darklords. Fighting back tears, you bid farewell to your dead kinsmen. Silently, you promise that their deaths will be avenged. You turn away from the ruins and carefully descend the steep track. At the foot of the hill, the path splits into two directions, both leading into a large wood.');
INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (3, 1, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (1, 3, 144, 'If you wish to use your Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (1, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (2, 3, 88, 'If you wish to take the right path into the wood, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (2);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (3, 3, 279, 'If you wish to follow the left track, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (3);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 2
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (4, 1, 'As you dash through the thickening trees, the shouts of the Giaks begin to fade behind you. You have nearly outdistanced them completely, when you crash headlong into a tangle of low branches.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (4, 2, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (4, 4, 347, 'If you have picked a number 0–4, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (4, 0, 4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (5, 4, 280, 'If you have picked a number 5-9, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (5, 5, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 3
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (5, 1, 'Staying close to the officer, you follow him through an arched portal and up a short flight of stairs to a long hall. Soldiers run back and forth bearing orders on ornate scrolls to officers stationed around the city wall. A haggard and scar-faced man dressed in the white and purple robes of the King’s court approaches you and bids you follow him to the citadel.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (5, 3, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (6, 5, 200, 'If you wish to follow this man, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (6);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (7, 5, 147,'If you wish to decline his offer and return to the crowded streets, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (7);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 4
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (6, 1, 'It is a small one-man canoe in very poor condition. The wood has split and warped, and the craft appears to be leaking in several places. You quickly patch up the worst of the holes with some clay and bail out the water. This seems to stop the leaking for the moment. Stowing your equipment at the bow, you set off downstream, using a piece of driftwood as a paddle. After a short while, you hear the sound of horses galloping towards you along the left bank.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (6, 4, 7);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (8, 6, 222,'If you wish to use the Kai Discipline of Sixth Sense, turn to ');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (8, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (9, 6, 78, 'If you wish to hide in the bottom of the canoe, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (9);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (10, 6, 179, 'If you wish to try to attract their attention, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (10);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 5
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (7, 1, 'After about an hour of walking, the track slowly bears round to the east. You reach a shallow ford where a fast-flowing brook runs on a steep rocky course towards the south. Just beyond the ford is a junction where the track meets a wider path running north to south. Realizing that the north path will take you away from the capital, you turn right at the junction and head south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (7, 5, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (11, 7, 113, 'Turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (11);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 6
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (8, 1, 'In the distance you can hear the sound of horses galloping nearer. You crouch behind a tree and wait as the riders come closer. They are the cavalry of the King’s Guard wearing the white uniforms of His Majesty’s army.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (8, 6, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (12, 8, 187, 'If you wish to call them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (12);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (13, 8, 204, 'If you wish to let them pass and then continue on your way through the forest, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (13);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 7
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (9, 1, 'For what seems an eternity, the rush of the crowd carries you along like a leaf on a fast-flowing stream. You desperately fight to stay on your feet, but you feel weak and dizzy from your ordeal, and your legs are as heavy as lead. Suddenly, you catch a glimpse of a long, narrow stone stairway that leads up to the roof of an inn. Gathering the last reserves of your strength, you dive for the stairs and climb slowly up to the top. From here you can see the magnificent view of the rooftops and spires of Holmgard, with the high stone walls of the citadel gleaming in the sun. The houses and buildings of the capital are built very close to each other, and it is possible to jump from one roof to the next. In fact many of the citizens of Holmgard used to use the Roofways (as they are known) when the heavy autumn rains made the unpaved parts of the streets too muddy for walking. But after many accidents, a royal decree forbade their use. After careful thought, you decide to use the Roofways, as they are your only chance of reaching the King. You have hopped, skipped, and jumped across several streets and you are only one street away from the citadel when you come to the end of a row of rooftops. The jump to the next row is much further than anything you have tried before, and your stomach begins to feel as if it were full of butterflies. Determined to reach the citadel, you turn and take a long run-up to the jump. With blood pounding in your ears, you sprint to the edge of the roof and leap into space, your eyes fixed on the opposite rooftop. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (9, 7, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (14, 9, 110,'If you have picked a number that is 0–2, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (14, 0, 2);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (15, 9, 27, 'If the number is 3–9, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (15, 3, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 8
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (10, 1, 'Your Kai Sixth Sense warns there is a fierce battle raging in the south. Your common sense tells you that the south is also the quickest route to the capital.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (10, 8, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (16, 10, 73, 'Turn to 70 and choose your route. ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (16);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 9
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (11, 1, 'You cannot move: you are being held rigid by some powerful force. Your eyes are drawn towards the mouth of the skeleton. From deep in the earth you hear a low humming, like the sound of millions of angry bees. A dull red glow appears in the empty eye sockets of the dead King and the humming increases until your ears are filled with the deafening roar. You are in the presence of an ancient evil, far older and stronger than the Darklords themselves.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (11, 9, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (17, 11, 240, 'If you possess a Vordak Gem, turn to ');
INSERT INTO ITEM_OUTCOMES (OUTCOME_ID, ITEM_ID)
VALUES (17, 11);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (18, 11, 296, 'If you do not, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (18);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 10
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (12, 1, 'You are sweating and your legs ache. In the middle distance you can see a group of cottages.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (12, 10, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (19, 12, 117, 'If you wish to enter a cottage and rest for a while, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (19);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (20, 12, 86, 'If you wish to press on, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (20);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 11
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (13, 1, 'You quickly dodge into the doorway of a stable and hide your surgeon’s cloak in the straw, for it would be better to be seen as a Kai Lord than as a charlatan. Without wasting a second, you set off towards the Great Hall on the other side of the courtyard.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (13, 11, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (21, 13, 142, 'Turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (21);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 12
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (14, 1, 'The bodyguard looks at you with great suspicion and then slams the door shut. You can hear the sound of voices inside the caravan. Suddenly the door swings open and the face of a wealthy merchant appears. He demands 10 Gold Crowns as payment for the ride.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (14, 12, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (22, 14, 266, 'If you have 10 Gold Crowns and wish to pay him, turn to ');
INSERT INTO GOLD_OUTCOMES (OUTCOME_ID, AMOUNT)
VALUES (22, -10);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (23, 14, 251, 'If you do not have enough Gold Crowns or do not wish to pay him, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (23);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 13
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (15, 1, 'The path soon ends at a large clearing. In the centre of the clearing is a tree much taller and wider than any other you have seen in the forest. Looking up through the massive branches you can see a large treehouse some twenty-five to thirty feet above the ground. There is no ladder, but the gnarled bark of the tree offers many footholds.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (15, 13, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (24, 15, 311, 'If you wish to climb the tree and search the treehouse, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (24);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (25, 15, 217, 'If you would rather press on, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (25);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 14
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (16, 1, 'You reach the top of a small wooded hill on which several large boulders form a rough circle. Suddenly you hear a loud growl from behind a rock to your left.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (16, 14, 11);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (26, 16, 45, 'If you wish to draw your weapon and prepare to fight, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (26);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (27, 16, 108, 'If you would rather take evasive action by running as fast as you can over the hill, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (27);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 15
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (17, 1, 'You pass through a long, dark tunnel of overhanging branche that eventually opens out into a large clearing. On a stone plinth in the centre of the clearing is a Sword, sheathed in a black leather scabbard. A handwritten note has been tied to the hilt, but it is in a language which is foreign to you. You may take the Sword if you wish, and note it on your Action Chart. There are three exits from the clearing.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (17, 15, 12);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (28, 17, 211, 'If you decide to go east, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (28);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (29, 17, 205, 'If you decide to go west, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (29);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (30, 17, 37, 'If you decide to go south, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (30);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 16
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (18, 1, 'You manage to free a horse from the straps securing it to the caravan. It is frightened by the scent of the approaching Doomwolves, and the cries of their evil riders—the Giaks. Preparing your weapon, you spur your skittish horse towards the oncoming beasts. They are less than fifty yards away and they are lowering their lances at you as they get nearer and nearer.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (18, 16, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (31, 18, 196, 'You are charging head-on towards each other. Turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (31);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 17
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (19, 1,
        'You raise your weapon to strike at the beast as its razor-fanged mouth snaps shut just inches from your head. Buffeted by the beating of its wings you find it difficult to stand. Deduct 1 point from your COMBAT SKILL and fight the Kraan. If you kill the creature, you quickly descend the far side of the hill to avoid the Giaks. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (19, 17, 4);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (1, 'Kraan', 16, 24, 'images/flight/creatures/kraan.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (1, 19, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (1, 1);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (32, 19, 55, 'If you pick 0, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (32, 0, 0);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (33, 19, 278,'If you pick 1–2, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (33, 1, 2);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (34, 19, 320, 'If you pick 3–9, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (34, 3, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 18
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (20, 1, 'You are awoken by the sound of troops in the distance. Across the lake you see the black-cloaked figures of Drakkarim and a pack of Doomwolves and their riders. A Kraan appears from above the trees and lands on the roof of the small wooden shack. It is ridden by a creature dressed in red. The Kraan takes off and begins to fly across the lake to where you are hidden.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (20, 18, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (35, 20, 116, 'If you wish to use the Kai Discipline of Camouflage, turn to ');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (35, 'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (36, 20, 243, 'If you wish to ride deeper in the forest, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (36);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (37, 20, 31, 'If you wish to fight the creature, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (37);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 19
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (21, 1, 'Just ahead through the tall trees you can see clumps of dark-red gallowbrush, a thorny briar with sharp crimson barbs. The common name for this forest weed is Sleeptooth, for the thorns are very sharp and can make you feel weak and sleepy if they scratch your skin.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (21, 19, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (38, 21, 72, 'If you have the Kai Discipline of Tracking, turn to ');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (38, 'TRACKING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (39, 21, 276,'You can avoid the Sleeptooth by returning to the track. Turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (39);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (40, 21, 121, 'Or you can push on through the briars, deeper into the forest, by turning to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (40);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 20
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (22, 1, 'It seems that whoever lived here left in a great hurry—and they must have left quite recently. A half-eaten meal still remains on the table, and a mug of dark jala is still warm to the touch. Searching a chest and small wardrobe, you find a Backpack, food (enough for two Meals), and a Dagger. If you wish to take these items, remember to mark them on your Action Chart. You continue your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (22, 20, 15);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (2, 22, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (2, 1);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (2);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (3, 22, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (3, 12);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (3);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (41, 22, 277, 'Turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (41);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 21
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (23, 1, 'You have ridden about two miles into the tangle of trees when the ground becomes very marshy. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (23, 21, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (42, 23, 193, 'If the number is 6 or below, you manage to steer clear of the morass and may now turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (42, 0, 6);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (43, 23, 316, 'If the number is 7 or 8 you are stuck. The mud engulfs you up to your armpits. Your horse gives one last despairing scream as its muzzle disappears into the bubbling mud. ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (43, 7, 8);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (44, 23, -1, 'the foul-smelling bog sucks you under and claims another victim. Your life and your mission end here.');
INSERT INTO MISSION_FAILED_OUTCOMES (OUTCOME_ID)
VALUES (44);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 22
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (24, 1, 'Knocking aside the leader, you sprint off along the highway. Then behind you the ominous click of a crossbow being cocked sends a shiver down your spine. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (24, 22, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (45, 24, 185, 'If you have picked a number 0–4, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (45, 0, 4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (46, 24, 148, 'If you have picked a number 5–9, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (46, 5, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 23
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (25, 1, 'The corridor soon widens into a large hall. At the far end, a stone staircase leads up to a huge door. Two black candles on either side of the stone steps dimly illuminate the chamber. You notice that no wax has melted, and as you get nearer you can feel that they give off no heat. Ancient engravings cover the stone surfaces of the walls. Anxious to leave this evil tomb, you examine the door for a latch. An ornate pin appears to lock the door, but there is also a keyhole in the lockplate.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (25, 23, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (47, 25, 330, 'If you have a Golden Key and wish to use it, turn to ');
INSERT INTO ITEM_OUTCOMES (OUTCOME_ID, ITEM_ID)
VALUES (47, 13);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (48, 25, 154, 'If you have the Kai Discipline of Mind Over Matter, turn to ');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (48, 'MIND_OVER_MATTER');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (49, 25, 341, 'If you wish to remove the pin, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (49);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 24
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (26, 1, 'The merchant shouts to the driver of the caravan to jump. ‘We’re under attack!’ he cries, disappearing through a circular window.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (26, 24, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (50, 26, 238, 'If you decide to jump after him, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (50);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (51, 26, 188, 'If you decide to run through the caravan and grab the reins of the horse team, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (51);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 25
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (27, 1, 'You land with such a crash on the opposite roof, that the wind is knocked out of you and you lie flat on your back with your head in a spin. It takes a minute or so for you to realize that you’ve made it and are perfectly safe. When you are sure you are all right, you jump up and let out a shout for joy at your skill and daring. Quickly you find a way across the roof and climb down a long drainpipe to the street below. You see the large iron doors of the citadel open, and a wagon drawn by two large horses tries to leave. The horses are frightened by the noisy crowd and they both rear up, causing the wagon to smash a front wheel against the door. In the confusion, you see a chance to enter and quickly slip inside just as the guards slam the doors shut.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (27, 25, 17);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (52, 27, 142, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (52);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 26
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (28, 1, 'Cautiously, you move along the corridor until you come to a sharp eastward turn. A strange greenish light can be seen in the distance.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (28, 26, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (53, 28, 253, 'If you wish to continue, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (53);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (54, 28, 102, 'If you wish to go back and try the southern route, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (54);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 27
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (29, 1, 'You walk along this path for over an hour, carefully watching the sky above you in case the Kraan attack again. Up ahead, a large tree has fallen across the path. As you approach you can hear voices coming from the other side of the massive trunk.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (29, 27, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (55, 29, 254, 'If you choose to attack, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (55);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (56, 29, 54, 'If you choose to listen to what the voices say, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (56);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 28
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (30, 1, 'After a few hundred yards, the path joins another one running north to south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (30, 28, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (57, 30, 132, 'If you wish to go northwards, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (57);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (58,  30, 150, 'If you wish to head south, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (58);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 29
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (31, 1, 'You stride out to the water’s edge and prepare yourself for combat. The Kraan and its rider spot you and begin to speed across the lake barely inches above the surface. The rider lets out a scream that freezes your blood. He is a Vordak, a fierce lieutenant of the Darklords. He is upon you and you must fight him.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (31, 29, 14);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (2, 'Vordak', 18, 25, 'images/flight/creatures/vordak.png');
INSERT INTO CREATURE_HAS_ABILITIES_JT (CREATURE_ID, ABILITY_TYPE)
VALUES (2, 'MINDFORCE');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (5, 31, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (5, 2);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (59, 31, 274, 'If you win the fight, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (59);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 30
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (32, 1, 'The people look tired and hungry. They have come many miles from their burning city. Suddenly, you hear the beat of huge wings coming from the north. ‘Kraan, Kraan! Hide yourselves!’ the cry goes up all along the road. Just in front of you, a wagon carrying small children breaks down, its right wheel jammed in a furrow. The children scream in panic.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (32, 30, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (60, 32, 198, 'If you wish to help the children, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (60);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (61, 32, 265, 'If you’d rather run for the cover of the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (61);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 31
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (33, 1,
        'You try to comfort the injured man as best you can, but his wounds are serious and he is soon unconscious again. Covering him with his cape, you turn and press deeper into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (33, 31, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (62, 33, 268, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (62);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 32
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (34, 1, 'You have ridden about three miles when, in the distance, you spot the unmistakable silhouette of five large Doomwolves. Riding on their backs are Giaks. They seem to be going on ahead to where the path leads down into an open meadow. Suddenly, one of the Giaks leaves the others and begins to ride back along the path towards you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (34, 32, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (63, 34, 180, 'If you wish to hide in the undergrowth and let him pass, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (63);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (64, 34, 344, 'If you wish to fight him, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (64);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 33
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (35, 1, 'The floor of the cave is quite dry and dusty. As you explore deeper in the half-light, you detect the stale odour of rotting flesh. Littering a crevice are the bones, fur, and teeth of several small animals. You notice a small cloth bag among these remains which you open to discover 3 Gold Crowns. Pocketing these coins, you leave what appears to be the lair of a mountain cat and carefully descend the hill.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (35, 33, 20);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (6, 35, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (6, 3);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (65, 35, 252, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (65);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 34
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (36, 1, 'Without warning, a terrible apparition in red robes swoops down from the sky on the back of a Kraan. Its cry freezes your blood. The beast is a Vordak, a fierce lieutenant of the Darklords. He is above you and you must fight him.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (36, 34, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (7, 36, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (7, 2);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (67, 36, 332, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (67);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 35
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (37, 1, 'The forest is becoming denser, and the path more tangled with thorny briars. Almost completely hidden by the undergrowth, you notice another path branching off towards the east. Your current route seems to be coming to a prickly end, so you decide to follow the new path eastwards.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (37, 35, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (68, 37, 211, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (68);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 36
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (38, 1, 'The old watchtower ladder is rotten and several rungs break as you climb. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (38, 36, 21);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (69, 38, 143, 'If the number is 4 or lower');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (69, 0, 4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (70, 38, 327, 'If the number is 5 or higher');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (70, 5, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 37
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (39, 1, 'You are feeling tired and hungry and you must stop to eat. After your Meal, you retrace your steps back to the citadel and begin to walk around the high, indomitable stone wall. You discover another entrance on the eastern side, guarded as before by two armoured soldiers.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (39, 37, 6);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (8, 39, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (8, -1);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (71, 39, 286, 'If you wish to use the Kai Discipline of Camouflage, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (71, 'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (72, 39, 293, 'If you wish to approach them and tell your story, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (72);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 38
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (40, 1, 'For half an hour or more you press on through the forest, through the rich vegetation and ferns. You happen upon a small clear stream where you stop for a few minutes to wash your face and drink of the cold, fresh water. Feeling revitalized, you cross the stream and press on. You soon notice the smell of wood smoke which seems to be drifting towards you from the north.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (40, 38, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (73, 40, 130, 'If you wish to investigate the smell of wood smoke, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (73);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (74, 40, 351, 'If you would rather avoid the source of this smoke, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (74);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 39
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (41, 1, 'After a few seconds, two small furry faces nervously appear over the top of the trunk. They say they are Kakarmi and tell you that the Kraan are everywhere. To the west lie the remains of their village but little is left of it now. They are trying to find the rest of their tribe who took to the forest when the ‘Black-wings’ attacked. They point behind them—east along the path—and tell you that the trail appears to be a dead end, but that if you continue through the undergrowth for a few yards more, you will find a watchtower where the path splits into three directions. Take the east path. This leads to the King’s highway between the capital city Holmgard and the northern port of Toran. You thank the Kakarmi, and bid them farewell.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (41, 39, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (75, 41, 232, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (75);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 40
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (42, 1, 'Keeping a careful watch on the huts for any sign of the enemy, you make your way around the clearing under the cover of the trees and bracken. Rejoining the track, you hurry away from Fogwood.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (42, 40, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (76, 42, 107, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (76);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 41
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (43, 1,
        'Three rangers gallop past the river bank, closely followed by the Giaks on their snarling Doomwolves. The bank is steep and you are spotted by the Giak leader who orders five of his troops to open fire at you with their bows. Their black arrows rain down on you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (43, 41, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (77, 43, 178, 'If you decide to paddle downstream as fast as you can, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (77);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (78, 43, 118, 'If you decide to head for the cover of the trees on the opposite bank, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (78);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 42
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (44, 1, 'You follow the track for nearly an hour when you come to a crossroads.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (44, 42, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (79, 44, 400, 'If you wish to continue east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (79);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (80, 44, 242, 'If you would rather head north, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (80);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (81, 44, 160, 'If you decide to venture south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (81);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (82, 44, 150, 'Or if you prefer to go west, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (82);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 43
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (45, 1, 'From behind the rock a huge black bear comes into view. It advances slowly towards you, its mouth open and its face lined in anger and pain. You notice that it is badly wounded and is bleeding from its neck and back. You must fight it.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (45, 43, 4);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (3, 'Black Bear', 16, 10, 'images/flight/creatures/blackbear.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (9, 45, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (9, 3);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (83, 45, 199, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (83);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 44
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (46, 1, 'Without warning, the old track ends abruptly at the edge of a steep slope. The ground here is very loose and unstable. You lose your footing and fall headlong over the edge. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (46, 44, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (84, 46, 281, 'If you have picked a number that is 0–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (84, 0, 4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (85, 46, 342, 'If the number is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (85, 5, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 45
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (47, 1, 'These men are not what they seem. The tunic of the leader is genuine but it is heavily bloodstained around the collar, as if its true owner had been murdered. Their weapons are not army issue, but expensive and lavishly decorated like the weapons made by the armourers of Durenor. The leader has a crossbow slung over his pack. An attempt to run would be suicide. You decide that you must fight them or you will surely be murdered as soon as you drop your weapon.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (47, 45, 16);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (86, 47, 184, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (86);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 46
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (48, 1, 'You have covered about two miles when the trees ahead thin out. You can see a small wooden shack on the edge of a lake. A cloaked man approaches you and offers to row you and your horse across the lake for a fee of 2 Gold Crowns.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (48, 46, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (87,  48, 300, 'If you have the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (87, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (88, 48, 250, 'If you accept the offer, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (88);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (89, 48, 92, 'If you refuse and try to ride around the lake, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (89);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 47
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (49, 1, 'Breathless and sweating, you claw your way towards the summit of the hill. Suddenly, a large winged shadow passes across the hillside. You look up to see a Kraan circling the peak above. Behind you the Giaks are gaining ground.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (49, 47, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (90, 49, 138,
        'Do you stand and fight the Giaks where you are, using the high ground to your advantage? If so, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (90);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (91, 49, 326, 'Or do you grit your teeth and press on towards the peak of the hill? Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (91);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 48
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (50, 1, 'Your Sixth Sense warns you that these troops are not all they seem. You can detect an aura of evil about them. They are in the service of the Darklords.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (50, 48, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (92, 50, 247, 'You must leave here quickly before you are spotted. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (92);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 49
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (51, 1, 'As you begin to read the inscription, you notice a shadow moving towards you from behind the screen. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (51, 49, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (93, 51, 343, 'If you have chosen a number that is 0–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (93, 0, 4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (94, 51, 62, 'If the number is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (94, 5, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 50
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (52, 1, 'The sound of fighting can be heard in the distance.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (52, 50, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (95, 52, 99, 'If you wish to continue towards the sound of battle, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (95);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (96, 52, 247, 'If you wish to avoid the fighting, change direction and turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (96);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 51
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (53, 1,
        'You climb the wooded bank of the river and see the log walls of the fieldworks disappearing into the distance. A battle rages about two miles away and the log wall has collapsed in several places where the Darklords are attacking. Most of the fieldworks ahead are unmanned, the soldiers having left to supply reinforcements for the raging battle.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (53, 51, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (97, 53, 292, 'There is a gate in the log wall. If you wish to approach it, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (97);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (98, 53, 225, 'If you would prefer to climb over the wall instead, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (98);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 52
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (54, 1, 'Now that you are closer, you can make out that the voices are not human. The sound is more like a kind of grunting and squeaking.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (54, 52, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (100, 54, 229, 'If you have the Kai Discipline of Animal Kinship, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (100, 'ANIMAL_KINSHIP');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (101, 54, 254, 'If not, you must climb over the tree and face whatever lurks on the other side. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (101);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 53
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (55, 1, 'A searing pain tears through your right leg as it is twisted and crushed by the weight of your body. Down and down you tumble, until you finally land in a ditch at the base of the hill with such force that the wind is knocked out of you and you lose consciousness. You are awoken by the sharp pain of something stabbing your chest. It proves to be the tip of a Giak spear. You are greeted by the malicious sneer of its owner as he pins your left arm to the ground. Instinctively you reach for your weapon but it is no longer there. Defenceless against the cruel Giaks, the last thing that you see before all light fades is the jagged point of a Giak lance hurtling down towards your throat. Your mission ends here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (55, 53, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (130, 55, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (130);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 54
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (56, 1, 'It would seem that the heavens have not heard your prayers. A spear whistles past your head and embeds itself in the neck of your galloping horse. With a shriek of pain, the horse topples forward and you both roll in a tangled heap on the highway. Dazed and pinned down by the weight of the dead body of your horse, the last thing you remember is the sharp penetrating spearheads of the Giak lances. You have failed in your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (56, 54, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (131, 56, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (131);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 55
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (57, 1, 'Just as the Giak makes his leap, you race forward and strike out with your weapon—knocking the creature away from the young wizard’s back. You jump onto the struggling Giak and strike again. Due to the surprise of your attack, add 4 points to your COMBAT SKILL for the duration of this fight but remember to deduct it again as soon as the fight is over.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (57, 55, 24);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (4, 'Giak', 9, 9, 'images/flight/creatures/giak.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (10, 57, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (10, 4);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (11, 57, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (11, 4);
INSERT INTO COMBAT_SKILL_TEMPORARY_CHANGE_EVENTS (EVENT_ID)
VALUES (11);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (102, 57, 329, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (102);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 56
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (58, 1,
        'You hear the scream of a large winged beast above the trees. It is a Kraan, a deadly servant of the Darklords. Quickly you hide beneath the thick fronds of fern until the horrible shrieks have passed away.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (58, 56, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (103, 58, 226, 'Now turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (103);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 57
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (59, 1, 'The cabin has only one room. In it you see a wooden table and two benches, a large bed made of straw bales lashed together, several bottles of coloured liquids, and an embroidered rug in the centre of the floor.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (59, 57, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (104, 59, 168, 'If you choose to take a closer look at the bottles, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (104);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (105, 59, 111, 'If you choose to pull back the rug, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (105);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (106, 59, 312, 'If you choose to leave the room and investigate the stable, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (106);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 58
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (60, 1, 'Bracing yourself for the run, you head off down the ridge at a steady pace. To the west, the army of the Darklords looks like a giant pot of black ink that has been spilled between the mountains and is spreading into the land below. You have been running for twenty minutes when you catch sight of a pack of Doomwolves lining a shallow ridge to your right.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (60, 58, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (107, 60, 255,
        'If you decide to flatten yourself against the rocks along the side of the road and wait until they pass, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (107);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (108, 60, 163, 'If you decide to carry on running, but draw your weapon just in case they attack, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (108);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 59
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (61, 1, 'Peering into the darkness, you notice that rough stairs have been cut into the earth and that the mouth of the cave is in fact the entrance to a tunnel. Carefully descending the slippery stairway, you notice a small silver box on a shelf at the bottom of the staircase.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (61, 59, 20);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (109, 61, 126, 'If you want to open the silver box, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (109);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (110, 61, 108, 'If you wish to return to the surface and press on, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (110);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (111, 61, 215, 'If you wish to investigate the tunnel further, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (111);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 60
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (62, 1, 'The last thing you remember before darkness engulfs you is the flash of a long curved steel knife. You have become yet another victim of the Sage and his robber son—the very one who has just slit your throat! Your quest ends here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (62, 60, 5);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (143, 62, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (143);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 61
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (63, 1, 'At last you can reach the wooden fieldworks surrounding the outer city. As you race towards a sentry post, you can hear the excited shouts of the guards cheering you on. Thank the gods that they recognize you, for you must appear a ragged and suspicious figure. Your cloak is torn and hangs in tatters, your face is scratched and blood-smeared, and the dust of the Graveyard covers you from head to toe. Splashing through a shallow stream, you stagger towards the gate. The full horror of the Graveyard encounter begins to catch up with you. The last thing you recall before exhaustion robs you of consciousness, is falling into the outstretched arms of two soldiers who have run from the fieldworks to help you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (63, 61, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (112, 63, 272, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (112);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 62
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (64, 1,
        'The ‘soldiers’ lie dead at your feet. They were bandits who were stealing from the refugees of Toran, and from the abandoned houses and farms in the area. Searching their bodies you find 28 Gold Crowns and two Backpacks containing enough food for 3 Meals. They had been armed with a crossbow and three Swords. The crossbow has been damaged in the fight, but the Swords are untouched and you may keep one if you wish. You adjust your equipment, give a cautious glance towards the west, and continue your run towards the outer defences of the capital.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (64, 62, 23);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (12, 64, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (12, 28);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (12);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (13, 64, 2);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (13, 3);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (13);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (14, 64, 3);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (14, 6);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (14);

INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (14, 'Crossbow', 'Crossbow', 'WEAPON', 'MEDIUM','images/flight/items/crossbow.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (15, 64, 4);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (15, 14);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (15);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (113, 64, 292, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (113);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 63
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (65, 1,
        'The wild old man is screaming at you. He blames you for the war and curses the Kai Lords as agents of the Darklords. He will not listen to reason and you must fight him.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (65, 63, 5);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (5, 'Madman', 11, 10, 'images/flight/creatures/madman.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (16, 65, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (16, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (114, 65, 273, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (114);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 64
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (67, 1, 'You are awoken by the cries of a Kraan circling above the caravan. It is early morning and the sky is clear and bright. You can see a pack of Doomwolves less than a quarter of a mile away along the highway ahead. They are preparing to attack. You must act quickly.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (67, 64, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (115, 67, 192, 'If you decide to gather your equipment and run for the cover of the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (115);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (116, 67, 18, 'If you decide to cut free one of the horses and try to break through the attacking Doomwolves to the clear road beyond, then turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (116);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 65
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (68, 1, 'Your senses scream at you that this place is very evil. Leave as quickly as you can.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (68, 65, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (117, 68, 106, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (117);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 66
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (69, 1, 'Startled, you turn around to see a burly sergeant and two soldiers running towards you, their swords drawn as if to strike. You prepare to defend yourself for it looks as if they are about to attack first and ask questions later; but suddenly the sergeant calls his men to a halt. He has recognized your cloak. They put away their weapons and apologize many times for their mistake. The sergeant orders one of the men to fetch the captain of the Guard as he leads you to the doors of the Great Hall. You are greeted by a tall and handsome warrior who listens intently to your story. When you have finished the account of your perilous journey to the capital, you notice a tear in the brave man’s eye as he bids you to follow him. You walk through the splendid halls and corridors of the inner Palace. The richness and grandeur are a wonder to behold. You eventually arrive at a large carved door, guarded by two soldiers wearing silver armour. You are about to meet the King.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (69, 66, 25);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (118, 69, 354, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (118);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 67
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (70, 1, 'Your Kai Discipline of Tracking reveals to you fresh paw prints leading off along the south path. They are the prints of a black bear, an animal renowned for its ferocity. You decide the east path would be a much safer route.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (70, 67, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (119, 70, 256, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (119);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 68
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (71, 1,
        'After a short walk, you reach a junction where a path crosses your present route heading from west to east.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (71, 68, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (120, 71, 132, 'If you wish to turn west, go to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (120);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (121, 71, 17, 'If you wish to head east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (121);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 69
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (72, 1, 'You are very near a friendly village.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (72, 69, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (122,  72, 276, 'Avoid the gallowbrush and turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (122);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 70
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (73, 1, 'You have reached a small bridge. A track follows the stream towards the east. A much narrower path disappears into thick forest towards the south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (73, 70, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (123, 73, 10, 'If you wish to use the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (123, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (124, 73, 30, 'If you wish to go east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (124);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (125, 73, 160, 'If you wish to go south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (125);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 71
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (74, 1,
        'You are winded but not hurt. You have fallen fifteen feet or so through the roof of an underground tomb. The walls are sheer and you cannot climb them. An arched tunnel leads out of the tomb towards the east, in front of which lies the sarcophagus of some ancient noble');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (74, 71, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (126, 74, 68, 'If you wish to use the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (126, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (127, 74, 246, 'If you wish to open the sarcophagus to see if it contains any treasure, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (127);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (128, 74, 106, 'If you wish to leave via the tunnel, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (128);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 72
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (75, 1, 'You turn to face a sneering Giak and the razor-fanged jaws of its mount. You must fight them as one enemy.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (75, 72, 4);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (6, 'Giak on Doomwolf', 15, 24, 'images/flight/creatures/giakdoomwolf.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (17, 75, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (17, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (129, 75, 269, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (129);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 73
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (76, 1, 'Pulling your green cloak about you, you blend into the foliage and rocks. Peering carefully up at the track, you are shocked to see that they are not the King’s men at all. They are Drakkarim, some of the Darklords’ cruellest troops. They must have disguised themselves as soldiers of the King in order to get this far into the forest. Thanking your Kai training for saving your life, you silently slip away from the stream and push on into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (76, 73, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (130, 76, 247, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (130);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 74
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (77, 1, 'The Kraan and its riders land on the track barely ten feet from where you are hidden. The Giaks leap from the scaly backs of the Kraan and move towards you, their spears raised to strike. You have been seen.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (77, 74, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (131, 77, 141, 'If you decide to fight them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (131);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (132, 77, 285, 'If you decide to run deeper into the forest without delay, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (132);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 75
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (78, 1, 'Peering out carefully, you can see three green-clad men on horses racing along the bank. You recognize them as Border Rangers, the regiment of the King’s Army that police the western borders. One of them is wounded and is slumped over the neck of his horse. Close behind follow a pack of twenty Doomwolves. Their Giak riders are firing arrows at the rangers which fall all around them. One ranger drops from his horse and rolls down the river bank, a black arrow deeply embedded in his right leg.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (78, 75, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (133, 78, 264, 'If you wish to help the ranger, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (133);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (134, 78, 167, 'If you wish to stay hidden and drift downstream, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (134);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 76
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (79, 1, 'The Gem feels very hot and burns your hand. Lose 2 ENDURANCE points. You quickly grab it with the edge of your cloak and slip this Vordak Gem into your Backpack. A Gem that size must be worth hundreds of Crowns. You smile at your good fortune, mount your horse, and ride off along the south track.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (79, 76, 23);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (18, 79, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (18, -2);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (18);

INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT,IMAGE_URL)
VALUES (15, 'Glowing Gem', 'Glowing Gem', 'MAGICAL_ITEM', 'SMALL','images/flight/items/glowinggem.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (19, 79, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (19, 15);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (19);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (135, 79, 120, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (135);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 77
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (80, 1, 'The Mountain Giaks are unaccustomed to pursuing their prey through forests and you soon outdistance them, until finally the sound of their grunts and curses disappears completely. When you are satisfied that they have given up the chase, you stop for a few minutes to catch your breath and check your equipment. With the memory of your ruined monastery still blazing in your mind, you gather up your meagre belongings and push on.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (80, 77, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (136, 80, 21, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (136);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 78
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (81, 1, 'As the caravan careers past, you leap for the tailboard and manage to hold fast. Pulling yourself upright, you find that you are standing on the bottom rung of a ladder leadingto the rear door of the wagon. Suddenly the top half of the door flies open and you are confronted by the angry face of a bodyguard.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (81, 78, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (137, 81, 134, 'If you decide to inform him that you are a Kai Lord with an urgent message for the King, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (137);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (138, 81, 14, 'If you decide to offer him Gold Crowns for safe passage to the capital, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (138);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (139, 81, 224, 'If you decide to attack the guard with your weapon, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (139);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 79
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (82, 1,
        'You come to a small footbridge across a fast-flowing stream. On the other side of the bridge the path turns south. You cross the bridge and follow the path.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (82, 79, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (140, 82, 208, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (140);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 80
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (83, 1, 'You stumble backwards through the front door, clutching your burnt chest with both hands. Smoke is billowing from the shop and you must run—before the Sage or his robber son catch you. You make it back to the main street and lose yourself in the rush of the crowds.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (83, 80, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (141, 83, 9, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (141);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 81
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (84, 1, 'After nearly an hour, the Kraan and their cruel riders vanish towards the west. As the shocked refugees start to emerge from the woods, you can hear the sound of horses in the distance galloping nearer. You stay hidden and wait as the riders come closer. They are the cavalry of the King’s Guard wearing the white uniforms of His Majesty’s army.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (84, 81, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (142, 84, 187, 'If you wish to call to them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (142);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (143, 84, 204, 'If you would rather continue along the forest edge towards the south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (143);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 82
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (85, 1,
        'The giant Gourgaz lies dead at your feet. His evil followers hiss at you and then fall back from the bridge. The Prince’s soldiers form a protective wall around you and their dying leader with their shields. Black arrows whistle past your head.The dying Prince looks up into your eyes and says, ‘Kai Lord, you must take a message to my father. The enemy is too strong, we cannot hold him. The King must seek that which is in Durenor or all is lost. Take my horse and ride for the capital. May the luck of the gods ride with you.’You bid a sad farewell to the Prince, mount his white steed, and head south along the forest path. The battle still rages behind you as the Prince’s men fight off another assault on the bridge.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (85, 82, 22);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (20, 85, 1);
INSERT INTO STORY_EVENTS (EVENT_ID, DESCRIPTION, TITLE, IMAGE_URL)
VALUES (20, 'The dying Prince looks up into your eyes and says, ‘Kai Lord, you must take a message to my father.','The dying Prince', 'images/flight/meeting/dyingprince.png');

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (144, 85, 239, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (144);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 83
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (86, 1, 'You have run about a mile when three soldiers appear from beneath a small footbridge. They demand that you halt and drop your weapons and equipment. They are bloodstained and unshaven. Their leader is wearing the tunic of a soldier of the Toran garrison.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (86, 83, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (145, 86, 47, 'If you possess the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (145, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (146, 86, 209, 'If you wish to do as they say, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (146);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (147, 86, 184, 'If you wish to prepare to fight them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (147);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (148, 86, 236, 'If you demand to know what they want, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (148);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 84
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (87, 1,
        'Just as you feel the air beating on your back, you slip free of your horse and roll over—landing with a splash in a muddy ditch by the side of the highway. You are uninjured, and you quickly scramble to your feet and make a dash for the cover of the trees—but with thirty yards left to run, you see the Kraan circling above for another dive.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (87, 84, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (149, 87, 192, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (149);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 85
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (88, 1, 'The path is wide and leads straight into thick undergrowth. The trees are tall here and unusually quiet. You walk for over a mile when suddenly you hear the beating of large wings directly above you. Looking up, you are shocked to see the sinister black outline of a Kraan diving to attack you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (88, 85, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (150, 88, 233, 'If you draw your weapon and prepare to fight, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (150);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (151, 88, 101, 'If you evade the attack by running south, deeper into the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (151);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 86
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (400, 1, 'You soon reach another crossroads');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (400, 86, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (560, 400, 8, 'If you wish to journey east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (560);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (561, 400, 37, 'If you wish to head north, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (561);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (562, 400, 171, 'If you prefer to go south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (562);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (563, 400, 44, 'Or if you wish to turn west, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (563);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 87
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (89, 1, 'Focusing your powers on the lock, you try to visualize the inner mechanism. Gradually its image appears in your mind’s eye. It is old and corroded but it still functions. You are in danger of losing your concentration when a subtle click confirms that your effort has not been in vain. The pin is an easier task. Slowly it rises out of the lock and falls to the floor. The granite door swings towards you on hidden hinges and the grey half-light of the Graveyard floods into the tomb. The exit is overgrown with graveweed and you suffer many small cuts to your face and hands as you fight your way through to the surface. You are startled by a sudden noise. You turn to see the disembodied head of a corpse laughing at you. In blind panic, you race through the eerie necropolis towards the southern gate.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (89, 87, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (156, 89, 63, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (156);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 88
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (90, 1, 'You cautiously peer around the rock to see a soldier lying on his back. By his side is a Spear and shield. On the shield is the painting of a white pegasus—the Prince of Sommerlund’s emblem. He is one of the Prince’s soldiers, and he is only just conscious. His uniform is badly torn, and you can see that he has a deep wound in his left arm. As you move nearer, his eyes flicker open. Heal me, my lord, he begs. I can barely feel my arm.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (90, 88, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (157, 90, 220, 'If you possess and wish to use the Kai Discipline of Healing on this man, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (157, 'HEALING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (158, 90, 33, 'If you do not possess the skill, or if you do not want to use it, then turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (158);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 89
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (91, 1, 'In a cloud of dust and loose rocks you career down the steep hillside. The Kraan is still circling above as if waiting to direct the Giaks after you. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (91, 89, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (159,91,  55, 'If you have picked 0–1, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (159, 0, 1);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (160, 91, 278, 'If it is 2–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (160, 2, 4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (161, 91, 320, 'If it is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (161, 5, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 90
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (92, 1,
        'Night falls and you are soon engulfed in total darkness. To press on would be useless, for you would be sure to lose your way. Tethering your horse to a tree, you pull your green Kai cloak about you and fall into a restless sleep.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (92, 90, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (162, 92, 20, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (162);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 91
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (93, 1, 'The small shop is dark and musty. Books and bottles of every size and colour fill the many shelves. As you close the door, a small black dog begins to yap at you. A bald man appears from behind a large screen and bids you welcome. He politely enquires as to the nature of your visit and offers you a choice of his wares from the glass counter.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (93, 91, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (163,93,  202,'If you have the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (163, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (164, 93, 155, 'If you wish to look at his wares, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (164);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (165, 93, 9, 'If you would rather decline his offer and return to the street, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (165);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 92
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (94, 1,
        'You dive for cover not a moment too soon, for a hail of black arrows scream out of the woods and bombard the area where you were standing seconds before. Pulling your cloak around you to blend into the dense bracken, you dash through the forest and away from the hidden ambushers as fast as possible. This entire area is infested by Giaks and you must escape as quickly as you can. You run without rest for over an hour until you happen to fall upon a straight forest path heading towards the east. You follow the path, taking care to keep watch for signs of the enemy.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (94, 92, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (167, 94, 15, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (167);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 93
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (95, 1, 'You turn and run for the stairs just as a large block falls with a crash behind you. The room you were in has been completely sealed off. As you escape into the daylight, you glimpse behind you the crooked figure of an old druid as he raises his staff. A second later, a bolt of lightning explodes at your feet. You do not stop but run headlong down the hill, cursing the delay but thankful for your Sixth Sense.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (95, 93, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (168, 95, 108,'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (168);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 94
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (96, 1, 'The Sage, seeing that you have killed his son, turns and runs from the shop by a back door. You find 12 Gold Crowns in the robber’s purse and another 4 Gold Crowns in a wooden box under the counter. Carefully examining the potions and the wand you soon realize that they are all cheap counterfeits. In fact the entire shop is full of imitations. You shake your head and return to the main street.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (96, 94, 5);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (21, 96, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (21, 16);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (21);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (169, 96, 9, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (169);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 95
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (97, 1, 'You soon stumble upon a narrow forest track running from north to south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (97, 95, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (170, 97, 244, 'If you wish to set off along the track towards the north, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (170);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (171, 97, 7, 'If you wish to go south instead, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (171);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 96
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (98, 1, 'Holding your breath, you tighten your grip on your weapon and prepare to strike. The tension is unbearable—the Giaks are so close that the foul stench of their unwashed bodies fills your nostrils. You hear them curse in their strange alien tongue and then leave the ledge and start to scramble towards the peak. When you are sure they have gone, you finally exhale and wipe the sweat from your eyes.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (98, 96, 20);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (172, 98, 35, 'If you wish to explore the cave further, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (172);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (173, 98, 252, 'If you wish to leave the cave and descend the hill in case the Giaks return, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (173);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 97
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (99, 1, 'Ahead of you, you can see a fierce battle raging across a stone bridge. The clash of steel and the cries of men and beasts echo through the forest. In the midst of the fighting, you see Prince Pelathar, the King’s son. He is in combat with a large grey Gourgaz who is wielding a black axe above his scaly head. Suddenly, the Prince falls wounded—a black arrow in his side.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (99, 97, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (174, 99, 259, 'If you wish to defend the fallen Prince, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (174);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (175, 99, 310, 'If you wish to run into the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (175);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 98
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (100, 1, 'The guards seem to believe your story and bow with respect to your rank of Kai Lord. One of them pulls a concealed bell-rope and the huge doors start to swing open. They usher you inside and you hear the doors close behind you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (100, 98, 18);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (176, 100, 142, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (176);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 99
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (101, 1, 'You dive into the undergrowth just as the beast screams past your head. You quickly look back to see the Kraan turning in the air in preparation for another dive. You scramble to your feet and run deeper into the safety of the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (101, 99, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (177, 101, 226, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (177);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 100
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (102, 1, 'The cold corridor suddenly makes an abrupt turning towards the east. You notice a greenish glow that lights the tunnel in the far distance. As you creep nearer you can see that the corridor opens out into a larger chamber. The strange light seems to emanate from a large bowl resting upon the top of a granite throne. On a plinth in front of the throne stands a statue. It looks like a winged serpent curved in the shape of an ‘S’.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (102, 100, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (178, 102,164, 'If you wish to sit on the throne, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (178);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (179,  102, 135, 'If you wish to examine the statue, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (179);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (180, 102, 261, 'If you wish to look for an exit from this chamber, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (180);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 101
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (103, 1, 'The noise of battle soon fades behind you but the ensuing silence is broken by a voice in your head that accuses you of being a coward, and deserting a fellow human in danger. You try to rid yourself of your nagging conscience by telling yourself that your mission is far more important, and that not only is the life of the young magician in peril but the lives of all your countrymen depend on you reaching the capital alive. Suddenly, the sight of a Giak war party in the distance makes you quickly take cover and hide. But it is too late—they have spotted you and you must run as fast as you can.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (103, 101, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (181, 103, 285, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (181);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 102
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (104, 1, 'As you descend the rocky slope towards the Graveyard of the Ancients, you are aware of a strange mist and cloud that swirls all around this grey and forbidding place, blocking the sun and covering the Graveyard in a perpetual gloom. A chill creeps forward to greet your approach. With a feeling of deep dread, you enter the eerie necropolis.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (104, 102, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (182, 104, 288, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (182);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 103
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (105, 1, 'The overgrown path leads to a junction where another track branches off towards the east.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (105, 103, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (183, 105, 15, 'If you wish to take this path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (183);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (184, 105, 291, 'If you would rather continue towards the northeast, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (184);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 104
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (106, 1, 'The walls are dank and slimy. The stale air chokes you and cobwebs brush across your face. You can feel panic grip your stomach, as the tunnel gets darker and darker. You reach a junction where the tunnel meets a corridor leading from north to south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (106, 104, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (185, 106, 28, 'If you wish to turn north, go to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (185);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (186, 106, 102, 'If you wish to go south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (186);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 105
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (107, 1, 'In the distance, perched on the branch of an old oak tree is a jet-black raven.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (107, 105, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (187, 107, 302, 'If you have the Kai Discipline of Animal Kinship, you may call to this bird by turning to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (187, 'ANIMAL_KINSHIP');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (188, 107, 339, 'If you do not possess this skill, or if you do not wish to use it, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (188);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 106
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (108, 1, 'Eventually you come to the edge of a fast-flowing icy stream. The white water cascades over the mossy rocks and disappears towards the east.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (108, 106, 12);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (189, 108, 267, 'If you wish to follow the stream to the east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (189);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (190, 108, 338, 'If you would rather explore upstream, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (190);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 107
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (109, 1, 'Running across the room, you lash out at the skulls, smashing them to fragments. You notice that inside each skull is a bubbling grey jelly that seems to writhe and change its shape, sprouting bat-like wings and suckers from its glistening form. In horror and loathing, you race for the exit corridor and escape just as a heavy portcullis falls with a crash, completely sealing off the chamber.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (109, 107, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (191, 109, 25, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (191);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 108
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (110, 1, 'You fly in an arc through the air towards the opposite roof. Everything seems to be happening in slow motion. You see the teeming crowds below in the street, and a nest of callysparrows in the eaves of a roof to your right. You hear their startled cries as you land with a crash on the other side. But it is the last sound that you will ever hear. The tiles splinter and collapse and you fall through the four floors of the ‘Green Slipper Inn’ breaking your back in several places. Your mission and your life end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (110, 108, 17);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (132, 110, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (132);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 109
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (111, 1, 'The only thing under the carpet is dirt!');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (111, 109, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (192, 111, 168, 'You may take a closer look at the bottles by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (192);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (193, 111, 312, 'Or you can leave the room and investigate the stable by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (193);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 110
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (112, 1, 'You quickly take aim and hurl the rock at the Giak’s head as hard as you can, but to your horror the creature ducks and the rock arcs harmlessly over its back. You must act immediately to save the wizard.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (112, 110, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (194,112,  57, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (194);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 111
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (113, 1,
        'Only a few minutes after leaving the junction, you see in the distance a small log cabin and stable. On arrival you check the interior through a side window. The cabin looks deserted.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (113, 111, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (195, 113, 59, 'If you wish to enter the cabin, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (195);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (196, 113, 312, 'If you wish to search the stable, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (196);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 112
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (114, 1, 'Suddenly, the large rock you are hiding behind is rolled aside and you are faced by two snarling Giaks intent on your death. The cave mouth is a narrow entrance and you can only fight the Giaks one at a time.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (114, 112, 20);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (7, 'Giak', 13, 10, 'images/flight/creatures/giak.png');
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (8, 'Giak', 12, 10, 'images/flight/creatures/giak.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (22, 114, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (22, 7);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (23, 114, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (23, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (197, 114, 35, 'If you win, you may explore the cave further by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (197);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (198, 114, 252, 'Or you may leave and descend the hill. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (198);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 113
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (115, 1,
        'You have been walking for over half an hour when your eye is caught by some bright red flowers growing near to a mossy bank. You recognize the plants to be Laumspur, a rare and beautiful herb much prized for its healing properties. Kneeling down, you pick a handful of Laumspur and place it in your Backpack. You may eat this herb to regain lost ENDURANCE points. Each Meal of Laumspur will restore 3 ENDURANCE points, and you have gathered enough for two such Meals.1 Closing your pack, you continue your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (115, 113, 4);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (16, 'Laumspur', 'Each Meal of Laumspur may be consumed when prompted for a Meal, in which case it fulfills teh Meal re...', 'HERB','SMALL', 'images/flight/items/laumspur.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (24, 115, 1);
INSERT INTO ITEM_EVENTS_BT(EVENT_ID, ITEM_ID)
VALUES (24, 16);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (24);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (25, 115, 1);
INSERT INTO ITEM_EVENTS_BT(EVENT_ID, ITEM_ID)
VALUES (25, 16);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (25);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (199, 115, 351, 'If you wish to head northeast, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (199);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (200, 115, 299, 'If you wish to head east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (200);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 114
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (116, 1, 'You coax the horse to lie down and begin to cover him and yourself with branches and dead leaves. You hear the wings of the Kraan as it passes over the trees. It returns and circles above you, but soon retreats back across the lake. You decide to leave now, in case it returns with some of its friends.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (116, 114, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (201, 116, 243, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (201);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 115
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (117, 1, 'You stumble into the first building and fall to the floor exhausted. You can smell cooked meat. You notice a small cauldron hanging over the embers of a dying fire, and a large oak table that has been set for a meal. Whoever lived here must have left in a great hurry this very morning. There is water in a jug and a loaf of fresh bread on the table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (117, 115, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (202, 117, 153, 'If you decide to take a quick Meal, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (202);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (203, 117, 181, 'If you decide to search the building, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (203);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (204, 117, 86, 'If you would rather leave now and continue your run, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (204);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 116
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (118, 1,
        'As you climb out of the muddy water, black arrows fall all around you. Quickly, you dash for the cover of the trees and wait for the Giaks to leave the opposite bank, before continuing on foot towards the capital.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (118, 116, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (205, 118, 325, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (205);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 117
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (119, 1, 'The man is badly injured and near to death. If you have the Kai Discipline of Healing, you may ease the pain of his wounds but he has been so seriously hurt he is beyond repair by your skills alone. He soon lapses into unconsciousness. You try to make him as comfortable as possible beneath a large forest oak, before leaving and pressing on through the thick woodland towards the northeast.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (119, 117, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (206, 119, 334, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (206);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 118
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (120, 1, 'You spur your horse to a gallop and race down the long straight path. In the far distance you can just make out the silhouette of Holmgard on the horizon, its high walls and tall spires glinting in the morning sun. Your path joins a highway running from north to south. It is the main turnpike road between the northern port of Toran and the capital. You set off towards Holmgard, your eyes peeled for Kraan in the clear morning sky.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (120, 118, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (207, 120, 228, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (207);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 119
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (121, 1,
        'The gallowbrush tears your cloak and scratches deep into your arms and legs as you slowly force your way through. Fifteen minutes later you emerge from the briars and stagger onwards between the trees. Deduct 2 ENDURANCE points from your current score for the wounds you have sustained. You feel a little dizzy as you push on, and your eyelids seem very heavy. You suddenly find yourself at the edge of a steep wooded slope.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (121, 119, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (26, 121, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (26, -2);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (26);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (208, 121, 230, 'If you wish to slide down the slope as carefully as you can, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (208);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (209,  121, 40,
        'If you do not feel that you are up to the risk of this tricky descent in your present sleepy state, walk around the edge of the ridge by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (209);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 120
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (122, 1, 'Behind you can hear the blood-crazy Giaks killing the caravan horses. You risk a quick glance over your shoulder and see a Kraan start to climb high into the air. Will it attack you or is it interested in something else? The dark shadow that is gradually getting larger all around you tells you that you are its intended victim. The Kraan is diving full speed at you!');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (122, 120, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (210, 122, 87, 'If you wait until it is about to strike and then jump from the saddle, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (210);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (211, 122, 175, 'If you head as fast as you can for the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (211);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (212, 122, 56, 'If you put your head down, pray to the heavens for good luck and gallop on regardless, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (212);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 121
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (123, 1,
        'After a few minutes walking you see a stranger, clad in red, standing in the centre of the track ahead. He has his back towards you, and his head is covered by the hood of his robes. Perched on his outstretched arm is the black raven that you saw earlier.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (123, 121, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (213, 123,  346, 'If you wish to call the stranger, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (213);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (214, 123,313, 'If you wish to approach the stranger cautiously, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (214);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (215, 123, 287, 'If you would rather draw your weapon and attack, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (215);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 122
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (124, 1, 'Immediately the horse senses your communication. He calms down. You walk towards the beautiful animal and stroke his head reassuringly. You sense that he is frightened and confused. Mounting him, you lead him off to the path and head south once again.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (124, 122, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (216, 124, 210, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (216);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 123
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (125, 1, 'As the creature dies, its body slowly dissolves into a vile green liquid. You notice that all of the grass and the plants beneath the smoking fluid are beginning to shrivel and die. A large valuable looking Gem lies on the ground near to the decaying body. Further along the track you can see a large war party of Giaks running towards you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (125, 123, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (217, 125,  308, 'If you wish to take the Gem, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (217);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (218, 125, 4, 'If you would rather leave it and run, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (218);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 124
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (126, 1, 'Inside the box you find 15 Gold Crowns and a Silver Key. If you wish to keep the key, remember to mark it on your Action Chart.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (126, 124, 20);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (27, 126, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (27, 15);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (27);

INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL)
VALUES (17, 'Silver Key', 'Silver Key', 'KEY', 'SMALL', 'images/flight/items/silverkey.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (28, 126, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (28, 17);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (28);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (219, 126,  215, 'You can continue to investigate the tunnel by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (219);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (220, 126, 108, 'Or you may leave and descend the hill by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (220);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 125
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (127, 1, 'The path opens out into a large clearing. You notice strange claw prints in the earth. Kraan have landed here. By the number of prints and by the size of the area disturbed, you judge that at least five of the foul creatures landed here in the last twelve hours. You see two exits on the far side of the clearing. One leads west, the other south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (127, 125, 12);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (221, 127,  305, 'If you have the Kai Discipline of Tracking, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (221, 'TRACKING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (222, 127, 29, 'If you wish to take the south path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (222);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (223, 127, 218, 'If you wish to take the west path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (223);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 126
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (128, 1, 'You ride deeper and deeper into the forest. Silently you thank the Prince for such a fine horse, for although the ground is a tangle of briars and roots, he never once falters. The Doomwolves are soon left far behind and you bring your horse to a halt. The light has faded fast and it is almost night.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (128, 126, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (224, 128, 48, 'If you wish to press on ahead, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (224);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (225, 128, 146, 'If you wish to bear left (the same direction as the path you left far behind) then turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (225);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 127
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (129, 1, 'After an hour of marching, the Drakkarim suddenly halt as a large, grey scaly creature approaches along the track. As the beast draws closer, you can smell its fetid breath on your face. It lets out a roar and grabs your head in its powerful webbed hands. The last thing you hear is the sharp crack of your spine snapping. Your quest ends here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (129, 127, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (133, 129, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (133);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 128
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (130, 1, 'Carefully parting the dense foliage, you are horrified by the sight that meets you. In a small clearing ahead, three Giaks have tied a man to a wooden stake and are setting fire to a mass of brushwood bundled at his feet. You recognize his tunic as that of a Border Ranger, one of the King’s men who police the kingdom near the Durncrag Mountains of the west. He has been badly beaten and is nearly unconscious.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (130, 128, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (226, 130, 301, 'If you have the Kai Discipline of Hunting, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (226, 'HUNTING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (227, 130, 340, 'If you do not, you must attack the Giaks now in order to save the ranger’s life. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (227);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 129
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (131, 1, 'You reach the main gates of the capital, and stare in awe at the height of the city’s walls. Two hundred feet high, the walls of Holmgard have withstood the ravages of both time and the Darklords. You and the officer race through the tunnel of the inner gatehouse, one hundred yards in length, and finally halt outside the doorway of the main watchtower. Great crowds of soldiers and civilians are running to and from.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (131, 129, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (228, 131, 5, 'If you wish to continue following the officer, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (228);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (229,131,  147,
        'If you feel that you stand a better chance of making your way to the King’s citadel on your own, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (229);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 130
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (132, 1,
        'You soon reach a small clearing in the woods. A bench, carved from a fallen tree is set in the centre of the clearing. You are hungry and must now eat a Meal here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (132, 130, 19);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (230, 132, 30, 'When you have finished, if you decide to leave the clearing by the south way, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (230);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (231, 132, 205, 'Or if you prefer the smaller track that leads eastwards into the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (231);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 131
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (133, 1,
        'You have covered about a quarter of a mile when you hear shouting and a noise like thunderclaps ahead. Edging nearer, you soon make out a clearing that you recognize to be the site of the ruins of Raumas, an ancient forest temple. A war party of Giaks, some twenty-five to thirty strong, are attacking the ruins from all sides. Many more of the Giaks are dead or dying among the broken pillars of marble, but still they assault whatever is hidden inside. Suddenly, a bolt of blue lightning rips through the front rank of Giaks sending the armour-clad creatures tumbling in all directions.  A Giak, taller than the others and dressed from head to foot in black chainmail, curses at his troops as he whips them forward with a barbed flail. With weapon ready, you move to the edge of the clearing, under cover of the thick foliage, and try to catch a glimpse of the defenders. To your amazement, the ruins are being defended by a young man no older than yourself. You recognize his sky-blue robes, embroidered with stars. He is a young theurgist of the Magicians’ Guild of Toran: an apprentice in magic. Five Giaks charge forward, their spears raised to stab the apprentice as he hurriedly retreats deeper into the ruins. You see him turn and raise his left hand just before a bolt of blue flame shoots from his fingertips into the snarling Giak soldiers. Close to where you are hidden, you see a Giak scuttle past and climb one of the pillars of the temple. He has a long curved dagger in his mouth and he is about to jump on the young wizard standing below.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (133, 131, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (232, 133, 245, 'If you wish to shout a warning to the wizard, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (232);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (233, 133, 57, 'If you wish to run forward and attack the Giak when he jumps, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (233);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (234, 133, 306, 'If you wish to pick up a chunk of temple marble and throw it at the Giak’s head, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (234);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (235, 133, 103, 'Or if you would rather turn and leave the battle area and run back into the woods, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (235);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 132
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (134, 1,
        'The bodyguard looks at you with great suspicion and slams the door. You can hear voices chattering inside the caravan. Suddenly the door swings open and the face of a wealthy merchant appears. He recognizes your Kai cloak and apologizes for his servant’s behaviour. He says that they have been attacked several times since they left Toran: by Kraan, by bandits, and by robbers. They thought you may have been a bandit. Inside, the caravan is full of silks and spices. The merchant offers you food which you gratefully accept. After your sumptuous meal, the fatigue of your ordeal finally overcomes you and you slip into a deep sleep.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (134, 132, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (236, 134, 67, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (236);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 133
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (135, 1, 'As you approach the statue, several cracks appear in its stone surface. It suddenly explodes before you as a real Winged Serpent breaks free of its stone mantle and attacks you. You must fight the creature.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (135, 133, 9);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (9, 'Winged Serpent', 16, 18, 'images/flight/creatures/wingedserpent.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (29, 135, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (29, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (237, 135, 270, 'If you win the fight, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (237);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 134
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (136, 1, 'Using your skills, you detect Giak tracks around the perimeter of the clearing. The prints are fresh and you can tell that these cruel minions of the Darklords were in this area less than two hours ago.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (136, 134, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (238, 136, 309, 'Forewarned by this knowledge, if you decide to investigate the huts, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (238);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (239, 136, 42, 'If you would rather avoid the clearing, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (239);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 135
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (137, 1,
        'Peering over the steep undercut of the river bank, you can see a tangle of driftwood along the water’s edge. A large tree trunk has grounded on the clay bank next to a small canoe.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (137, 135, 27);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (240, 137, 227, 'If you wish to use the log to float down the river, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (240);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (241, 137, 6, 'If you wish to use the canoe, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (241);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 136
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (138, 1, 'The Giaks get nearer and then crouch down as if preparing themselves to pounce. You can see the sharp serrated points of their spears and hear their low guttural speech. The larger of the two creatures screams, ‘Orgadak taag! Nogjat aga ok!’ and attacks you. You must fight each of the Giaks in turn. Add 1 point to your COMBAT SKILL during this fight, as you have the advantage of the higher ground in your favour.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (138, 136, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (30, 138, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (30, 7);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (31, 138, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (31, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (242, 138,  317, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (242);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 137
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (139, 1, 'As the last of the foul creatures die, so the greenish light starts to fade. You notice that in each of the broken skulls lies a Gem. You take these 20 Tomb Guardian Gems before darkness engulfs the chamber. Remember to mark these on your Action Chart as a single Backpack Item. You quickly leave the dead Crypt spawn and press on.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (139, 137, 9);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT,IMAGE_URL)
VALUES (18, 'Guardian Gems', 'Guardian Gems from crypt', 'GEM', 'SMALL', 'images/flight/items/guardiangem.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (32, 139, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (32, 18);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (32);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (243, 139, 25, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (243);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 138
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (141, 1,
        'You prepare your weapon and advance to meet the enemy. There are two Mountain Giaks and you must fight them one at a time.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (141, 138, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (33, 141, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (33, 7);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (34, 141, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (34, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (244, 141, 295, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (244);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 139
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (142, 1,
        'The inner courtyard is a bustle of activity. Cavalry scouts are waiting beside their nervous horses for messages from their unit commanders inside the Great Hall. They take orders with great speed to the defenders of the outer fieldworks. No sooner do they gallop off, than other scouts return, many of them breathless and wounded. You have taken less than a dozen steps across the courtyard when you hear a deep voice boom out. ‘Stop that man!’');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (142, 139, 18);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (245, 142, 69, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (245);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 140
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (143, 1, 'You are in a clearing where several trees have been cut down to make a rickety watchtower. Below the tower are three paths leading off in different directions.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (143, 140, 21);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (246, 143, 16, 'If you take the south path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (246);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (247, 143, 256, 'If you take the east path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (247);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (248, 143, 219, 'If you take the southwest path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (248);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (249,143,  38, 'If you decide to climb the watchtower, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (249);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 141
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (144, 1,
        'Your Sixth Sense has warned you that some of the creatures that attacked the monastery are searching the two paths for any survivors of their raid, but you can avoid both tracks by making your way through the undergrowth of the woods.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (144, 141, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (250, 144, 58, 'If you wish to head south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (250);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (251,  144, 337, 'Or if you wish to cut through the heavier foliage towards the northeast, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (251);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 142
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (145, 1,
        'You can see the tall grey-white walls and glimmering spires of Holmgard, its banners fluttering from the battlements in the fresh morning breeze. Stretching out towards the west, the River Eledil traces its course from the mountains of the Durncrag Range to the Holmgulf. But from below the mountain peaks you can see a vast black army marching relentlessly on towards the city. To your right you can see the highway heading off over the rolling plain towards Holmgard. At a run you could reach the outer fieldworks of the city defences in an hour, but you would be in the open for most of the time and vulnerable to attack by Kraan. However, ahead of you, a wide and muddy river drifts sluggishly towards the Eledil. You could use the cover of the river banks and swim towards the capital. Or towards your left lies the Graveyard of the Ancients. These tombs and crumbling monuments to a forgotten age would conceal your approach, but it is a forbidden area. Many are the unnamed horrors that lie there in restless sleep, waiting to consume the unwary trespasser.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (145, 142, 23);

-- OUTCOME
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (252, 145, 60,'If you will try your luck by the highway, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (252);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (253, 145, 137, 'If you feel that you stand a better chance of reaching the capital via the river, then turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (253);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (254, 145, 104, 'Or if you are brave enough to risk the unknown perils of the Graveyard of the Ancients, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (254);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 143
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (146, 1,
        'You soon emerge from the woods onto a main highway. You recognize it as being the main road between the port of Toran in the north and the capital in the south. Spurring your horse on, you estimate you will reach the capital by morning.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (146, 143, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (255, 146, 152, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (255);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 144
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (147, 1,
        'You fight your way through the press of bodies along the main street towards the citadel in the distance. City folk are rushing to and fro in the grip of panic, as the cries of Kraan are heard circling high above. In the crush, one item is stolen from your Backpack. If you no longer have a Backpack or if you have no Backpack Items, you lose a Weapon. Remember to take this off your Action Chart. A runaway horse and cart career past and knock you into a doorway. You are stunned and you lose 2 ENDURANCE points. As you stagger to your feet, the door bursts open and a decrepit old man attacks you with a meat cleaver. He is quite insane and you must fight him or take evasive action.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (147, 144, 6);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (35, 147, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (35, -2);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (35);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (256, 147, 65, 'If you choose to fight, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (256);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (257, 147, 221, 'If you wish to evade a fight, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (257);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 145
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (148, 1, 'You feel as if you have been run down by a cart or wagon. As you fall forward the last thing that you remember before the darkness overcomes you, is the taste of the sandy road and the terrible pain in your back.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (148, 145, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (258, 148, 169, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (258);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 146
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (149, 1, 'You have ridden about a mile when you are knocked from your horse by an arrow grazing your forehead. You lose 3 ENDURANCE points. As you pull yourself to your feet, you see a patrol of Drakkarim emerge from the woods on either side of the road. You have been ambushed and must evade them as quickly as possible by going into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (149, 146, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (36, 149, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (36, -3);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (36);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (259, 149,  157, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (259);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 147
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (150, 1, 'After a few minutes walking, you find a mossy hut set back from the path. You are hungry and must eat a Meal here or lose 3 ENDURANCE points. As you eat you notice that the path starts to curve towards the east.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (150, 147, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (37, 150, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (37, -1);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (37);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (260, 150, 44, 'If you wish to follow it, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (260);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (261, 150, 30, 'If you wish to return the way you have come, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (261);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 148
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (151, 1, 'Kicking open the door, you dive into the farmhouse. A Kraan soars overhead, letting out a shriek of victory, a victim hanging in its claws. Getting to your feet, you find yourself alone. But propped against the fireplace is a Warhammer. You may take this Weapon if you wish.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (151, 148, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (38, 152, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (38, 5);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (38);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (262, 151, 84, 'If you want to stay in the farmhouse, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (262);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (263, 151, 324, 'If you would feel safer in the forest, you can make a dash by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (263);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (264, 151, 203, 'If you wish to search the room further, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (264);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 149
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (152, 1, 'As you ride along the highway, you notice that light is getting worse. It will soon be completely dark—and impossible to see any dangers that may lurk ahead. You decide to hide and rest at the wood’s edge until morning. When you are satisfied that no one can see you, you pull your warm green cloak about you and drift off into an uneasy sleep.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (152, 149, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (265,152,  260, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (265);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 150
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (153, 1, 'Although a little overcooked, the food tastes fine (although it is not enough for a whole Meal) and the clear water slakes your thirst. You have spent nearly half an hour resting in this house when you suddenly realize the delay.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (153, 150, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (266,153,  86, 'Prepare your equipment and leave. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (266);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 151
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (154, 1, 'If you concentrate on the keyhole, you could move the mechanism of the lock and open it. You can then make the pin levitate and free it from the lockplate, avoiding falling prey to any traps that may be set off as the door unlocks.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (154, 151, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (267, 154, 89, 'If you wish to use your Kai Discipline of Mind Over Matter to open this lock and levitate the pin, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (267, 'MIND_OVER_MATTER');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (268, 154, 341, 'If you wish to remove the pin, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (268);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 152
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (155, 1, 'The herbalist offers you a selection of special potions. Some increase your strength; some induce invisibility; some give you great powers of stealth; and others give you the power of turning yourself into a gaseous form. The man pulls open the bottom drawer of the counter to reveal a magnificent wand. He says that it is a powerful weapon against all evil creatures, and that it will make you invulnerable in battle. He points to the mystical inscriptions which cover the black staff.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (155, 152, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (269, 155, 51, 'If you wish to lean over the counter and read the strange inscriptions, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (269);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (270, 155, 235, 'If you are more interested in the potions, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (270);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 153
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (156, 1, 'Before you are the tall grey-white walls and glimmering spires of Holmgard, the city’s banners fluttering from the battlements in the fresh morning breeze. Stretching out towards the west, the River Eledil traces its course from the mountains of the Durncrag Range to the Holmgulf. But below the mountain peaks you can see a vast black army marching relentlessly on towards the capital.To your right you can see the highway heading off over the rolling plain towards Holmgard. At a gallop you could make the outer fieldworks of the city’s defences in less than an hour, but you would be in the open for most of the time and vulnerable to attack by Kraan. Directly ahead of you, a wide river drifts sluggishly towards the Eledil. If you abandoned your horse, you could swim towards the outer defences under cover of the river banks. Or there is a final alternative. To your left lies the Graveyard of the Ancients. These tombs and crumbling monuments to a forgotten age would conceal your approach but it is a forbidden area. Many are the unnamed horrors that lie there in restless sleep, waiting to consume the unwary trespasser.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (156, 153, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (271,156,  206, 'If you will try your luck by the highway, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (271);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (272,156, 137, 'If you feel that you stand a better chance of reaching the capital via the river then turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (272);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (273,156, 333, 'Or if you are brave enough to risk the unknown perils of the Graveyard of the Ancients, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (273);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 154
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (157, 1, 'You are dizzy from your wound and you stumble through the trees like a blind man. Suddenly you fall forward as if the ground has been snatched from beneath your feet. You have fallen head-first into a hunting pit. As you look up, you can see four Drakkarim levelling their bows at you, evil sneers spreading simultaneously across their ugly faces. As the world darkens, the last thing you feel is the black shafts of their arrows deep in your chest. You have failed in your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (157, 154, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (134, 157, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (134);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 155
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (158, 1, 'As you approach, the group of people stop talking. You can see by their expressions that they recognize your green Kai cloak. Slowly, one of the men extends his hand in friendship and says, ‘My Lord, we had heard a rumour that the Kai were destroyed. Heaven be praised that it is not so. We feared all was lost.’You do not tell them of the destruction of the monastery,  for they are refugees from Toran and have lost everything they owned. Their only hope now is that the Kai Lords will lead an army to victory. You learn that the northern port was attacked from both air and sea, and that the forces of the Darklords far outnumbered the King’s brave garrison. You reassure them that Sommerlund will not fall and wish them luck on their journey ahead.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (158, 155, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (274, 158, 73, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (274);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 156
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (159, 1, 'Black arrows embed themselves in the mud all around you. More Giaks have appeared on the steep slope of the river bank and are firing at you. There is no cover on this side of the river.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (159, 156, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (275, 159, 298, 'If you wish to dive into the water and swim with the current, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (275);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (276, 159, 249, 'If you wish to swim across to the cover of the trees on the other bank, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (276);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 157
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (160, 1, 'The forest begins to thin out until finally you can make out a road through the trees ahead. The highway is full of people heading south. Many are wheeling their possessions along on handcarts.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (160, 157, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (277, 160, 32, 'If you wish to join the refugees and perhaps learn more of what has happened in the north, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (277);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (278, 160, 171, 'If you would prefer to continue to move south but under cover of the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (278);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 158
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (161, 1, 'The Key fits and the lock opens. You pull back the door to find yourself face to face with a strange old man. In his right hand is a staff. Suddenly a bolt of lightning shoots from the staff and hits you square in the chest. You lose 6 ENDURANCE points. Gasping with pain, you knock the old man aside and run up the steep staircase towards daylight. You are halfway up the stairs when he fires another bolt at you. If you survive, you stagger out into the daylight and curse your bad luck. It was only by an unlucky chance you discovered the secret temple of a sect of evil druids. You are very lucky to have escaped with your life. You quickly rejoin the path which now disappears over the hill.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (161, 158, 28);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (39, 161, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (39, -7);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (39);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (279, 161, 108, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (279);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 159
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (162, 1, 'Your ploy does not work, for the merchant will not allow you to enter his caravan. Suddenly he clicks his fingers and the bodyguard grasps the hilt of his scimitar.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (162, 159, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (280, 162, 195, 'You must fight him by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (280);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 160
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (163, 1, 'Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (163, 160, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (281, 163, 290, 'If it is 0–4, you have been seen. Turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (281,0,4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (282, 163,  12, 'If it is 5–9, they do not spot you and they slowly file away along the far side of the ridge. Turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (282,5,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 161
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (164, 1, 'As you sit down, the stone serpent slowly moves forward on its plinth. You suddenly break out in a cold sweat and grasp your weapon with trembling fingers in case it should attack. A red forked tongue appears from the head of this strange statue and dips into the bowl of green light above your head. Slowly the tongue re-emerges holding a Golden Key which, to your surprise, it drops into your lap. A panel in the east wall clicks open to reveal an exit. You take the Key and leave as quickly as possible.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (164, 161, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (283, 164, 213, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (283);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 162
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (165, 1, 'As you get nearer to the men, you call to them. As they turn to face you, your skin turns cold and your heart pounds, for they are Drakkarim in disguise. Suddenly they charge at you. Forced to the ground, you are tied up with ropes and dragged behind them along a track. They take your Backpack and Weapons, but do not search your cloak or find your Gold Crowns. They cackle menacingly to themselves, and talk at great length of the tortures that await you at their camp.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (165, 162, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (284, 165,  262, 'If you have the Kai Discipline of Mind Over Matter, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (284, 'MIND_OVER_MATTER');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (285, 165, 129, 'If you do not have this skill, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (285);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 163
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (167, 1, 'After nearly half an hour you feel the current getting stronger. Looking out across the surface you can see that you are approaching a whirlpool in the middle of a large river bend. You will surely drown if caught in its current, so you quickly swim towards the right hand river bank and continue your mission on foot, carrying all your equipment.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (167, 163, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (286, 167, 325, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (286);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 164
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (168, 1, 'Carefully opening the seals on each of the bottles, you sniff at the contents. They all seem to be different types of wine. Suddenly a smaller bottle tucked behind the others catches your eye. Pulling out the glass stopper, you recognize the smell to be that of Alether, a Potion of Strength, which is orange in colour. You may keep this Potion and swallow it before you fight. It will increase your COMBAT SKILL by 2 points for the duration of your fight. Be sure to mark it down on your Action Chart and to strike it off once you have used it.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (168, 164, 4);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE,WEIGHT, IMAGE_URL) VALUES
    (19, 'Alether', 'Potion of Alether', 'POTION', 'SMALL','images/flight/items/potionofalether.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (40, 168, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (40, 19);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (40);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (41, 168, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (41, 19);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (41);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (287, 168, 312, 'You now decide to investigate the stable by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (287);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 165
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (169, 1, 'You awake in a fever. Images swim before your eyes and then fade completely. The pain in your back is intense and you cry out for relief. You feel a cool, damp cloth placed on your forehead and glimpse the worried face of a young woman. An old man whispers in her ear and then he disappears from view. The girl kneels at your side and comforts you with words of kindness and reassurance, but the light quickly fades and darkness engulfs you once more.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (169, 165, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (288,169,  216, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (288);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 166
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (170, 1, 'You are in the presence of a great evil. Your mind is being probed by a powerful and timeless being and you must shield yourself. The struggle has begun and your sanity is at stake. It is a long and torturous ordeal, during which you experience many fantastic and terrible apparitions that tempt and appal you. After this you must lose 4 ENDURANCE points and stagger towards the tunnel.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (170, 166, 9);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (42, 170, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (42, -4);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (42);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (289,170,  106, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (289);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 167
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (171, 1, 'You have been travelling for about a mile when you notice two legs sticking out from behind a large boulder.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (171, 167, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (290, 171, 182, 'If you possess and wish to use the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (290, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (291,  171, 90, 'If you wish to take a closer look, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (291);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (292, 171, 268, 'If you would rather avoid meeting their owner and press on into the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (292);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 168
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (172, 1, 'You pull yourself to the top of the opulent caravan and nestle among the travelling cases and bags. Night will soon engulf the highway. A chill wind blows from the west and you pull your cloak around yourself to keep warm. You listen to the voices below and you can smell the mouthwatering aroma of spiced meat. It reminds you that you are very hungry and must now take a Meal. The fatigue of your ordeal finally catches up with you and you drift off into a restless sleep.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (172, 168, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (43, 172, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (43, -1);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (43);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (293,172,  67, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (293);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 169
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (173, 1, 'As you pass each skull, it slowly turns, as if watching your every move. You are halfway across the room when you hear the sharp crack of bone splitting. Suddenly you see hideous shapes hatching inside the skulls, and stretching their wings. Ten slimy winged creatures attack you, and you must fight them as one enemy.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (173, 169, 9);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (10, 'Crypt Spawn', 16, 16, 'images/flight/creatures/cryptspawn.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (44, 173, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (44, 10);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (294, 173,  139, 'If you win the combat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (294);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 170
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (174, 1, 'The tunnel is dark and the air is much cooler than outside. You carefully advance with one hand on the tunnel wall to aid your sense of direction. You have been in total darkness for three minutes when you detect the foul smell of decay ahead, similar to rotting meat. If you have a Torch and Tinderbox in your Pack, you may light the Torch to see your way ahead. Suddenly, something heavy drops from the tunnel ceiling onto your back and you fall to your knees.  It is a Burrowcrawler and you must fight it, for it is trying to strangle you with its long slimy tentacles.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (174, 170, 20);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (11, 'Burrowcrawler', 17, 7, 'images/flight/creatures/Burrowcrawler.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (45, 174, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (45, 11);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (295, 174, 323, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (295);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 171
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (175, 1, 'You are at the very edge of the wood when your horse rears up in agony. The Kraan has sunk its claws deep into the horse’s hind legs and is trying to knock you to the ground with its wings. The ghoulish Giak rider squeals with delight as he stabs at you with his spear. You jump to the ground and dash for the trees, leaving the poor dying horse in the clutches of the Kraan.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (175, 171, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (296, 175, 307, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (296);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 172
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (176, 1, 'Night falls and you are soon engulfed in darkness. To press on any further would be futile, for you would be sure to lose your way. Tethering your horse to a tree, you pull your green Kai cloak about you and fall into a restless sleep. You are awoken by the sound of troops in the distance. Across the lake you see the black shapes of Drakkarim and a pack of Doomwolves. A Kraan appears from above the trees and lands on the roof of the small wooden shack. It is being ridden by a creature dressed in red robes. The Kraan takes off and begins to fly across the lake to where you are hidden.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (176, 172, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (297, 176, 116, 'If you wish to use the Kai Discipline of Camouflage to hide yourself and your horse, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (297, 'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (298, 176, 243, 'If you wish to ride deeper into the forest to escape the Kraan, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (298);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (299, 176, 31, 'If you wish to prepare to fight the creature, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (299);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 173
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (177, 1, 'As you reach the door you hear the crash of a giant stone slab as it falls from the ceiling. Turning around, you see that your exit is now blocked.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (177, 173, 28);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (300, 177, 161, 'If you have a Silver Key, you may try to open the door by turning to');
INSERT INTO ITEM_OUTCOMES (OUTCOME_ID, ITEM_ID)
VALUES (300, 17);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (301, 177, 263, 'If you do not possess a Silver Key, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (301);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 174
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (178, 1, 'After nearly an hour of drifting downstream, the water current becomes quite strong and you can see that you are being drawn towards a whirlpool near the centre as the river curves round. You know that if you are caught in the swirling water, you stand very little chance of escaping a watery death. You dive into the muddy river and as you begin to swim towards the shore.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (178, 174, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (302, 178, 194, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (302);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 175
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (179, 1, 'Waving your arms at the approaching cavalry, you recognize them to be Border Rangers of the King’s army, tough woodsmen who police the troubled western frontier of the kingdom. Your relief at seeing them soon fades when you realize that they are fleeing from a pack of Doomwolves with snarling Giak riders. Black arrows are dropping all around the rangers, as the vicious Doomwolves get nearer and nearer.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (179, 175, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (303, 179, 186, 'If you possess the Kai Discipline of Camouflage, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID,ABILITY_TYPE)
VALUES (303, 'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (304, 179, 43, 'If you wish to take cover and hide, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (304);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (305, 179, 118, 'If you wish to make for the other bank, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (305);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 176
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (180, 1, 'You hide behind some thick bushes so that the Doomwolf and its rider will not see your white horse. Luckily it works—the beast lopes past and vanishes down the track that you have just come along.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (180, 176, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (306, 180, 257, 'If you wish to attack the remaining Doomwolves and their riders, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (306);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (307, 180, 128, 'If you wish to press on deeper into the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (307);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 177
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (181, 1, 'You search all of the cupboards in the small cottage but do not find anything of use or value. You decide that you have wasted enough time here and must press on without further delay.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (181, 177, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (308, 181, 86, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (308);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 178
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (182, 1, 'Your skill enables you to recognize the boots and leggings of a King’s soldier. You can sense that the man is wounded and in need of help.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (182, 178, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (309,  182, 90, 'If you wish to aid him, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (309);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (310, 182, 268, 'If you would rather leave him here, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (310);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 179
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (183, 1, 'You have been spotted by the guards who level their crossbows at you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (183, 179, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (311, 183, 322, 'If you wish to raise your hands above your head and walk slowly towards them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (311);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (312, 183, 53, 'If you wish to run for cover in the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (312);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 180
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (184, 1, 'They see you raise your weapon, and they instantly attack you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (184, 180, 16);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (12, 'Sergant', 15, 22, 'images/flight/creatures/sergant.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (46, 184, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (46, 12);

INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (13, 'Soldier', 13, 20, 'images/flight/creatures/soldier.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (47, 184, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (47, 13);

INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (14, 'Soldier', 12, 20, 'images/flight/creatures/soldier.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (48, 184, 3);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (48, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (313, 184, 64, 'If you kill all three of them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (313);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 181
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (185, 1, 'Instinctively you duck, and dive to avoid the crossbow bolt. The bandit fires and you feel the sleeve of your jacket tear as the missile grazes past your left arm. You thank the gods for your good fortune and sprint on. None of the other bandits have bows and they soon give up the chase. As you sprint off into the distance, you leave them all far behind. You stop just long enough to strap up your wounded arm and then continue along the road towards the outer defences of the capital.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (185, 181, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (314, 185, 292, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (314);

-- --------------------------------------------------------------------------- --
--  STORY_SECTION: 182
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (186, 1, 'Three rangers gallop past the river bank, closely followed by the Giaks on their snarling mounts—the Doomwolves. But your Camouflage skill has saved you from being spotted. The pack of evil Giaks continue on their chase without even glancing at the river.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (186, 182, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (315, 186, 178, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (315);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 183
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (187, 1, 'The officer orders his men to halt and asks you your business. You tell him who you are, and how the monastery has been destroyed. He is deeply saddened to hear your news. He offers you a horse and asks you to accompany him to Prince Pelathar, the King’s son.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (187, 183, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (316, 187, 99, 'If you accept, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (316);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (317, 187, 204, 'If you decide to decline his offer, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (317);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 184
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (188, 1, 'The caravan is out of control and is bumping wildly through the rough ground that borders the highway. With difficulty you eventually steer the frightened horses back onto the road and halt the caravan. A quick search of the interior reveals 40 Gold Crowns, a Sword, and enough Food for 3 Meals. If you wish to keep any of these items, mark them on your Action Chart.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (188, 184, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (49, 188, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (49, 40);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (49);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (50, 188, 2);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (50, 3);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (50);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (51, 188, 3);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (51, 6);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (51);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (318, 188, 67, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (318);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 185
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (189, 1, 'You narrow your eyes and scan the trees for some sign of the hidden archer. Your wait is not a long one, for a moment later a sharp pain tears through your chest and you are thrown back by the force of three arrows. Two of the black shafts have sunk deep into your rib cage, and the third has pierced your thigh. The last thing that you see is the canopy of fern trees above and a large green dragonfly as it settles on your belt buckle. Your life and your mission end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (189, 185, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (135, 189, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (135);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 186
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (190, 1, 'The Kakarmi disappear into the dense undergrowth and you soon find yourself lost. After nearly two hours of walking you hear the sound of running water. You decide to investigate a little closer.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (190, 186, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (319, 190, 108, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (319);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 187
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (191, 1, 'Two furry faces appear over the top of the trunk. Both pairs of eyes stare at your weapon and the two creatures let out a shriek of fright. Leaping from the trunk, they disappear into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (191, 187, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (320,191,  190, 'If you wish to follow them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (320);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (321, 191, 232, 'If you wish to let them go and continue, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (321);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 188
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (192, 1, 'You can see the shadow of the Kraan getting larger all around you. It suddenly strikes, pitching you forward onto your face with the power of its attack. You have been wounded in both arms. Lose 3 ENDURANCE points and run to the trees.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (192, 188, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (52, 192, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (52, -3);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (52);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (322, 192, 307, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (322);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 189
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (193, 1, 'You thank your Kai training and your quick thinking, for that bog could have proved as deadly as any Drakkarim or Kraan. You are worried about losing time, and push on further into the trees towards the south. Ahead of you, you see a wide path that also leads south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (193, 189, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (323, 193, 120, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (323);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 190
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (194, 1, 'You walk for three miles along the water’s edge until you chance upon a wrecked river barge. It appears to have served as shelter for someone, as you can see a bed and some cooking utensils through a hole in the deck.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (194, 190, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (324,194,  22, 'If you wish to search the barge, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (324);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (325, 194, 277, 'If you wish to press on, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (325);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 191
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (195, 1, 'The bodyguard unsheathes a large scimitar and strikes at your head.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (195, 191, 13);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (15, 'Bodyguard', 11, 21, 'images/flight/creatures/bodyguard.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (53, 195, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (53, 15);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (326, 195, 26, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (326);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 192
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (196, 1, 'You see the razor-fanged mouth of a Doomwolf and hear the hideous cries of the Giaks. Two of them are coming straight for you. You are saved from certain death when your horse jumps at the approaching beasts, knocking them both to the ground. You lash out at the Giak and open a large wound in his head ... and then suddenly, as if by a miracle, you’re through and racing on down the highway, clear of the rest of the pack. But a shadow follows you. It is a Kraan and it has started to dive. Its target is you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (196, 192, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (327, 196, 175, 'If you veer off the highway towards the cover of the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (327);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (328, 196, 122, 'If you press on regardless of the Kraan and gallop flat out down the highway, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (328);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 193
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (197, 1, 'The beast and its rider lie dead. You notice a Scroll tucked into the Giak’s belt. You may take this if you wish, but remember to mark it on your Action Chart. The other Doomwolves are charging along the path towards you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (197, 193, 14);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL) VALUES
    (20, 'Giak Scroll', 'Giak Scroll', 'SCROLL', 'SMALL','images/flight/items/giakscroll.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (54, 197, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (54, 20);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (54);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (329, 197, 257, 'If you wish to fight them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (329);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (331, 197, 128, 'If you wish to escape into the woods, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (331);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 194
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (198, 1, 'You sprint towards the wagon. People are running everywhere in panic as the Kraan make their attack, carrying their poor victims off into the darkening sky. A large Kraan is hovering above the wagon and three snarling Giaks drop from its back onto the startled horses. You must fight them or leave the wagon and run to the safety of a nearby farmhouse.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (198, 194, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (332, 198,  212, 'If you wish to fight the Giaks, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (332);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (333, 198, 151, 'If you wish to run to the farmhouse, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (333);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 195
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (199, 1, 'Wiping the bear’s blood from your weapon, you notice the mouth of a cave hidden behind the rock from which the bear attacked.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (199, 195, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (334, 199,  61, 'If you wish to investigate this cave further, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (334);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (335, 199, 108, 'If you wish to press on, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (335);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 196
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (200, 1, 'You follow the man into a small library off the main hall. He pushes one of the many books on the shelves which line all four walls, and you hear a metallic click. One section of the bookcase slowly slides back to reveal a hidden passage.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (200, 196, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (336, 200, 336, 'If you wish to follow the man into the passage, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (336);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (337, 200, 147, 'If you do not want to enter the dark corridor, leave the guildhall and return to the street. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (337);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 197
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (201, 1, 'The Drakkar lies dead at the bottom of the ferry. He has a Sword and 6 Gold Crowns which you may keep if you wish. You push the body into the water where it floats for a few seconds before disappearing into the icy depths. Grabbing the pole, you steer to the other side of the lake and abandon the ferry.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (201, 197, 14);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (55, 201, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (55, 6);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (55);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (56, 201, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (56, 6);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (56);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (338, 201, 176, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (338);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 198
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (202, 1, 'You can sense that there is someone else behind the screen. There is a lingering aura of wickedness around this shop. Be on your guard—something is wrong here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (202, 198, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (339, 202, 9, 'If you wish to return to the street, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (339);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (340, 202, 155, 'If you wish to examine the goods in the glass counter, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (340);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 199
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (203, 1, 'Most of the cupboards and drawers are empty. Whoever lived here took nearly everything they owned with them, but you do manage to scrape together enough fruit in the cellar for one Meal. You may mark this on your Action Chart.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (203, 199, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (58, 203, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (58, 6);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (58);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (341,203,  84, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (341);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 200
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (204, 1, 'Night is starting to close in. The shadows of the forest are growing longer and darker. Just as you are about to stop and rest, you see through the trees a line of people moving south along a wide highway. Moving closer, you notice a large merchant’s caravan in the centre of the dusty turnpike. It is drawn by six large horses and is moving much faster than any of the other traffic. This could be your chance to reach the capital as quickly as possible.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (204, 200, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (342,  204, 172, 'If you wish to use the Kai Discipline of Camouflage to hide in among the packing cases strapped to the roof, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID,ABILITY_TYPE)
VALUES (342, 'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (343,  204, 81, 'If you wish to jump onto the caravan, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (343);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 201
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (205, 1, 'You follow the rough track for nearly an hour when you notice ahead of you another wider path branching off towards the south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (205, 201, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (344, 205, 242, 'If you wish to turn south along the new path, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (344);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (345, 205, 17, 'But if you wish to head east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (345);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (346, 205, 132, 'Or if you wish to go west, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (346);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 202
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (206, 1, 'Urging your horse forward, you gallop down the long stretch of highway towards the capital. After only a few minutes your horse suddenly slows and finally limps to a halt. You dismount and examine its raised right foreleg. You curse your ill luck, for you see that it has thrown a shoe and injured its hoof quite badly. You will have to leave him here and proceed on foot as quickly as you can.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (206, 202, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (347,206,  60, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (347);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 203
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (207, 1, 'You suddenly feel a searing pain shoot through your chest as something explodes against you in a shower of red sparks. You lose 10 ENDURANCE points. Through the smoke, the Sage is preparing to throw more explosives at you.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (207, 203, 5);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (59, 207, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (59, 10);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (59);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (348, 207, 83, 'If you have 10 or more ENDURANCE points left, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (348);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (349, 207, 348, 'If you now have less than 10 ENDURANCE points, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (349);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 204
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (208, 1, 'After an hour of walking you arrive at a junction. The path continues south and another path joins it from the west. You realize that the west path will lead you back to the marsh, so you continue southwards.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (208, 204, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (350, 208, 113, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (350);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 205
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (209, 1, 'Their leader picks up your discarded Equipment and ushers you along the road ahead. (You must now erase all Weapons and Backpack Items from your Action Chart.) An evil grin spreads across the face of the other two men, and you suddenly realize that they are not soldiers after all. You make a break for it and run away from there, sprinting towards the distant capital. Behind you, the ominous click of a crossbow being primed sends a shiver down your spine. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (209, 205, 16);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (60, 209, 1);
INSERT INTO DROP_ALL_WEAPONS_EVENTS (EVENT_ID)
VALUES (60);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (61, 209, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (61, 12);
INSERT INTO DROP_BACKPACK_EVENTS (EVENT_ID)
VALUES (61);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (351, 209, 185, 'If the number you have picked is 0–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (351,0,4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (352, 209, 148, 'If the number is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (352,5,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 206
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (210, 1, 'The path soon joins a highway where a signpost indicates Toran to the north and Holmgard to the south. You turn south towards the capital.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (210, 206, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (353, 210, 228, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (353);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 207
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (211, 1, 'The track soon reaches a larger road which crosses the stream via a stone bridge. A signpost at the bridge points north to Toran and south to Holmgard. The road itself is jammed with people moving south, some pushing their possessions along on handcarts. You join the refugee column and head towards the capital.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (211, 207, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (354,  211, 32, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (354);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 208
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (212, 1, 'The ghoulish creatures thrust their spears at you and attack. Fight these creatures as a single enemy.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (212, 208, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (62, 212, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (62, 7);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (355, 212,  151, 'If you win, you can run to the safety of the farmhouse by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (355);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 209
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (213, 1, 'You see ahead a corridor sloping upwards, and as you reach the top of this slope, a stone portal slides across to reveal another passage ahead. You step through the opening which then quickly closes with a crunch.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (213, 209, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (356, 213, 25, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (356);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 210
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (214, 1, 'Just inside the door, you are stopped by a journeyman of the Guildhall and asked to explain your intrusion. You calmly inform him of your urgent message for the King, and he hurries you into the Guildmaster’s chambers. A distinguished old man in deep purple robes turns to greet you and listens to your story. Taking you by the arm, he leads you into an adjoining library and closes the door. Pressing one of the many thousands of books, he releases a secret panel in the wall and beckons you to follow him.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (214, 210, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (357, 214, 336, 'If you wish to follow him into the dark passage, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (357);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (358, 214, 39, 'If you are not completely happy about this man and wish to leave the Guildhall, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (358);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 211
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (215, 1, 'You walk along a dimly lit corridor which opens out into a large square room, with an oak door in the far wall.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (215, 211, 20);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (360, 215, 248, 'If you possess the Kai Discipline of Sixth Sense turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID,ABILITY_TYPE)
VALUES (360, 'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (361, 215, 177, 'If you wish to walk across to the door, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (361);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (362, 215, 108, 'If you would prefer to return to the surface and continue your journey, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (362);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 212
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (216, 1, 'When you awake, the pain is but a memory. Restore all lost ENDURANCE points to your original score. A tall man dressed in white robes stands before you, a bowl of herbs in his hands. Placing the leaves into a kettle of boiling water, he then turns to greet you. ‘You have passed close to death and have seen his face, Kai Lord, but the Grey One has not claimed you for his flock. You are healed in body but I sense that you are wounded in spirit. What is it that troubles you so?’ You recognize the man to be one of the King’s senior physicians, for the gold embroidered emblem of a dove upon his sleeve is the sign of his respected vocation. You tell the aged cleric of the events at the monastery and of your perilous journey to the King. Raising you gently from the bed by your arm, he bids you follow him. You notice that you are in a lavishly decorated room which leads out through a long corridor lined with tapestries. It slowly dawns on you just where you are. This is the citadel of Holmgard and you are about to meet the King.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (216, 212, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (363,216,  354, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (363);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 213
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (217, 1, 'You have been trudging through the forest for nearly two hours. The nagging fear that you are lost begins to seem a reality. Apart from the occasional cry of a Kraan in the far distance, you have seen or heard no evidence that the enemy is in this part of the forest. As you descend a rocky hillock, you see something unusual in the tangled woods ahead.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (217, 213, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (364, 217, 335, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (364);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 214
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (218, 1, 'The path gradually narrows until it disappears completely into a mass of dense vegetation. You cannot go any further on this route and therefore you must return to the clearing.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (218, 214, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (365, 218, 127, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (365);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 215
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (219, 1, 'You emerge into a small clearing. In the centre you see the skeletal remains of a large animal. To the south a narrow track leads off into the distance.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (219, 215, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (367, 219, 350, 'If you wish to examine the skeleton, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (367);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (368, 219, 16, 'If you would rather press on, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (368);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 216
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (220, 1, 'Placing one hand on his forehead and the other on his wounded arm, you feel the warmth of your healing powers leave your body and give strength to the injured man. He tells you his name is Trimis and he is a soldier in Prince Pelathar’s army. The Prince and his troops are engaged in battle to the south, where a large force of the Darklords’ creatures are attacking the bridge of Alema. During the fight, he had been snatched into the air by a Kraan, and dropped into the forest. You make the soldier as comfortable as possible before continuing on your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (220, 216, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (369, 220, 268, 'If you would rather press on, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (369);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 217
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (221, 1, 'You quickly escape from the madman and dodge along a dark alleyway where the houses are small and cramped together. At the very end is a green door with a sign above it that says: Herbalis');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (221, 217, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (370, 221, 93, 'If you wish to enter, turn to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (370);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (371, 221, 9, 'If you wish to wait until you are sure the madman has disappeared and then return to the main street, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (371);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 218
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (222, 1, 'Your senses reveal that more than just horses are heading towards you. You can just make out the very high shrieks of Giak war-cries in the distance. By the number of cries and curses you estimate that there are over a dozen Giaks, and probably Doomwolves as well. You decide that advertising your existence is perhaps not quite such a good idea after all!');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (222, 218, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (372,222,  78, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (372);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 219
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (223, 1, 'All that remains of you now is embedded five feet into the stairs on which you were standing, beneath a vast granite block. Your mission and your life end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (223, 219, 5);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (136, 223, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (136);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 220
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (224, 1, 'The bodyguard unsheathes a scimitar and lunges for your head.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (224, 220, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (63, 224, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (63, 15);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (373, 224, 26, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (373);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (374, 224, 238, 'If you wish to evade combat at any time during the fight, you can jump from the speeding caravan by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (374);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 221
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (225, 1, 'Cautiously, you approach the base of the log wall. The tree trunks are rough-hewn and afford plenty of footholds for your climb. As you reach the top of the wall, you come face to face with a crossbow. The soldier holding it in your face motions for you to descend a wooden ladder to the ground. You do not argue with him. Slowly you descend the ladder.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (225, 221, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (375, 225, 322, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (375);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 222
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (226, 1, 'As you go on you discover a forest path that divides at the point you join it.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (226, 222, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (376, 226, 70, 'If you wish to use your Kai Discipline of Tracking, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (376, 'TRACKING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (377, 226,143, 'If you wish to take the south fork, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (377);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (378, 226,256, 'If you wish to take the east fork, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (378);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 223
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (227, 1, 'After quite a struggle, you manage to free the heavy trunk from the river bank. Gathering your equipment in a bundle, you stow it on top of the log and then slowly wade out into the river. The current soon takes you and you drift slowly downstream. After twenty minutes you hear the sound of horses along the left bank.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (227, 223, 27);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (379, 227, 78, 'If you wish to hide behind the log, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (379);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (380, 227, 179, 'If you wish to climb onto the log and prepare to catch the riders’ attention, then turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (380);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 224
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (228, 1, 'You have ridden several miles and have seen no sign of refugees or of the enemy. You race on towards a high ridge in the middle distance. You should be able to see the capital from there. As you reach the peak, the sight that meets you on the far side is one of hope—but there is still one challenge you know you have to face.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (228, 224, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (381, 228, 156, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (381);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 225
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (229, 1, 'You recognize the language to be that of the Kakarmi, an intelligent race of forest animals that live in, and care for the forests of Sommerlund. You have nothing to fear from these creatures as they are very timid and gentle in their behaviour. Using your skill of Animal Kinship, you call to them in their strange native tongue.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (229, 225, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (382, 229, 191, 'If you say ‘Do not be afraid, I am a friend,’ turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (382);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (383, 229, 41, 'If you say ‘I am a Kai Lord. I wish you no harm. I must talk with you,’ turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (383);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 226
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (230, 1, 'At first the descent is quite easy, but you soon find it difficult to see clearly and your legs feel very weak. The ‘Sleeptooth’ scratches are affecting you, and suddenly you pitch forward and slip head-first into darkness.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (230, 226, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (384, 230,  281, 'If the number you have picked is 0–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (384,0,4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (385, 230, 342, 'If the number is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (385,5,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 227
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (231, 1, 'You are now up to your waist in slimy water. The air is thick with small insects that sting your face and clog your nose. Something wraps itself around your leg. It is a Marshviper and you must fight it.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (231, 227, 29);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (16, 'Marshviper', 13, 6, 'images/flight/creatures/marshviper.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (64, 114, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (64, 16);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (386, 231, 275, 'If you lose any ENDURANCE points in the combat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (386);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (387, 231, 352, 'If you kill it without losing any ENDURANCE points, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (387);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 228
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (232, 1, 'The path continues eastwards but soon disappears into thick undergrowth.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (232, 228, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (388, 232, 143, 'If you continue east, cutting through the vegetation with your weapon, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (388);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (389, 232, 219, 'If you head south to where the bushes are less dense and then press on through the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (389);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 229
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (233, 1, 'The Kraan hovers above you, raising dust with the beat of its huge black wings. The dust gets into your eyes and nose, and you start to cough. Now the beast attacks. If you win you have a choice:');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (233, 229, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (65, 114, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (65, 1);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (390, 233,  271, 'Will you search the body by turning to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (390);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (391, 233, 127, 'Or will you continue along the east path by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (391);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 230
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (234, 1, 'In the far distance, you can make out the silhouette of soldiers on barges that are strung out in a line across the river. You can hear the low growls of Doomwolves returning along the opposite bank. For once you throw caution to the wind and sprint along the river bank towards the barges in the distance.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (234, 230, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (392, 234, 183, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (392)

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 231
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (235, 1, 'You are about to ask the price of the potions when the bamboo screen crashes down and a young man leaps at you. He has a long curved dagger in his hand. He is upon you and you must fight for your life.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (235, 231, 5);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL) VALUES
    (17, 'Robber', 13, 20, 'images/flight/creatures/robber.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (70, 235, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (70, 17);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (393, 235, 96, 'If you kill him within 4 rounds of combat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (393);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (394, 235, 207, 'If you are still fighting after 4 rounds of combat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (394);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (395, 235, 9, 'You may evade more fighting after 2 rounds of combat by dashing through the front door. If you wish to do this, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (395);



-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 232
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (236, 1, 'The rough-looking leader approaches you and says, ‘Our needs are simple, kind sir. Your money or your life!’');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (236, 232, 16);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (396, 236, 184, 'If you wish to fight them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (396);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (397, 236, 24, 'If you wish to run, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (397);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 233
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (237, 1, 'After nearly an hour, you catch up with the horse and succeed in calming him down. You are now north of the cabin, but you are confident of finding your way back. Mounting the horse, you ride back past the cabin, and press on towards the south once again.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (237, 233, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (398, 237,  210, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (398);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 234
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (238, 1, 'You jump clear of the speeding caravan but land very badly and break your ankle. The pain is terrible and you soon lose consciousness. Unfortunately you never wake up, but it may be of interest to you that your head is now adorning the saddle of a Kraan. Your life and your mission end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (238, 234, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (137, 238, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (137);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 235
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (239, 1, 'The Prince’s horse is indeed a magnificent animal, fast and sure of foot. You gallop along the twisting track as if it were a straight highway, until the noise of battle has disappeared far behind you. You are hungry and must eat a Meal during your ride. After several miles, the path stops abruptly at a junction. There is a signpost, but it has been hacked down.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (239, 235, 22);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (71, 239, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (71, -1);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (71);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (400, 239, 258, 'If you wish to use your Kai Discipline of Tracking, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (400,'TRACKING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (401, 239, 34, 'If you wish to turn left, go to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (401);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (402, 239, 149, 'If you wish to turn right, go to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (402);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 236
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (240, 1, 'The Gem hovers above the mouth of the skeleton king, glowing a fierce red. Suddenly, an explosion of searing crimson flame lashes upwards from the sarcophagus, destroying the Gem completely. You are thrown against the far wall and knocked unconscious. When you awake, the chamber is completely empty. The skeleton king and the sarcophagus have vanished. You have lost 6 ENDURANCE points, and your initial COMBAT SKILL is reduced by 1 point for the rest of your life. You carefully get to your feet and stagger towards the tunnel.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (240, 236, 9);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (72, 240, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (72, -6);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (72);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (73, 240, 2);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (73, -1);
INSERT INTO COMBAT_SKILL_CHANGE_EVENTS (EVENT_ID)
VALUES (73);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (74, 240,3);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (74, 18);
INSERT INTO DROP_ITEM_EVENTS(EVENT_ID)
VALUES (74);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (403, 240, 106, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (403);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 237
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (241, 1, 'You make full use of your Kai Discipline and quickly burrow deep into the loose earth of the wooded hillside. Covering yourself with your cloak, you pull a loose branch across your hastily dug shelter. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (241, 237, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (404, 241, 269, 'If you have picked a number 0–4, then you have passed undetected. Turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (404,0,4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (405, 241, 75, 'If you have picked a number 5–9, then you are not so lucky! Turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (405,5,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 238
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (242, 1, 'The path meanders between several small, wooded hills and eventually leads to a ruined log cabin. It seems that it had burnt down not so long ago, for the ashes are still warm and a haze of smoke still lingers. You sense possible danger here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (242, 238, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (406, 242, 44, 'You may leave by the south route by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (406);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (407, 242, 71, 'Or you may take the north track by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (407);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 239
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (243, 1, 'As you push on into the forest, you hear the wings of the Kraan pass above the trees and disappear northwards. You ride on for nearly an hour until you come to a clearing. On the far side is a track that leads off to the south.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (243, 239, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (408, 243, 36, 'If you wish to enter the clearing and take the south exit, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (408);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (409, 243, 120, 'If you would rather skirt the edge of the clearing and pick up the track further on, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (409);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 240
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (244, 1, 'The path leads along a ridge of wooded hillocks and changes direction towards the east.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (244, 240, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (410, 244, 82, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (410);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 241
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (245, 1, 'The wizard heeds your cry and spins around just in time to loose a searing bolt of energy at the Giak. The creature’s head disintegrates in flames and its twitching body falls in a heap at the foot of the pillar. The Giak officer sees you and shouts, ‘Ogot...Ogot!’ to his cowering troops, who quickly run away from the ruins to the safety of the forest beyond.The young wizard wipes his brow, and walks towards you, his hand extended in gratitude and friendship.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (245, 241, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (411, 245, 353, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (411);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 242
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (246, 1, 'The lid of the sarcophagus slips to the floor with a dull crunch. You are looking at the remains of an ancient king, who lies still surrounded by his treasure. An ornate crown is still in position on his skull. The jaw of the skeleton is wide open and the darkness of the mouth seems strangely bottomless. A distant rumbling can now be heard from deep in the earth.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (246, 242, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (412, 246, 170, 'If you have the Kai Discipline of Mindshield, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (412,'MINDSHIELD');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (413, 246, 11, 'If you do not, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (413);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 243
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (247, 1, 'Hurrying through the forest, you stumble and fall down a steep slope which drops you in a heap on a hidden path below. On the path is a dead body. It is a Giak, a spiteful and ghoulish servant of the Darklords. Many centuries ago, their ancestors were used by the Darklords to build for them the infernal city of Helgedad, which lies in the volcanic wastelands beyond the Durncrag range of mountains. The construction of the city was a long and torturous nightmare, and only the strongest of the Giaks survived the heat and poisonous atmospheres of Helgedad. This creature that lies before you is a descendant of these Giak slaves. It has been killed by a sword blow to its head, and by its side lies a Mace. You may take this Weapon if you wish.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (247, 243, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (75, 247, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (75, 10);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (75);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (414, 247,  99, 'Continue along the hidden path by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (414);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 244
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (248, 1, 'Your senses tell you that you are not alone. You are in very great danger. Return to the surface as quickly as you can.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (248, 244, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (415, 248, 95, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (415);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 245
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (249, 1, 'Arrows hit the water above you, and drop harmlessly past as you swim beneath the surface towards the opposite bank. Quickly you wade out of the river and dash for the trees. You are now out of range of the Giaks, who remount their Doomwolves and continue their chase.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (249, 245, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (416, 249, 194, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (416);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 246
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (250, 1, 'When the ferry reaches the middle of the lake, the man stops rowing and stands up. He laughs menacingly and pulls back the hood of his cloak to reveal himself. He is a Drakkar and you must fight him.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (250, 246, 14);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (18, 'Drakkar', 15, 23, 'images/flight/creatures/drakkar.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (76, 250, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (76, 18);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (417,250,  201, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (417);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 247
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (251, 1, 'The merchant looks angry. He calls to his bodyguard. You must think of something quickly.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (251, 247, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (418, 251, 162, 'If you decide to offer him something of greater value that you have in your Backpack, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (418);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (419, 251, 224, 'If you prepare to fight the bodyguard, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (419);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 248
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (252, 1, 'You reach the base of the hill and hurry into the forest. After only a few minutes you discover an old forest track.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (252, 248, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (420, 252, 46, 'If you wish to follow this track north, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (420);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (421, 252, 304, 'If you wish to follow this track east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (421);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 249
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (253, 1, 'You descend a flight of stone stairs that lead to a large chamber. A macabre sight awaits you. Directly opposite, across the large stone room, is an ornate archway with a corridor leading into the darkness beyond. The strange green light radiates from two lines of skulls each resting on a stone plinth. They face each other to form an eerie walkway across the room.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (253, 249, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (422, 253,  173, 'If you wish to walk across the room to the archway, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (422);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (423, 253, 109, 'If you wish to attack the skulls, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (423);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 250
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (254, 1, 'Leaping from the top of the trunk, you land in front of two small furry creatures. You recognize that they are Kakarmi, an intelligent race of animals that inhabit and tend the forests of Sommerlund. Before you can apologize for your dramatic entrance, the frightened little creatures scurry off into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (254, 250, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (424,254,  190, 'If you wish to follow them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (424);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (425,254,  232, 'If you wish to continue, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (425);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 251
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (255, 1, 'You are lucky, they do not seem to have spotted you. They slowly move on and have soon disappeared along the far side of the ridge. You continue your run.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (255, 251, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (427,255,  12, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (427);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 252
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (256, 1, 'In the centre of a small clearing you see a group of humans talking excitedly and gesturing wildly with their hands. There are two children, three men, and a woman. Their belongings are wrapped in bundles which they carry slung over their shoulders. Their clothes look well made and expensive but they are dirty and torn.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (256, 252, 12);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (428, 256, 158, 'If you wish to approach them and ask who they are, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (428);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (429, 256, 73, 'If you wish to avoid them and continue onwards on your mission, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (429);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 253
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (257, 1, 'The Doomwolves are soon on you and you must fight them one at a time.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (257, 253, 14);

-- EVENTS
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (20, 'Doomwolf', 14, 22, 'images/flight/creatures/doomwolf.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (77, 257, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (77, 20);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (78, 257, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (78, 20);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (79, 257, 3);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (79, 20);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (430, 257, 282, 'If you kill them all in battle, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (430);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 254
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (258, 1, 'Your Tracking ability tells you that several trails from the right path lead off in the direction of the left path. They have been made by large wolves. The Darklords use such beasts to scout for their armies. They are vicious creatures and are often ridden by Giaks. The left path leads towards Holmgard, and the right path leads off towards the Durncrag Mountains. The choice of route is yours.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (258, 254, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (431, 258, 34, 'If you wish to turn left, go to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (431);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (432, 258, 149, 'If you wish to turn right, go to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (432);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 255
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (259, 1, 'The creature that you now face is a Gourgaz, one of a race of cold-blooded reptilian creatures that dwell deep in the treacherous Maakenmire swamps. Their favourite food is human flesh! The Prince’s Sword lies at your feet. You may pick up and use this weapon if you wish. The Gourgaz is about to strike at you—you must fight him to the death.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (259, 255, 22);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT,IMAGE_URL) VALUES
    (21, 'Amethyst Sword', 'Prince Yisun Qis sword', 'MAGICAL_ITEM', 'SMALL','images/flight/items/amethysword.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (80, 259, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (80, 21);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (80);

INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE, IMAGE_URL)
VALUES (21, 'Gourgaz', 20, 30, 'images/flight/creatures/gourgaz.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (81, 259, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (81, 21);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (433, 259, 85, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (433);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 256
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (260, 1, 'You are awoken by the cries of Kraan high above you in the clear morning sky. Rubbing your eyes, you peer upwards through the canopy of branches to see three of the loathsome creatures fly off towards the north. You are sure you have not been spotted, but perhaps it would be best to leave now—just in case. You mount your horse and ride south along the highway.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (260, 256, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (434, 260,  228, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (434);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 257
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (261, 1, 'You find a stone portal in the east wall, but there does not appear to be any way of opening it.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (261, 257, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (435, 261, 135, 'If you wish to examine the statue, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (435);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (436, 261, 164, 'If you wish to sit on the seat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (436);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 258
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (262, 1, 'Using your Kai Discipline of Mind Over Matter, you untie the ropes binding your hands. You wait for a chance to make a break for it and then sprint as fast as you can into the dense undergrowth. Black arrows whistle past you, but you are soon deep among the trees and safe again. You have lost your Backpack and Weapons but you have your life and limbs intact. You continue to push on into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (262, 258, 14);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (82, 262, 1);
INSERT INTO DROP_ALL_WEAPONS_EVENTS (EVENT_ID)
VALUES (82);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (83, 262, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (83, 12);
INSERT INTO DROP_BACKPACK_EVENTS (EVENT_ID)
VALUES (83);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (437,262,  52, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (437);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 259
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (263, 1, 'The room is getting colder. You gradually notice the smell of sulphur in the air. You can hear chanting in the distance. It sounds as if it is somewhere in another part of this cave. A slit in the stone wall opens, and the end of a black staff begins to appear. Suddenly a bolt of blue lightning leaps from the staff and hits you in the chest. As your life slowly drains away, the last thing you see is an old man dressed in black robes raising a dagger above your throat. Your life and your mission end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (263, 259, 28);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (138, 263, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (138);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 260
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (264, 1, 'Swimming towards the bank, you can see the ranger spread-eagled at the water’s edge. You reach him but only to find that he has broken his neck in the fall and is dead. Suddenly, two Giaks jump on you from above and you must fight them.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (264, 260, 14);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (84, 264, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (84, 7);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (85, 264, 2);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (85, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (438, 264, 159, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (438);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 261
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (265, 1, 'Sweating, and out of breath, you part the dense undergrowth to see a Kraan hovering over the wagon. Three ghoulish Giaks drop from its back, startling the horses. They advance upon the helpless children with their spears.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (265, 261, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (439, 265, 212, 'If you wish to run back to the wagon and defend the children, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (439);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (440, 265, 268, 'If you want to run deeper into the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (440);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 262
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (266, 1, 'The merchant takes your Gold and clicks his fingers. His bodyguard attacks you with his scimitar.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (266, 262, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (441, 266, 195, 'If you wish to fight, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (441);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (442, 266, 238, 'If you wish to evade combat, jump clear of the speeding caravan by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (442);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 263
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (267, 1, 'Carefully, you follow the stream as it makes its way towards the east. Suddenly you notice something in the distance that brings you to a halt. Lying in the rushing water like a great black dam is a dead Kraan. You creep nearer, under cover of the foliage, until you see three arrows deep in the beast’s chest. Trapped beneath the beast is the body of its rider. It is a Giak, a spiteful and malicious servant of the Darklords. Many centuries ago, their ancestors were used by the Darklords to build the infernal city of Helgedad, which lies in the volcanic wastelands beyond the Durncrag range of mountains. The construction of the city was a long and torturous nightmare, and only the strongest Giaks survived the heat and poisonous atmospheres of Helgedad. This creature is a descendant of these Giak slaves. It seems that this one must have drowned. The Giak’s pouch contains 3 Gold Crowns.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (267, 263, 12);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (86, 267, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (86, 3);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (86);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (443, 267, 73, 'You may continue downstream, by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (443);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (444, 267, 160, 'Or you may leave the stream and make your way on foot through the wooded hills to the south by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (444);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 264
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (268, 1, 'You have not gone far when you hear the sound of battle to the west.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (268, 264, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,SECTION_ID, CONTENT)
VALUES (445, 268, 99, 'If you wish to follow the sound, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (445);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (446, 268, 8, 'If you would rather continue south, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (446);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 265
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (269, 1, 'You quickly move off into the forest before more Doomwolves or Kraan appear.You have walked for more than an hour when you reach the top of a rocky hill. The sight that befalls you on the other side is one of hope. But there is also a daunting challenge to be faced.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (269, 265, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (447, 269, 145, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (447);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 266
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (270, 1, 'As the beast writhes in its final death agony on the black stone floor, the portal in the east wall clicks open to reveal a corridor beyond. You quickly dash through the secret door just as it crashes shut.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (270, 266, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (448, 270, 213, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (448);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 267
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (271, 1, 'Covering your nose with your cloak, you cautiously approach the dead beast. The sharp smell of its fetid black blood makes your stomach churn, but you are determined to press on. Then you notice a large saddlebag strapped to its chest. Opening the bag, you find a Message written on an animal skin. Deeper in the bag is a Dagger. You may keep both the Message and the Dagger if you wish. You leave the body and continue eastwards along the path.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (271, 267, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (87, 271, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (87, 1);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (87);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (88, 271, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (88, 20);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (88);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (449, 271, 127, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (449);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 268
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (272, 1, 'You black out for only a few minutes before you are revived with a measure of strong spirit. Feeling weary but thankful to be alive, you lean on the shoulders of the King’s men and you stagger towards the outer defences.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (272, 268, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,SECTION_ID, CONTENT)
VALUES (450, 272,  292, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (450);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 269
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (273, 1, 'The madman lies dead at your feet. Two soldiers soon appear at the doorway and immediately congratulate you. They tell you that he was an escaped lunatic whom they had been tracking for the last two days. One of the soldiers gives you 10 Gold Crowns reward money and offers to escort you to the citadel.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (273, 269, 5);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (89, 273,1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (89, 3);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (89);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (451, 273, 318, 'If you accept his offer, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (451);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (452,  273, 9, 'If you would prefer to trust your own sense of direction, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (452);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 270
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (274, 1, 'You hear the angry cries of the enemy drift across the lake. You must leave here before more Kraan appear. You mount your steed and push on further into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (274, 270, 29);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (453, 274, 23, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (453);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 271
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (275, 1, 'You feel very weak. The poison of the snake has entered your bloodstream and you can feel the muscles of your body involuntarily tightening and relaxing. Your legs suddenly collapse beneath you and you feel the slimy water of the marsh close over your head. Your life ends here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (275, 271, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (139, 275, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (139);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 272
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (276, 1, 'Keeping a watchful eye on the sky above, you move quickly along the track. You recall that this route leads to Fogwood, a small cluster of huts that have been used by a family of charcoal burners for nearly fifty years. After twenty minutes you reach the edge of a clearing where the huts are grouped in a small circle. There is no sign of the usual mist of wood smoke which gives Fogwood its apt name, and the huts are unusually quiet.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (276, 272, 26);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (454, 276, 136, 'If you have the Kai Discipline of Tracking, you may turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (454, 'TRACKING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (455, 276, 309, 'If you do not possess this skill, you prepare your weapon and stealthily approach the huts. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (455);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 273
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (277, 1, 'The outer fieldworks of the city can now be seen. Drawn across the river is a line of barges chained together to form a floating barricade. You can also see soldiers running along the log walls of the fieldworks, and you can hear the faint noise of battle drifting from the west.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (277, 273, 16);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (456, 277, 183, 'If you wish to approach the barges, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (456);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (457, 277, 53, 'If you wish to take cover in the trees, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (457);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 274
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (278, 1, 'In your haste to avoid the enemy, you catch your foot in a tree root and you are pitched head over heels in a tumble of dust and leaves. You quickly get to your feet and, crashing through the undergrowth at the base of the hill, you run into the forest. You have been running for nearly ten minutes when you discover that you have lost your Weapon(s). Well, at least you still have your life and your Backpack. Wiping the grime from your face, you push on through the trees ahead.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (278, 274, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (90, 278, 1);
INSERT INTO DROP_ALL_WEAPONS_EVENTS (EVENT_ID)
VALUES (90);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (458, 278,  335, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (458);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 275
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (279, 1, 'You have followed this twisting track for about twenty minutes when you hear the beating of wings high above the trees. Looking up you see a large Kraan approaching from the north, its huge black wings casting a gigantic shadow on the trees below. On its back are two creatures armed with long spears. They are Mountain Giaks—small ugly creatures full of hatred and malice. Many centuries ago, their ancestors were used by the Darklords to build the infernal city of Helgedad, which lies in the volcanic wastelands beyond the Durncrag mountain range. The construction of the city was long and torturous, and only the strongest of the creatures survived the heat and poisonous atmosphere of Helgedad. Quickly you dive for the shelter of a large fern tree as the Kraan passes overhead. With heart pounding, you pray that your quick reactions have saved you from being spotted. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (279, 275, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (459, 279, 349, 'If the number you have picked is 0–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (459,0,4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (460, 279, 77, 'If the number is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (460,5,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 276
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (280, 1, 'Reaching for your weapon you manage to hack your way through the tangle of wood and twisted branches to the clearer forest beyond. Your cloak is torn in several places and your right leg is badly bruised above the knee.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (280, 276, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (92, 280, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (92, -1);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (92);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (461, 280, 217, 'Lose 1 ENDURANCE point and turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (461);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 277
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (281, 1, 'When you awake, you find yourself lying at the foot of a steep slope in a tangle of tall grasses. Your Backpack and Weapon are missing and your head aches. You cannot tell how long you have been unconscious, but you realize that you must not delay in pressing on with your mission. Standing up, you see your Backpack is intact but one Weapon is broken in two and is now useless. Remember to cross it off your Action Chart. You quickly pick up your Backpack and move off into the trees ahead.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (281, 277, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (93, 281, 1);
INSERT INTO DROP_WEAPON_EVENTS (EVENT_ID)
VALUES (93);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (462, 281, 115, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (462);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 278
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (282, 1, 'You quickly leave the path and gallop off along the track heading towards the capital. When you reach the point where the Doomwolves stopped, you can see just beyond a meadow the main highway which runs from the northern port of Toran to Holmgard. You should reach the capital by morning.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (282, 278, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (463, 282, 152, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (463);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 279
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (283, 1, 'You clamber over the loose rocks and into the mouth of the cave, and then quickly turn to push a large rock over the entrance. After a few minutes you see the Giaks on the rocky ledge outside, their evil yellow eyes furtively searching every crevice of the hillside. They are so close that you feel sure that they must spot you any second now. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (283, 279, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (464, 283, 114, 'If the number you have picked is 0–6, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (464, 0,6);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (465, 283, 98, 'If the number is 7–9, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (465,7,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 280
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (284, 1, 'As you begin your climb, you hear the beat of wings approaching from the west. Kraan! By the noise they are making you estimate there are at least ten, perhaps more. You curse your bad luck, for the hillside offers no cover from the sky. If you are attacked during this difficult climb, you will find it nearly impossible to fight back and remain upright at the same time.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (284, 280, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (467, 284, 331, 'If you decide to draw your weapon and remain completely still, in the hope that the Kraan will not spot you, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (467);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (468, 284, 174, 'If you decide to quickly descend the hillside and take cover in the tunnel, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (468);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 281
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (285, 1, 'As you race through the trees you can hear the horrible cackle of the Giaks close behind you. Soon the trees start to thin out and directly ahead you can see a rocky hillside.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (285, 281, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (470, 285, 315, 'If you break cover and climb up the hill, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (470);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (471, 285, 80, 'If you change direction and continue your run through the forest, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (471);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 282
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (286, 1, 'Looking above the heads of the crowd, you notice that one of the shops opposite the main gate is the timbered surgery of a city physician. Suddenly, a bold plan springs to mind. Bracing yourself against the tide of bodies, you struggle across to the other side of the street. You quickly enter to find that there is no sign of life, apart from a brightly coloured parrot in its cage by the window. Taking a selection of small bottles you slip on a white surgeon’s cloak, and fight your way back to the main gate. ‘An emergency!’ you bluff, as guards stop and question you. ‘It’s the royal cook’s wife ... she’s having a baby.’ The guards hesitate for a moment, but you assure them that the matter is most urgent and they decide to let you in. One of the great doors swings open about two feet, and you are roughly pushed through the narrow gap into the courtyard beyond.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (286, 282, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (472, 286, 13, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (472);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 283
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (287, 1, 'You are only ten feet or so away from the robed stranger when the raven squawks a warning to its master who instantly spins around. You are frozen in your tracks by the hideous apparition of a Vordak, a lieutenant of the Darklords and one of the undead. You must fight him. Due to the surprise of your attack, you may add 2 points to your COMBAT SKILL for the first round of combat only. Unless you have the Kai Discipline of Mindshield, deduct 2 points from your COMBAT SKILL for the second and subsequent rounds of fighting, for the creature is attacking you with the power of its Mindforce as well as with a large black mace!');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (287, 283, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (94, 287, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (94, 2);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, Ranking)
VALUES (95, 287, 2);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (95, 2);
INSERT INTO COMBAT_SKILL_TEMPORARY_CHANGE_EVENTS (EVENT_ID)
VALUES (95);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (473, 287, 125, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (473);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 284
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (288, 1, 'Your passage through the Graveyard will not be easy, for the ground is broken and covered with a thorny graveweed. This wicked briar tears your cloak and cuts your legs. The air hangs heavy and still. Foul gases seep from open crypts and the haunting murmur of distant whispering fills your ears. Carefully, you approach a gap between two ancient pillars, and part the graveweed with your cloaked hand. Suddenly, the ground collapses beneath you and you fall in a tumble of earth and stone.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (288, 284, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (474, 288, 74, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (474);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 285
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (289, 1, 'With a sickening thud, the chunk of marble cracks open the back of the Giak’s head. The creature drops to its knees and slowly falls forward, down to the ruins below. Elated by your skill, you race forward to aid the young wizard.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (289, 285, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (475, 289, 329, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (475);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 286
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (290, 1, 'Messengers of death—and ones eager to deliver their news—the Doomwolves surround and then attack you. Valiantly you fight, but it is to no avail for there are too many of them. As your life’s blood seeps away and eternal dark approaches, the last sight you remember is the glint of sunlight on the spires of Holmgard. You have failed in your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (290, 286, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (140, 290, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (140);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 287
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (291, 1, 'The track soon disappears completely into a tangle of thorny brambles and low-branched fir trees.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (291, 287, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (476, 291, 15, 'If you decide to return to the junction and head east, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (476);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (477, 291, 334, 'If you decide to hack your way slowly through the undergrowth in this present direction, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (477);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 288
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (292, 1, 'As you reach the walls of the fieldworks, the large oak gates open and you are quickly hurried inside. A sergeant, bloodstained and battle-weary, calls to an officer who turns and recognizes your cloak. ‘My Lord,’ he says. ‘Where are the other Kai Masters? We are in desperate need of their wisdom. The Darklords press us most cruelly and casualties are high. You inform the brave officer of the terrible fate of your kinsmen, and the urgency of your mission to seek the King’s council. Without saying a word, he motions to a soldier to bring forward two horses. You both mount and gallop off towards the high city wall of Holmgard.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (292, 288, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (478, 292, 131, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (478);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 289
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (293, 1, 'The two guards look tired and anxious. They nervously hold their royal halberds in front of themselves, using the weapons to push away anyone who comes too close to the gates. An angry woman attacks one of them, pounding his chest with her clenched fists making him fall against the other guard. All three collapse in a struggling heap of flailing arms and legs. Seeing your chance, you dash forward and pull the large lever which opens the great doors. You slip inside and the doors close without either of the guards seeing you enter.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (293, 289, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (479, 293, 142, 'Turn to');

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 290
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (294, 1, 'Inside the long box is a sword wrapped in leather. You may take this Weapon if you wish. You close the box and descend the ladder to the clearing below, taking care to use only the sound rungs.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (294, 290, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (96, 294, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (96, 6);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (96);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (480, 294, 143, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (479);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 291
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (295, 1, 'The two Giaks lie at your feet, their bodies twisted and lifeless. A quick search reveals 6 Gold Crowns, 2 Spears, and a Dagger. You may keep the Gold and take either the Dagger or a Spear. Remember to mark this on your Action Chart. The Kraan flew off during your battle, and the track is now deserted. You adjust your Backpack and continue your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (295, 291, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (97, 295, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (97, 6);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (97);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (98, 295, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (98, 2);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (98);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (99, 295, 3);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (99, 6);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (99);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (481, 295, 276, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (481);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 292
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (296, 1, 'The last thing that you experience of this life is the feeling of being sucked into the void of darkness. No trace of you remains in this world, for you have passed into a realm of timeless existence. You have become a slave of an ancient evil. Your adventure ends here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (296, 292, 9);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (141, 296, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (141);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 293
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (297, 1, 'With a wave of his hand, Banedon leaves the ruins and you continue your mission, pushing on through the thick woods ahead. You have not gone far when you realize several pairs of yellow eyes are watching you from the undergrowth to your left. Suddenly, a black arrow skims the top of your head. It is a Giak ambush and you must run as fast as you can to escape it.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (297, 293, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (482, 297, 285, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (482);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 294
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (298, 1, 'Staying underwater for as long as you can, you finally surface to see the Giaks far behind you. You have lost your Weapon(s) and Backpack but at least you are still alive. You wade out of the muddy water and continue your journey under cover of the trees that line the right-hand bank. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (298, 294, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (483, 298, 234, 'If the number you pick is 0–2, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (483,0 ,2);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (484, 298, 194, 'If the number is 3–6, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (484, 3,6);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (485, 298, 325, 'If the number is 7–9, turn to ');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (485,7 ,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 295
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (299, 1, 'You have continued your journey for about fifteen minutes when suddenly a black arrow whistles past your head and embeds itself in a tree. Instinctively you duck and draw your weapon.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (299, 295, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (486, 299, 189, 'If you wish to remain where you are in order to try to spot the hidden archer, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (486);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (487, 299, 94, 'If you wish to run for the cover of denser undergrowth, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (487);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 296
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (300, 1, 'You sense something is wrong. With fighting all around and the forces of the Darklords so near, why has this man stayed in the forest? You feel a strange aura of evil about him and decline his offer.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (300, 296, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (488, 300, 92, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (488);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 297
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (301, 1, 'Using the skills taught to you by your masters in the art of Hunting, you inch your way through the foliage undetected. In less than a minute you are directly behind, and only a few feet from, the stake to which the ranger is tied. The wood is alight and great clouds of smoke are engulfing the poor victim. You take your weapon and run forward, hidden by the smoke. One blow of your weapon is all that is needed to sever his bonds, and you pull him free and back into the safety of the forest. As you press on into the forest, you hear the shrieks of the Giaks as they discover that their prisoner has literally disappeared in a cloud of smoke!');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (301, 297, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (489, 301, 119, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (489);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 298
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (302, 1, 'The head of the bird slowly turns and it curses you. An instant later, it flies off above the trees and has soon disappeared. Shocked by what you have heard you are now sure that the fledgling was a scout of the Darklords and is now probably on its way to inform them of your whereabouts.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (302, 298, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (490, 302, 123, 'If you wish to continue your journey along the track, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (490);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (491, 302, 40, 'If you wish to leave the track and continue through the forest instead, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (491);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 299
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (303, 1, 'You soon realize that you are walking deeper into a wooded marsh. To continue in this direction will be slow and hazardous.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (303, 299, 29);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (492, 303, 231, 'If you wish to continue, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (492);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (493, 303, 97, 'If you wish to change direction and head towards firmer ground, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (493);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 300
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (304, 1, 'You walk for over an hour, during which time you keep a constant vigil for any sign of Kraan in the sky above. You have twice spotted their tell-tale shadows in the sky and on both occasions your quick wits have saved you from capture. You are now very hungry and must eat a Meal.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (304, 300, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (100, 304, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (100, -1);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (100);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (494, 304, 15, 'You may now continue on your journey by turning to ');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (494);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 301
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (305, 1, 'Your Kai Discipline reveals that the west path is a dead end.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (305, 301, 12);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (495, 305, 29, 'You choose the south path and turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (495);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 302
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (306, 1, 'Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (306, 302, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (496, 306, 112, 'If the number you have picked is 0–2, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (496,0,2);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (497, 306, 289, 'If the number is 3–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (497,3,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 303
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (307, 1, 'The forest here is sparse and hilly. It does not give much cover from an attack from the air. You move as quickly as you can from tree to tree, to avoid the Kraan but you can hear the sound of Doomwolves close behind.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (307, 303, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (498, 307, 241, 'If you have the Kai Discipline of Camouflage, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE )
VALUES (498,'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (499, 307, 75, 'If you do not, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (499);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 304
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (308, 1, 'The Gem feels incredibly hot and burns your hand. Lose 2 ENDURANCE points. You quickly pick it up with the edge of your Kai cloak and slip this Vordak Gem into your Backpack. A Gem that size must be worth hundreds of Crowns. But the Giaks are very close and their arrows whistle past your head as you turn and run for the safety of the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (308, 304, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (101, 308, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (101, -2);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (101);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (102, 308, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (102, 15);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (102);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (500, 308, 4, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (500);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 305
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (309, 1, 'Through the open doorway of the first hut, you can see the body of a charcoal burner lying face down on the rough stone floor. He has been murdered, stabbed in the back by a spear. All his furniture and belongings have been smashed and broken and not one piece remains intact. This is the evil handiwork of Giaks without any doubt, for they delight in the destruction of all things. A quick check of the other huts reveals a similar story of murder and wreckage. In the last hut that you search, you discover a Giak Spear—proof of your suspicions. You may keep this Weapon if you wish. More determined than ever now to succeed in your mission, you continue along the track.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (309, 305, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (103, 309, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (103, 2);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (103);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (501, 309, 107, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (501);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 306
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (310, 1, 'The sound of battle gradually fades behind you. Suddenly, you are pulled to the ground. Three Drakkarim have dropped from a tree above. You struggle but it is useless for there are too many of them for you and they are very strong.The last thing that you hear is the vicious snarls of Drakkarim as they raise their spears. Your life and your mission end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (310, 306, 22);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (142, 310, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (142);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 307
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (311, 1, 'Your climb is swift and easy. It reminds you of the many trees that you climbed and explored near Toran as a child, when you wanted to pick fruit or to look out over the beautiful countryside of Sommerlund. Pushing open the treehouse door, you see an old hermit huddled in the corner of the small cabin. A look of great relief spreads across his face as he recognizes your green Kai cloak. He tells you that this area is full of Giaks, and that he has counted over forty Kraan flying over his home in the last three hours. They were heading east. He scurries over to a cupboard and returns with a plate of fresh fruit. You thank him and place the fruit in your Backpack. There is enough for one Meal. The hermit also produces a fine Warhammer and lays it upon a table by the door. Your need is greater than mine, Kai Lord,’ he says. ‘Please take this trusty Warhammer if you so wish. You may take this Weapon only if you exchange it for another Weapon already in your possession, for it is the only defence that the hermit has against the enemy. Thanking the old man, you carefully descend the tree and continue on your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (311, 307, 10);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (104, 311, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (104, 5);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (104);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (105, 311, 2);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (105, 1);
INSERT INTO RATION_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (105);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,SECTION_ID, CONTENT)
VALUES (502, 311, 217, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (502);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 308
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (312, 1, 'The stable door is open and you can hear the breathing of a horse from inside the darkened interior. Suddenly, the horse senses your presence and rushes past, knocking you to the ground. You lose 1 ENDURANCE point.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (312, 308, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (106, 192, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (106, -1);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (106);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (503, 312, 124, 'If you wish to use the Kai Discipline of Animal Kinship, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (503, 'ANIMAL_KINSHIP');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (504, 312,  237, 'If you wish to chase after the runaway horse, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (504);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 309
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (313, 1, 'You have taken less than ten paces when the raven squawks a warning to the stranger. Turning to face you, the robed creature utters a piercing screech that freezes your blood and grips your stomach with fear and panic. It is a Vordak, a lieutenant of the Darklords and one of the undead. Within seconds, a host of Giaks appear at its side and attack you. You fight bravely but you are greatly outnumbered. The last thing you remember is the icy grasp of the Vordak’s skeletal fingers as they close around your throat. Your life and your mission end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (313, 309, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (144, 313, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (144);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 310
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (314, 1, 'You notice a small faded sign on the wall of a building opposite. You remember that the royal court sessions are held within the citadel and you are sure that the west road must lead there.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (314, 310, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (505, 314, 39, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (505);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 311
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (315, 1, 'The hillside is steep and the earth is loose and slippery. You chance a swift glance over your shoulder and see the two Giaks emerge from the woods. They start to climb after you. About halfway from the peak of the hill, you spot a cave to your right, almost totally hidden by a landslide.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (315, 311, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (506, 315, 328, 'If you have the Kai Discipline of Camouflage, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID,ABILITY_TYPE)
VALUES (506, 'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (507,  315, 283, 'If you wish to hide in the cave, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (507);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (508, 315, 49, 'If you wish to avoid the cave and continue your climb to the peak, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (508);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 312
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (316, 1, 'You curse your ill luck. It seems that nature and the Darklords have conspired against you, but it does not shake your determination to reach the King. Wiping the sticky mud from your clothes, you turn and press on into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (316, 312, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (509, 316, 303, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (509);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 313
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (317, 1, 'Wiping the foul Giak blood from your weapon, you quickly descend the hillside before the Kraan spots its dead riders. Many times you lose your footing on the loose rocks, falling several feet. Deduct 1 ENDURANCE point for cuts and bruises to your legs.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (317, 313, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (107, 317, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (107, -1);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (107);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (510, 317, 252, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (510);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 314
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (318, 1, 'It takes you nearly an hour to reach the citadel. When you arrive you find that the citizens of Holmgard are in panic and confusion. Your escort approaches the armoured guards at the main entrance and tells them of your urgent message for the King. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (318, 314, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (511, 318, 345, 'If you have picked a number that is 0–6, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (511,0,6);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (512, 318, 100, 'If the number is 7–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (512,7,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 315
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (319, 1, 'Wrapped in a bundle of women’s clothing is a small velvet purse containing 6 Gold Crowns. You may take these items and continue your journey.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (319, 315, 22);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (108, 319, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (108, 6);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (108);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (513, 319, 217, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (513);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 316
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (320, 1, 'In your haste to avoid the enemy, you catch your foot in a tree root and you are pitched head over heels in a tumble of dust and leaves. Crashing through the undergrowth at the base of the hill, you quickly pick up your weapon and run into the thick forest. The Kraan is no longer circling above, but you can make out the silhouette of two Giaks on the peak of the hill behind. Wiping the grime from your eyes, you wince as you discover a large bruise on your forehead. Without delay, you run deeper into the safety of the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (320, 316, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (514, 320, 335, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (514);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 317
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (321, 1, 'Instinctively you dive away from the stairs, and land on the stone floor. Your quick reactions have saved your life, for a vast granite block has fallen from the ceiling and crushed the steps, just in front of the lockplate! Shaken but still in one piece, you get to your feet. A shaft of dull grey light is seeping into the chamber from above, where the stone block was. Through a hole in the ceiling you can see a tangle of graveweed and the cloudy sky above. You clamber out of the tomb and head for the arched south gate of the necropolis as fast as possible. The pointed log walls of the city’s outer defence works are now visible.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (321, 317, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (515,321, 63, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (515);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 318
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (322, 1, 'Two soldiers and a sergeant run towards you, their crossbows aimed at your head. As they get nearer, they recognize your Kai cloak and a look of relief spreads across their faces. ‘My Lord,’ says the sergeant, ‘where are the other Kai Masters? We are in desperate need of their wisdom. The Darklords press us most cruelly and our casualties are high.’ You inform the brave soldier of the fate of your kinsmen, and the urgency of your mission to see the King. He takes you back to the barges where an officer accompanies you on horseback towards the high walls and the main gate of Holmgard.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (322, 318, 23);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (516, 322, 131, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (516);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 319
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (323, 1, 'The slimy creature lets out a long, ghastly death-cry and collapses. You are near to panic and scramble to your feet, grabbing what you think to be your belt from the jaws of the dead beast. You can see light in the far distance, and you sprint for it as fast as you can. When you finally emerge into the daylight, you fall onto the leafy ground and fight for breath in painful gasps. Slowly sitting upright, you notice that you are still wearing your belt—you had not lost it after all. What you grabbed from the jaw of the Burrowcrawler was a leather strap with a small pouch and a sheathed Dagger halfway along it. You break open the clasp to find it contains 20 Gold Crowns. You may take both the Dagger and the Crowns if you are able to. Feeling a little better now, you gather your Equipment together and push on eastwards into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (323, 319, 20);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (109, 323, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (109, 20);
INSERT INTO GOLD_AMOUNT_CHANGE_EVENTS (EVENT_ID)
VALUES (109);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (110, 323, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (110, 1);
INSERT INTO ACQUIRE_ITEM_EVENTS (EVENT_ID)
VALUES (110);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (517, 323, 160, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (517);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 320
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (324, 1, 'As you race across the open field towards the wood, a Kraan dives at you and claws your arm. Before you can fight back, it has flown off again, shrieking with cold malice. You enter the wood, but you have lost 2 ENDURANCE points.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (324, 320, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (111, 324, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (111, -2);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (111);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (518, 324, 268, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (518);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 321
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (325, 1, 'You walk for nearly an hour along the twisting river’s edge. Beyond the next turn you can hear the faint noise of battle. You carefully climb a steep hillock to get a better view of the area.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (325, 321, 14);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (519, 325, 277, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (519);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 322
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (326, 1, 'After what seems an eternity of struggling, you reach the peak of the steep hill. Behind you, above the canopy of trees, you can see the still smouldering remains of the monastery. To the north, a column of jet-black smoke rises high into the sky. Small orange tongues of flame flicker at its base. Your heart sinks as you realize that the port of Toran is ablaze. Suddenly, a piercing cry above warns you that a Kraan is about to attack. It is about thirty yards away and diving for the kill.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (326, 322, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (520, 326, 19, 'If you are going to stand and fight it as it swoops down, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (520);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (521, 326, 91, 'If you are going to evade its attack and slide down the other side of the hill, away from the Kraan, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (521);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 323
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (327, 1, 'From the top of the tower you can see above the trees in all directions. Far to the north, a column of jet-black smoke rises high into the sky. Small orange tongues of flame flicker at its base. Your heart sinks as you realize that the port of Toran is ablaze. From the southwest, the wind carries the noise of battle. It is close; no more than five miles at most. On the floor of the watchtower is a large oblong box.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (327, 323, 21);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (522, 327, 294, 'If you wish to open this box, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (522);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (523, 327, 143, 'If you would prefer to descend the ladder and leave the tower, taking care to use only the good rungs, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (523);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 324
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (328, 1, 'You pull up your hood and drop down behind the rocks that litter the mouth of the cave. Holding your breath, you curl up into a tight ball, and completely cover yourself with your green cloak. Only a few minutes later the Giaks clamber over the rocky ledge outside, their evil yellow eyes furtively searching every crevice of the hillside. Then cursing in their strange tongue, they leave the ledge and start to climb towards the peak. You silently thank your old Masters for teaching you the Kai Discipline of Camouflage—it has probably saved your life on this occasion.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (328, 324, 13);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (524, 328,  35, 'If you wish to explore the cave, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (524);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (525, 328, 252, 'If you wish to leave and descend the hill in case the Giaks return, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (525);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 325
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (329, 1, 'Upon seeing you emerge from the woods, the Giak officer shouts ‘Ogot! Ogot!’ to his cowering troops, who flee the ruins and run to the safety of the forest. Shaking his mailed fist at you, the black-clad Giak screams, ‘RANEG ROGAG OK—ORGADAKA OKAK ROGAG GAJ!’ before leaving. Surveying the scene of battle, you count over fifteen Giak dead lying among the broken pillars of Raumas. The young wizard wipes his brow and walks towards you, his hand extended in friendship.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (329, 325, 24);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (526, 329, 353, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (526);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 326
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (330, 1, 'You carefully insert the Key and turn it clockwise. You hear a dull click—the Key works. You lift out the pin, and the large granite door slowly swings towards you on hidden hinges. The grey half-light of the Graveyard floods into the tomb. The exit is overgrown with graveweed and you suffer many cuts to your face and arms as you fight your way through to the surface. Looking back, you see the tomb door slowly close and a cruel inhuman laugh seems to rise out of the very ground on which you stand. In blind panic, you race through the eerie necropolis towards the south gate.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (330, 326, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (527, 330, 63, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (527);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 327
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (331, 1, 'Within a few minutes, you can see the Kraan hovering over a hilltop behind you. At a quick count you can make out at least sixteen of these horrible creatures, each of which has at least two Giaks riding upon its back. They are armed with long spears and wear tall pointed helmets of dull bronze. You hear the excited grunts of the Giaks. They have spotted you. You jump for the entrance of the tunnel some twenty-five feet below, but your boot gets caught in a thorny briar and you hang helplessly upside down—weaponless and vulnerable. Fortunately for you the end is swift: As the first Giak lance pierces your heart, death is instantaneous. Your life and your mission end here.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (331, 327, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (145, 331, 1);
INSERT INTO MISSION_FAILED_EVENTS (EVENT_ID)
VALUES (145);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 328
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (332, 1, 'As the creature dies, its body slowly dissolves into a vile green liquid. You notice that the grass and plants beneath the smoking fluid are beginning to shrivel and die. But a large valuable looking Gem lies on the ground near to the decaying body.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (332, 328, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (528, 332, 79, 'If you wish to take the Gem, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (528);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (529, 332, 120, 'If you would rather leave as quickly as possible, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (529);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 329
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (333, 1, 'As you descend the ridge towards the Graveyard of the Ancients, you are aware of a strange mist and cloud that swirls all around this grey and forbidding place, blocking the sun and keeping the Graveyard in perpetual gloom. A creeping chill seems to penetrate your very bones. Your horse becomes startled and no matter how you urge him on, he refuses to go any nearer to this dreadful place. So you must leave your horse and press on by foot.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (333, 329, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (530, 333, 288, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (530);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 330
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (334, 1, 'Fatigued by your exertions, you stop to rest for a few minutes at a fallen tree. You notice a large bundle, beneath the trunk.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (334, 330, 22);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (531, 334, 319, 'If you wish to examine the contents of the bundle, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (531);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (532, 334, 217, 'If you wish to leave it where it is and continue your mission, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (532);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 331
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (335, 1, 'Surrounded by thorny briars and closely packed roots, you see the entrance of a tunnel disappearing into the hillside beyond. It is approximately seven feet in height and just over ten feet wide. As you get closer, you can feel a slight breeze coming from the inky blackness. If the other end of this tunnel emerges on the far side of the hill, it could save you many hours of difficult climbing. But it could also harbour unknown danger.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (335, 331, 20);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (533, 335, 174, 'If you wish to enter the tunnel, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (533);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (534, 335, 284, 'If you would prefer to climb the hillside, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (534);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 332
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (336, 1, 'You walk for nearly ten minutes along a dark and winding corridor, and then start to climb a steep staircase to a small wooden door. The man presses a secret catch and the door opens. You enter a large, plushly decorated bedroom with a huge marble bath that takes up one corner of the room. The man suggests that you refresh yourself here whilst he seeks an audience with the King. You quickly bathe and change into some white robes that have been left out on a large marble table. Shortly, the man returns and leads you through a long corridor lined with exquisite tapestries. You finally arrive at a large door guarded by two soldiers wearing silver armour. You are about to meet the King.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (336, 332, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (535, 336, 354, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (535);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 333
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (337, 1, 'You have cut your way through the thick undergrowth for nearly half an hour when you hear the beat of wings high above the trees. Looking up you can just make out the shape of a Kraan approaching from the north. It is one of the monsters that attacked the monastery and on its back are two grey-skinned creatures armed with long spears. These are Mountain Giaks—evil servants of the Darklords, full of hatred and malice. Many centuries ago, their ancestors were used by the Darklords to build the infernal city of Helgedad, which lies in the volcanic wastelands beyond the Durncrag range of mountains. The construction of the city was long and torturous and only the strongest of the Giaks survived the heat and poisonous atmosphere of Helgedad. Hidden by the trees, you freeze, keeping absolutely still as the Kraan passes overhead and disappears towards the south. When you are sure that it has gone, you move off once again into the forest.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (337, 333, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (536, 337, 133, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (536);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 334
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (338, 1, 'As the stream vanishes up into the rocky hillside, you can see on the track above four soldiers and their officer. They wear the uniform of the King’s army.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (338, 334, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (537, 338, 50, 'If you wish to use the Kai Discipline of Sixth Sense, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (537,'SIXTH_SENSE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (538, 338, 76, 'If you wish to use the Kai Discipline of Camouflage and wait for them to pass, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (538,'CAMOUFLAGE');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID,  SECTION_ID, CONTENT)
VALUES (539, 338, 165, 'If you wish to approach them, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (539);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 335
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (339, 1, 'As you approach, the black bird flies off above the trees and soon disappears from view. You search the tree on which it was perched but find nothing unusual. Rather than waste any more precious time, you continue off along the track.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (339, 335, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (540, 339, 123, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (540);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 336
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (340, 1, 'You rush into the clearing and take the Giaks completely by surprise. Without a moment’s hesitation, you strike out at the one nearest to you. He is dead before his body hits the ground. The other Giaks unsheathe their curved swords and attack you. You must fight them one at a time.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (340, 336, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (112, 340, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (112, 7);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (113, 340, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (113, 8);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (541, 340, 119, 'If you win, you free the ranger and turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (541);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 337
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (341, 1, 'Just as you remove the ornate pin, a loud crack deafens you. Pick a number from the Random Number Table.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (341, 337, 9);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (542, 341, 223, 'If the number picked is 0–4, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (542,0,4);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (543, 342, 321, 'If the number is 5–9, turn to');
INSERT INTO RANDOM_OUTCOMES (OUTCOME_ID, MIN, MAX)
VALUES (543,5,9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 338
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (342, 1, 'When you awake, you find yourself lying at the foot of a steep slope in a tangle of long grasses. Your Backpack and Weapons are missing and your head aches violently. You cannot tell how long you have been unconscious, but you realize that time is running out and you must press on. Standing up, you notice your Backpack and Weapon on the slope above. They must have broken free when you fell. You quickly retrieve them and move off into the trees ahead.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (342, 338, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (544, 342, 115, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (544);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 339
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (343, 1, 'You quickly sidestep just as a long dagger shatters the glass top of the counter. A swarthy youth is attacking you and you must fight him.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (343, 339, 5);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (114, 343, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (114, 17);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (545, 343, 96, 'If you kill him within 4 rounds of Combat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (545);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (546, 343, 207, 'If you are still fighting after 4 rounds of Combat, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (546);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 340
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (344, 1, 'You gallop forward to meet the oncoming Doomwolf and rider, your Weapon raised to strike. The Giak sees you and unsheathes his scimitar. You must fight both Giak and Doomwolf as one enemy.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (344, 340, 13);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (115, 344, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (115, 20);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (547, 344, 197, 'If you win the fight, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (547);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 341
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (345, 1, 'The guards do not believe your story and refuse to let you enter. Your escort disappears into the crowd and you are left alone to find your way in this confused city. Shocked, and then dejected by such a rebuff, you are carried along by the crowds until you find yourself at the entrance to the Guildhall. It stands at one side of the Guild Bridge which crosses the River Eledil near where it joins the Holmgulf.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (345, 341, 6);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (548,  345, 314, 'If you wish to use the Kai Discipline of Tracking, turn to');
INSERT INTO ABILITY_OUTCOMES (OUTCOME_ID, ABILITY_TYPE)
VALUES (548, 'TRACKING');

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (549, 345, 214, 'If you wish to enter the Guildhall, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (549);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (550, 345, 39, 'If you wish to search for another route into the citadel, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (550);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 342
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (346, 1, 'As your voice echoes through the trees, the stranger slowly turns to face you. Your heart pounds and your blood freezes as you realize that the stranger is not human. It is a Vordak, a hideous lieutenant of the Darklords and one of the undead. A piercing scream fills your ears, and the creature raises a huge black mace above its head and charges at you. Frozen with horror, you can also feel the Vordak attacking you with the force of its mind.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (346, 342, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (116, 346, 1);
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (116, 2);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (551, 346, 125, 'If you win, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (551);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 343
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (347, 1, 'You are held by the mass of tangled branches and roots. Eventually you free your right hand, grab your weapon, and hack your way slowly through the foliage to the clearer forest beyond. Your cloak is torn in several places and your left arm is cut and badly bruised above the elbow.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (347, 343, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (117, 347, 1);
INSERT INTO CHANGE_VALUE_EVENTS_BT (EVENT_ID, AMOUNT)
VALUES (117, -2);
INSERT INTO ENDURANCE_CHANGE_EVENTS (EVENT_ID)
VALUES (117);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (552, 347, 217, 'Lose 2 ENDURANCE points and turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (552);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 344
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (348, 1, 'You are weak and dizzy. You can no longer feel your legs and they refuse to bear your weight. You try to crawl for the door but the robber jumps on you and pins you to the ground.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (348, 344, 5);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (553, 348, 62, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (553);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 345
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (349, 1, 'You pull up the hood of your green Kai cloak and hold your breath as the Kraan circles above. After a few minutes, you hear the frantic curses of the Giaks. The beating of Kraan wings fades, as they disappear towards the west. Your quick reactions have saved you from capture and likely death.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (349, 345, 4);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (554, 349, 276, 'You can now return to the track, by turning to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (554);

INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (555, 349, 21, 'Or push on under cover of the trees. Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (555);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 346
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (350, 1, 'Lodged deep in the rib cage of the skeleton is a Spear. It is in good condition and you may take it if you wish and are able to.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (350, 346, 4);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (118, 350, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (118, 2);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (118);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (556, 350, 16, 'To leave the clearing, turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (556);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 347
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (351, 1, 'The trees start to thin out, and just ahead you can make out the silhouette of an old log cabin beneath an oak tree. This hut seems to have been abandoned and there is little of apparent value left behind. Opening a small chest near the main door, you discover bunches of twigs that have been tied together with strong twine. One end of each bundle has been coated with pitch. They are Torches. Next to the chest are a Short Sword and a Tinderbox. You may take them and a Torch if you wish but make sure, that you mark them on your Action Chart. Closing the door of the cabin, you head off along an overgrown path towards the northeast.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (351, 347, 4);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT,IMAGE_URL) VALUES
    (22, 'Torch', 'Torch', 'UTILITY', 'SMALL','images/flight/items/torch.png');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT,IMAGE_URL) VALUES
    (23, 'Tinderbox', 'Tinderbox', 'UTILITY', 'SMALL','images/flight/items/tinderbox.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (119, 351, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (119, 22);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (119);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (120, 351, 2);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (120, 23);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (120);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (121, 351, 3);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (121, 6);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (121);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (557, 351, 105, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (557);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 348
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (352, 1, 'Raising your boot to kick away the dead snake, your heart skips a beat as you realize that it was a Red Marshviper. There is no known cure for its venomous bite! You decide that to go any further in this direction would be suicide. Carefully retracing your steps, you eventually reach firm ground and continue on your mission.');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (352, 348, 29);

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (558, 352, 97, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (558);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 349
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (353, 1, 'He is a young blond-haired youth with deep brooding eyes. His face is lined with exhaustion and the grime of battle, and his long sky-blue robes bear evidence of living rough in the wilds. He shakes your hand and bows. ‘My eternal thanks, Kai Lord. My powers are nearly drained. Had you not come to my aid, I fear I would have ended my days atop a Giak lance.’ He is weak and unsteady on his feet. You take his arm and sit him down upon a fallen pillar where you listen intently to what he has to say. ‘My name is Banedon. I am journeyman to the Brotherhood of the Crystal Star, which is the Magicians’ Guild of Toran. My Guildmaster has sent me to your monastery with this urgent message.’ He removes a vellum envelope from inside his robes and handd it to you. ‘As you see, I have opened the letter and read its contents. When the war started, I was on the highway with two travelling companions. The Kraan attacked us and we lost each other in the forest during our escape. The letter is a warning to the Kai Lords that the Darklords have mustered a vast army beyond the Durncrag Range. The Guildmaster urges the Kai to cancel the celebrations of Fehmarn and prepare for war. I fear we were betrayed,’ says Banedon, his head bowed in sorrow. ‘One of my order, a brother called Vonotar, had explored the forbidden mysteries of the Black Art. Ten days ago he denounced the Brotherhood and killed one of our Elders. He has since disappeared. It is rumoured that he now aids the Darklords.’ You tell Banedon what has happened at the monastery, and of your mission to warn the King. Silently, he removes a gold chain from around his neck and hands it to you. On the chain is a small Crystal Star Pendant. ‘It is the symbol of my Brotherhood, and we are both truly brothers in this hour of darkness. It is a talisman of good fortune—may it protect you on your road ahead.’ You thank him, place the chain around your neck, and slip the Crystal Star4 inside your shirt. (Remember to mark this on your Action Chart.) Banedon bids you farewell. ‘We must leave this place lest the Giaks return with more of their loathsome kind to put an end to us. I must return to my Guild. I bid you farewell, my brother. May the luck of the gods go with you.’');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (353, 349, 24);

-- EVENTS
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE, WEIGHT, IMAGE_URL) VALUES
    (24, 'Crystal Star', 'Crystal Start', 'MAGICAL_ITEM', 'SMALL','images/flight/items/crystalstar.png');

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (122, 353, 1);
INSERT INTO ITEM_EVENTS_BT (EVENT_ID, ITEM_ID)
VALUES (122, 24);
INSERT INTO ACQUIRE_ITEM_EVENTS(EVENT_ID)
VALUES (122);

INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (123, 353, 2);
INSERT INTO STORY_EVENTS (EVENT_ID, DESCRIPTION, TITLE, IMAGE_URL)
VALUES (123, 'Apprenteace of the crystal Star Pendant','Banedon', 'images/flight/meeting/banedon.png');

-- OUTCOMES
INSERT INTO OUTCOMES_BT (OUTCOME_ID,  ROOT_SECTION_ID, SECTION_ID, CONTENT)
VALUES (559, 353, 97, 'Turn to');
INSERT INTO DEFAULT_OUTCOMES (OUTCOME_ID)
VALUES (559);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 350
-- ---------------------------------------------------------------------------- --
INSERT INTO SECTIONS_BT (SECTION_ID, BOOK_ID, CONTENT)
VALUES (354, 1, 'You enter the Chamber of State, a magnificent hall decorated lavishly in white and gold. The King and his closest advisers are studying a large map spread upon a marble plinth in the centre of the chamber. Their faces are lined with worry and concentration. A silence fills the hall as you tell of the death of your kinsmen and of your perilous journey to the citadel. As you finish your story, the King approaches and takes your right hand in his. Lone Wolf, you have selfless courage: the quality of a true Kai Lord. Your journey here has been one of great peril and although your news comes as a grievous blow, the spirit of your determination is like a beacon of hope to us all in this dark hour. You have brought great honour to the memory of your Masters, and for that we praise you.’ You receive the praise and heartfelt thanks of the entire hall—an honour that brings a certain redness to your young face. The King raises his hand and all the voices cease. ‘You have done all that Sommerlund could have asked of a loyal son, but she is greatly in need of you still. The Darklords are powerful once more and their ambition knows no bounds. Our only hope lies within Durenor with the power that once defeated the Darklords an age ago. Lone Wolf, you are the last of the Kai—you have the skills. Will you journey to Durenor and return with the Sommerswerd, the sword of the sun?  Only with that gift of the gods may we crush this evil and save our land.’ If you wish to accept the quest of the Sommerswerd, begin your adventure with Book 2 of the Lone Wolf adventures: Fire on the Water');

INSERT INTO STORY_SECTIONS (SECTION_ID, SECTION_NR, REGION_ID)
VALUES (354, 350, 6);

-- EVENTS
INSERT INTO EVENTS_BT (EVENT_ID, SECTION_ID, RANKING)
VALUES (124, 354, 1);
INSERT INTO MISSION_ACCOMPLISHED_EVENTS (EVENT_ID)
VALUES (124);

SET FOREIGN_KEY_CHECKS=1;
