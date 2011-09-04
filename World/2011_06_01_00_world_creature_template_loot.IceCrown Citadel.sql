-- [36612] Lord Marrowgar (55)
UPDATE `creature_template` SET `LootID`= 36612 WHERE `entry` = 36612;
UPDATE `creature_template` SET `LootID`= 37957 WHERE `entry` = 37957;
UPDATE `creature_template` SET `LootID`= 37958 WHERE `entry` = 37958;
UPDATE `creature_template` SET `LootID`= 37959 WHERE `entry` = 37959;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36612, 3661201, 3661202, 3661203, 37957, 37958, 37959);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36612, 50761, 26.74, 0, 1, 1), /* (251) Citadel Enforcer's Claymore */
(36612, 49908, 0.9, 0, 1, 1), /* (80) Primordial Saronite */
(36612, 50771, 21.1, 0, 1, 1), /* (251) Frost Needle */
(36612, 50339, 19.74, 0, 1, 1), /* (251) Sliver of Pure Ice */
(36612, 50764, 18.34, 0, 1, 1), /* (251) Shawl of Nerubian Silk */
(36612, 50773, 14.42, 0, 1, 1), /* (251) Cord of the Patronizing Practitioner */
(36612, 50772, 14.34, 0, 1, 1), /* (251) Ancient Skeletal Boots */
(36612, 50760, 13.96, 0, 1, 1), /* (251) Bonebreaker Scepter */
(36612, 50759, 13.47, 0, 1, 1), /* (251) Bone Warden's Splitter */
(36612, 50762, 13.45, 0, 1, 1), /* (251) Linked Scourge Vertebrae */
(36612, 50775, 13.33, 0, 1, 1), /* (251) Corrupted Silverplate Leggings */
(36612, 50774, 12.68, 0, 1, 1), /* (251) Coldwraith Bracers */
(36612, 50763, 8.14, 0, 1, 1), /* (251) Marrowgar's Scratching Choker */
# Normal 25
(37957, 49968, 33.05, 0, 1, 1), /* (264) Frozen Bonespike */
(37957, 49908, 21.68, 0, 1, 1), /* (80) Primordial Saronite */
(37957, 50415, 29.94, 0, 1, 1), /* (264) Bryntroll, the Bone Arbiter */
(37957, 49977, 29.12, 0, 1, 1), /* (264) Loop of the Endless Labyrinth */
(37957, 49975, 20.29, 0, 1, 1), /* (264) Bone Sentinel's Amulet */
(37957, 49976, 20.08, 0, 1, 1), /* (264) Bulwark of Smouldering Steel */
(37957, 49978, 19.57, 0, 1, 1), /* (264) Crushing Coldwraith Belt */
(37957, 49949, 19.51, 0, 1, 1), /* (264) Band of the Bone Colossus */
(37957, 49950, 15.07, 0, 1, 1), /* (264) Frostbitten Fur Boots */
(37957, 49951, 14.45, 0, 1, 1), /* (264) Gendarme's Cuirass */
(37957, 49979, 14.3, 0, 1, 1), /* (264) Handguards of Winter's Respite */
(37957, 49952, 14.24, 0, 1, 1), /* (264) Snowserpent Mail Helm */
(37957, 49960, 13.95, 0, 1, 1), /* (264) Bracers of Dark Reckoning */
(37957, 49967, 13.73, 0, 1, 1), /* (264) Marrowgar's Frigid Eye */
(37957, 49964, 13.5, 0, 1, 1), /* (264) Legguards of Lost Hope */
(37957, 49980, 12.05, 0, 1, 1), /* (264) Rusted Bonespike Pauldrons */
# Heroic 10
(37958, 49908, 17.23, 0, 1, 1), /* (80) Primordial Saronite */
(37958, 51936, 25.41, 0, 1, 1), /* (264) Citadel Enforcer's Claymore */
(37958, 50346, 17.94, 0, 1, 1), /* (264) Sliver of Pure Ice */
(37958, 51932, 16.64, 0, 1, 1), /* (264) Frost Needle */
(37958, 51933, 16.01, 0, 1, 1), /* (264) Shawl of Nerubian Silk */
(37958, 51931, 14.97, 0, 1, 1), /* (264) Ancient Skeletal Boots */
(37958, 51930, 12.82, 0, 1, 1), /* (264) Cord of the Patronizing Practitioner */
(37958, 51935, 12.76, 0, 1, 1), /* (264) Linked Scourge Vertebrae */
(37958, 51928, 11.94, 0, 1, 1), /* (264) Corrupted Silverplate Leggings */
(37958, 51937, 11.96, 0, 1, 1), /* (264) Bonebreaker Scepter */
(37958, 51938, 11.14, 0, 1, 1), /* (264) Bone Warden's Splitter */
(37958, 51929, 11.18, 0, 1, 1), /* (264) Coldwraith Bracers */
(37958, 51934, 7.98, 0, 1, 1), /* (264) Marrowgar's Scratching Choker */
# Heroic 25
(37959, 49908, 14.65, 0, 1, 1), /* (80) Primordial Saronite */
(37959, 50614, 27.29, 0, 1, 1), /* (277) Loop of the Endless Labyrinth */
(37959, 50608, 27.02, 0, 1, 1), /* (277) Frozen Bonespike */
(37959, 50709, 22.66, 0, 1, 1), /* (277) Bryntroll, the Bone Arbiter */
(37959, 50609, 17.2, 0, 1, 1), /* (277) Bone Sentinel's Amulet */
(37959, 50604, 17.43, 0, 1, 1), /* (277) Band of the Bone Colossus */
(37959, 50616, 17.88, 0, 1, 1), /* (277) Bulwark of Smouldering Steel */
(37959, 50613, 15.84, 0, 1, 1), /* (277) Crushing Coldwraith Belt */
(37959, 50611, 14.75, 0, 1, 1), /* (277) Bracers of Dark Reckoning */
(37959, 50605, 14.11, 0, 1, 1), /* (277) Snowserpent Mail Helm */
(37959, 50606, 13.78, 0, 1, 1), /* (277) Gendarme's Cuirass */
(37959, 50607, 14.03, 0, 1, 1), /* (277) Frostbitten Fur Boots */
(37959, 50610, 12.15, 0, 1, 1), /* (277) Marrowgar's Frigid Eye */
(37959, 50612, 11.53, 0, 1, 1), /* (277) Legguards of Lost Hope */
(37959, 50615, 11.43, 0, 1, 1), /* (277) Handguards of Winter's Respite */
(37959, 50617, 10.43, 0, 1, 1); /* (277) Rusted Bonespike Pauldrons */

-- [37011] The Damned (14)
UPDATE `creature_template` SET `LootID`= 37011 WHERE `entry` = 37011;
UPDATE `creature_template` SET `LootID`= 3701101 WHERE `entry` = 3701101;
UPDATE `creature_template` SET `LootID`= 3701102 WHERE `entry` = 3701102;
UPDATE `creature_template` SET `LootID`= 3701103 WHERE `entry` = 3701103;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37011, 38061, 3701101, 3701102, 3701103);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37011, 33470, 34.06, 0, 1, 1), /* (70) Frostweave Cloth */
(37011, 43852, 19.63, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37011, 35947, 7.52, 0, 1, 1), /* (85) Sparkling Frostcap */
(37011, 33445, 4.01, 0, 1, 1), /* (85) Honeymint Tea */
(37011, 33447, 2.2, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3701101, 33470, 25.86, 0, 1, 1), /* (70) Frostweave Cloth */
(3701101, 43852, 13.54, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3701101, 35947, 6, 0, 1, 1), /* (85) Sparkling Frostcap */
(3701101, 33445, 2.36, 0, 1, 1), /* (85) Honeymint Tea */
(3701101, 50452, 2.64, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3701101, 50444, 2.06, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3701101, 50453, 2.06, 0, 1, 1), /* (264) Ring of Rotting Sinew */
# Heroic 10
(3701102, 36042, 1.18, 0, 1, 1), /* (170) Condor Bindings */
# Heroic 25
(3701103, 43852, 14.17, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3701103, 33448, 1.43, 0, 1, 1), /* (80) Runic Mana Potion */
(3701103, 50452, 2.94, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3701103, 43509, 1.88, 0, 1, 1), /* (75) Recipe: Bad Clams */
(3701103, 36045, 1.27, 0, 1, 1), /* (174) Crystalsong Robe */
(3701103, 36442, 1.34, 0, 1, 1), /* (174) Silken Cord Amulet */
(3701103, 36378, 1.33, 0, 1, 1); /* (170) Kraken Vambraces */

-- [36724] Servant of the Throne (22)
UPDATE `creature_template` SET `LootID`= 36724 WHERE `entry` = 36724;
UPDATE `creature_template` SET `LootID`= 3672401 WHERE `entry` = 3672401;
UPDATE `creature_template` SET `LootID`= 3672402 WHERE `entry` = 3672402;
UPDATE `creature_template` SET `LootID`= 3672403 WHERE `entry` = 3672403;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36724, 38057, 3672401, 3672402, 3672403);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36724, 33470, 36.09, 0, 1, 1), /* (70) Frostweave Cloth */
(36724, 43852, 19.17, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36724, 35947, 7.49, 0, 1, 1), /* (85) Sparkling Frostcap */
(36724, 33445, 3.74, 0, 1, 1), /* (85) Honeymint Tea */
(36724, 33447, 2.27, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3672401, 33470, 26.32, 0, 1, 1), /* (70) Frostweave Cloth */
(3672401, 43852, 14.35, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3672401, 35947, 4.89, 0, 1, 1), /* (85) Sparkling Frostcap */
(3672401, 33445, 2.14, 0, 1, 1), /* (85) Honeymint Tea */
(3672401, 50452, 3.09, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3672401, 50444, 2.13, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3672401, 36427, 1.66, 0, 1, 1), /* (170) Engraved Ring */
(3672401, 50453, 2.05, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3672401, 50447, 1.96, 0, 1, 1), /* (264) Harbinger's Bone Band */
# Heroic 10
(3672402, 36525, 2.46, 0, 1, 1), /* (170) Craggy Machete */
# Heroic 25
(3672403, 43852, 14.12, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3672403, 33445, 2.43, 0, 1, 1), /* (85) Honeymint Tea */
(3672403, 50444, 2.82, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3672403, 50450, 1.87, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3672403, 33403, 2.45, 0, 1, 1), /* (132) Frigid Mail Shoulderpads */
(3672403, 36679, 1.04, 0, 1, 1), /* (170) Singing Dagger */
(3672403, 36442, 1.81, 0, 1, 1), /* (174) Silken Cord Amulet */
(3672403, 36694, 3.49, 0, 1, 1), /* (174) Beatific Mace */
(3672403, 36260, 1.39, 0, 1, 1), /* (170) Cormorant Footwraps */
(3672403, 36265, 1.85, 0, 1, 1), /* (170) Cormorant Mantle */
(3672403, 36274, 1.78, 0, 1, 1), /* (174) Ulduar Bracers */
(3672403, 36498, 1.69, 0, 1, 1), /* (174) Nerubian Mace */
(3672403, 36267, 1.25, 0, 1, 1), /* (174) Ulduar Girdle */
(3672403, 36596, 1.09, 0, 1, 1); /* (174) Rupturing Axe */

