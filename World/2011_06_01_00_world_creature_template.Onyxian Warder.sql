-- [12129] Onyxian Warder (6)
UPDATE `creature_template` SET `LootID`= 12129 WHERE `entry` = 12129;
UPDATE `creature_template` SET `LootID`= 36572 WHERE `entry` = 36572;
DELETE FROM `creature_loot_template` WHERE `entry` IN(12129, 36572);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(12129, 33470, 29.82, 0, 1, 1), /* (70) Frostweave Cloth */
(12129, 43852, 15.81, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(12129, 33454, 6.7, 0, 1, 1), /* (75) Salted Venison */
(12129, 33445, 3, 0, 1, 1), /* (85) Honeymint Tea */
(12129, 33447, 1.75, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(36572, 33470, 22.93, 0, 1, 1), /* (70) Frostweave Cloth */
(36572, 43852, 10.85, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36572, 33454, 4.61, 0, 1, 1), /* (75) Salted Venison */
(36572, 33445, 2.16, 0, 1, 1), /* (85) Honeymint Tea */
(36572, 43465, 1.79, 0, 1, 1); /* (80) Scroll of Strength VII */