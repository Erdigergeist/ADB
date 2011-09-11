-- [37011] The Damned (9)
UPDATE `creature_template` SET `LootID`= 37011 WHERE `entry` = 37011;
UPDATE `creature_template` SET `LootID`= 3701101 WHERE `entry` = 3701101;
UPDATE `creature_template` SET `LootID`= 37011 WHERE `entry` = 3701102;
UPDATE `creature_template` SET `LootID`= 3701101 WHERE `entry` = 3701103;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37011, 3701101);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37011, 3701101, 100, 0, -3701101, 3), --  Lootreferenz Normal 10
# Normal 25
(3701101, 3701102, 100, 0, -3701102, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3701101, 3701102);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3701101, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3701101, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3701101, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3701101, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3701101, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */
# Referenz Normal 25			
(3701102, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3701102, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3701102, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3701102, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3701102, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3701102, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3701102, 50444, 0, 1, 1, 1); /* (264) Rowan's Rifle of Silver Bullets */

-- [36724] Servant of the Throne (10)
UPDATE `creature_template` SET `LootID`= 36724 WHERE `entry` = 36724;
UPDATE `creature_template` SET `LootID`= 3672401 WHERE `entry` = 3672401;

UPDATE `creature_template` SET `LootID`= 36724 WHERE `entry` = 3672402;
UPDATE `creature_template` SET `LootID`= 3672401 WHERE `entry` = 3672403;

DELETE FROM `creature_loot_template` WHERE `entry` IN(36724, 3672401);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36724, 3672401, 100, 0, -3672401, 3), --  Lootreferenz Normal 10
# Normal 25
(3672401, 50274, -5, 0, 1, 1), --  Shadowfrost Shard (Quest)
(3672401, 3672402, 100, 0, -3672402, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3672401, 3672402);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3672401, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3672401, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3672401, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3672401, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3672401, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */
# Referenz Normal 25			
(3672402, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3672402, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3672402, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3672402, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3672402, 36427, 0, 1, 1, 1), /* (170) Engraved Ring */			
(3672402, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3672402, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3672402, 50444, 0, 1, 1, 1); /* (264) Rowan's Rifle of Silver Bullets */

-- [37012] Ancient Skeletal Soldier (9)
UPDATE `creature_template` SET `LootID`= 37012 WHERE `entry` = 37012;
UPDATE `creature_template` SET `LootID`= 3701201 WHERE `entry` = 3701201;

UPDATE `creature_template` SET `LootID`= 37012 WHERE `entry` = 3701202;
UPDATE `creature_template` SET `LootID`= 3701201 WHERE `entry` = 3701203;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37012, 3701201);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37012, 3701201, 100, 0, -3701201, 3), --  Lootreferenz Normal 10
# Normal 25
(3701201, 3701202, 100, 0, -3701202, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3701201, 3701202);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3701201, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3701201, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3701201, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3701201, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3701201, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */
# Referenz Normal 25			
(3701202, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3701202, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3701202, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3701202, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3701202, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3701202, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3701202, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3701202, 50451, 0, 1, 1, 1); /* (264) Belt of the Lonely Noble */

-- [37022] Blighted Abomination (5)
UPDATE `creature_template` SET `LootID`= 37022 WHERE `entry` = 37022;
UPDATE `creature_template` SET `LootID`= 3702201 WHERE `entry` = 3702201;

UPDATE `creature_template` SET `LootID`= 37022 WHERE `entry` = 3702202;
UPDATE `creature_template` SET `LootID`= 3702201 WHERE `entry` = 3702203;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37022, 3702201);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37022, 3702201, 100, 0, -3702201, 3), --  Lootreferenz Normal 10
# Normal 25
(3702201, 3702202, 100, 0, -3702202, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3702201, 3702202);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3702201, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3702201, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3702201, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3702201, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */
# Referenz Normal 25			
(3702202, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3702202, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3702202, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3702202, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3702202, 50452, 0, 1, 1, 1); /* (264) Wodin's Lucky Necklace */

-- [37023] Plague Scientist (9)
UPDATE `creature_template` SET `LootID`= 37023 WHERE `entry` = 37023;
UPDATE `creature_template` SET `LootID`= 3702301 WHERE `entry` = 3702301;