-- [37007] Deathbound Ward (21)
UPDATE `creature_template` SET `LootID`= 37007 WHERE `entry` = 37007;
UPDATE `creature_template` SET `LootID`= 3700701 WHERE `entry` = 3700701;
UPDATE `creature_template` SET `LootID`= 3700702 WHERE `entry` = 3700702;
UPDATE `creature_template` SET `LootID`= 3700703 WHERE `entry` = 3700703;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37007, 38031, 3700701, 3700702, 3700703);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37007, 33470, 32.61, 0, 1, 1), /* (70) Frostweave Cloth */
(37007, 43852, 17.49, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37007, 35947, 8.27, 0, 1, 1), /* (85) Sparkling Frostcap */
(37007, 50452, 1.8, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(37007, 33445, 3.49, 0, 1, 1), /* (85) Honeymint Tea */
(37007, 33447, 1.87, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3700701, 33470, 18.96, 0, 1, 1), /* (70) Frostweave Cloth */
(3700701, 43852, 10.37, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3700701, 35947, 4.72, 0, 1, 1), /* (85) Sparkling Frostcap */
(3700701, 50452, 8.22, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3700701, 33445, 2.32, 0, 1, 1), /* (85) Honeymint Tea */
(3700701, 50453, 6.47, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3700701, 50444, 7.55, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3700701, 50447, 4.82, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3700701, 50449, 4.49, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3700701, 50451, 3.11, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3700701, 50450, 3.13, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3700701, 33368, 1.12, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
# Heroic 25
(3700703, 43852, 7.34, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3700703, 50452, 3.28, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3700703, 50453, 5.31, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3700703, 50444, 2.66, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3700703, 50447, 3.13, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3700703, 50451, 6.88, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3700703, 50450, 2.5, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3700703, 33425, 3.13, 0, 1, 1), /* (125) Ice-Pitted Blade */
(3700703, 45912, 3.91, 0, 1, 1), /* (80) Book of Glyph Mastery */
(3700703, 36055, 3.44, 0, 1, 1), /* (178) Vizier Hood */
(3700703, 33427, 1.09, 0, 1, 1), /* (125) Frost-Encrusted Rifle */
(3700703, 36278, 4.38, 0, 1, 1), /* (178) Spiderlord Gauntlets */
(3700703, 33381, 1.56, 0, 1, 1), /* (132) Frozen Boots */
(3700703, 36387, 2.5, 0, 1, 1), /* (178) Revenant Belt */
(3700703, 36612, 1.09, 0, 1, 1); /* (182) Scourge War Spear */

-- [36808] Deathspeaker Zealot (17)
UPDATE `creature_template` SET `LootID`= 36808 WHERE `entry` = 36808;
UPDATE `creature_template` SET `LootID`= 3680801 WHERE `entry` = 3680801;
UPDATE `creature_template` SET `LootID`= 3680802 WHERE `entry` = 3680802;
UPDATE `creature_template` SET `LootID`= 3680803 WHERE `entry` = 3680803;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36808, 38076, 3680801, 3680802, 3680803);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36808, 33470, 35.83, 0, 1, 1), /* (70) Frostweave Cloth */
(36808, 43852, 18.64, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36808, 33454, 8.51, 0, 1, 1), /* (75) Salted Venison */
(36808, 33445, 3.48, 0, 1, 1), /* (85) Honeymint Tea */
(36808, 33447, 2.25, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3680801, 33470, 27.97, 0, 1, 1), /* (70) Frostweave Cloth */
(3680801, 43852, 13.44, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3680801, 33454, 4.94, 0, 1, 1), /* (75) Salted Venison */
(3680801, 33445, 2.3, 0, 1, 1), /* (85) Honeymint Tea */
(3680801, 33448, 1.34, 0, 1, 1), /* (80) Runic Mana Potion */
(3680801, 50444, 3.24, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3680801, 50452, 2.47, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3680801, 50447, 1.87, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3680801, 50453, 2.2, 0, 1, 1), /* (264) Ring of Rotting Sinew */
# Heroic 10
(3680802, 33454, 7.47, 0, 1, 1), /* (75) Salted Venison */
(3680802, 36443, 2.01, 0, 1, 1), /* (178) Platinum Medallion */
(3680802, 36611, 1.35, 0, 1, 1), /* (178) Bleak Scythe */
# Heroic 25
(3680803, 43852, 14.87, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3680803, 33454, 6.25, 0, 1, 1), /* (75) Salted Venison */
(3680803, 33448, 3.43, 0, 1, 1), /* (80) Runic Mana Potion */
(3680803, 50444, 1.52, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3680803, 36429, 1.28, 0, 1, 1), /* (178) Spur Ring */
(3680803, 50447, 3.51, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3680803, 50450, 3.88, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3680803, 50451, 2.02, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3680803, 33433, 1.17, 0, 1, 1), /* (132) Frigid Mail Circlet */
(3680803, 36393, 2.87, 0, 1, 1); /* (178) Revenant Epaulets */



-- [36807] Deathspeaker Disciple (16)
UPDATE `creature_template` SET `LootID`= 36807 WHERE `entry` = 36807;
UPDATE `creature_template` SET `LootID`= 3680701 WHERE `entry` = 3680701;
UPDATE `creature_template` SET `LootID`= 3680702 WHERE `entry` = 3680702;
UPDATE `creature_template` SET `LootID`= 3680703 WHERE `entry` = 3680703;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36807, 3680701, 3680702, 3680703);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36807, 33470, 34.74, 0, 1, 1), /* (70) Frostweave Cloth */
(36807, 43852, 22.14, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36807, 35947, 8.89, 0, 1, 1), /* (85) Sparkling Frostcap */
(36807, 33445, 3.4, 0, 1, 1), /* (85) Honeymint Tea */
(36807, 33447, 2.52, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3680701, 33470, 28.43, 0, 1, 1), /* (70) Frostweave Cloth */
(3680701, 43852, 13.42, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3680701, 35947, 6.37, 0, 1, 1), /* (85) Sparkling Frostcap */
(3680701, 33445, 2.07, 0, 1, 1), /* (85) Honeymint Tea */
(3680701, 33447, 2.12, 0, 1, 1), /* (80) Runic Healing Potion */
(3680701, 36583, 2.72, 0, 1, 1), /* (178) Skeletal Hacker */
(3680701, 50452, 2.32, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3680701, 50447, 1.58, 0, 1, 1), /* (264) Harbinger's Bone Band */
# Heroic 25
(3680703, 43852, 14.73, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3680703, 33445, 2.87, 0, 1, 1), /* (85) Honeymint Tea */
(3680703, 50449, 2.51, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3680703, 50444, 2.78, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3680703, 50447, 1.45, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3680703, 36429, 3.23, 0, 1, 1), /* (178) Spur Ring */
(3680703, 36053, 2.51, 0, 1, 1), /* (178) Vizier Robe */
(3680703, 45912, 1.48, 0, 1, 1), /* (80) Book of Glyph Mastery */
(3680703, 33426, 1.84, 0, 1, 1), /* (125) Chipped Timber Axe */
(3680703, 33423, 1.63, 0, 1, 1), /* (125) Rime-Covered Mace */
(3680703, 36598, 1.57, 0, 1, 1); /* (182) Scarlet Battle Axe */

-- [36811] Deathspeaker Attendant (17)
UPDATE `creature_template` SET `LootID`= 36811 WHERE `entry` = 36811;
UPDATE `creature_template` SET `LootID`= 3681101 WHERE `entry` = 3681101;
UPDATE `creature_template` SET `LootID`= 3681102 WHERE `entry` = 3681102;
UPDATE `creature_template` SET `LootID`= 3681103 WHERE `entry` = 3681103;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36811, 38072, 3681101, 3681102, 3681103);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36811, 33470, 36.34, 0, 1, 1), /* (70) Frostweave Cloth */
(36811, 43852, 20.07, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36811, 33454, 8.38, 0, 1, 1), /* (75) Salted Venison */
(36811, 33445, 3.92, 0, 1, 1), /* (85) Honeymint Tea */
(36811, 33447, 2.47, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3681101, 33470, 29.66, 0, 1, 1), /* (70) Frostweave Cloth */
(3681101, 43852, 14.95, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3681101, 33454, 5.22, 0, 1, 1), /* (75) Salted Venison */
(3681101, 33445, 3.6, 0, 1, 1), /* (85) Honeymint Tea */
(3681101, 50453, 2.51, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3681101, 50452, 2.25, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3681101, 50444, 2.33, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3681101, 50451, 1.89, 0, 1, 1), /* (264) Belt of the Lonely Noble */
# Heroic 10
(3681102, 33454, 8.06, 0, 1, 1), /* (75) Salted Venison */
(3681102, 36177, 4.61, 0, 1, 1), /* (182) Geist Shoulders */
# Heroic 25
(3681103, 43852, 15.08, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3681103, 33454, 5.01, 0, 1, 1), /* (75) Salted Venison */
(3681103, 33445, 4.07, 0, 1, 1), /* (85) Honeymint Tea */
(3681103, 50452, 2.34, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3681103, 50451, 2, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3681103, 33423, 2.11, 0, 1, 1), /* (125) Rime-Covered Mace */
(3681103, 33433, 1.66, 0, 1, 1), /* (132) Frigid Mail Circlet */
(3681103, 33400, 1.31, 0, 1, 1), /* (132) Frigid Mail Bracers */
(3681103, 37091, 1.23, 0, 1, 1), /* (80) Scroll of Intellect VII */
(3681103, 36399, 1.53, 0, 1, 1), /* (182) Necropolis Helm */
(3681103, 36398, 1.4, 0, 1, 1), /* (182) Necropolis Gloves */
(3681103, 36395, 1.2, 0, 1, 1); /* (182) Necropolis Girdle */

