-- [36612] Lord Marrowgar (55)
UPDATE `creature_template` SET `LootID`= 36612 WHERE `entry` = 36612;
UPDATE `creature_template` SET `LootID`= 3661201 WHERE `entry` = 3661201;
UPDATE `creature_template` SET `LootID`= 3661202 WHERE `entry` = 3661202;
UPDATE `creature_template` SET `LootID`= 3661203 WHERE `entry` = 3661203;
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
(3661201, 49968, 33.05, 0, 1, 1), /* (264) Frozen Bonespike */
(3661201, 49908, 21.68, 0, 1, 1), /* (80) Primordial Saronite */
(3661201, 50415, 29.94, 0, 1, 1), /* (264) Bryntroll, the Bone Arbiter */
(3661201, 49977, 29.12, 0, 1, 1), /* (264) Loop of the Endless Labyrinth */
(3661201, 49975, 20.29, 0, 1, 1), /* (264) Bone Sentinel's Amulet */
(3661201, 49976, 20.08, 0, 1, 1), /* (264) Bulwark of Smouldering Steel */
(3661201, 49978, 19.57, 0, 1, 1), /* (264) Crushing Coldwraith Belt */
(3661201, 49949, 19.51, 0, 1, 1), /* (264) Band of the Bone Colossus */
(3661201, 49950, 15.07, 0, 1, 1), /* (264) Frostbitten Fur Boots */
(3661201, 49951, 14.45, 0, 1, 1), /* (264) Gendarme's Cuirass */
(3661201, 49979, 14.3, 0, 1, 1), /* (264) Handguards of Winter's Respite */
(3661201, 49952, 14.24, 0, 1, 1), /* (264) Snowserpent Mail Helm */
(3661201, 49960, 13.95, 0, 1, 1), /* (264) Bracers of Dark Reckoning */
(3661201, 49967, 13.73, 0, 1, 1), /* (264) Marrowgar's Frigid Eye */
(3661201, 49964, 13.5, 0, 1, 1), /* (264) Legguards of Lost Hope */
(3661201, 49980, 12.05, 0, 1, 1), /* (264) Rusted Bonespike Pauldrons */
# Heroic 10
(3661202, 49908, 17.23, 0, 1, 1), /* (80) Primordial Saronite */
(3661202, 51936, 25.41, 0, 1, 1), /* (264) Citadel Enforcer's Claymore */
(3661202, 50346, 17.94, 0, 1, 1), /* (264) Sliver of Pure Ice */
(3661202, 51932, 16.64, 0, 1, 1), /* (264) Frost Needle */
(3661202, 51933, 16.01, 0, 1, 1), /* (264) Shawl of Nerubian Silk */
(3661202, 51931, 14.97, 0, 1, 1), /* (264) Ancient Skeletal Boots */
(3661202, 51930, 12.82, 0, 1, 1), /* (264) Cord of the Patronizing Practitioner */
(3661202, 51935, 12.76, 0, 1, 1), /* (264) Linked Scourge Vertebrae */
(3661202, 51928, 11.94, 0, 1, 1), /* (264) Corrupted Silverplate Leggings */
(3661202, 51937, 11.96, 0, 1, 1), /* (264) Bonebreaker Scepter */
(3661202, 51938, 11.14, 0, 1, 1), /* (264) Bone Warden's Splitter */
(3661202, 51929, 11.18, 0, 1, 1), /* (264) Coldwraith Bracers */
(3661202, 51934, 7.98, 0, 1, 1), /* (264) Marrowgar's Scratching Choker */
# Heroic 25
(3661203, 49908, 14.65, 0, 1, 1), /* (80) Primordial Saronite */
(3661203, 50614, 27.29, 0, 1, 1), /* (277) Loop of the Endless Labyrinth */
(3661203, 50608, 27.02, 0, 1, 1), /* (277) Frozen Bonespike */
(3661203, 50709, 22.66, 0, 1, 1), /* (277) Bryntroll, the Bone Arbiter */
(3661203, 50609, 17.2, 0, 1, 1), /* (277) Bone Sentinel's Amulet */
(3661203, 50604, 17.43, 0, 1, 1), /* (277) Band of the Bone Colossus */
(3661203, 50616, 17.88, 0, 1, 1), /* (277) Bulwark of Smouldering Steel */
(3661203, 50613, 15.84, 0, 1, 1), /* (277) Crushing Coldwraith Belt */
(3661203, 50611, 14.75, 0, 1, 1), /* (277) Bracers of Dark Reckoning */
(3661203, 50605, 14.11, 0, 1, 1), /* (277) Snowserpent Mail Helm */
(3661203, 50606, 13.78, 0, 1, 1), /* (277) Gendarme's Cuirass */
(3661203, 50607, 14.03, 0, 1, 1), /* (277) Frostbitten Fur Boots */
(3661203, 50610, 12.15, 0, 1, 1), /* (277) Marrowgar's Frigid Eye */
(3661203, 50612, 11.53, 0, 1, 1), /* (277) Legguards of Lost Hope */
(3661203, 50615, 11.43, 0, 1, 1), /* (277) Handguards of Winter's Respite */
(3661203, 50617, 10.43, 0, 1, 1); /* (277) Rusted Bonespike Pauldrons */