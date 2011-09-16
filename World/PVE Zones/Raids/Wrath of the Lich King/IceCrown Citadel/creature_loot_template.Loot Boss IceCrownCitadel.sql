DELETE FROM `creature_loot_template` WHERE `entry` IN(36612, 37957, 37958, 37959);
DELETE FROM `reference_loot_template` WHERE `entry` IN(36612, 37957, 37958, 37959);
DELETE FROM `creature_loot_template` WHERE `entry` IN(36855, 38106, 38296, 38297);
DELETE FROM `reference_loot_template` WHERE `entry` IN(36855, 38106, 38296, 38297);
DELETE FROM `creature_loot_template` WHERE `entry` IN(36626, 37504, 37505, 37506);
DELETE FROM `reference_loot_template` WHERE `entry` IN(36626, 37504, 37505, 37506);
DELETE FROM `creature_loot_template` WHERE `entry` IN(36627, 38390, 38549, 38550);
DELETE FROM `reference_loot_template` WHERE `entry` IN(36627, 38390, 38549, 38550);
DELETE FROM `creature_loot_template` WHERE `entry` IN(36678, 38431, 38585, 38586);
DELETE FROM `reference_loot_template` WHERE `entry` IN(36678, 38431, 38585, 38586);
-- [36612] Lord Marrowgar  (56)
UPDATE `creature_template` SET `LootID`= 36612 WHERE `entry` = 36612;
UPDATE `creature_template` SET `LootID`= 37957 WHERE `entry` = 37957;
UPDATE `creature_template` SET `LootID`= 37958 WHERE `entry` = 37958;
UPDATE `creature_template` SET `LootID`= 37959 WHERE `entry` = 37959;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36612, 37957, 37958, 37959);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
#(36612, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(36612, 49908, 5, 0, 1, 1), --  Saronit
(36612, 36612, 100, 0, -36612, 2), --  Lootreferenz Normal 10
# Normal 25
#(37957, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(37957, 49908, 20, 0, 1, 1), --  Saronit
(37957, 50274, -5, 0, 1, 1), --  Shadowfrost Shard (Quest)
(37957, 37957, 100, 0, -37957, 3), --  Lootreferenz Normal 25
# Heroic 10
#(37958, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(37958, 49908, 20, 0, 1, 1), --  Saronit
(37958, 37958, 100, 0, -37958, 2), --  Lootreferenz Heroic 10
# Heroic 25
#(37959, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(37959, 49908, 20, 0, 1, 1), --  Saronit
(37959, 50274, -20, 0, 1, 1), --  Shadowfrost Shard (Quest)
(37959, 37959, 100, 0, -37959, 3); --  Lootreferenz Heroic 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36612, 37957, 37958, 37959);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(36612, 50761, 0, 1, 1, 1), /* (251) Citadel Enforcer's Claymore */			
(36612, 50771, 0, 1, 1, 1), /* (251) Frost Needle */			
(36612, 50339, 0, 1, 1, 1), /* (251) Sliver of Pure Ice */			
(36612, 50764, 0, 1, 1, 1), /* (251) Shawl of Nerubian Silk */			
(36612, 50772, 0, 1, 1, 1), /* (251) Ancient Skeletal Boots */			
(36612, 50773, 0, 1, 1, 1), /* (251) Cord of the Patronizing Practitioner */			
(36612, 50760, 0, 1, 1, 1), /* (251) Bonebreaker Scepter */			
(36612, 50762, 0, 1, 1, 1), /* (251) Linked Scourge Vertebrae */			
(36612, 50759, 0, 1, 1, 1), /* (251) Bone Warden's Splitter */			
(36612, 50775, 0, 1, 1, 1), /* (251) Corrupted Silverplate Leggings */			
(36612, 50774, 0, 1, 1, 1), /* (251) Coldwraith Bracers */			
(36612, 50763, 0, 1, 1, 1), /* (251) Marrowgar's Scratching Choker */
# Referenz Normal 25			
(37957, 49968, 0, 1, 1, 1), /* (264) Frozen Bonespike */			
(37957, 50415, 0, 1, 1, 1), /* (264) Bryntroll, the Bone Arbiter */			
(37957, 49977, 0, 1, 1, 1), /* (264) Loop of the Endless Labyrinth */			
(37957, 49975, 0, 1, 1, 1), /* (264) Bone Sentinel's Amulet */			
(37957, 49976, 0, 1, 1, 1), /* (264) Bulwark of Smouldering Steel */			
(37957, 49978, 0, 1, 1, 1), /* (264) Crushing Coldwraith Belt */			
(37957, 49949, 0, 1, 1, 1), /* (264) Band of the Bone Colossus */			
(37957, 49950, 0, 1, 1, 1), /* (264) Frostbitten Fur Boots */			
(37957, 49951, 0, 1, 1, 1), /* (264) Gendarme's Cuirass */			
(37957, 49952, 0, 1, 1, 1), /* (264) Snowserpent Mail Helm */			
(37957, 49979, 0, 1, 1, 1), /* (264) Handguards of Winter's Respite */			
(37957, 49960, 0, 1, 1, 1), /* (264) Bracers of Dark Reckoning */			
(37957, 49967, 0, 1, 1, 1), /* (264) Marrowgar's Frigid Eye */			
(37957, 49964, 0, 1, 1, 1), /* (264) Legguards of Lost Hope */			
(37957, 49980, 0, 1, 1, 1), /* (264) Rusted Bonespike Pauldrons */
# Referenz Heroic 10			
(37958, 51936, 0, 1, 1, 1), /* (264) Citadel Enforcer's Claymore */			
(37958, 50346, 0, 1, 1, 1), /* (264) Sliver of Pure Ice */			
(37958, 51933, 0, 1, 1, 1), /* (264) Shawl of Nerubian Silk */			
(37958, 51932, 0, 1, 1, 1), /* (264) Frost Needle */			
(37958, 51931, 0, 1, 1, 1), /* (264) Ancient Skeletal Boots */			
(37958, 51930, 0, 1, 1, 1), /* (264) Cord of the Patronizing Practitioner */			
(37958, 51935, 0, 1, 1, 1), /* (264) Linked Scourge Vertebrae */			
(37958, 51928, 0, 1, 1, 1), /* (264) Corrupted Silverplate Leggings */			
(37958, 51937, 0, 1, 1, 1), /* (264) Bonebreaker Scepter */			
(37958, 51938, 0, 1, 1, 1), /* (264) Bone Warden's Splitter */			
(37958, 51929, 0, 1, 1, 1), /* (264) Coldwraith Bracers */			
(37958, 51934, 0, 1, 1, 1), /* (264) Marrowgar's Scratching Choker */
# Referenz Heroic 25			
(37959, 50608, 0, 1, 1, 1), /* (277) Frozen Bonespike */			
(37959, 50614, 0, 1, 1, 1), /* (277) Loop of the Endless Labyrinth */			
(37959, 50709, 0, 1, 1, 1), /* (277) Bryntroll, the Bone Arbiter */			
(37959, 50609, 0, 1, 1, 1), /* (277) Bone Sentinel's Amulet */			
(37959, 50604, 0, 1, 1, 1), /* (277) Band of the Bone Colossus */			
(37959, 50616, 0, 1, 1, 1), /* (277) Bulwark of Smouldering Steel */			
(37959, 50613, 0, 1, 1, 1), /* (277) Crushing Coldwraith Belt */			
(37959, 50611, 0, 1, 1, 1), /* (277) Bracers of Dark Reckoning */			
(37959, 50605, 0, 1, 1, 1), /* (277) Snowserpent Mail Helm */			
(37959, 50606, 0, 1, 1, 1), /* (277) Gendarme's Cuirass */			
(37959, 50607, 0, 1, 1, 1), /* (277) Frostbitten Fur Boots */			
(37959, 50610, 0, 1, 1, 1), /* (277) Marrowgar's Frigid Eye */			
(37959, 50612, 0, 1, 1, 1), /* (277) Legguards of Lost Hope */			
(37959, 50615, 0, 1, 1, 1), /* (277) Handguards of Winter's Respite */			
(37959, 50617, 0, 1, 1, 1); /* (277) Rusted Bonespike Pauldrons */