-- [36829] Deathspeaker High Priest (15)
UPDATE `creature_template` SET `LootID`= 36829 WHERE `entry` = 36829;
UPDATE `creature_template` SET `LootID`= 3682901 WHERE `entry` = 3682901;
UPDATE `creature_template` SET `LootID`= 3682902 WHERE `entry` = 3682902;
UPDATE `creature_template` SET `LootID`= 3682903 WHERE `entry` = 3682903;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36829, 38074, 3682901, 3682902, 3682903);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36829, 33470, 32.3, 0, 1, 1), /* (70) Frostweave Cloth */
(36829, 43852, 19.34, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36829, 35947, 7.17, 0, 1, 1), /* (85) Sparkling Frostcap */
(36829, 33445, 4.91, 0, 1, 1), /* (85) Honeymint Tea */
(36829, 50453, 2.16, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(36829, 33447, 2.09, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3682901, 33470, 18.8, 0, 1, 1), /* (70) Frostweave Cloth */
(3682901, 43852, 11.89, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3682901, 35947, 3.89, 0, 1, 1), /* (85) Sparkling Frostcap */
(3682901, 50452, 9.66, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3682901, 33445, 3.39, 0, 1, 1), /* (85) Honeymint Tea */
(3682901, 50453, 6.47, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3682901, 50444, 6.08, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3682901, 50450, 4.06, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3682901, 50447, 4.17, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3682901, 50449, 4.14, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3682901, 50451, 3.4, 0, 1, 1), /* (264) Belt of the Lonely Noble */
# Heroic 10
(3682902, 36058, 3.01, 0, 1, 1), /* (178) Vizier Bracelets */
# Heroic 25
(3682903, 43852, 6.79, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3682903, 50452, 5.94, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3682903, 50453, 8.86, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3682903, 50444, 7.29, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3682903, 50450, 5.47, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3682903, 50447, 2.04, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3682903, 50451, 4.24, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3682903, 33433, 2.8, 0, 1, 1), /* (132) Frigid Mail Circlet */
(3682903, 33401, 1.87, 0, 1, 1); /* (132) Frigid Mail Gloves */

-- [36725] Nerub'ar Broodkeeper (19)
UPDATE `creature_template` SET `LootID`= 36725 WHERE `entry` = 36725;
UPDATE `creature_template` SET `LootID`= 3672501 WHERE `entry` = 3672501;
UPDATE `creature_template` SET `LootID`= 3672502 WHERE `entry` = 3672502;
UPDATE `creature_template` SET `LootID`= 3672503 WHERE `entry` = 3672503;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36725, 38058, 3672501, 3672502, 3672503);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36725, 33470, 33.32, 0, 1, 1), /* (70) Frostweave Cloth */
(36725, 43852, 18.72, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36725, 35947, 7.65, 0, 1, 1), /* (85) Sparkling Frostcap */
(36725, 33445, 3.55, 0, 1, 1), /* (85) Honeymint Tea */
(36725, 33447, 2.07, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3672501, 33470, 25.06, 0, 1, 1), /* (70) Frostweave Cloth */
(3672501, 43852, 12.09, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3672501, 35947, 5.51, 0, 1, 1), /* (85) Sparkling Frostcap */
(3672501, 33445, 2.24, 0, 1, 1), /* (85) Honeymint Tea */
(3672501, 50452, 3.07, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3672501, 43509, 1.96, 0, 1, 1), /* (75) Recipe: Bad Clams */
(3672501, 33434, 1.75, 0, 1, 1), /* (132) Frozen Leather Helmet */
# Heroic 10
(3672502, 36443, 1.11, 0, 1, 1), /* (178) Platinum Medallion */
# Heroic 25
(3672503, 43852, 12.61, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3672503, 33445, 4.2, 0, 1, 1), /* (85) Honeymint Tea */
(3672503, 50452, 5.11, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3672503, 50444, 1.9, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3672503, 50453, 3.04, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3672503, 33426, 1.45, 0, 1, 1), /* (125) Chipped Timber Axe */
(3672503, 36681, 1.79, 0, 1, 1), /* (178) Wisdom Carver */
(3672503, 33384, 1.42, 0, 1, 1), /* (132) Frozen Pants */
(3672503, 33368, 3.44, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
(3672503, 33403, 1.96, 0, 1, 1), /* (132) Frigid Mail Shoulderpads */
(3672503, 36456, 2.47, 0, 1, 1), /* (174) Icy Kite Shield */
(3672503, 36169, 2.33, 0, 1, 1), /* (178) Webspinner Shoulderguards */
(3672503, 36485, 1.45, 0, 1, 1); /* (178) Sinuous Keris */

-- [37004] Skybreaker Dreadblade (26)
UPDATE `creature_template` SET `LootID`= 37004 WHERE `entry` = 37004;
UPDATE `creature_template` SET `LootID`= 3700401 WHERE `entry` = 3700401;
UPDATE `creature_template` SET `LootID`= 3700402 WHERE `entry` = 3700402;
UPDATE `creature_template` SET `LootID`= 3700403 WHERE `entry` = 3700403;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37004, 38079, 3700401, 3700402, 3700403);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37004, 33470, 31.95, 0, 1, 1), /* (70) Frostweave Cloth */
(37004, 43852, 19.74, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37004, 33443, 8.13, 0, 1, 1), /* (75) Sour Goat Cheese */
(37004, 33445, 4.47, 0, 1, 1), /* (85) Honeymint Tea */
(37004, 33447, 1.91, 0, 1, 1), /* (80) Runic Healing Potion */
(37004, 33431, 1.24, 0, 1, 1), /* (125) Icesmashing Mace */
(37004, 36066, 1.15, 0, 1, 1), /* (182) Coldwraith Bindings */
(37004, 33367, 1.11, 0, 1, 1), /* (132) Frost-Rimed Cloth Bracers */
# Normal 25
(3700401, 33470, 23.38, 0, 1, 1), /* (70) Frostweave Cloth */
(3700401, 43852, 13.74, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3700401, 33443, 4.39, 0, 1, 1), /* (75) Sour Goat Cheese */
(3700401, 33445, 2.09, 0, 1, 1), /* (85) Honeymint Tea */
(3700401, 33447, 1.31, 0, 1, 1), /* (80) Runic Healing Potion */
(3700401, 50451, 4.47, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3700401, 36052, 3.04, 0, 1, 1), /* (178) Vizier Slippers */
(3700401, 36695, 1.35, 0, 1, 1), /* (178) Dogmatic Scepter */
(3700401, 50452, 3.16, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3700401, 50444, 2.95, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3700401, 50447, 2.91, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3700401, 50453, 2.67, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3700401, 36065, 1.19, 0, 1, 1), /* (182) Coldwraith Mantle */
(3700401, 36280, 1.03, 0, 1, 1), /* (178) Spiderlord Legguards */
(3700401, 50449, 1.35, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
# Heroic 10
(3700402, 33443, 5.53, 0, 1, 1), /* (75) Sour Goat Cheese */
# Heroic 25
(3700403, 43852, 7.87, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3700403, 33443, 4.26, 0, 1, 1), /* (75) Sour Goat Cheese */
(3700403, 33445, 12.46, 0, 1, 1), /* (85) Honeymint Tea */
(3700403, 50451, 2.3, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3700403, 36429, 2.3, 0, 1, 1), /* (178) Spur Ring */
(3700403, 50452, 2.3, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3700403, 50444, 1.64, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3700403, 50453, 1.64, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3700403, 36061, 3.93, 0, 1, 1), /* (182) Coldwraith Robe */
(3700403, 36054, 2.3, 0, 1, 1), /* (178) Vizier Gloves */
(3700403, 50450, 3.61, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3700403, 36443, 3.93, 0, 1, 1), /* (178) Platinum Medallion */
(3700403, 36682, 1.97, 0, 1, 1), /* (182) Seduced Blade */
(3700403, 36458, 1.97, 0, 1, 1), /* (182) Frozen Shield */
(3700403, 36275, 1.97, 0, 1, 1); /* (178) Spiderlord Belt */

-- [37021] Skybreaker Vicar (30)
UPDATE `creature_template` SET `LootID`= 37021 WHERE `entry` = 37021;
UPDATE `creature_template` SET `LootID`= 3702101 WHERE `entry` = 3702101;
UPDATE `creature_template` SET `LootID`= 3702102 WHERE `entry` = 3702102;
UPDATE `creature_template` SET `LootID`= 3702103 WHERE `entry` = 3702103;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37021, 38085, 3702101, 3702102, 3702103);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37021, 33470, 29.14, 0, 1, 1), /* (70) Frostweave Cloth */
(37021, 43852, 23.04, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37021, 33443, 8.8, 0, 1, 1), /* (75) Sour Goat Cheese */
(37021, 33445, 3.66, 0, 1, 1), /* (85) Honeymint Tea */
(37021, 33447, 1.96, 0, 1, 1), /* (80) Runic Healing Potion */
(37021, 33427, 2.03, 0, 1, 1), /* (125) Frost-Encrusted Rifle */
(37021, 33448, 1.02, 0, 1, 1), /* (80) Runic Mana Potion */
(37021, 33431, 1.33, 0, 1, 1), /* (125) Icesmashing Mace */
(37021, 33424, 1.15, 0, 1, 1), /* (125) Cracked Iron Staff */
(37021, 36682, 1.02, 0, 1, 1), /* (182) Seduced Blade */
# Normal 25
(3702101, 33470, 30.7, 0, 1, 1), /* (70) Frostweave Cloth */
(3702101, 43852, 19.74, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702101, 33443, 6.07, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702101, 33445, 2, 0, 1, 1), /* (85) Honeymint Tea */
(3702101, 33448, 1.75, 0, 1, 1), /* (80) Runic Mana Potion */
(3702101, 50444, 2.43, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3702101, 36471, 1.79, 0, 1, 1), /* (178) Ice Crystal */
(3702101, 50452, 1.96, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702101, 50453, 1.36, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702101, 36174, 1.54, 0, 1, 1), /* (182) Geist Gloves */
(3702101, 42178, 1.57, 0, 1, 1), /* (72) Pattern: Rustic Workman's Shirt */
(3702101, 50449, 1.43, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702101, 50451, 1.36, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3702101, 50447, 1.18, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702101, 50450, 1.07, 0, 1, 1), /* (264) Leggings of Dubious Charms */
# Heroic 10
(3702102, 33443, 4.73, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702102, 36443, 1.46, 0, 1, 1), /* (178) Platinum Medallion */
# Heroic 25
(3702103, 43852, 15.94, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702103, 33443, 23.19, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702103, 33445, 1.45, 0, 1, 1), /* (85) Honeymint Tea */
(3702103, 36429, 4.76, 0, 1, 1), /* (178) Spur Ring */
(3702103, 33428, 1.24, 0, 1, 1), /* (125) Dulled Shiv */
(3702103, 50453, 3.52, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702103, 43509, 1.24, 0, 1, 1), /* (75) Recipe: Bad Clams */
(3702103, 50447, 1.45, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702103, 33368, 1.45, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
(3702103, 50450, 1.24, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702103, 36395, 1.66, 0, 1, 1), /* (182) Necropolis Girdle */
(3702103, 43465, 1.04, 0, 1, 1), /* (80) Scroll of Strength VII */
(3702103, 36281, 3.31, 0, 1, 1), /* (178) Spiderlord Spaulders */
(3702103, 36542, 2.48, 0, 1, 1), /* (182) Invasion Blade */
(3702103, 41778, 2.69, 0, 1, 1); /* (80) Design: Resolute Monarch Topaz */

-- [37016] Skybreaker Luminary (26)
UPDATE `creature_template` SET `LootID`= 37016 WHERE `entry` = 37016;
UPDATE `creature_template` SET `LootID`= 3701601 WHERE `entry` = 3701601;
UPDATE `creature_template` SET `LootID`= 3701602 WHERE `entry` = 3701602;
UPDATE `creature_template` SET `LootID`= 3701603 WHERE `entry` = 3701603;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37016, 38081, 3701601, 3701602, 3701603);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37016, 33470, 36.23, 0, 1, 1), /* (70) Frostweave Cloth */
(37016, 43852, 19.63, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37016, 33443, 7.69, 0, 1, 1), /* (75) Sour Goat Cheese */
(37016, 33445, 4.13, 0, 1, 1), /* (85) Honeymint Tea */
(37016, 33423, 1.74, 0, 1, 1), /* (125) Rime-Covered Mace */
(37016, 33448, 1.65, 0, 1, 1), /* (80) Runic Mana Potion */
(37016, 33400, 1.77, 0, 1, 1), /* (132) Frigid Mail Bracers */
(37016, 36051, 1.8, 0, 1, 1), /* (178) Vizier Sash */
(37016, 33435, 1.24, 0, 1, 1), /* (132) Frost-Worn Plate Helmet */
(37016, 33447, 1.3, 0, 1, 1), /* (80) Runic Healing Potion */
(37016, 36169, 1.24, 0, 1, 1), /* (178) Webspinner Shoulderguards */
# Normal 25
(3701601, 33470, 20.57, 0, 1, 1), /* (70) Frostweave Cloth */
(3701601, 43852, 21.51, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3701601, 33443, 5.38, 0, 1, 1), /* (75) Sour Goat Cheese */
(3701601, 33445, 3.96, 0, 1, 1), /* (85) Honeymint Tea */
(3701601, 36444, 4.43, 0, 1, 1), /* (182) Ice Encrusted Amulet */
(3701601, 50450, 3.96, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3701601, 50452, 3.21, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3701601, 36429, 1.51, 0, 1, 1), /* (178) Spur Ring */
(3701601, 36058, 1.6, 0, 1, 1), /* (178) Vizier Bracelets */
(3701601, 36399, 1.04, 0, 1, 1), /* (182) Necropolis Helm */
(3701601, 50453, 2.36, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3701601, 36064, 1.51, 0, 1, 1), /* (182) Coldwraith Pants */
(3701601, 50451, 1.98, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3701601, 33366, 1.79, 0, 1, 1), /* (132) Frost-Rimed Cloth Boots */
(3701601, 50444, 1.51, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3701601, 50447, 1.51, 0, 1, 1), /* (264) Harbinger's Bone Band */
# Heroic 10
(3701602, 33443, 5.81, 0, 1, 1), /* (75) Sour Goat Cheese */
# Heroic 25
(3701603, 43852, 8.96, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3701603, 33443, 4.25, 0, 1, 1), /* (75) Sour Goat Cheese */
(3701603, 50452, 3.77, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3701603, 50453, 2.36, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3701603, 36695, 7.55, 0, 1, 1), /* (178) Dogmatic Scepter */
(3701603, 50451, 2.36, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3701603, 36667, 4.25, 0, 1, 1), /* (178) Solid Ice Wand */
(3701603, 36398, 3.3, 0, 1, 1); /* (182) Necropolis Gloves */

-- [37148] Skybreaker Summoner (31)
UPDATE `creature_template` SET `LootID`= 37148 WHERE `entry` = 37148;
UPDATE `creature_template` SET `LootID`= 3714801 WHERE `entry` = 3714801;
UPDATE `creature_template` SET `LootID`= 3714802 WHERE `entry` = 3714802;
UPDATE `creature_template` SET `LootID`= 3714803 WHERE `entry` = 3714803;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37148, 38084, 3714801, 3714802, 3714803);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37148, 33470, 34.67, 0, 1, 1), /* (70) Frostweave Cloth */
(37148, 43852, 20.79, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37148, 33443, 6.97, 0, 1, 1), /* (75) Sour Goat Cheese */
(37148, 33445, 3.92, 0, 1, 1), /* (85) Honeymint Tea */
(37148, 33447, 1.8, 0, 1, 1), /* (80) Runic Healing Potion */
(37148, 45912, 2.15, 0, 1, 1), /* (80) Book of Glyph Mastery */
(37148, 36288, 1.86, 0, 1, 1), /* (182) Spectral Legwraps */
(37148, 36278, 1.51, 0, 1, 1), /* (178) Spiderlord Gauntlets */
(37148, 33431, 1.12, 0, 1, 1), /* (125) Icesmashing Mace */
(37148, 33448, 1.16, 0, 1, 1), /* (80) Runic Mana Potion */
# Normal 25
(3714801, 33470, 18.94, 0, 1, 1), /* (70) Frostweave Cloth */
(3714801, 43852, 8.86, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3714801, 33443, 2.73, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714801, 33445, 1.13, 0, 1, 1), /* (85) Honeymint Tea */
(3714801, 50452, 16.68, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3714801, 33447, 3.3, 0, 1, 1), /* (80) Runic Healing Potion */
(3714801, 36667, 1.04, 0, 1, 1), /* (178) Solid Ice Wand */
(3714801, 36057, 2.92, 0, 1, 1), /* (178) Vizier Mantle */
(3714801, 36392, 2.36, 0, 1, 1), /* (178) Revenant Legguards */
(3714801, 50453, 4.15, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3714801, 36065, 1.41, 0, 1, 1), /* (182) Coldwraith Mantle */
(3714801, 50444, 2.83, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3714801, 36457, 1.98, 0, 1, 1), /* (178) Ivory Shield */
(3714801, 37824, 1.32, 0, 1, 1), /* (174) Gwyneth's Runed Dragonwand */
(3714801, 36275, 1.32, 0, 1, 1), /* (178) Spiderlord Belt */
(3714801, 36696, 1.32, 0, 1, 1), /* (182) Graced Scepter */
(3714801, 50447, 2.07, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3714801, 36400, 1.32, 0, 1, 1), /* (182) Necropolis Legplates */
(3714801, 50449, 1.79, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3714801, 36393, 1.13, 0, 1, 1), /* (178) Revenant Epaulets */
# Heroic 10
(3714802, 33443, 7.24, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714802, 36443, 15.3, 0, 1, 1), /* (178) Platinum Medallion */
# Heroic 25
(3714803, 43852, 31.48, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3714803, 33443, 3.7, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714803, 33445, 1.85, 0, 1, 1), /* (85) Honeymint Tea */
(3714803, 33366, 22.84, 0, 1, 1), /* (132) Frost-Rimed Cloth Boots */
(3714803, 36681, 2.47, 0, 1, 1), /* (178) Wisdom Carver */
(3714803, 43509, 15.43, 0, 1, 1), /* (75) Recipe: Bad Clams */
(3714803, 36054, 1.85, 0, 1, 1), /* (178) Vizier Gloves */
(3714803, 36164, 2.47, 0, 1, 1); /* (178) Webspinner Boots */

