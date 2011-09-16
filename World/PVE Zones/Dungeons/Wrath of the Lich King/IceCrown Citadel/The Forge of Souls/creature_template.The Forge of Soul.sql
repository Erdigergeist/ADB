-- [36551] Spiteful Apparition (2)
UPDATE `creature_template` SET `LootID`= 36551 WHERE `entry` = 36551;
UPDATE `creature_template` SET `LootID`= 37564 WHERE `entry` = 37564;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36551, 37564);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Heroic
(37564, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37564, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36620] Soulguard Adept (7)
UPDATE `creature_template` SET `LootID`= 36620 WHERE `entry` = 36620;
UPDATE `creature_template` SET `LootID`= 37566 WHERE `entry` = 37566;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36620, 37566);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36620, 33470, 31.42, 0, 1, 1), /* (70) Frostweave Cloth */
(36620, 43852, 20.29, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36620, 33454, 8.03, 0, 1, 1), /* (75) Salted Venison */
(36620, 33445, 3.79, 0, 1, 1), /* (85) Honeymint Tea */
(36620, 33447, 2.14, 0, 1, 1), /* (80) Runic Healing Potion */
# Heroic
(37566, 33470, 33.46, 0, 1, 1), /* (70) Frostweave Cloth */
(37566, 43852, 19.39, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37566, 33454, 8.16, 0, 1, 1), /* (75) Salted Venison */
(37566, 33445, 4.24, 0, 1, 1), /* (85) Honeymint Tea */
(37566, 33447, 2.2, 0, 1, 1), /* (80) Runic Healing Potion */
(37566, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37566, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36564] Soulguard Bonecaster (8)
UPDATE `creature_template` SET `LootID`= 36564 WHERE `entry` = 36564;
UPDATE `creature_template` SET `LootID`= 38193 WHERE `entry` = 38193;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36564, 38193);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36564, 33470, 31.46, 0, 1, 1), /* (70) Frostweave Cloth */
(36564, 43852, 19.33, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36564, 33454, 8.48, 0, 1, 1), /* (75) Salted Venison */
(36564, 33445, 3.72, 0, 1, 1), /* (85) Honeymint Tea */
(36564, 33447, 2.06, 0, 1, 1), /* (80) Runic Healing Potion */
(36564, 33448, 1.81, 0, 1, 1), /* (80) Runic Mana Potion */
# Heroic
(38193, 33470, 33.18, 0, 1, 1), /* (70) Frostweave Cloth */
(38193, 43852, 19.64, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(38193, 33454, 7.37, 0, 1, 1), /* (75) Salted Venison */
(38193, 33445, 3.97, 0, 1, 1), /* (85) Honeymint Tea */
(38193, 33447, 2.05, 0, 1, 1), /* (80) Runic Healing Potion */
(38193, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(38193, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36522] Soul Horror (7)
UPDATE `creature_template` SET `LootID`= 36522 WHERE `entry` = 36522;
UPDATE `creature_template` SET `LootID`= 37565 WHERE `entry` = 37565;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36522, 37565);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36522, 33470, 32.34, 0, 1, 1), /* (70) Frostweave Cloth */
(36522, 43852, 20.99, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36522, 35947, 6.57, 0, 1, 1), /* (85) Sparkling Frostcap */
(36522, 33445, 3.92, 0, 1, 1), /* (85) Honeymint Tea */
(36522, 33447, 2.18, 0, 1, 1), /* (80) Runic Healing Potion */
# Heroic
(37565, 33470, 34.52, 0, 1, 1), /* (70) Frostweave Cloth */
(37565, 43852, 19.91, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37565, 35947, 7.88, 0, 1, 1), /* (85) Sparkling Frostcap */
(37565, 33445, 4.09, 0, 1, 1), /* (85) Honeymint Tea */
(37565, 33447, 2.75, 0, 1, 1), /* (80) Runic Healing Potion */
(37565, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37565, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36666] Spectral Warden (7)
UPDATE `creature_template` SET `LootID`= 36666 WHERE `entry` = 36666;
UPDATE `creature_template` SET `LootID`= 37563 WHERE `entry` = 37563;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36666, 37563);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36666, 33470, 30.72, 0, 1, 1), /* (70) Frostweave Cloth */
(36666, 43852, 18.95, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36666, 35947, 8.49, 0, 1, 1), /* (85) Sparkling Frostcap */
(36666, 33445, 3.53, 0, 1, 1), /* (85) Honeymint Tea */
(36666, 33447, 2.01, 0, 1, 1), /* (80) Runic Healing Potion */
# Heroic
(37563, 33470, 32.69, 0, 1, 1), /* (70) Frostweave Cloth */
(37563, 43852, 19.42, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37563, 35947, 7.39, 0, 1, 1), /* (85) Sparkling Frostcap */
(37563, 33445, 3.87, 0, 1, 1), /* (85) Honeymint Tea */
(37563, 33447, 2.14, 0, 1, 1), /* (80) Runic Healing Potion */
(37563, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37563, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36478] Soulguard Watchman (7)
UPDATE `creature_template` SET `LootID`= 36478 WHERE `entry` = 36478;
UPDATE `creature_template` SET `LootID`= 37569 WHERE `entry` = 37569;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36478, 37569);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36478, 33470, 30.89, 0, 1, 1), /* (70) Frostweave Cloth */
(36478, 43852, 20.02, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36478, 35947, 7.48, 0, 1, 1), /* (85) Sparkling Frostcap */
(36478, 33445, 3.67, 0, 1, 1), /* (85) Honeymint Tea */
(36478, 33447, 2.04, 0, 1, 1), /* (80) Runic Healing Potion */
# Heroic
(37569, 33470, 32.29, 0, 1, 1), /* (70) Frostweave Cloth */
(37569, 43852, 19.81, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37569, 35947, 7.88, 0, 1, 1), /* (85) Sparkling Frostcap */
(37569, 33445, 3.85, 0, 1, 1), /* (85) Honeymint Tea */
(37569, 33447, 2.25, 0, 1, 1), /* (80) Runic Healing Potion */
(37569, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37569, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36499] Soulguard Reaper (7)
UPDATE `creature_template` SET `LootID`= 36499 WHERE `entry` = 36499;
UPDATE `creature_template` SET `LootID`= 37568 WHERE `entry` = 37568;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36499, 37568);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36499, 33470, 31.9, 0, 1, 1), /* (70) Frostweave Cloth */
(36499, 43852, 19.65, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36499, 33454, 6.97, 0, 1, 1), /* (75) Salted Venison */
(36499, 33445, 4.03, 0, 1, 1), /* (85) Honeymint Tea */
(36499, 33447, 2.32, 0, 1, 1), /* (80) Runic Healing Potion */
# Heroic
(37568, 33470, 33.97, 0, 1, 1), /* (70) Frostweave Cloth */
(37568, 43852, 19.33, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37568, 33454, 7.64, 0, 1, 1), /* (75) Salted Venison */
(37568, 33445, 3.62, 0, 1, 1), /* (85) Honeymint Tea */
(37568, 33447, 2.03, 0, 1, 1), /* (80) Runic Healing Potion */
(37568, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37568, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */

-- [36516] Soulguard Animator (7)
UPDATE `creature_template` SET `LootID`= 36516 WHERE `entry` = 36516;
UPDATE `creature_template` SET `LootID`= 37567 WHERE `entry` = 37567;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36516, 3651601);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36516, 33470, 32.37, 0, 1, 1), /* (70) Frostweave Cloth */
(36516, 43852, 20.51, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36516, 33454, 8.83, 0, 1, 1), /* (75) Salted Venison */
(36516, 33445, 4.02, 0, 1, 1), /* (85) Honeymint Tea */
(36516, 33447, 2.31, 0, 1, 1), /* (80) Runic Healing Potion */
# Heroic
(37567, 33470, 34.67, 0, 1, 1), /* (70) Frostweave Cloth */
(37567, 43852, 19.81, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37567, 33454, 7.36, 0, 1, 1), /* (75) Salted Venison */
(37567, 33445, 3.88, 0, 1, 1), /* (85) Honeymint Tea */
(37567, 33447, 2.03, 0, 1, 1), /* (80) Runic Healing Potion */
(37567, 50379, 0.1, 0, 1, 1), /* (1) Battered Hilt (Alliance) */
(37567, 50380, 0.1, 0, 1, 1); /* (1) Battered Hilt (Horde) */