-- [36855] Lady Deathwhisper  (56)
UPDATE `creature_template` SET `LootID`= 36855 WHERE `entry` = 36855;
UPDATE `creature_template` SET `LootID`= 38106 WHERE `entry` = 38106;
UPDATE `creature_template` SET `LootID`= 38296 WHERE `entry` = 38296;
UPDATE `creature_template` SET `LootID`= 38297 WHERE `entry` = 38297;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36855, 38106, 38296, 38297);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
#(36855, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(36855, 49908, 5, 0, 1, 1), --  Saronit
(36855, 36855, 100, 0, -36855, 2), --  Lootreferenz Normal 10
# Normal 25
#(38106, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(38106, 49908, 20, 0, 1, 1), --  Saronit
(38106, 50274, -5, 0, 1, 1), --  Shadowfrost Shard (Quest)
(38106, 38106, 100, 0, -38106, 3), --  Lootreferenz Normal 25
# Heroic 10
#(38296, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(38296, 49908, 20, 0, 1, 1), --  Saronit
(38296, 38296, 100, 0, -38296, 2), --  Lootreferenz Heroic 10
# Heroic 25
#(38297, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(38297, 49908, 20, 0, 1, 1), --  Saronit
(38297, 50274, -20, 0, 1, 1), --  Shadowfrost Shard (Quest)
(38297, 38297, 100, 0, -38297, 3); --  Lootreferenz Heroic 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36855, 38106, 38296, 38297);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(36855, 50781, 0, 1, 1, 1), /* (251) Scourgelord's Baton */			
(36855, 50776, 0, 1, 1, 1), /* (251) Njorndar Bone Bow */			
(36855, 50782, 0, 1, 1, 1), /* (251) Sister's Handshrouds */			
(36855, 50342, 0, 1, 1, 1), /* (251) Whispering Fanged Skull */			
(36855, 50780, 0, 1, 1, 1), /* (251) Chestguard of the Frigid Noose */			
(36855, 50779, 0, 1, 1, 1), /* (251) Deathspeaker Zealot's Helm */			
(36855, 50778, 0, 1, 1, 1), /* (251) Soulthief's Braided Belt */			
(36855, 50777, 0, 1, 1, 1), /* (251) Handgrips of Frost and Sleet */			
(36855, 50783, 0, 1, 1, 1), /* (251) Boots of the Frozen Seed */			
(36855, 50786, 0, 1, 1, 1), /* (251) Ghoul Commander's Cuirass */			
(36855, 50785, 0, 1, 1, 1), /* (251) Bracers of Dark Blessings */			
(36855, 50784, 0, 1, 1, 1), /* (251) Deathspeaker Disciple's Belt */
# Referenz Normal 25			
(38106, 49992, 0, 1, 1, 1), /* (264) Nibelung */			
(38106, 50034, 0, 1, 1, 1), /* (264) Zod's Repeating Longbow */			
(38106, 49994, 0, 1, 1, 1), /* (264) The Lady's Brittle Bracers */			
(38106, 49987, 0, 1, 1, 1), /* (264) Cultist's Bloodsoaked Spaulders */			
(38106, 49989, 0, 1, 1, 1), /* (264) Ahn'kahar Onyx Neckguard */			
(38106, 49982, 0, 1, 1, 1), /* (264) Heartpierce */			
(38106, 49988, 0, 1, 1, 1), /* (264) Leggings of Northern Lights */			
(38106, 49983, 0, 1, 1, 1), /* (264) Blood-Soaked Saronite Stompers */			
(38106, 49990, 0, 1, 1, 1), /* (264) Ring of Maddening Whispers */			
(38106, 49991, 0, 1, 1, 1), /* (264) Shoulders of Mercy Killing */			
(38106, 49995, 0, 1, 1, 1), /* (264) Fallen Lord's Handguards */			
(38106, 49993, 0, 1, 1, 1), /* (264) Necrophotic Greaves */			
(38106, 49996, 0, 1, 1, 1), /* (264) Deathwhisper Raiment */			
(38106, 49986, 0, 1, 1, 1), /* (264) Broken Ram Skull Helm */			
(38106, 49985, 0, 1, 1, 1), /* (264) Juggernaut Band */
# Referenz Heroic 10			
(38296, 51922, 0, 1, 1, 1), /* (264) Scourgelord's Baton */			
(38296, 51927, 0, 1, 1, 1), /* (264) Njorndar Bone Bow */			
(38296, 51921, 0, 1, 1, 1), /* (264) Sister's Handshrouds */			
(38296, 50343, 0, 1, 1, 1), /* (264) Whispering Fanged Skull */			
(38296, 51926, 0, 1, 1, 1), /* (264) Handgrips of Frost and Sleet */			
(38296, 51925, 0, 1, 1, 1), /* (264) Soulthief's Braided Belt */			
(38296, 51923, 0, 1, 1, 1), /* (264) Chestguard of the Frigid Noose */			
(38296, 51918, 0, 1, 1, 1), /* (264) Bracers of Dark Blessings */			
(38296, 51920, 0, 1, 1, 1), /* (264) Boots of the Frozen Seed */			
(38296, 51919, 0, 1, 1, 1), /* (264) Deathspeaker Disciple's Belt */			
(38296, 51924, 0, 1, 1, 1), /* (264) Deathspeaker Zealot's Helm */			
(38296, 51917, 0, 1, 1, 1), /* (264) Ghoul Commander's Cuirass */
# Referenz Heroic 25			
(38297, 50648, 0, 1, 1, 1), /* (277) Nibelung */			
(38297, 50638, 0, 1, 1, 1), /* (277) Zod's Repeating Longbow */			
(38297, 50651, 0, 1, 1, 1), /* (277) The Lady's Brittle Bracers */			
(38297, 50646, 0, 1, 1, 1), /* (277) Cultist's Bloodsoaked Spaulders */			
(38297, 50644, 0, 1, 1, 1), /* (277) Ring of Maddening Whispers */			
(38297, 50647, 0, 1, 1, 1), /* (277) Ahn'kahar Onyx Neckguard */			
(38297, 50639, 0, 1, 1, 1), /* (277) Blood-Soaked Saronite Stompers */			
(38297, 50645, 0, 1, 1, 1), /* (277) Leggings of Northern Lights */			
(38297, 50643, 0, 1, 1, 1), /* (277) Shoulders of Mercy Killing */			
(38297, 50641, 0, 1, 1, 1), /* (277) Heartpierce */			
(38297, 50652, 0, 1, 1, 1), /* (277) Necrophotic Greaves */			
(38297, 50642, 0, 1, 1, 1), /* (277) Juggernaut Band */			
(38297, 50649, 0, 1, 1, 1), /* (277) Deathwhisper Raiment */			
(38297, 50650, 0, 1, 1, 1), /* (277) Fallen Lord's Handguards */			
(38297, 50640, 0, 1, 1, 1); /* (277) Broken Ram Skull Helm */