-- [37017] Skybreaker Assassin (24)
UPDATE `creature_template` SET `LootID`= 37017 WHERE `entry` = 37017;
UPDATE `creature_template` SET `LootID`= 3701701 WHERE `entry` = 3701701;
UPDATE `creature_template` SET `LootID`= 3701702 WHERE `entry` = 3701702;
UPDATE `creature_template` SET `LootID`= 3701703 WHERE `entry` = 3701703;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37017, 38078, 3701701, 3701702, 3701703);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37017, 33470, 37.06, 0, 1, 1), /* (70) Frostweave Cloth */
(37017, 43852, 17.67, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37017, 33443, 8.34, 0, 1, 1), /* (75) Sour Goat Cheese */
(37017, 33445, 3.27, 0, 1, 1), /* (85) Honeymint Tea */
(37017, 36055, 2.65, 0, 1, 1), /* (178) Vizier Hood */
(37017, 36682, 2.35, 0, 1, 1), /* (182) Seduced Blade */
(37017, 36066, 2.37, 0, 1, 1), /* (182) Coldwraith Bindings */
(37017, 36065, 2.07, 0, 1, 1), /* (182) Coldwraith Mantle */
(37017, 33447, 1.2, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3701701, 33470, 38.74, 0, 1, 1), /* (70) Frostweave Cloth */
(3701701, 43852, 11.57, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3701701, 33443, 2.66, 0, 1, 1), /* (75) Sour Goat Cheese */
(3701701, 33445, 1.37, 0, 1, 1), /* (85) Honeymint Tea */
(3701701, 36057, 2.82, 0, 1, 1), /* (178) Vizier Mantle */
(3701701, 36175, 2.82, 0, 1, 1), /* (182) Geist Hood */
(3701701, 50444, 2.21, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3701701, 50450, 2.05, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3701701, 50452, 2.05, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3701701, 50453, 1.75, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3701701, 36443, 1.29, 0, 1, 1), /* (178) Platinum Medallion */
(3701701, 50449, 1.14, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3701701, 37781, 1.22, 0, 1, 1), /* (174) Grips of the Warming Heart */
(3701701, 36283, 1.14, 0, 1, 1), /* (182) Spectral Waistband */
(3701701, 50447, 1.37, 0, 1, 1), /* (264) Harbinger's Bone Band */
# Heroic 10
(3701702, 33443, 7.47, 0, 1, 1), /* (75) Sour Goat Cheese */
(3701702, 36177, 3.12, 0, 1, 1), /* (182) Geist Shoulders */
# Heroic 25
(3701703, 43852, 10.14, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3701703, 36395, 29.49, 0, 1, 1), /* (182) Necropolis Girdle */
(3701703, 36682, 1.84, 0, 1, 1), /* (182) Seduced Blade */
(3701703, 50449, 1.84, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3701703, 36485, 2.76, 0, 1, 1), /* (178) Sinuous Keris */
(3701703, 37093, 2.3, 0, 1, 1); /* (80) Scroll of Stamina VII */

-- [37027] Skybreaker Hierophant (26)
UPDATE `creature_template` SET `LootID`= 37027 WHERE `entry` = 37027;
UPDATE `creature_template` SET `LootID`= 3702701 WHERE `entry` = 3702701;
UPDATE `creature_template` SET `LootID`= 3702702 WHERE `entry` = 3702702;
UPDATE `creature_template` SET `LootID`= 3702703 WHERE `entry` = 3702703;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37027, 38080, 3702701, 3702702, 3702703);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37027, 33470, 31.06, 0, 1, 1), /* (70) Frostweave Cloth */
(37027, 43852, 17.36, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37027, 33443, 9.49, 0, 1, 1), /* (75) Sour Goat Cheese */
(37027, 33445, 4.13, 0, 1, 1), /* (85) Honeymint Tea */
(37027, 33382, 2.68, 0, 1, 1), /* (132) Frozen Bracers */
(37027, 33397, 2.27, 0, 1, 1), /* (132) Frigid Mail Armor */
(37027, 33447, 1.35, 0, 1, 1), /* (80) Runic Healing Potion */
(37027, 33424, 1.91, 0, 1, 1), /* (125) Cracked Iron Staff */
(37027, 36053, 1.86, 0, 1, 1), /* (178) Vizier Robe */
(37027, 36429, 1.07, 0, 1, 1), /* (178) Spur Ring */
(37027, 36430, 1.02, 0, 1, 1), /* (182) Puzzle Ring */
(37027, 33422, 1.53, 0, 1, 1), /* (125) Shattered Bow */
(37027, 36066, 1.15, 0, 1, 1), /* (182) Coldwraith Bindings */
# Normal 25
(3702701, 33470, 19.54, 0, 1, 1), /* (70) Frostweave Cloth */
(3702701, 43852, 13.43, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702701, 33443, 8.69, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702701, 33445, 1.51, 0, 1, 1), /* (85) Honeymint Tea */
(3702701, 33382, 5.17, 0, 1, 1), /* (132) Frozen Bracers */
(3702701, 33447, 1.15, 0, 1, 1), /* (80) Runic Healing Potion */
(3702701, 50452, 5.6, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702701, 36429, 1.65, 0, 1, 1), /* (178) Spur Ring */
(3702701, 36430, 1.29, 0, 1, 1), /* (182) Puzzle Ring */
(3702701, 50449, 3.3, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702701, 36667, 1.94, 0, 1, 1), /* (178) Solid Ice Wand */
(3702701, 50447, 2.23, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702701, 50444, 2.23, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3702701, 50451, 1.94, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3702701, 36681, 1.08, 0, 1, 1), /* (178) Wisdom Carver */
(3702701, 50450, 1.72, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702701, 50453, 1.8, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702701, 33368, 1.08, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
# Heroic 10
(3702702, 33443, 9.31, 0, 1, 1), /* (75) Sour Goat Cheese */
# Heroic 25
(3702703, 43852, 7.73, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702703, 33443, 6.36, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702703, 36416, 47.27, 0, 1, 1), /* (182) Regal Cloak */
(3702703, 50452, 1.36, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702703, 36063, 5, 0, 1, 1), /* (182) Coldwraith Cowl */
(3702703, 36167, 1.82, 0, 1, 1); /* (178) Webspinner Hood */

-- [37026] Skybreaker Sorcerer (38)
UPDATE `creature_template` SET `LootID`= 37026 WHERE `entry` = 37026;
UPDATE `creature_template` SET `LootID`= 3702601 WHERE `entry` = 3702601;
UPDATE `creature_template` SET `LootID`= 3702602 WHERE `entry` = 3702602;
UPDATE `creature_template` SET `LootID`= 3702603 WHERE `entry` = 3702603;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37026, 38083, 38256, 38693, 38694, 3702601, 3702602, 3702603);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37026, 33470, 31.82, 0, 1, 1), /* (70) Frostweave Cloth */
(37026, 43852, 19.54, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37026, 33443, 6.71, 0, 1, 1), /* (75) Sour Goat Cheese */
(37026, 33445, 3.1, 0, 1, 1), /* (85) Honeymint Tea */
(37026, 36167, 3.53, 0, 1, 1), /* (178) Webspinner Hood */
(37026, 36429, 2.8, 0, 1, 1), /* (178) Spur Ring */
(37026, 33425, 2.51, 0, 1, 1), /* (125) Ice-Pitted Blade */
(37026, 33447, 1.66, 0, 1, 1), /* (80) Runic Healing Potion */
(37026, 33385, 1.83, 0, 1, 1), /* (132) Frozen Shoulderpads */
(37026, 33414, 1.66, 0, 1, 1), /* (132) Frost-Worn Plate Bracers */
# Normal 25
(3702601, 33470, 29.21, 0, 1, 1), /* (70) Frostweave Cloth */
(3702601, 43852, 16.23, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702601, 33443, 5.53, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702601, 33445, 1.32, 0, 1, 1), /* (85) Honeymint Tea */
(3702601, 50452, 7.33, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702601, 33447, 1.2, 0, 1, 1), /* (80) Runic Healing Potion */
(3702601, 36282, 1.2, 0, 1, 1), /* (178) Spiderlord Bracers */
(3702601, 36682, 1.32, 0, 1, 1), /* (182) Seduced Blade */
(3702601, 36275, 1.2, 0, 1, 1), /* (178) Spiderlord Belt */
(3702601, 50453, 2.4, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702601, 36393, 1.68, 0, 1, 1), /* (178) Revenant Epaulets */
(3702601, 50449, 1.92, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702601, 37771, 1.56, 0, 1, 1), /* (174) Wristguards of Verdant Recovery */
(3702601, 36065, 1.2, 0, 1, 1), /* (182) Coldwraith Mantle */
(3702601, 50450, 1.68, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702601, 50444, 1.8, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3702601, 36063, 1.2, 0, 1, 1), /* (182) Coldwraith Cowl */
(3702601, 36056, 1.32, 0, 1, 1), /* (178) Vizier Leggings */
(3702601, 43510, 1.2, 0, 1, 1), /* (75) Recipe: Haunted Herring */
# Heroic 10
(3702602, 33443, 11.46, 0, 1, 1), /* (75) Sour Goat Cheese */
# Heroic 25
(3702603, 43852, 17.33, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702603, 33443, 4, 0, 1, 1), /* (75) Sour Goat Cheese */
(3702603, 33425, 1.33, 0, 1, 1), /* (125) Ice-Pitted Blade */
(3702603, 33430, 1.33, 0, 1, 1), /* (125) Abandoned Greatsword */
(3702603, 36682, 1.33, 0, 1, 1), /* (182) Seduced Blade */
(3702603, 36393, 1.33, 0, 1, 1), /* (178) Revenant Epaulets */
(3702603, 36416, 9.33, 0, 1, 1), /* (182) Regal Cloak */
(3702603, 50449, 1.33, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702603, 50450, 1.33, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702603, 36060, 1.33, 0, 1, 1), /* (182) Coldwraith Boots */
(3702603, 36398, 9.33, 0, 1, 1), /* (182) Necropolis Gloves */
(3702603, 36056, 1.33, 0, 1, 1), /* (178) Vizier Leggings */
(3702603, 50447, 2.67, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702603, 36443, 1.33, 0, 1, 1), /* (178) Platinum Medallion */
(3702603, 43509, 10.67, 0, 1, 1), /* (75) Recipe: Bad Clams */
(3702603, 33365, 4, 0, 1, 1), /* (132) Frost-Rimed Cloth Belt */
(3702603, 36279, 6.67, 0, 1, 1), /* (178) Spiderlord Helm */
(3702603, 50451, 1.33, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3702603, 36471, 5.33, 0, 1, 1), /* (178) Ice Crystal */
(3702603, 36277, 1.33, 0, 1, 1), /* (178) Spiderlord Chestpiece */
(3702603, 36668, 1.33, 0, 1, 1), /* (182) Mindless Wand */
(3702603, 36513, 1.33, 0, 1, 1); /* (178) Lode-Headed Hammer */

-- [37144] Skybreaker Marksman (26)
UPDATE `creature_template` SET `LootID`= 37144 WHERE `entry` = 37144;
UPDATE `creature_template` SET `LootID`= 3714401 WHERE `entry` = 3714401;
UPDATE `creature_template` SET `LootID`= 3714402 WHERE `entry` = 3714402;
UPDATE `creature_template` SET `LootID`= 3714403 WHERE `entry` = 3714403;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37144, 38097, 3714401, 3714402, 3714403);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37144, 33470, 33.12, 0, 1, 1), /* (70) Frostweave Cloth */
(37144, 43852, 17.65, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37144, 33443, 6.63, 0, 1, 1), /* (75) Sour Goat Cheese */
(37144, 33445, 4.57, 0, 1, 1), /* (85) Honeymint Tea */
(37144, 33447, 1.92, 0, 1, 1), /* (80) Runic Healing Potion */
(37144, 36058, 2.16, 0, 1, 1), /* (178) Vizier Bracelets */
(37144, 36172, 2.16, 0, 1, 1), /* (182) Geist Boots */
(37144, 36061, 1.61, 0, 1, 1), /* (182) Coldwraith Robe */
(37144, 33429, 1.43, 0, 1, 1), /* (125) Ice Cleaver */
(37144, 33424, 1.12, 0, 1, 1), /* (125) Cracked Iron Staff */
(37144, 33412, 1.12, 0, 1, 1), /* (132) Frost-Worn Plate Belt */
# Normal 25
(3714401, 33470, 22.52, 0, 1, 1), /* (70) Frostweave Cloth */
(3714401, 43852, 17.37, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3714401, 33443, 4.78, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714401, 33445, 3.38, 0, 1, 1), /* (85) Honeymint Tea */
(3714401, 33447, 5.22, 0, 1, 1), /* (80) Runic Healing Potion */
(3714401, 33401, 5.89, 0, 1, 1), /* (132) Frigid Mail Gloves */
(3714401, 36387, 2.28, 0, 1, 1), /* (178) Revenant Belt */
(3714401, 37824, 2.58, 0, 1, 1), /* (174) Gwyneth's Runed Dragonwand */
(3714401, 36286, 1.03, 0, 1, 1), /* (182) Spectral Gauntlets */
(3714401, 36176, 1.47, 0, 1, 1), /* (182) Geist Legguards */
(3714401, 50444, 2.21, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3714401, 50453, 1.77, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3714401, 50449, 1.47, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3714401, 50452, 1.32, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3714401, 50451, 1.55, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3714401, 50447, 1.32, 0, 1, 1), /* (264) Harbinger's Bone Band */
# Heroic 10
(3714402, 33443, 8.89, 0, 1, 1), /* (75) Sour Goat Cheese */
# Heroic 25
(3714403, 43852, 15.49, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3714403, 33443, 6.34, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714403, 33412, 4.93, 0, 1, 1), /* (132) Frost-Worn Plate Belt */
(3714403, 36288, 1.41, 0, 1, 1), /* (182) Spectral Legwraps */
(3714403, 36286, 9.86, 0, 1, 1), /* (182) Spectral Gauntlets */
(3714403, 50449, 3.52, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3714403, 50452, 3.52, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3714403, 36167, 4.23, 0, 1, 1), /* (178) Webspinner Hood */
(3714403, 36060, 2.82, 0, 1, 1), /* (182) Coldwraith Boots */
(3714403, 33414, 1.41, 0, 1, 1); /* (132) Frost-Worn Plate Bracers */