UPDATE `creature_template` SET `LootID`= 37023 WHERE `entry` = 3702302;
UPDATE `creature_template` SET `LootID`= 3702301 WHERE `entry` = 3702303;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37023, 3702301);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37023, 3702301, 100, 0, -3702301, 3), --  Lootreferenz Normal 10
# Normal 25
(3702301, 3702302, 100, 0, -3702302, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3702301, 3702302);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3702301, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3702301, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3702301, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3702301, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3702301, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */
# Referenz Normal 25			
(3702302, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3702302, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3702302, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3702302, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3702302, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */			
(3702302, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3702302, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3702302, 36048, 0, 1, 1, 1), /* (174) Crystalsong Leggings */			
(3702302, 50450, 0, 1, 1, 1); /* (264) Leggings of Dubious Charms */

-- [10404] Pustulating Horror (9)
UPDATE `creature_template` SET `LootID`= 10404 WHERE `entry` = 10404;
UPDATE `creature_template` SET `LootID`= 1040401 WHERE `entry` = 1040401;

UPDATE `creature_template` SET `LootID`= 10404 WHERE `entry` = 1040402;
UPDATE `creature_template` SET `LootID`= 1040401 WHERE `entry` = 1040403;

DELETE FROM `creature_loot_template` WHERE `entry` IN(10404, 1040401);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(10404, 1040401, 100, 0, -1040401, 3), --  Lootreferenz Normal 10
# Normal 25
(1040401, 1040402, 100, 0, -1040402, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(1040401, 1040402);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(1040401, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(1040401, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(1040401, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(1040401, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(1040401, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */			
(1040401, 36162, 0, 1, 1, 1), /* (174) Wendigo Bands */
# Referenz Normal 25			
(1040402, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(1040402, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(1040402, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(1040402, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(1040402, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(1040402, 50453, 0, 1, 1, 1); /* (264) Ring of Rotting Sinew */

-- [37038] Vengeful Fleshreaper (10)
UPDATE `creature_template` SET `LootID`= 37038 WHERE `entry` = 37038;
UPDATE `creature_template` SET `LootID`= 3703801 WHERE `entry` = 3703801;

UPDATE `creature_template` SET `LootID`= 37038 WHERE `entry` = 3703802;
UPDATE `creature_template` SET `LootID`= 3703801 WHERE `entry` = 3703803;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37038, 3703801);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37038, 3703801, 100, 0, -3703801, 3), --  Lootreferenz Normal 10
# Normal 25
(3703801, 3703802, 100, 0, -3703802, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3703801, 3703802);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3703801, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3703801, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3703801, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3703801, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3703801, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */
# Referenz Normal 25			
(3703802, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3703802, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3703802, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3703802, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3703802, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3703802, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3703802, 50444, 0, 1, 1, 1); /* (264) Rowan's Rifle of Silver Bullets */

-- [36880] Decaying Colossus (13)
UPDATE `creature_template` SET `LootID`= 36880 WHERE `entry` = 36880;
UPDATE `creature_template` SET `LootID`= 3688001 WHERE `entry` = 3688001;

UPDATE `creature_template` SET `LootID`= 36880 WHERE `entry` = 3688002;
UPDATE `creature_template` SET `LootID`= 3688001 WHERE `entry` = 3688003;

DELETE FROM `creature_loot_template` WHERE `entry` IN(36880, 3688001);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36880, 3688001, 100, 0, -3688001, 3), --  Lootreferenz Normal 10
# Normal 25
(3688001, 3688002, 100, 0, -3688002, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3688001, 3688002);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3688001, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3688001, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3688001, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3688001, 33445, 0, 1, 1, 1), /* (85) Honeymint Tea */			
(3688001, 33447, 0, 1, 1, 1), /* (80) Runic Healing Potion */
# Referenz Normal 25			
(3688002, 33470, 0, 1, 1, 1), /* (70) Frostweave Cloth */			
(3688002, 43852, 0, 1, 1, 1), /* (70) Thick Fur Clothing Scraps */			
(3688002, 35947, 0, 1, 1, 1), /* (85) Sparkling Frostcap */			
(3688002, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3688002, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3688002, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3688002, 50450, 0, 1, 1, 1), /* (264) Leggings of Dubious Charms */			
(3688002, 50451, 0, 1, 1, 1), /* (264) Belt of the Lonely Noble */			
(3688002, 50449, 0, 1, 1, 1), /* (264) Stiffened Corpse Shoulderpads */			
(3688002, 50447, 0, 1, 1, 1), /* (264) Harbinger's Bone Band */			
(3688002, 37780, 0, 1, 1, 1); /* (170) Condor-Bone Chestguard */

-- [37025] Stinky (16)
UPDATE `creature_template` SET `LootID`= 37025 WHERE `entry` = 37025;
UPDATE `creature_template` SET `LootID`= 3702501 WHERE `entry` = 3702501;

UPDATE `creature_template` SET `LootID`= 37025 WHERE `entry` = 3702502;
UPDATE `creature_template` SET `LootID`= 3702501 WHERE `entry` = 3702503;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37025, 3702501);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37025, 3702501, 100, 0, -3702501, 3), --  Lootreferenz Normal 10
(37025, 42175, 0, 0, 1, 1), /* (72) Pattern: Green Lumberjack Shirt */
# Normal 25
(3702501, 3702502, 100, 0, -3702502, 4), --  Lootreferenz Normal 25
(3702501, 42175, 2.45, 0, 1, 1); /* (72) Pattern: Green Lumberjack Shirt */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3702501, 3702502);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3702501, 33568, 0, 1, 1, 1), /* (70) Borean Leather */			
(3702501, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3702501, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3702501, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3702501, 50450, 0, 1, 1, 1), /* (264) Leggings of Dubious Charms */			
(3702501, 50447, 0, 1, 1, 1), /* (264) Harbinger's Bone Band */			
(3702501, 36427, 0, 1, 1, 1), /* (170) Engraved Ring */			
(3702501, 36384, 0, 1, 1, 1), /* (174) Golem Legplates */			
(3702501, 36152, 0, 1, 1, 1), /* (170) Pygmy Pants */
# Referenz Normal 25			
(3702502, 33568, 0, 1, 1, 1), /* (70) Borean Leather */			
(3702502, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3702502, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3702502, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3702502, 50450, 0, 1, 1, 1), /* (264) Leggings of Dubious Charms */			
(3702502, 50447, 0, 1, 1, 1), /* (264) Harbinger's Bone Band */			
(3702502, 50449, 0, 1, 1, 1), /* (264) Stiffened Corpse Shoulderpads */			
(3702502, 50451, 0, 1, 1, 1), /* (264) Belt of the Lonely Noble */			
(3702502, 36267, 0, 1, 1, 1); /* (174) Ulduar Girdle */

-- [37217] Precious (12)
UPDATE `creature_template` SET `LootID`= 37217 WHERE `entry` = 37217;
UPDATE `creature_template` SET `LootID`= 3721701 WHERE `entry` = 3721701;

UPDATE `creature_template` SET `LootID`= 37217 WHERE `entry` = 3721702;
UPDATE `creature_template` SET `LootID`= 3721701 WHERE `entry` = 3721703;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37217, 3721701);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37217, 3721701, 100, 0, -3721701, 3), --  Lootreferenz Normal 10
# Normal 25

(3721701, 3721702, 100, 0, -3721702, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3721701, 3721702);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3721701, 52019, 0, 1, 1, 1), /* (1) Precious's Ribbon */			
(3721701, 33568, 0, 1, 1, 1), /* (70) Borean Leather */			
(3721701, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3721701, 33422, 0, 1, 1, 1), /* (125) Shattered Bow */
# Referenz Normal 25			
(3721702, 52019, 0, 1, 1, 1), /* (1) Precious's Ribbon */			
(3721702, 33568, 0, 1, 1, 1), /* (70) Borean Leather */			
(3721702, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3721702, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3721702, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3721702, 50450, 0, 1, 1, 1), /* (264) Leggings of Dubious Charms */			
(3721702, 50451, 0, 1, 1, 1), /* (264) Belt of the Lonely Noble */			
(3721702, 50449, 0, 1, 1, 1), /* (264) Stiffened Corpse Shoulderpads */			
(3721702, 50447, 0, 1, 1, 1), /* (264) Harbinger's Bone Band */			
(3721702, 36055, 0, 1, 1, 1); /* (178) Vizier Hood */

-- [37126] Sister Svalna (24)
UPDATE `creature_template` SET `LootID`= 37126 WHERE `entry` = 37126;
UPDATE `creature_template` SET `LootID`= 3712601 WHERE `entry` = 3712601;

UPDATE `creature_template` SET `LootID`= 37126 WHERE `entry` = 3712602;
UPDATE `creature_template` SET `LootID`= 3712601 WHERE `entry` = 3712603;

DELETE FROM `creature_loot_template` WHERE `entry` IN(37126, 3712601);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37126, 49426, 100, 0, 1, 1), --  Emblem des Frostes
(37126, 3712601, 100, 0, -3712601, 3), --  Lootreferenz Normal 10
# Normal 25
(3712601, 49426, 100, 0, 1, 1), --  Emblem des Frostes
(3712601, 3712602, 100, 0, -3712602, 4); --  Lootreferenz Normal 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3712601, 3712602);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3712601, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3712601, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3712601, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3712601, 50450, 0, 1, 1, 1), /* (264) Leggings of Dubious Charms */			
(3712601, 36667, 0, 1, 1, 1), /* (178) Solid Ice Wand */			
(3712601, 50447, 0, 1, 1, 1), /* (264) Harbinger's Bone Band */			
(3712601, 50451, 0, 1, 1, 1), /* (264) Belt of the Lonely Noble */			
(3712601, 33431, 0, 1, 1, 1), /* (125) Icesmashing Mace */			
(3712601, 36682, 0, 1, 1, 1), /* (182) Seduced Blade */			
(3712601, 33424, 0, 1, 1, 1), /* (125) Cracked Iron Staff */			
(3712601, 36430, 0, 1, 1, 1), /* (182) Puzzle Ring */			
(3712601, 33430, 0, 1, 1, 1), /* (125) Abandoned Greatsword */			
(3712601, 36169, 0, 1, 1, 1), /* (178) Webspinner Shoulderguards */			
(3712601, 33426, 0, 1, 1, 1), /* (125) Chipped Timber Axe */			
(3712601, 36499, 0, 1, 1, 1), /* (178) Frigid War-Mace */			
(3712601, 36399, 0, 1, 1, 1), /* (182) Necropolis Helm */
# Referenz Normal 25			
(3712602, 50452, 0, 1, 1, 1), /* (264) Wodin's Lucky Necklace */			
(3712602, 50444, 0, 1, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */			
(3712602, 50453, 0, 1, 1, 1), /* (264) Ring of Rotting Sinew */			
(3712602, 50450, 0, 1, 1, 1), /* (264) Leggings of Dubious Charms */			
(3712602, 50447, 0, 1, 1, 1), /* (264) Harbinger's Bone Band */			
(3712602, 50451, 0, 1, 1, 1), /* (264) Belt of the Lonely Noble */			
(3712602, 50449, 0, 1, 1, 1), /* (264) Stiffened Corpse Shoulderpads */			
(3712602, 33427, 0, 1, 1, 1), /* (125) Frost-Encrusted Rifle */			
(3712602, 36275, 0, 1, 1, 1), /* (178) Spiderlord Belt */			
(3712602, 36063, 0, 1, 1, 1), /* (182) Coldwraith Cowl */			
(3712602, 36388, 0, 1, 1, 1), /* (178) Revenant Greaves */			
(3712602, 36394, 0, 1, 1, 1), /* (178) Revenant Bracers */			
(3712602, 36057, 0, 1, 1, 1), /* (178) Vizier Mantle */			
(3712602, 36709, 0, 1, 1, 1); /* (178) Crystal Woodstaff */

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('10404','1040401','13','1','0','-1040401','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('36724','3672401','13','1','0','-3672401','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('36880','3688001','13','1','0','-3688001','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37012','3701201','13','1','0','-3701201','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37022','3702201','13','1','0','-3702201','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37023','3702301','13','1','0','-3702301','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37025','42175','0','1','0','1','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37025','3702501','13','1','0','-3702501','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37038','3703801','13','1','0','-3703801','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37126','49426','13','1','0','1','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37126','3712601','13','1','0','-3712601','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('37217','3721701','13','1','0','-3721701','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('1040401','1040402','13','1','0','-1040402','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3672401','50274','-5','1','0','1','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3672401','3672402','13','1','0','-3672402','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3688001','3688002','13','1','0','-3688002','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3701201','3701202','13','1','0','-3701202','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3702201','3702202','13','1','0','-3702202','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3702301','3702302','13','1','0','-3702302','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3702501','42175','2.45','1','0','1','1');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3702501','3702502','13','1','0','-3702502','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3703801','3703802','13','1','0','-3703802','2');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('3721701','3721702','13','1','0','-3721702','2');