-- [36626] Festergut  (59)
UPDATE `creature_template` SET `LootID`= 36626 WHERE `entry` = 36626;
UPDATE `creature_template` SET `LootID`= 37504 WHERE `entry` = 37504;
UPDATE `creature_template` SET `LootID`= 37505 WHERE `entry` = 37505;
UPDATE `creature_template` SET `LootID`= 37506 WHERE `entry` = 37506;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36626, 37504, 37505, 37506);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
#(36626, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(36626, 49908, 5, 0, 1, 1), --  Saronit
(36626, 36626, 100, 0, -36626, 2), --  Lootreferenz Normal 10
# Normal 25
#(37504, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(37504, 49908, 20, 0, 1, 1), --  Saronit
(37504, 50274, -5, 0, 1, 1), --  Shadowfrost Shard (Quest)
(37504, 37504, 100, 0, -37504, 3), --  Lootreferenz Normal 25
(37504, 50226, -100, 0, 1, 1), /* (Quest) Festergut's Acidic Blood */
# Heroic 10
#(37505, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(37505, 49908, 20, 0, 1, 1), --  Saronit
(37505, 37505, 100, 0, -37505, 2), --  Lootreferenz Heroic 10
# Heroic 25
#(37506, 49426, 100, 0, 2, 2), --  Emblem des Frostes
(37506, 49908, 20, 0, 1, 1), --  Saronit
(37506, 50274, -20, 0, 1, 1), --  Shadowfrost Shard (Quest)
(37506, 37506, 100, 0, -37506, 3), --  Lootreferenz Heroic 25
(37506, 50226, -100, 0, 1, 1); /* (Quest) Festergut's Acidic Blood */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36626, 37504, 37505, 37506);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(36626, 50966, 0, 1, 1, 1), /* (251) Abracadaver */			
(36626, 50810, 0, 1, 1, 1), /* (251) Gutbuster */			
(36626, 50852, 0, 1, 1, 1), /* (251) Precious's Putrid Collar */			
(36626, 50990, 0, 1, 1, 1), /* (251) Kilt of Untreated Wounds */			
(36626, 50858, 0, 1, 1, 1), /* (251) Plague-Soaked Leather Leggings */			
(36626, 50811, 0, 1, 1, 1), /* (251) Festering Fingerguards */			
(36626, 50812, 0, 1, 1, 1), /* (251) Taldron's Long Neglected Boots */			
(36626, 50967, 0, 1, 1, 1), /* (251) Festergut's Gaseous Gloves */			
(36626, 50986, 0, 1, 1, 1), /* (251) Signet of Putrefaction */			
(36626, 50988, 0, 1, 1, 1), /* (251) Bloodstained Surgeon's Shoulderguards */			
(36626, 50985, 0, 1, 1, 1), /* (251) Wrists of Septic Shock */			
(36626, 50859, 0, 1, 1, 1), /* (251) Cloak of Many Skins */
# Referenz Normal 25			
(37504, 50040, 0, 1, 1, 1), /* (264) Distant Land */			
(37504, 50062, 0, 1, 1, 1), /* (264) Plague Scientist's Boots */			
(37504, 50042, 0, 1, 1, 1), /* (264) Gangrenous Leggings */			
(37504, 50056, 0, 1, 1, 1), /* (264) Plaguebringer's Stained Pants */			
(37504, 50061, 0, 1, 1, 1), /* (264) Holiday's Grace */			
(37504, 50063, 0, 1, 1, 1), /* (264) Lingering Illness */			
(37504, 50413, 0, 1, 1, 1), /* (264) Nerub'ar Stalker's Cord */			
(37504, 50060, 0, 1, 1, 1), /* (264) Faceplate of the Forgotten */			
(37504, 50035, 0, 1, 1, 1), /* (264) Black Bruise */			
(37504, 50037, 0, 1, 1, 1), /* (264) Fleshrending Gauntlets */			
(37504, 50414, 0, 1, 1, 1), /* (264) Might of Blight */			
(37504, 50064, 0, 1, 1, 1), /* (264) Unclean Surgical Gloves */			
(37504, 50038, 0, 1, 1, 1), /* (264) Carapace of Forgotten Kings */			
(37504, 50041, 0, 1, 1, 1), /* (264) Leather of Stitched Scourge Parts */			
(37504, 50059, 0, 1, 1, 1), /* (264) Horrific Flesh Epaulets */			
(37504, 50036, 0, 1, 1, 1), /* (264) Belt of Broken Bones */
# Referenz Heroic 10			
(37505, 51887, 0, 1, 1, 1), /* (264) Abracadaver */			
(37505, 51893, 0, 1, 1, 1), /* (264) Gutbuster */			
(37505, 51890, 0, 1, 1, 1), /* (264) Precious's Putrid Collar */			
(37505, 51882, 0, 1, 1, 1), /* (264) Kilt of Untreated Wounds */			
(37505, 51892, 0, 1, 1, 1), /* (264) Festering Fingerguards */			
(37505, 51886, 0, 1, 1, 1), /* (264) Festergut's Gaseous Gloves */			
(37505, 51889, 0, 1, 1, 1), /* (264) Plague-Soaked Leather Leggings */			
(37505, 51891, 0, 1, 1, 1), /* (264) Taldron's Long Neglected Boots */			
(37505, 51885, 0, 1, 1, 1), /* (264) Wrists of Septic Shock */			
(37505, 51884, 0, 1, 1, 1), /* (264) Signet of Putrefaction */			
(37505, 51883, 0, 1, 1, 1), /* (264) Bloodstained Surgeon's Shoulderguards */			
(37505, 51888, 0, 1, 1, 1), /* (264) Cloak of Many Skins */
# Referenz Heroic 25			
(37506, 50695, 0, 1, 1, 1), /* (277) Distant Land */			
(37506, 50699, 0, 1, 1, 1), /* (277) Plague Scientist's Boots */			
(37506, 50694, 0, 1, 1, 1), /* (277) Plaguebringer's Stained Pants */			
(37506, 50690, 0, 1, 1, 1), /* (277) Fleshrending Gauntlets */			
(37506, 50703, 0, 1, 1, 1), /* (277) Unclean Surgical Gloves */			
(37506, 50701, 0, 1, 1, 1), /* (277) Faceplate of the Forgotten */			
(37506, 50697, 0, 1, 1, 1), /* (277) Gangrenous Leggings */			
(37506, 50692, 0, 1, 1, 1), /* (277) Black Bruise */			
(37506, 50693, 0, 1, 1, 1), /* (277) Might of Blight */			
(37506, 50700, 0, 1, 1, 1), /* (277) Holiday's Grace */			
(37506, 50689, 0, 1, 1, 1), /* (277) Carapace of Forgotten Kings */			
(37506, 50688, 0, 1, 1, 1), /* (277) Nerub'ar Stalker's Cord */			
(37506, 50702, 0, 1, 1, 1), /* (277) Lingering Illness */			
(37506, 50696, 0, 1, 1, 1), /* (277) Leather of Stitched Scourge Parts */			
(37506, 50698, 0, 1, 1, 1), /* (277) Horrific Flesh Epaulets */			
(37506, 50691, 0, 1, 1, 1); /* (277) Belt of Broken Bones */