-- [36998] Skybreaker Protector (27)
UPDATE `creature_template` SET `LootID`= 36998 WHERE `entry` = 36998;
UPDATE `creature_template` SET `LootID`= 3699801 WHERE `entry` = 3699801;
UPDATE `creature_template` SET `LootID`= 3699802 WHERE `entry` = 3699802;
UPDATE `creature_template` SET `LootID`= 3699803 WHERE `entry` = 3699803;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36998, 38082, 3699801, 3699802, 3699803);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36998, 33470, 35.98, 0, 1, 1), /* (70) Frostweave Cloth */
(36998, 43852, 19.25, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36998, 33443, 9.29, 0, 1, 1), /* (75) Sour Goat Cheese */
(36998, 33445, 3.17, 0, 1, 1), /* (85) Honeymint Tea */
(36998, 33427, 2, 0, 1, 1), /* (125) Frost-Encrusted Rifle */
(36998, 33447, 1.78, 0, 1, 1), /* (80) Runic Healing Potion */
(36998, 36275, 2.07, 0, 1, 1), /* (178) Spiderlord Belt */
(36998, 36584, 1.81, 0, 1, 1), /* (182) Snowy Edge */
(36998, 33433, 1.22, 0, 1, 1), /* (132) Frigid Mail Circlet */
# Normal 25
(3699801, 33470, 26.74, 0, 1, 1), /* (70) Frostweave Cloth */
(3699801, 43852, 12.52, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3699801, 33443, 4.4, 0, 1, 1), /* (75) Sour Goat Cheese */
(3699801, 33445, 1.89, 0, 1, 1), /* (85) Honeymint Tea */
(3699801, 33413, 9.16, 0, 1, 1), /* (132) Frost-Worn Plate Boots */
(3699801, 33427, 1.77, 0, 1, 1), /* (125) Frost-Encrusted Rifle */
(3699801, 33447, 1.4, 0, 1, 1), /* (80) Runic Healing Potion */
(3699801, 36429, 1.47, 0, 1, 1), /* (178) Spur Ring */
(3699801, 36542, 6.11, 0, 1, 1), /* (182) Invasion Blade */
(3699801, 50452, 3.24, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3699801, 36401, 2.69, 0, 1, 1), /* (182) Necropolis Epaulets */
(3699801, 50453, 2.14, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3699801, 36682, 1.04, 0, 1, 1), /* (182) Seduced Blade */
(3699801, 50444, 1.83, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3699801, 50451, 1.95, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3699801, 50450, 2.01, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3699801, 36281, 1.22, 0, 1, 1), /* (178) Spiderlord Spaulders */
(3699801, 36541, 1.83, 0, 1, 1), /* (178) Wintry Claymore */
(3699801, 50449, 1.1, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
# Heroic 10
(3699802, 33443, 5.64, 0, 1, 1), /* (75) Sour Goat Cheese */
# Heroic 25
(3699803, 43852, 28.57, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3699803, 33443, 3.34, 0, 1, 1), /* (75) Sour Goat Cheese */
(3699803, 33445, 1.22, 0, 1, 1), /* (85) Honeymint Tea */
(3699803, 36429, 19.45, 0, 1, 1), /* (178) Spur Ring */
(3699803, 36057, 15.81, 0, 1, 1), /* (178) Vizier Mantle */
(3699803, 50452, 1.22, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3699803, 50453, 1.82, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3699803, 36681, 3.65, 0, 1, 1), /* (178) Wisdom Carver */
(3699803, 50444, 1.22, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3699803, 36055, 1.52, 0, 1, 1), /* (178) Vizier Hood */
(3699803, 33380, 1.22, 0, 1, 1), /* (132) Frozen Belt */
(3699803, 36290, 1.52, 0, 1, 1); /* (182) Spectral Bracelets */

-- [37148] Skybreaker Summoner (31)
UPDATE `creature_template` SET `LootID`= 37148 WHERE `entry` = 37148;
UPDATE `creature_template` SET `LootID`= 3714801 WHERE `entry` = 3714801;
UPDATE `creature_template` SET `LootID`= 3714802 WHERE `entry` = 3714802;
UPDATE `creature_template` SET `LootID`= 3714803 WHERE `entry` = 3714803;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37148, 3714801, 3714802, 3714803);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37148, 33470, 34.67, 0, 1, 1), /* (70) Frostweave Cloth */
(37148, 43852, 20.79, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37148, 33443, 6.97, 0, 1, 1), /* (75) Sour Goat Cheese */
(37148, 33445, 3.92, 0, 1, 1), /* (85) Honeymint Tea */
(37148, 33447, 1.8, 0, 1, 1), /* (80) Runic Healing Potion */
(37148, 45912, 2.15, 0, 1, 1), /* (80) Book of Glyph Mastery */
(37148, 36288, 1.86, 0, 1, 1), /* (182) Spectral Legwraps */
(37148, 36278, 1.51, 0, 1, 1), /* (178) Spiderlord Gauntlets */
(37148, 33431, 1.12, 0, 1, 1), /* (125) Icesmashing Mace */
(37148, 33448, 1.16, 0, 1, 1), /* (80) Runic Mana Potion */
# Normal 25
(3714801, 33470, 18.94, 0, 1, 1), /* (70) Frostweave Cloth */
(3714801, 43852, 8.86, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3714801, 33443, 2.73, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714801, 33445, 1.13, 0, 1, 1), /* (85) Honeymint Tea */
(3714801, 50452, 16.68, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3714801, 33447, 3.3, 0, 1, 1), /* (80) Runic Healing Potion */
(3714801, 36667, 1.04, 0, 1, 1), /* (178) Solid Ice Wand */
(3714801, 36057, 2.92, 0, 1, 1), /* (178) Vizier Mantle */
(3714801, 36392, 2.36, 0, 1, 1), /* (178) Revenant Legguards */
(3714801, 50453, 4.15, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3714801, 36065, 1.41, 0, 1, 1), /* (182) Coldwraith Mantle */
(3714801, 50444, 2.83, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3714801, 36457, 1.98, 0, 1, 1), /* (178) Ivory Shield */
(3714801, 37824, 1.32, 0, 1, 1), /* (174) Gwyneth's Runed Dragonwand */
(3714801, 36275, 1.32, 0, 1, 1), /* (178) Spiderlord Belt */
(3714801, 36696, 1.32, 0, 1, 1), /* (182) Graced Scepter */
(3714801, 50447, 2.07, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3714801, 36400, 1.32, 0, 1, 1), /* (182) Necropolis Legplates */
(3714801, 50449, 1.79, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3714801, 36393, 1.13, 0, 1, 1), /* (178) Revenant Epaulets */
# Heroic 10
(3714802, 33443, 7.24, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714802, 36443, 15.3, 0, 1, 1), /* (178) Platinum Medallion */
# Heroic 25
(3714803, 43852, 31.48, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3714803, 33443, 3.7, 0, 1, 1), /* (75) Sour Goat Cheese */
(3714803, 33445, 1.85, 0, 1, 1), /* (85) Honeymint Tea */
(3714803, 33366, 22.84, 0, 1, 1), /* (132) Frost-Rimed Cloth Boots */
(3714803, 36681, 2.47, 0, 1, 1), /* (178) Wisdom Carver */
(3714803, 43509, 15.43, 0, 1, 1), /* (75) Recipe: Bad Clams */
(3714803, 36054, 1.85, 0, 1, 1), /* (178) Vizier Gloves */
(3714803, 36164, 2.47, 0, 1, 1); /* (178) Webspinner Boots */


-- [37033] Kor'kron Invoker (28)
UPDATE `creature_template` SET `LootID`= 37033 WHERE `entry` = 37033;
UPDATE `creature_template` SET `LootID`= 3703301 WHERE `entry` = 3703301;
UPDATE `creature_template` SET `LootID`= 3703302 WHERE `entry` = 3703302;
UPDATE `creature_template` SET `LootID`= 3703303 WHERE `entry` = 3703303;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37033, 3703301, 3703302, 3703303);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37033, 33470, 32.5, 0, 1, 1), /* (70) Frostweave Cloth */
(37033, 43852, 18.81, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37033, 33454, 5.82, 0, 1, 1), /* (75) Salted Venison */
(37033, 33445, 3.08, 0, 1, 1), /* (85) Honeymint Tea */
(37033, 36388, 3.66, 0, 1, 1), /* (178) Revenant Greaves */
(37033, 33447, 2.43, 0, 1, 1), /* (80) Runic Healing Potion */
(37033, 36429, 1.12, 0, 1, 1), /* (178) Spur Ring */
(37033, 36176, 1.58, 0, 1, 1), /* (182) Geist Legguards */
(37033, 36430, 1.2, 0, 1, 1), /* (182) Puzzle Ring */
(37033, 41778, 1.39, 0, 1, 1), /* (80) Design: Resolute Monarch Topaz */
(37033, 36171, 1.16, 0, 1, 1), /* (182) Geist Belt */
(37033, 33425, 1.08, 0, 1, 1), /* (125) Ice-Pitted Blade */
(37033, 36387, 1.08, 0, 1, 1), /* (178) Revenant Belt */
# Normal 25
(3703301, 33470, 17.89, 0, 1, 1), /* (70) Frostweave Cloth */
(3703301, 43852, 18.4, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703301, 33454, 13.77, 0, 1, 1), /* (75) Salted Venison */
(3703301, 33445, 1.8, 0, 1, 1), /* (85) Honeymint Tea */
(3703301, 33447, 3.47, 0, 1, 1), /* (80) Runic Healing Potion */
(3703301, 50452, 5.41, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703301, 36429, 1.03, 0, 1, 1), /* (178) Spur Ring */
(3703301, 36430, 1.03, 0, 1, 1), /* (182) Puzzle Ring */
(3703301, 50444, 3.22, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3703301, 36064, 1.29, 0, 1, 1), /* (182) Coldwraith Pants */
(3703301, 50453, 1.93, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3703301, 36062, 1.16, 0, 1, 1), /* (182) Coldwraith Handwraps */
(3703301, 50449, 1.93, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3703301, 36177, 1.54, 0, 1, 1), /* (182) Geist Shoulders */
(3703301, 33402, 1.16, 0, 1, 1), /* (132) Frigid Mail Pants */
(3703301, 43507, 1.03, 0, 1, 1), /* (75) Recipe: Tasty Cupcake */
(3703301, 50450, 1.29, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3703301, 33414, 1.03, 0, 1, 1), /* (132) Frost-Worn Plate Bracers */
# Heroic 10
(3703302, 33454, 0, 0, 1, 1), /* (75) Salted Venison */
# Heroic 25
(3703303, 43852, 2.88, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703303, 33445, 1.44, 0, 1, 1), /* (85) Honeymint Tea */
(3703303, 36284, 42.45, 0, 1, 1), /* (182) Spectral Greaves */
(3703303, 50452, 4.32, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703303, 50444, 4.32, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3703303, 50453, 3.6, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3703303, 50449, 1.44, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3703303, 50447, 6.47, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3703303, 50451, 4.32, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3703303, 36282, 1.44, 0, 1, 1); /* (178) Spiderlord Bracers */


