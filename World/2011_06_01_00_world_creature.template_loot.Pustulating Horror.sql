-- [10404] Pustulating Horror (17)
UPDATE `creature_template` SET `LootID`= 10404 WHERE `entry` = 10404;
UPDATE `creature_template` SET `LootID`= 1040401 WHERE `entry` = 1040401;
UPDATE `creature_template` SET `LootID`= 1040402 WHERE `entry` = 1040402;
UPDATE `creature_template` SET `LootID`= 1040403 WHERE `entry` = 1040403;
DELETE FROM `creature_loot_template` WHERE `entry` IN(10404, 1040401, 1040402, 1040403);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(10404, 33470, 36.53, 0, 1, 1), /* (70) Frostweave Cloth */
(10404, 43852, 19.26, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(10404, 35947, 8.11, 0, 1, 1), /* (85) Sparkling Frostcap */
(10404, 33445, 3.58, 0, 1, 1), /* (85) Honeymint Tea */
(10404, 33447, 2.09, 0, 1, 1), /* (80) Runic Healing Potion */
(10404, 33368, 1.21, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
# Normal 25
(1040401, 47242, 100, 0, 1, 1), --  Trophy
(1040401, 47556, 20, 0, 1, 1), --  Crusader Orb
(1040401, 33470, 28.77, 0, 1, 1), /* (70) Frostweave Cloth */
(1040401, 43852, 13.75, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(1040401, 35947, 5.93, 0, 1, 1), /* (85) Sparkling Frostcap */
(1040401, 33445, 2.29, 0, 1, 1), /* (85) Honeymint Tea */
(1040401, 50452, 3.87, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(1040401, 50444, 2.88, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(1040401, 50453, 1.66, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(1040401, 33366, 1.29, 0, 1, 1), /* (132) Frost-Rimed Cloth Boots */
# Heroic 25
(1040403, 47242, 100, 0, 1, 1), --  Trophy
(1040403, 47556, 20, 0, 1, 1), --  Crusader Orb
(1040403, 33470, 20.28, 0, 1, 1), /* (70) Frostweave Cloth */
(1040403, 43852, 11.45, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(1040403, 35947, 5.15, 0, 1, 1), /* (85) Sparkling Frostcap */
(1040403, 33448, 1.31, 0, 1, 1), /* (80) Runic Mana Potion */
(1040403, 36513, 19.98, 0, 1, 1), /* (178) Lode-Headed Hammer */
(1040403, 36162, 3.88, 0, 1, 1), /* (174) Wendigo Bands */
(1040403, 50447, 1.56, 0, 1, 1), /* (264) Harbinger's Bone Band */
(1040403, 50450, 1.51, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(1040403, 36394, 3.03, 0, 1, 1), /* (178) Revenant Bracers */
(1040403, 36610, 2.12, 0, 1, 1); /* (174) Plagued Pike */