-- [36627] Rotface  (54)
UPDATE `creature_template` SET `LootID`= 36627 WHERE `entry` = 36627;
UPDATE `creature_template` SET `LootID`= 38390 WHERE `entry` = 38390;
UPDATE `creature_template` SET `LootID`= 38549 WHERE `entry` = 38549;
UPDATE `creature_template` SET `LootID`= 38550 WHERE `entry` = 38550;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36627, 38390, 38549, 38550);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
# Normal 10
#(36627, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(36627, 49908, 5, 0, 1, 1, 0,0,0), --  Saronit
(36627, 36627, 100, 0, -36627, 2, 0,0,0), --  Lootreferenz Normal 10
# Normal 25
#(38390, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(38390, 49908, 20, 0, 1, 1, 0,0,0), --  Saronit
(38390, 50274, -5, 0, 1, 1, 0,0,0), --  Shadowfrost Shard (Quest)
(38390, 38390, 100, 0, -38390, 3, 0,0,0), --  Lootreferenz Normal 25
(38390, 50231, -100, 0, 1, 1, 0, 0, 0), /* (Quest) Rotface's Acidic Blood */
# Heroic 10
#(38549, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(38549, 49908, 20, 0, 1, 1, 0,0,0), --  Saronit
(38549, 38549, 100, 0, -38549, 2, 0,0,0), --  Lootreferenz Heroic 10
# Heroic 25
#(38550, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(38550, 49908, 20, 0, 1, 1, 0,0,0), --  Saronit
(38550, 50274, -20, 0, 1, 1, 0,0,0), --  Shadowfrost Shard (Quest)
(38550, 38550, 100, 0, -38550, 3, 0,0,0), --  Lootreferenz Heroic 25
(38550, 50231, -100, 0, 1, 1, 0, 0, 0); /* (Quest) Rotface's Acidic Blood */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36627, 38390, 38549, 38550);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`, `lootcondition`, `condition_value1`,`condition_value2`) VALUES
# Referenz Normal 10			
(36627, 51004, 0, 1, 1, 1, 0, 0, 0), /* (251) Lockjaw */			
(36627, 50998, 0, 1, 1, 1, 0, 0, 0), /* (251) Shaft of Glacial Ice */			
(36627, 51007, 0, 1, 1, 1, 0, 0, 0), /* (251) Ether-Soaked Bracers */			
(36627, 51003, 0, 1, 1, 1, 0, 0, 0), /* (251) Abomination Knuckles */			
(36627, 50999, 0, 1, 1, 1, 0, 0, 0), /* (251) Gluth's Fetching Knife */			
(36627, 51001, 0, 1, 1, 1, 0, 0, 0), /* (251) Rotface's Rupturing Ring */			
(36627, 51000, 0, 1, 1, 1, 0, 0, 0), /* (251) Flesh-Shaper's Gurney Strap */			
(36627, 51002, 0, 1, 1, 1, 0, 0, 0), /* (251) Taldron's Short-Sighted Helm */			
(36627, 51006, 0, 1, 1, 1, 0, 0, 0), /* (251) Shuffling Shoes */			
(36627, 51009, 0, 1, 1, 1, 0, 0, 0), /* (251) Chestguard of the Failed Experiment */			
(36627, 51005, 0, 1, 1, 1, 0, 0, 0), /* (251) Gloves of Broken Fingers */			
(36627, 51008, 0, 1, 1, 1, 0, 0, 0), /* (251) Choker of Filthy Diamonds */
# Referenz Normal 25			
(38390, 50028, 0, 1, 1, 1, 0, 0, 0), /* (264) Trauma */			
(38390, 50353, 0, 1, 1, 1, 0, 0, 0), /* (264) Dislodged Foreign Object */			
(38390, 50023, 0, 1, 1, 1, 0, 0, 0), /* (264) Bile-Encrusted Medallion */			
(38390, 50033, 0, 1, 1, 1, 0, 0, 0), /* (264) Corpse-Impaling Spike */			
(38390, 50016, 0, 1, 1, 1, 0, 0, 0), /* (264) Rib Spreader */			
(38390, 50022, 0, 1, 1, 1, 0, 0, 0), /* (264) Dual-Bladed Pauldrons */			
(38390, 50019, 0, 1, 1, 1, 0, 0, 0), /* (264) Winding Sheet */			
(38390, 50021, 0, 1, 1, 1, 0, 0, 0), /* (264) Aldriana's Gloves of Secrecy */			
(38390, 50020, 0, 1, 1, 1, 0, 0, 0), /* (264) Raging Behemoth's Shoulderplates */			
(38390, 50026, 0, 1, 1, 1, 0, 0, 0), /* (264) Helm of the Elder Moon */			
(38390, 50024, 0, 1, 1, 1, 0, 0, 0), /* (264) Blightborne Warplate */			
(38390, 50032, 0, 1, 1, 1, 0, 0, 0), /* (264) Death Surgeon's Sleeves */			
(38390, 50030, 0, 1, 1, 1, 0, 0, 0), /* (264) Bloodsunder's Bracers */
# Referenz Heroic 10			
(38549, 51875, 0, 1, 1, 1, 0, 0, 0), /* (264) Lockjaw */			
(38549, 51881, 0, 1, 1, 1, 0, 0, 0), /* (264) Shaft of Glacial Ice */			
(38549, 51872, 0, 1, 1, 1, 0, 0, 0), /* (264) Ether-Soaked Bracers */			
(38549, 51878, 0, 1, 1, 1, 0, 0, 0), /* (264) Rotface's Rupturing Ring */			
(38549, 51877, 0, 1, 1, 1, 0, 0, 0), /* (264) Taldron's Short-Sighted Helm */			
(38549, 51880, 0, 1, 1, 1, 0, 0, 0), /* (264) Gluth's Fetching Knife */			
(38549, 51879, 0, 1, 1, 1, 0, 0, 0), /* (264) Flesh-Shaper's Gurney Strap */			
(38549, 51874, 0, 1, 1, 1, 0, 0, 0), /* (264) Gloves of Broken Fingers */			
(38549, 51870, 0, 1, 1, 1, 0, 0, 0), /* (264) Chestguard of the Failed Experiment */			
(38549, 51873, 0, 1, 1, 1, 0, 0, 0), /* (264) Shuffling Shoes */			
(38549, 51871, 0, 1, 1, 1, 0, 0, 0), /* (264) Choker of Filthy Diamonds */
# Referenz Heroic 25			
(38550, 50685, 0, 1, 1, 1, 0, 0, 0), /* (277) Trauma */			
(38550, 50678, 0, 1, 1, 1, 0, 0, 0), /* (277) Seal of Many Mouths */			
(38550, 50348, 0, 1, 1, 1, 0, 0, 0), /* (277) Dislodged Foreign Object */			
(38550, 50682, 0, 1, 1, 1, 0, 0, 0), /* (277) Bile-Encrusted Medallion */			
(38550, 50675, 0, 1, 1, 1, 0, 0, 0), /* (277) Aldriana's Gloves of Secrecy */			
(38550, 50673, 0, 1, 1, 1, 0, 0, 0), /* (277) Dual-Bladed Pauldrons */			
(38550, 50684, 0, 1, 1, 1, 0, 0, 0), /* (277) Corpse-Impaling Spike */			
(38550, 50676, 0, 1, 1, 1, 0, 0, 0), /* (277) Rib Spreader */			
(38550, 50677, 0, 1, 1, 1, 0, 0, 0), /* (277) Winding Sheet */			
(38550, 50674, 0, 1, 1, 1, 0, 0, 0), /* (277) Raging Behemoth's Shoulderplates */			
(38550, 50679, 0, 1, 1, 1, 0, 0, 0), /* (277) Helm of the Elder Moon */			
(38550, 50680, 0, 1, 1, 1, 0, 0, 0), /* (277) Rot-Resistant Breastplate */			
(38550, 50681, 0, 1, 1, 1, 0, 0, 0), /* (277) Blightborne Warplate */			
(38550, 50686, 0, 1, 1, 1, 0, 0, 0), /* (277) Death Surgeon's Sleeves */			
(38550, 50687, 0, 1, 1, 1, 0, 0, 0); /* (277) Bloodsunder's Bracers */

-- [36678] Professor Putricide  (40)
UPDATE `creature_template` SET `LootID`= 36678 WHERE `entry` = 36678;
UPDATE `creature_template` SET `LootID`= 38431 WHERE `entry` = 38431;
UPDATE `creature_template` SET `LootID`= 38585 WHERE `entry` = 38585;
UPDATE `creature_template` SET `LootID`= 38586 WHERE `entry` = 38586;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36678, 38431, 38585, 38586);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
# Normal 10
#(36678, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(36678, 49908, 5, 0, 1, 1, 0,0,0), --  Saronit
(36678, 36678, 100, 0, -36678, 2, 0,0,0), --  Lootreferenz Normal 10
# Normal 25
#(38431, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(38431, 49908, 20, 0, 1, 1, 0,0,0), --  Saronit
(38431, 50274, -5, 0, 1, 1, 0,0,0), --  Shadowfrost Shard (Quest)
(38431, 38431, 100, 0, -38431, 1, 0,0,0), --  Lootreferenz Normal 25
(38431, 3781305, 100, 0, -3781305, 2, 0,0,0), --  Lootreferenz T10.264
# Heroic 10
#(38585, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(38585, 49908, 20, 0, 1, 1, 0,0,0), --  Saronit
(38585, 38585, 100, 0, -38585, 1, 0,0,0), --  Lootreferenz Heroic 10
(38585, 3781305, 100, 0, -3781305, 2, 0,0,0), --  Lootreferenz T10.264
# Heroic 25
#(38586, 49426, 100, 0, 2, 2, 0,0,0), --  Emblem des Frostes
(38586, 49908, 20, 0, 1, 1, 0,0,0), --  Saronit
(38586, 50274, -20, 0, 1, 1, 0,0,0), --  Shadowfrost Shard (Quest)
(38586, 38586, 100, 0, -38586, 1, 0,0,0), --  Lootreferenz Heroic 25
(38586, 3781305, 100, 0, -3781305, 2, 0,0,0), --  Lootreferenz T10.264
(38586, 3781306, 100, 0, -3781306, 1, 0,0,0); --  Lootreferenz T10.277
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36678, 38431, 38585, 38586);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`, `lootcondition`, `condition_value1`,`condition_value2`) VALUES
# Referenz Normal 10			
(36678, 51016, 0, 1, 1, 1, 0, 0, 0), /* (251) Pendant of Split Veins */			
(36678, 50341, 0, 1, 1, 1, 0, 0, 0), /* (251) Unidentifiable Organ */			
(36678, 51015, 0, 1, 1, 1, 0, 0, 0), /* (251) Shoulderpads of the Morbid Ritual */			
(36678, 51013, 0, 1, 1, 1, 0, 0, 0), /* (251) Discarded Bag of Entrails */			
(36678, 51014, 0, 1, 1, 1, 0, 0, 0), /* (251) Scalpel-Sharpening Shoulderguards */			
(36678, 51017, 0, 1, 1, 1, 0, 0, 0), /* (251) Cauterized Cord */			
(36678, 51010, 0, 1, 1, 1, 0, 0, 0), /* (251) The Facelifter */			
(36678, 51020, 0, 1, 1, 1, 0, 0, 0), /* (251) Shoulders of Ruinous Senility */			
(36678, 51012, 0, 1, 1, 1, 0, 0, 0), /* (251) Infected Choker */			
(36678, 51011, 0, 1, 1, 1, 0, 0, 0), /* (251) Flesh-Carving Scalpel */			
(36678, 51019, 0, 1, 1, 1, 0, 0, 0), /* (251) Rippling Flesh Kilt */			
(36678, 51018, 0, 1, 1, 1, 0, 0, 0), /* (251) Chestplate of Septic Stitches */
# Referenz Normal 25			
(38431, 50351, 0, 1, 1, 1, 0, 0, 0), /* (264) Tiny Abomination in a Jar */			
(38431, 50179, 0, 1, 1, 1, 0, 0, 0), /* (264) Last Word */			
(38431, 50067, 0, 1, 1, 1, 0, 0, 0), /* (264) Astrylian's Sutured Cinch */			
(38431, 50069, 0, 1, 1, 1, 0, 0, 0), /* (264) Professor's Bloodied Smock */
# Referenz Heroic 10			
(38585, 51863, 0, 1, 1, 1, 0, 0, 0), /* (264) Pendant of Split Veins */			
(38585, 51867, 0, 1, 1, 1, 0, 0, 0), /* (264) Infected Choker */			
(38585, 51859, 0, 1, 1, 1, 0, 0, 0), /* (264) Shoulders of Ruinous Senility */			
(38585, 51864, 0, 1, 1, 1, 0, 0, 0), /* (264) Shoulderpads of the Morbid Ritual */			
(38585, 51868, 0, 1, 1, 1, 0, 0, 0), /* (264) Flesh-Carving Scalpel */			
(38585, 51862, 0, 1, 1, 1, 0, 0, 0), /* (264) Cauterized Cord */			
(38585, 51860, 0, 1, 1, 1, 0, 0, 0), /* (264) Rippling Flesh Kilt */			
(38585, 50344, 0, 1, 1, 1, 0, 0, 0), /* (264) Unidentifiable Organ */			
(38585, 51869, 0, 1, 1, 1, 0, 0, 0), /* (264) The Facelifter */			
(38585, 51866, 0, 1, 1, 1, 0, 0, 0), /* (264) Discarded Bag of Entrails */			
(38585, 51861, 0, 1, 1, 1, 0, 0, 0), /* (264) Chestplate of Septic Stitches */
# Referenz Heroic 25			
(38586, 50706, 0, 1, 1, 1, 0, 0, 0), /* (277) Tiny Abomination in a Jar */			
(38586, 50704, 0, 1, 1, 1, 0, 0, 0), /* (277) Rigormortis */			
(38586, 50708, 0, 1, 1, 1, 0, 0, 0), /* (277) Last Word */			
(38586, 50707, 0, 1, 1, 1, 0, 0, 0), /* (277) Astrylian's Sutured Cinch */			
(38586, 50705, 0, 1, 1, 1, 0, 0, 0); /* (277) Professor's Bloodied Smock */