-- [37031] Kor'kron Oracle (32)
UPDATE `creature_template` SET `LootID`= 37031 WHERE `entry` = 37031;
UPDATE `creature_template` SET `LootID`= 3703101 WHERE `entry` = 3703101;
UPDATE `creature_template` SET `LootID`= 3703102 WHERE `entry` = 3703102;
UPDATE `creature_template` SET `LootID`= 3703103 WHERE `entry` = 3703103;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37031, 38090, 3703101, 3703102, 3703103);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37031, 33470, 36.16, 0, 1, 1), /* (70) Frostweave Cloth */
(37031, 43852, 17.59, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37031, 33447, 6.53, 0, 1, 1), /* (80) Runic Healing Potion */
(37031, 33454, 5.73, 0, 1, 1), /* (75) Salted Venison */
(37031, 33445, 4.29, 0, 1, 1), /* (85) Honeymint Tea */
(37031, 36429, 1.54, 0, 1, 1), /* (178) Spur Ring */
(37031, 33401, 2.18, 0, 1, 1), /* (132) Frigid Mail Gloves */
(37031, 36170, 1.51, 0, 1, 1), /* (178) Webspinner Bindings */
(37031, 33384, 1.54, 0, 1, 1), /* (132) Frozen Pants */
(37031, 33417, 1.37, 0, 1, 1), /* (132) Frost-Worn Plate Pants */
(37031, 33427, 1.21, 0, 1, 1), /* (125) Frost-Encrusted Rifle */
(37031, 33425, 1.17, 0, 1, 1), /* (125) Ice-Pitted Blade */
(37031, 36276, 1.01, 0, 1, 1), /* (178) Spiderlord Boots */
# Normal 25
(3703101, 33470, 28.86, 0, 1, 1), /* (70) Frostweave Cloth */
(3703101, 43852, 10.51, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703101, 33447, 1.52, 0, 1, 1), /* (80) Runic Healing Potion */
(3703101, 33454, 4.32, 0, 1, 1), /* (75) Salted Venison */
(3703101, 33445, 1.87, 0, 1, 1), /* (85) Honeymint Tea */
(3703101, 33448, 1.52, 0, 1, 1), /* (80) Runic Mana Potion */
(3703101, 50452, 5.84, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703101, 50449, 1.52, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3703101, 36430, 1.17, 0, 1, 1), /* (182) Puzzle Ring */
(3703101, 33429, 1.64, 0, 1, 1), /* (125) Ice Cleaver */
(3703101, 50444, 2.8, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3703101, 50450, 3.15, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3703101, 36389, 3.04, 0, 1, 1), /* (178) Revenant Armor */
(3703101, 50453, 2.57, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3703101, 33426, 1.05, 0, 1, 1), /* (125) Chipped Timber Axe */
(3703101, 50451, 2.1, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3703101, 36471, 1.52, 0, 1, 1), /* (178) Ice Crystal */
(3703101, 36668, 1.05, 0, 1, 1), /* (182) Mindless Wand */
(3703101, 36443, 1.05, 0, 1, 1), /* (178) Platinum Medallion */
(3703101, 36290, 1.75, 0, 1, 1), /* (182) Spectral Bracelets */
(3703101, 36282, 1.05, 0, 1, 1), /* (178) Spiderlord Bracers */
# Heroic 10
(3703102, 33454, 0, 0, 1, 1), /* (75) Salted Venison */
# Heroic 25
(3703103, 43852, 7.14, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703103, 33454, 1.59, 0, 1, 1), /* (75) Salted Venison */
(3703103, 50452, 1.59, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703103, 50449, 30.16, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3703103, 36057, 21.43, 0, 1, 1), /* (178) Vizier Mantle */
(3703103, 50444, 5.56, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3703103, 45912, 7.14, 0, 1, 1), /* (80) Book of Glyph Mastery */
(3703103, 36395, 4.76, 0, 1, 1); /* (182) Necropolis Girdle */

-- [37035] Kor'kron Vanquisher (31)
UPDATE `creature_template` SET `LootID`= 37035 WHERE `entry` = 37035;
UPDATE `creature_template` SET `LootID`= 3703501 WHERE `entry` = 3703501;
UPDATE `creature_template` SET `LootID`= 3703502 WHERE `entry` = 3703502;
UPDATE `creature_template` SET `LootID`= 3703503 WHERE `entry` = 3703503;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37035, 38096, 3703501, 3703502, 3703503);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37035, 33470, 32.04, 0, 1, 1), /* (70) Frostweave Cloth */
(37035, 43852, 17.59, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37035, 33454, 6.48, 0, 1, 1), /* (75) Salted Venison */
(37035, 33445, 4.9, 0, 1, 1), /* (85) Honeymint Tea */
(37035, 36387, 4.4, 0, 1, 1), /* (178) Revenant Belt */
(37035, 33380, 3.89, 0, 1, 1), /* (132) Frozen Belt */
(37035, 33447, 1.72, 0, 1, 1), /* (80) Runic Healing Potion */
(37035, 33426, 1.9, 0, 1, 1), /* (125) Chipped Timber Axe */
(37035, 36528, 1.43, 0, 1, 1), /* (182) Skeleton's Sword */
(37035, 33435, 1.55, 0, 1, 1), /* (132) Frost-Worn Plate Helmet */
(37035, 33423, 1.37, 0, 1, 1), /* (125) Rime-Covered Mace */
(37035, 33379, 1.01, 0, 1, 1), /* (132) Frozen Armor */
(37035, 36696, 1.22, 0, 1, 1), /* (182) Graced Scepter */
(37035, 43463, 1.19, 0, 1, 1), /* (80) Scroll of Agility VII */
# Normal 25
(3703501, 33470, 26.26, 0, 1, 1), /* (70) Frostweave Cloth */
(3703501, 43852, 14.73, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703501, 33454, 3.57, 0, 1, 1), /* (75) Salted Venison */
(3703501, 33445, 7.41, 0, 1, 1), /* (85) Honeymint Tea */
(3703501, 33426, 1.19, 0, 1, 1), /* (125) Chipped Timber Axe */
(3703501, 36276, 4.3, 0, 1, 1), /* (178) Spiderlord Boots */
(3703501, 36528, 1.65, 0, 1, 1), /* (182) Skeleton's Sword */
(3703501, 50444, 4.12, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3703501, 50452, 3.48, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703501, 50450, 1.65, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3703501, 50451, 1.65, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3703501, 50453, 2.38, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3703501, 36667, 1.01, 0, 1, 1), /* (178) Solid Ice Wand */
(3703501, 33370, 1.65, 0, 1, 1), /* (132) Frost-Rimed Cloth Shoulderpads */
(3703501, 36054, 1.28, 0, 1, 1), /* (178) Vizier Gloves */
(3703501, 50447, 1.28, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3703501, 33436, 1.28, 0, 1, 1), /* (132) Frost-Rimed Cloth Hat */
# Heroic 10
(3703502, 33454, 22.44, 0, 1, 1), /* (75) Salted Venison */
(3703502, 36611, 2.47, 0, 1, 1), /* (178) Bleak Scythe */
# Heroic 25
(3703503, 43852, 8.33, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703503, 33454, 5, 0, 1, 1), /* (75) Salted Venison */
(3703503, 33445, 1.67, 0, 1, 1), /* (85) Honeymint Tea */
(3703503, 33380, 1.67, 0, 1, 1), /* (132) Frozen Belt */
(3703503, 36681, 13.33, 0, 1, 1), /* (178) Wisdom Carver */
(3703503, 50450, 7.5, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3703503, 50451, 6.67, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3703503, 33368, 6.67, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
(3703503, 36443, 3.33, 0, 1, 1), /* (178) Platinum Medallion */
(3703503, 36277, 1.67, 0, 1, 1), /* (178) Spiderlord Chestpiece */
(3703503, 36399, 1.67, 0, 1, 1); /* (182) Necropolis Helm */

-- [37595] Darkfallen Blood Knight (18)
UPDATE `creature_template` SET `LootID`= 37595 WHERE `entry` = 37595;
UPDATE `creature_template` SET `LootID`= 3759501 WHERE `entry` = 3759501;
UPDATE `creature_template` SET `LootID`= 3759502 WHERE `entry` = 3759502;
UPDATE `creature_template` SET `LootID`= 3759503 WHERE `entry` = 3759503;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37595, 38100, 3759501, 3759502, 3759503);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37595, 33470, 35.02, 0, 1, 1), /* (70) Frostweave Cloth */
(37595, 43852, 20.89, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37595, 35947, 9.51, 0, 1, 1), /* (85) Sparkling Frostcap */
(37595, 33445, 3.85, 0, 1, 1), /* (85) Honeymint Tea */
(37595, 33447, 2.51, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3759501, 33470, 29.42, 0, 1, 1), /* (70) Frostweave Cloth */
(3759501, 43852, 13.58, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3759501, 35947, 3.9, 0, 1, 1), /* (85) Sparkling Frostcap */
(3759501, 33445, 2.38, 0, 1, 1), /* (85) Honeymint Tea */
(3759501, 50451, 3.09, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3759501, 50453, 2.54, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3759501, 50452, 2.23, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3759501, 50444, 2.22, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3759501, 33434, 1.95, 0, 1, 1), /* (132) Frozen Leather Helmet */
# Heroic 25
(3759503, 43852, 12.79, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3759503, 33445, 3.3, 0, 1, 1), /* (85) Honeymint Tea */
(3759503, 50453, 2.78, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3759503, 50452, 2.94, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3759503, 36429, 1.62, 0, 1, 1), /* (178) Spur Ring */
(3759503, 50450, 3.46, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3759503, 50449, 3.33, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3759503, 36681, 2.2, 0, 1, 1), /* (178) Wisdom Carver */
(3759503, 36059, 2.31, 0, 1, 1), /* (182) Coldwraith Sash */
(3759503, 33427, 1.9, 0, 1, 1), /* (125) Frost-Encrusted Rifle */
(3759503, 36486, 1.95, 0, 1, 1), /* (182) Ornate Pugio */
(3759503, 36612, 1.43, 0, 1, 1); /* (182) Scourge War Spear */

-- [37664] Darkfallen Archmage (18)
UPDATE `creature_template` SET `LootID`= 37664 WHERE `entry` = 37664;
UPDATE `creature_template` SET `LootID`= 3766401 WHERE `entry` = 3766401;
UPDATE `creature_template` SET `LootID`= 3766402 WHERE `entry` = 3766402;
UPDATE `creature_template` SET `LootID`= 3766403 WHERE `entry` = 3766403;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37664, 38099, 3766401, 3766402, 3766403);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37664, 33470, 36.32, 0, 1, 1), /* (70) Frostweave Cloth */
(37664, 43852, 19.18, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37664, 35947, 7.41, 0, 1, 1), /* (85) Sparkling Frostcap */
(37664, 33445, 3.5, 0, 1, 1), /* (85) Honeymint Tea */
(37664, 33447, 2.72, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3766401, 33470, 25.6, 0, 1, 1), /* (70) Frostweave Cloth */
(3766401, 43852, 14.98, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3766401, 35947, 4.8, 0, 1, 1), /* (85) Sparkling Frostcap */
(3766401, 33445, 3.42, 0, 1, 1), /* (85) Honeymint Tea */
(3766401, 50452, 2.83, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3766401, 50450, 3.02, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3766401, 50453, 1.6, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3766401, 36682, 1.27, 0, 1, 1), /* (182) Seduced Blade */
(3766401, 50451, 1.59, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3766401, 36170, 1.64, 0, 1, 1), /* (178) Webspinner Bindings */
(3766401, 36284, 1.18, 0, 1, 1), /* (182) Spectral Greaves */
# Heroic 10
(3766402, 36710, 3.54, 0, 1, 1), /* (182) Avalanche Staff */
# Heroic 25
(3766403, 43852, 14.97, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3766403, 50444, 5.34, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3766403, 50452, 1.6, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3766403, 50453, 2.99, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3766403, 50447, 4.46, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3766403, 36668, 1.37, 0, 1, 1), /* (182) Mindless Wand */
(3766403, 36171, 2.25, 0, 1, 1), /* (182) Geist Belt */
(3766403, 36056, 1.89, 0, 1, 1); /* (178) Vizier Leggings */

-- [37571] Darkfallen Advisor (19)
UPDATE `creature_template` SET `LootID`= 37571 WHERE `entry` = 37571;
UPDATE `creature_template` SET `LootID`= 3757101 WHERE `entry` = 3757101;
UPDATE `creature_template` SET `LootID`= 3757102 WHERE `entry` = 3757102;
UPDATE `creature_template` SET `LootID`= 3757103 WHERE `entry` = 3757103;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37571, 38098, 3757101, 3757102, 3757103);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37571, 33470, 36.84, 0, 1, 1), /* (70) Frostweave Cloth */
(37571, 43852, 21.28, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37571, 35947, 8.46, 0, 1, 1), /* (85) Sparkling Frostcap */
(37571, 33445, 3.95, 0, 1, 1), /* (85) Honeymint Tea */
(37571, 33447, 2.89, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3757101, 33470, 27.28, 0, 1, 1), /* (70) Frostweave Cloth */
(3757101, 43852, 13.96, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3757101, 35947, 4.1, 0, 1, 1), /* (85) Sparkling Frostcap */
(3757101, 33445, 2.93, 0, 1, 1), /* (85) Honeymint Tea */
(3757101, 50453, 1.49, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3757101, 43508, 2.39, 0, 1, 1), /* (75) Recipe: Last Week's Mammoth */
(3757101, 50444, 2.75, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3757101, 36289, 1.28, 0, 1, 1), /* (182) Spectral Mantle */
(3757101, 50452, 2.17, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3757101, 33428, 1.36, 0, 1, 1), /* (125) Dulled Shiv */
(3757101, 36285, 1.27, 0, 1, 1), /* (182) Spectral Armor */
# Heroic 25
(3757103, 43852, 14.16, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3757103, 33445, 2.3, 0, 1, 1), /* (85) Honeymint Tea */
(3757103, 50453, 16.92, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3757103, 36681, 9.44, 0, 1, 1), /* (178) Wisdom Carver */
(3757103, 33448, 2.65, 0, 1, 1), /* (80) Runic Mana Potion */
(3757103, 50450, 2.57, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3757103, 36584, 3.84, 0, 1, 1), /* (182) Snowy Edge */
(3757103, 50451, 1.5, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3757103, 36051, 1.11, 0, 1, 1), /* (178) Vizier Sash */
(3757103, 36485, 1.53, 0, 1, 1); /* (178) Sinuous Keris */

-- [37663] Darkfallen Noble (18)
UPDATE `creature_template` SET `LootID`= 37663 WHERE `entry` = 37663;
UPDATE `creature_template` SET `LootID`= 3766301 WHERE `entry` = 3766301;
UPDATE `creature_template` SET `LootID`= 3766302 WHERE `entry` = 3766302;
UPDATE `creature_template` SET `LootID`= 3766303 WHERE `entry` = 3766303;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37663, 38480, 3766301, 3766302, 3766303);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37663, 33470, 32.84, 0, 1, 1), /* (70) Frostweave Cloth */
(37663, 43852, 19.69, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37663, 33454, 7.93, 0, 1, 1), /* (75) Salted Venison */
(37663, 33445, 5.65, 0, 1, 1), /* (85) Honeymint Tea */
(37663, 33447, 2.14, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3766301, 33470, 23.16, 0, 1, 1), /* (70) Frostweave Cloth */
(3766301, 43852, 13.4, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3766301, 33454, 7.58, 0, 1, 1), /* (75) Salted Venison */
(3766301, 33445, 1.6, 0, 1, 1), /* (85) Honeymint Tea */
(3766301, 50444, 3.49, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3766301, 50453, 2.29, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3766301, 36393, 1.24, 0, 1, 1), /* (178) Revenant Epaulets */
(3766301, 36541, 2.18, 0, 1, 1), /* (178) Wintry Claymore */
(3766301, 36387, 1.48, 0, 1, 1), /* (178) Revenant Belt */
(3766301, 36397, 1.37, 0, 1, 1), /* (182) Necropolis Breastplate */
(3766301, 36173, 1.08, 0, 1, 1), /* (182) Geist Tunic */
(3766301, 36169, 1.28, 0, 1, 1), /* (178) Webspinner Shoulderguards */
# Heroic 10
(3766302, 33454, 0, 0, 1, 1), /* (75) Salted Venison */
# Heroic 25
(3766303, 43852, 16.47, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3766303, 33454, 3.8, 0, 1, 1), /* (75) Salted Venison */
(3766303, 33445, 2.39, 0, 1, 1), /* (85) Honeymint Tea */
(3766303, 33433, 3.92, 0, 1, 1), /* (132) Frigid Mail Circlet */
(3766303, 50453, 1.76, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3766303, 45912, 1.82, 0, 1, 1), /* (80) Book of Glyph Mastery */
(3766303, 36584, 1.36, 0, 1, 1), /* (182) Snowy Edge */
(3766303, 36514, 3.01, 0, 1, 1), /* (182) Kingly Battlehammer */
(3766303, 42175, 1.82, 0, 1, 1); /* (72) Pattern: Green Lumberjack Shirt */

-- [37022] Blighted Abomination (15)
UPDATE `creature_template` SET `LootID`= 37022 WHERE `entry` = 37022;
UPDATE `creature_template` SET `LootID`= 3702201 WHERE `entry` = 3702201;
UPDATE `creature_template` SET `LootID`= 3702202 WHERE `entry` = 3702202;
UPDATE `creature_template` SET `LootID`= 3702203 WHERE `entry` = 3702203;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37022, 38108, 3702201, 3702202, 3702203);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37022, 33470, 38, 0, 1, 1), /* (70) Frostweave Cloth */
(37022, 43852, 19.84, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37022, 35947, 9.21, 0, 1, 1), /* (85) Sparkling Frostcap */
(37022, 33445, 3.34, 0, 1, 1), /* (85) Honeymint Tea */
# Normal 25
(3702201, 33470, 31.41, 0, 1, 1), /* (70) Frostweave Cloth */
(3702201, 43852, 14.45, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702201, 35947, 5.37, 0, 1, 1), /* (85) Sparkling Frostcap */
(3702201, 33445, 4.23, 0, 1, 1), /* (85) Honeymint Tea */
(3702201, 33447, 1.81, 0, 1, 1), /* (80) Runic Healing Potion */
(3702201, 50453, 1.81, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702201, 50452, 2.35, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702201, 50449, 2.06, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
# Heroic 10
(3702202, 36443, 3.77, 0, 1, 1), /* (178) Platinum Medallion */
# Heroic 25
(3702203, 43852, 12.84, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702203, 33445, 5.94, 0, 1, 1), /* (85) Honeymint Tea */
(3702203, 50453, 6.25, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702203, 45912, 7.57, 0, 1, 1), /* (80) Book of Glyph Mastery */
(3702203, 33429, 2.33, 0, 1, 1), /* (125) Ice Cleaver */
(3702203, 33422, 1.36, 0, 1, 1), /* (125) Shattered Bow */
(3702203, 33430, 1.24, 0, 1, 1), /* (125) Abandoned Greatsword */
(3702203, 33416, 3.49, 0, 1, 1), /* (132) Frost-Worn Plate Gloves */
(3702203, 36271, 2.21, 0, 1, 1); /* (174) Ulduar Helm */

-- [37038] Vengeful Fleshreaper (13)
UPDATE `creature_template` SET `LootID`= 37038 WHERE `entry` = 37038;
UPDATE `creature_template` SET `LootID`= 3703801 WHERE `entry` = 3703801;
UPDATE `creature_template` SET `LootID`= 3703802 WHERE `entry` = 3703802;
UPDATE `creature_template` SET `LootID`= 3703803 WHERE `entry` = 3703803;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37038, 38063, 3703801, 3703802, 3703803);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37038, 33470, 36.58, 0, 1, 1), /* (70) Frostweave Cloth */
(37038, 43852, 19.6, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37038, 35947, 7.68, 0, 1, 1), /* (85) Sparkling Frostcap */
(37038, 33445, 3.82, 0, 1, 1), /* (85) Honeymint Tea */
(37038, 33447, 2.28, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3703801, 33470, 26.06, 0, 1, 1), /* (70) Frostweave Cloth */
(3703801, 43852, 11.8, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703801, 35947, 5.71, 0, 1, 1), /* (85) Sparkling Frostcap */
(3703801, 33445, 2.65, 0, 1, 1), /* (85) Honeymint Tea */
(3703801, 50452, 2.9, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703801, 50453, 2.41, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3703801, 50444, 2.1, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3703801, 36373, 1.16, 0, 1, 1), /* (170) Kraken Breastplate */
# Heroic 25
(3703803, 43852, 12.64, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3703803, 33445, 4.7, 0, 1, 1), /* (85) Honeymint Tea */
(3703803, 50452, 2.13, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3703803, 50453, 2.08, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3703803, 50450, 1.49, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3703803, 36278, 1.23, 0, 1, 1), /* (178) Spiderlord Gauntlets */
(3703803, 36511, 3.9, 0, 1, 1), /* (170) Arctic War Hammer */
(3703803, 36484, 1.35, 0, 1, 1); /* (174) Etched Dagger */

-- [37023] Plague Scientist (18)
UPDATE `creature_template` SET `LootID`= 37023 WHERE `entry` = 37023;
UPDATE `creature_template` SET `LootID`= 3702301 WHERE `entry` = 3702301;
UPDATE `creature_template` SET `LootID`= 3702302 WHERE `entry` = 3702302;
UPDATE `creature_template` SET `LootID`= 3702303 WHERE `entry` = 3702303;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37023, 38062, 3702301, 3702302, 3702303);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37023, 33470, 34.44, 0, 1, 1), /* (70) Frostweave Cloth */
(37023, 43852, 20.75, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(37023, 35947, 8.06, 0, 1, 1), /* (85) Sparkling Frostcap */
(37023, 33445, 3.71, 0, 1, 1), /* (85) Honeymint Tea */
(37023, 33447, 2.06, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3702301, 33470, 23.81, 0, 1, 1), /* (70) Frostweave Cloth */
(3702301, 43852, 13.16, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702301, 35947, 4.43, 0, 1, 1), /* (85) Sparkling Frostcap */
(3702301, 33445, 2.09, 0, 1, 1), /* (85) Honeymint Tea */
(3702301, 33447, 2.14, 0, 1, 1), /* (80) Runic Healing Potion */
(3702301, 50452, 2.65, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702301, 50453, 2.76, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702301, 50449, 2.24, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702301, 50450, 2.02, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702301, 50447, 2.36, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702301, 50444, 2.15, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3702301, 50451, 1.97, 0, 1, 1), /* (264) Belt of the Lonely Noble */
# Heroic 10
(3702302, 36441, 1.42, 0, 1, 1), /* (170) Pearl Woven Choker */
# Heroic 25
(3702303, 43852, 15.73, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3702303, 50452, 5.51, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702303, 50453, 3.39, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702303, 50449, 3.39, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702303, 50450, 4.5, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702303, 36051, 3.61, 0, 1, 1), /* (178) Vizier Sash */
(3702303, 36381, 3.04, 0, 1, 1), /* (174) Golem Breastplate */
(3702303, 36372, 1.81, 0, 1, 1), /* (170) Kraken Greaves */
(3702303, 36272, 1.23, 0, 1, 1), /* (174) Ulduar Legguards */
(3702303, 36471, 2.82, 0, 1, 1); /* (178) Ice Crystal */

-- [10404] Pustulating Horror (17)
UPDATE `creature_template` SET `LootID`= 10404 WHERE `entry` = 10404;
UPDATE `creature_template` SET `LootID`= 1040401 WHERE `entry` = 1040401;
UPDATE `creature_template` SET `LootID`= 1040402 WHERE `entry` = 1040402;
UPDATE `creature_template` SET `LootID`= 1040403 WHERE `entry` = 1040403;
DELETE FROM `creature_loot_template` WHERE `entry` IN(10404, 38110, 1040401, 1040402, 1040403);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(10404, 33470, 36.35, 0, 1, 1), /* (70) Frostweave Cloth */
(10404, 43852, 19.25, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(10404, 35947, 8.08, 0, 1, 1), /* (85) Sparkling Frostcap */
(10404, 33445, 3.62, 0, 1, 1), /* (85) Honeymint Tea */
(10404, 33447, 2.06, 0, 1, 1), /* (80) Runic Healing Potion */
(10404, 33368, 1.26, 0, 1, 1), /* (132) Frost-Rimed Cloth Gloves */
# Normal 25
(1040401, 33470, 28.66, 0, 1, 1), /* (70) Frostweave Cloth */
(1040401, 43852, 13.74, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(1040401, 35947, 5.91, 0, 1, 1), /* (85) Sparkling Frostcap */
(1040401, 33445, 2.3, 0, 1, 1), /* (85) Honeymint Tea */
(1040401, 50452, 3.96, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(1040401, 50444, 2.95, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(1040401, 50453, 1.67, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(1040401, 33366, 1.3, 0, 1, 1), /* (132) Frost-Rimed Cloth Boots */
# Heroic 25
(1040403, 43852, 11.3, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(1040403, 36513, 22.05, 0, 1, 1), /* (178) Lode-Headed Hammer */
(1040403, 33448, 1.28, 0, 1, 1), /* (80) Runic Mana Potion */
(1040403, 36162, 4.23, 0, 1, 1), /* (174) Wendigo Bands */
(1040403, 50447, 1.67, 0, 1, 1), /* (264) Harbinger's Bone Band */
(1040403, 36429, 1.11, 0, 1, 1), /* (178) Spur Ring */
(1040403, 50450, 1.61, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(1040403, 36610, 1.17, 0, 1, 1); /* (174) Plagued Pike */

-- [36853] Sindragosa (43)
UPDATE `creature_template` SET `LootID`= 36853 WHERE `entry` = 36853;
UPDATE `creature_template` SET `LootID`= 3685301 WHERE `entry` = 3685301;
UPDATE `creature_template` SET `LootID`= 3685302 WHERE `entry` = 3685302;
UPDATE `creature_template` SET `LootID`= 3685303 WHERE `entry` = 3685303;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36853, 38265, 38266, 38267, 3685301, 3685302, 3685303);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36853, 49908, 0.72, 0, 1, 1), /* (80) Primordial Saronite */
(36853, 51788, 29.62, 0, 1, 1), /* (251) Bleak Coldarra Carver */
(36853, 51784, 20.19, 0, 1, 1), /* (251) Splintershard */
(36853, 51791, 17.43, 0, 1, 1), /* (251) Lost Pavise of the Blue Flight */
(36853, 51779, 16.56, 0, 1, 1), /* (251) Rimetooth Pendant */
(36853, 51786, 16.07, 0, 1, 1), /* (251) Legplates of Aetheric Strife */
(36853, 51790, 16.07, 0, 1, 1), /* (251) Robes of Azure Downfall */
(36853, 51782, 15.73, 0, 1, 1), /* (251) Etched Dragonbone Girdle */
(36853, 51792, 13.32, 0, 1, 1), /* (251) Shoulderguards of Crystalline Bone */
(36853, 51783, 12.83, 0, 1, 1), /* (251) Vambraces of the Frost Wyrm Queen */
(36853, 51785, 12.45, 0, 1, 1), /* (251) Wyrmwing Treads */
(36853, 51789, 9.32, 0, 1, 1), /* (251) Icicle Shapers */
(36853, 51026, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
(36853, 51787, 8.32, 0, 1, 1), /* (251) Scourge Fanged Stompers */
(36853, 51027, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
# Normal 25
(3685301, 52025, 66.15, 0, 1, 1), /* (80) Vanquisher's Mark of Sanctification */
(3685301, 52027, 49.01, 0, 1, 1), /* (80) Conqueror's Mark of Sanctification */
(3685301, 52026, 47.11, 0, 1, 1), /* (80) Protector's Mark of Sanctification */
(3685301, 49908, 20.87, 0, 1, 1), /* (80) Primordial Saronite */
(3685301, 50360, 22.25, 0, 1, 1), /* (264) Phylactery of the Nameless Lich */
(3685301, 50423, 19.15, 0, 1, 1), /* (264) Sundial of Eternal Dusk */
(3685301, 50421, 18.28, 0, 1, 1), /* (264) Sindragosa's Cruel Claw */
(3685301, 50361, 15.2, 0, 1, 1), /* (264) Sindragosa's Flawless Fang */
(3685301, 50424, 14.98, 0, 1, 1), /* (264) Memory of Malygos */
(3685301, 51026, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
(3685301, 51027, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
# Heroic 10
(3685302, 52025, 25.7, 0, 1, 1), /* (80) Vanquisher's Mark of Sanctification */
(3685302, 52027, 26.56, 0, 1, 1), /* (80) Conqueror's Mark of Sanctification */
(3685302, 52026, 11.38, 0, 1, 1), /* (80) Protector's Mark of Sanctification */
(3685302, 49908, 23.5, 0, 1, 1), /* (80) Primordial Saronite */
(3685302, 51026, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
(3685302, 51027, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
(3685302, 51815, 19.58, 0, 1, 1), /* (264) Bleak Coldarra Carver */
(3685302, 51822, 18.6, 0, 1, 1), /* (264) Rimetooth Pendant */
(3685302, 51818, 17.14, 0, 1, 1), /* (264) Wyrmwing Treads */
(3685302, 51817, 16.52, 0, 1, 1), /* (264) Legplates of Aetheric Strife */
(3685302, 51814, 16.52, 0, 1, 1), /* (264) Icicle Shapers */
(3685302, 51813, 12.24, 0, 1, 1), /* (264) Robes of Azure Downfall */
(3685302, 51812, 11.51, 0, 1, 1), /* (264) Lost Pavise of the Blue Flight */
(3685302, 51821, 10.4, 0, 1, 1), /* (264) Etched Dragonbone Girdle */
(3685302, 51816, 11.26, 0, 1, 1), /* (264) Scourge Fanged Stompers */
(3685302, 51811, 10.28, 0, 1, 1), /* (264) Shoulderguards of Crystalline Bone */
(3685302, 51819, 9.55, 0, 1, 1), /* (264) Splintershard */
(3685302, 51820, 7.59, 0, 1, 1), /* (264) Vambraces of the Frost Wyrm Queen */
# Heroic 25
(3685303, 52025, 50.95, 0, 1, 1), /* (80) Vanquisher's Mark of Sanctification */
(3685303, 52027, 45.63, 0, 1, 1), /* (80) Conqueror's Mark of Sanctification */
(3685303, 52026, 46.7, 0, 1, 1), /* (80) Protector's Mark of Sanctification */
(3685303, 49908, 22.25, 0, 1, 1), /* (80) Primordial Saronite */
(3685303, 52029, 32.79, 0, 1, 1), /* (80) Protector's Mark of Sanctification */
(3685303, 52028, 32.84, 0, 1, 1), /* (80) Vanquisher's Mark of Sanctification */
(3685303, 52030, 26.09, 0, 1, 1), /* (80) Conqueror's Mark of Sanctification */
(3685303, 51026, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
(3685303, 50633, 22.2, 0, 1, 1), /* (277) Sindragosa's Cruel Claw */
(3685303, 50364, 19.85, 0, 1, 1), /* (277) Sindragosa's Flawless Fang */
(3685303, 51027, -100, 0, 1, 1), /* (80) Crystalline Essence of Sindragosa */
(3685303, 50636, 16.37, 0, 1, 1), /* (277) Memory of Malygos */
(3685303, 50365, 14.42, 0, 1, 1), /* (277) Phylactery of the Nameless Lich */
(3685303, 50635, 14.68, 0, 1, 1); /* (277) Sundial of Eternal Dusk */

-- [36880] Decaying Colossus (20)
UPDATE `creature_template` SET `LootID`= 36880 WHERE `entry` = 36880;
UPDATE `creature_template` SET `LootID`= 3688001 WHERE `entry` = 3688001;
UPDATE `creature_template` SET `LootID`= 3688002 WHERE `entry` = 3688002;
UPDATE `creature_template` SET `LootID`= 3688003 WHERE `entry` = 3688003;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36880, 37655, 3688001, 3688002, 3688003);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36880, 33470, 36.9, 0, 1, 1), /* (70) Frostweave Cloth */
(36880, 43852, 18.82, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(36880, 35947, 7.67, 0, 1, 1), /* (85) Sparkling Frostcap */
(36880, 50452, 1.81, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(36880, 33445, 3.48, 0, 1, 1), /* (85) Honeymint Tea */
(36880, 50447, 1.51, 0, 1, 1), /* (264) Harbinger's Bone Band */
(36880, 33447, 1.75, 0, 1, 1), /* (80) Runic Healing Potion */
# Normal 25
(3688001, 33470, 21.64, 0, 1, 1), /* (70) Frostweave Cloth */
(3688001, 43852, 10.6, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3688001, 35947, 4.21, 0, 1, 1), /* (85) Sparkling Frostcap */
(3688001, 50452, 7.6, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3688001, 50453, 5.82, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3688001, 50444, 5.37, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3688001, 50447, 3.31, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3688001, 50450, 3.82, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3688001, 50449, 4.01, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3688001, 50451, 3.12, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3688001, 36156, 1.26, 0, 1, 1), /* (174) Wendigo Boots */
(3688001, 37780, 1.05, 0, 1, 1), /* (170) Condor-Bone Chestguard */
# Heroic 25
(3688003, 43852, 8.82, 0, 1, 1), /* (70) Thick Fur Clothing Scraps */
(3688003, 50452, 2.82, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3688003, 33445, 1.59, 0, 1, 1), /* (85) Honeymint Tea */
(3688003, 50453, 5.21, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3688003, 50444, 2.45, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3688003, 50447, 5.02, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3688003, 50450, 6, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3688003, 50449, 2.33, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3688003, 50451, 3.43, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3688003, 36051, 3.49, 0, 1, 1), /* (178) Vizier Sash */
(3688003, 36373, 3.19, 0, 1, 1), /* (170) Kraken Breastplate */
(3688003, 36391, 1.59, 0, 1, 1), /* (178) Revenant Helmet */
(3688003, 43465, 1.1, 0, 1, 1), /* (80) Scroll of Strength VII */
(3688003, 36383, 2.08, 0, 1, 1), /* (174) Golem Helmet */
(3688003, 36162, 1.23, 0, 1, 1); /* (174) Wendigo Bands */

-- [37025] Stinky (25)
UPDATE `creature_template` SET `LootID`= 37025 WHERE `entry` = 37025;
UPDATE `creature_template` SET `LootID`= 3702501 WHERE `entry` = 3702501;
UPDATE `creature_template` SET `LootID`= 3702502 WHERE `entry` = 3702502;
UPDATE `creature_template` SET `LootID`= 3702503 WHERE `entry` = 3702503;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37025, 38064, 3702501, 3702502, 3702503);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37025, 33568, 17.69, 0, 1, 1), /* (70) Borean Leather */
(37025, 50452, 3.77, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(37025, 50447, 2.23, 0, 1, 1), /* (264) Harbinger's Bone Band */
(37025, 50450, 1.52, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(37025, 50451, 1.8, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(37025, 36391, 2.27, 0, 1, 1), /* (178) Revenant Helmet */
(37025, 36389, 2.23, 0, 1, 1), /* (178) Revenant Armor */
(37025, 36384, 1.4, 0, 1, 1), /* (174) Golem Legplates */
(37025, 33426, 1.67, 0, 1, 1), /* (125) Chipped Timber Axe */
(37025, 36427, 1.4, 0, 1, 1), /* (170) Engraved Ring */
(37025, 33416, 1.49, 0, 1, 1), /* (132) Frost-Worn Plate Gloves */
# Normal 25
(3702501, 33568, 23.28, 0, 1, 1), /* (70) Borean Leather */
(3702501, 50452, 8.58, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702501, 50444, 6.36, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3702501, 50449, 5.52, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702501, 50453, 5.4, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702501, 50447, 3.36, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702501, 50450, 3.86, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702501, 50451, 3.17, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3702501, 33413, 1.27, 0, 1, 1), /* (132) Frost-Worn Plate Boots */
(3702501, 42175, 1.38, 0, 1, 1), /* (72) Pattern: Green Lumberjack Shirt */
# Heroic 10
(3702502, 50453, 1.46, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702502, 36373, 11.53, 0, 1, 1), /* (170) Kraken Breastplate */
# Heroic 25
(3702503, 50452, 20.21, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3702503, 50444, 6.76, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3702503, 50449, 7.98, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3702503, 50453, 4.25, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3702503, 50447, 2.95, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3702503, 50450, 3.64, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3702503, 33424, 3.64, 0, 1, 1), /* (125) Cracked Iron Staff */
(3702503, 36377, 6.42, 0, 1, 1), /* (170) Kraken Epaulets */
(3702503, 36263, 1.47, 0, 1, 1), /* (170) Cormorant Helm */
(3702503, 33430, 1.21, 0, 1, 1), /* (125) Abandoned Greatsword */
(3702503, 33412, 1.21, 0, 1, 1), /* (132) Frost-Worn Plate Belt */
(3702503, 36036, 1.13, 0, 1, 1), /* (170) Condor Sandals */
(3702503, 36278, 1.82, 0, 1, 1), /* (178) Spiderlord Gauntlets */
(3702503, 36262, 1.21, 0, 1, 1); /* (170) Cormorant Gloves */

-- [37217] Precious (23)
UPDATE `creature_template` SET `LootID`= 37217 WHERE `entry` = 37217;
UPDATE `creature_template` SET `LootID`= 3721701 WHERE `entry` = 3721701;
UPDATE `creature_template` SET `LootID`= 3721702 WHERE `entry` = 3721702;
UPDATE `creature_template` SET `LootID`= 3721703 WHERE `entry` = 3721703;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37217, 38103, 3721701, 3721702, 3721703);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(37217, 52019, 33.94, 0, 1, 1), /* (1) Precious's Ribbon */
(37217, 33568, 15.53, 0, 1, 1), /* (70) Borean Leather */
(37217, 33422, 1.55, 0, 1, 1), /* (125) Shattered Bow */
(37217, 33428, 1.44, 0, 1, 1), /* (125) Dulled Shiv */
(37217, 33369, 1.28, 0, 1, 1), /* (132) Frost-Rimed Cloth Pants */
# Normal 25
(3721701, 52019, 22.29, 0, 1, 1), /* (1) Precious's Ribbon */
(3721701, 33568, 17.34, 0, 1, 1), /* (70) Borean Leather */
(3721701, 50452, 7.59, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3721701, 50453, 4.49, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3721701, 50444, 4.3, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3721701, 50449, 4.17, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3721701, 50450, 2.99, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3721701, 50451, 3.58, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3721701, 50447, 2.52, 0, 1, 1), /* (264) Harbinger's Bone Band */
(3721701, 36427, 2.86, 0, 1, 1), /* (170) Engraved Ring */
# Heroic 10
(3721702, 52019, 27.29, 0, 1, 1), /* (1) Precious's Ribbon */
(3721702, 50453, 8.48, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3721702, 50450, 3.65, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3721702, 36058, 4.28, 0, 1, 1), /* (178) Vizier Bracelets */
(3721702, 36413, 1.09, 0, 1, 1), /* (170) Dyed Taffeta Cape */
# Heroic 25
(3721703, 52019, 36.93, 0, 1, 1), /* (1) Precious's Ribbon */
(3721703, 50452, 4.33, 0, 1, 1), /* (264) Wodin's Lucky Necklace */
(3721703, 50453, 3.45, 0, 1, 1), /* (264) Ring of Rotting Sinew */
(3721703, 50444, 1.98, 0, 1, 1), /* (264) Rowan's Rifle of Silver Bullets */
(3721703, 50449, 3.38, 0, 1, 1), /* (264) Stiffened Corpse Shoulderpads */
(3721703, 50450, 1.76, 0, 1, 1), /* (264) Leggings of Dubious Charms */
(3721703, 50451, 2.06, 0, 1, 1), /* (264) Belt of the Lonely Noble */
(3721703, 33424, 1.98, 0, 1, 1), /* (125) Cracked Iron Staff */
(3721703, 36381, 2.57, 0, 1, 1), /* (174) Golem Breastplate */
(3721703, 36277, 2.13, 0, 1, 1), /* (178) Spiderlord Chestpiece */
(3721703, 43624, 2.64, 0, 1, 1), /* (78) Titanium Lockbox */
(3721703, 36512, 2.94, 0, 1, 1), /* (174) Onerous Mallet */
(3721703, 36679, 1.4, 0, 1, 1), /* (170) Singing Dagger */
(3721703, 36541, 1.76, 0, 1, 1), /* (178) Wintry Claymore */
(3721703, 36166, 1.03, 0, 1, 1); /* (178) Webspinner Gloves */

