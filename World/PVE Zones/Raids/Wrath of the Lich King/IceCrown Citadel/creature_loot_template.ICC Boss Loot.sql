

/*
 * [36612] Lord Marrowgar  (56)
 */
UPDATE `creature_template` SET `LootID`= 36612 WHERE `entry` = 36612;
UPDATE `creature_template` SET `LootID`= 37957 WHERE `entry` = 37957;
UPDATE `creature_template` SET `LootID`= 37958 WHERE `entry` = 37958;
UPDATE `creature_template` SET `LootID`= 37959 WHERE `entry` = 37959;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36612, 37957, 37958, 37959);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36612, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36612, 49908, 5, 0, 1, 1), /* Saronit */
(36612, 36612, 100, 0, -36612, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(37957, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37957, 49908, 20, 0, 1, 1), /* Saronit */
(37957, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(37957, 37957, 100, 0, -37957, 3), /* Lootreferenz Normal 25 */
/* -[ Heroic 10 ]- */
(37958, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37958, 49908, 20, 0, 1, 1), /* Saronit */
(37958, 37958, 100, 0, -37958, 2), /* Lootreferenz Heroic 10 */
/* -[ Heroic 25 ]- */
(37959, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37959, 49908, 20, 0, 1, 1), /* Saronit */
(37959, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(37959, 37959, 100, 0, -37959, 3); /* Lootreferenz Heroic 25 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36612, 37957, 37958, 37959);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36612, 50761, 0, 1, 1, 1), /* (251) Citadel Enforcer's Claymore */			
(36612, 50339, 0, 1, 1, 1), /* (251) Sliver of Pure Ice */			
(36612, 50771, 0, 1, 1, 1), /* (251) Frost Needle */			
(36612, 50764, 0, 1, 1, 1), /* (251) Shawl of Nerubian Silk */			
(36612, 50760, 0, 1, 1, 1), /* (251) Bonebreaker Scepter */			
(36612, 50772, 0, 1, 1, 1), /* (251) Ancient Skeletal Boots */			
(36612, 50775, 0, 1, 1, 1), /* (251) Corrupted Silverplate Leggings */			
(36612, 50762, 0, 1, 1, 1), /* (251) Linked Scourge Vertebrae */			
(36612, 50773, 0, 1, 1, 1), /* (251) Cord of the Patronizing Practitioner */			
(36612, 50759, 0, 1, 1, 1), /* (251) Bone Warden's Splitter */			
(36612, 50774, 0, 1, 1, 1), /* (251) Coldwraith Bracers */			
(36612, 50763, 0, 1, 1, 1), /* (251) Marrowgar's Scratching Choker */
/* -[ Referenz Normal 25 ]- */			
(37957, 49968, 0, 1, 1, 1), /* (264) Frozen Bonespike */			
(37957, 50415, 0, 1, 1, 1), /* (264) Bryntroll, the Bone Arbiter */			
(37957, 49977, 0, 1, 1, 1), /* (264) Loop of the Endless Labyrinth */			
(37957, 49978, 0, 1, 1, 1), /* (264) Crushing Coldwraith Belt */			
(37957, 49976, 0, 1, 1, 1), /* (264) Bulwark of Smouldering Steel */			
(37957, 49975, 0, 1, 1, 1), /* (264) Bone Sentinel's Amulet */			
(37957, 49949, 0, 1, 1, 1), /* (264) Band of the Bone Colossus */			
(37957, 49960, 0, 1, 1, 1), /* (264) Bracers of Dark Reckoning */			
(37957, 49951, 0, 1, 1, 1), /* (264) Gendarme's Cuirass */			
(37957, 49950, 0, 1, 1, 1), /* (264) Frostbitten Fur Boots */			
(37957, 49952, 0, 1, 1, 1), /* (264) Snowserpent Mail Helm */			
(37957, 49964, 0, 1, 1, 1), /* (264) Legguards of Lost Hope */			
(37957, 49980, 0, 1, 1, 1), /* (264) Rusted Bonespike Pauldrons */			
(37957, 49967, 0, 1, 1, 1), /* (264) Marrowgar's Frigid Eye */			
(37957, 49979, 0, 1, 1, 1), /* (264) Handguards of Winter's Respite */
/* -[ Referenz Heroic 10 ]- */			
(37958, 51936, 0, 1, 1, 1), /* (264) Citadel Enforcer's Claymore */			
(37958, 51932, 0, 1, 1, 1), /* (264) Frost Needle */			
(37958, 50346, 0, 1, 1, 1), /* (264) Sliver of Pure Ice */			
(37958, 51933, 0, 1, 1, 1), /* (264) Shawl of Nerubian Silk */			
(37958, 51931, 0, 1, 1, 1), /* (264) Ancient Skeletal Boots */			
(37958, 51937, 0, 1, 1, 1), /* (264) Bonebreaker Scepter */			
(37958, 51930, 0, 1, 1, 1), /* (264) Cord of the Patronizing Practitioner */			
(37958, 51935, 0, 1, 1, 1), /* (264) Linked Scourge Vertebrae */			
(37958, 51938, 0, 1, 1, 1), /* (264) Bone Warden's Splitter */			
(37958, 51929, 0, 1, 1, 1), /* (264) Coldwraith Bracers */			
(37958, 51928, 0, 1, 1, 1), /* (264) Corrupted Silverplate Leggings */			
(37958, 51934, 0, 1, 1, 1), /* (264) Marrowgar's Scratching Choker */
/* -[ Referenz Heroic 25 ]- */			
(37959, 50608, 0, 1, 1, 1), /* (277) Frozen Bonespike */			
(37959, 50709, 0, 1, 1, 1), /* (277) Bryntroll, the Bone Arbiter */			
(37959, 50614, 0, 1, 1, 1), /* (277) Loop of the Endless Labyrinth */			
(37959, 50609, 0, 1, 1, 1), /* (277) Bone Sentinel's Amulet */			
(37959, 50616, 0, 1, 1, 1), /* (277) Bulwark of Smouldering Steel */			
(37959, 50613, 0, 1, 1, 1), /* (277) Crushing Coldwraith Belt */			
(37959, 50604, 0, 1, 1, 1), /* (277) Band of the Bone Colossus */			
(37959, 50606, 0, 1, 1, 1), /* (277) Gendarme's Cuirass */			
(37959, 50605, 0, 1, 1, 1), /* (277) Snowserpent Mail Helm */			
(37959, 50611, 0, 1, 1, 1), /* (277) Bracers of Dark Reckoning */			
(37959, 50615, 0, 1, 1, 1), /* (277) Handguards of Winter's Respite */			
(37959, 50607, 0, 1, 1, 1), /* (277) Frostbitten Fur Boots */			
(37959, 50612, 0, 1, 1, 1), /* (277) Legguards of Lost Hope */			
(37959, 50610, 0, 1, 1, 1), /* (277) Marrowgar's Frigid Eye */			
(37959, 50617, 0, 1, 1, 1); /* (277) Rusted Bonespike Pauldrons */



/*
 * [36855] Lady Deathwhisper  (56)
 */
UPDATE `creature_template` SET `LootID`= 36855 WHERE `entry` = 36855;
UPDATE `creature_template` SET `LootID`= 38106 WHERE `entry` = 38106;
UPDATE `creature_template` SET `LootID`= 38296 WHERE `entry` = 38296;
UPDATE `creature_template` SET `LootID`= 38297 WHERE `entry` = 38297;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36855, 38106, 38296, 38297);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36855, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36855, 49908, 5, 0, 1, 1), /* Saronit */
(36855, 36855, 100, 0, -36855, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(38106, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38106, 49908, 20, 0, 1, 1), /* Saronit */
(38106, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38106, 38106, 100, 0, -38106, 3), /* Lootreferenz Normal 25 */
/* -[ Heroic 10 ]- */
(38296, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38296, 49908, 20, 0, 1, 1), /* Saronit */
(38296, 38296, 100, 0, -38296, 2), /* Lootreferenz Heroic 10 */
/* -[ Heroic 25 ]- */
(38297, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38297, 49908, 20, 0, 1, 1), /* Saronit */
(38297, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38297, 38297, 100, 0, -38297, 3); /* Lootreferenz Heroic 25 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36855, 38106, 38296, 38297);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36855, 50781, 0, 1, 1, 1), /* (251) Scourgelord's Baton */			
(36855, 50776, 0, 1, 1, 1), /* (251) Njorndar Bone Bow */			
(36855, 50782, 0, 1, 1, 1), /* (251) Sister's Handshrouds */			
(36855, 50342, 0, 1, 1, 1), /* (251) Whispering Fanged Skull */			
(36855, 50784, 0, 1, 1, 1), /* (251) Deathspeaker Disciple's Belt */			
(36855, 50778, 0, 1, 1, 1), /* (251) Soulthief's Braided Belt */			
(36855, 50780, 0, 1, 1, 1), /* (251) Chestguard of the Frigid Noose */			
(36855, 50779, 0, 1, 1, 1), /* (251) Deathspeaker Zealot's Helm */			
(36855, 50777, 0, 1, 1, 1), /* (251) Handgrips of Frost and Sleet */			
(36855, 50786, 0, 1, 1, 1), /* (251) Ghoul Commander's Cuirass */			
(36855, 50785, 0, 1, 1, 1), /* (251) Bracers of Dark Blessings */			
(36855, 50783, 0, 1, 1, 1), /* (251) Boots of the Frozen Seed */
/* -[ Referenz Normal 25 ]- */			
(38106, 49992, 0, 1, 1, 1), /* (264) Nibelung */			
(38106, 50034, 0, 1, 1, 1), /* (264) Zod's Repeating Longbow */			
(38106, 49994, 0, 1, 1, 1), /* (264) The Lady's Brittle Bracers */			
(38106, 49987, 0, 1, 1, 1), /* (264) Cultist's Bloodsoaked Spaulders */			
(38106, 49988, 0, 1, 1, 1), /* (264) Leggings of Northern Lights */			
(38106, 49989, 0, 1, 1, 1), /* (264) Ahn'kahar Onyx Neckguard */			
(38106, 49983, 0, 1, 1, 1), /* (264) Blood-Soaked Saronite Stompers */			
(38106, 49982, 0, 1, 1, 1), /* (264) Heartpierce */			
(38106, 49990, 0, 1, 1, 1), /* (264) Ring of Maddening Whispers */			
(38106, 49991, 0, 1, 1, 1), /* (264) Shoulders of Mercy Killing */			
(38106, 49995, 0, 1, 1, 1), /* (264) Fallen Lord's Handguards */			
(38106, 49986, 0, 1, 1, 1), /* (264) Broken Ram Skull Helm */			
(38106, 49996, 0, 1, 1, 1), /* (264) Deathwhisper Raiment */			
(38106, 49985, 0, 1, 1, 1), /* (264) Juggernaut Band */			
(38106, 49993, 0, 1, 1, 1), /* (264) Necrophotic Greaves */
/* -[ Referenz Heroic 10 ]- */			
(38296, 51922, 0, 1, 1, 1), /* (264) Scourgelord's Baton */			
(38296, 51927, 0, 1, 1, 1), /* (264) Njorndar Bone Bow */			
(38296, 50343, 0, 1, 1, 1), /* (264) Whispering Fanged Skull */			
(38296, 51926, 0, 1, 1, 1), /* (264) Handgrips of Frost and Sleet */			
(38296, 51924, 0, 1, 1, 1), /* (264) Deathspeaker Zealot's Helm */			
(38296, 51921, 0, 1, 1, 1), /* (264) Sister's Handshrouds */			
(38296, 51917, 0, 1, 1, 1), /* (264) Ghoul Commander's Cuirass */			
(38296, 51925, 0, 1, 1, 1), /* (264) Soulthief's Braided Belt */			
(38296, 51920, 0, 1, 1, 1), /* (264) Boots of the Frozen Seed */			
(38296, 51918, 0, 1, 1, 1), /* (264) Bracers of Dark Blessings */			
(38296, 51919, 0, 1, 1, 1), /* (264) Deathspeaker Disciple's Belt */			
(38296, 51923, 0, 1, 1, 1), /* (264) Chestguard of the Frigid Noose */
/* -[ Referenz Heroic 25 ]- */			
(38297, 50648, 0, 1, 1, 1), /* (277) Nibelung */			
(38297, 50638, 0, 1, 1, 1), /* (277) Zod's Repeating Longbow */			
(38297, 50646, 0, 1, 1, 1), /* (277) Cultist's Bloodsoaked Spaulders */			
(38297, 50641, 0, 1, 1, 1), /* (277) Heartpierce */			
(38297, 50647, 0, 1, 1, 1), /* (277) Ahn'kahar Onyx Neckguard */			
(38297, 50639, 0, 1, 1, 1), /* (277) Blood-Soaked Saronite Stompers */			
(38297, 50645, 0, 1, 1, 1), /* (277) Leggings of Northern Lights */			
(38297, 50651, 0, 1, 1, 1), /* (277) The Lady's Brittle Bracers */			
(38297, 50643, 0, 1, 1, 1), /* (277) Shoulders of Mercy Killing */			
(38297, 50644, 0, 1, 1, 1), /* (277) Ring of Maddening Whispers */			
(38297, 50650, 0, 1, 1, 1), /* (277) Fallen Lord's Handguards */			
(38297, 50652, 0, 1, 1, 1), /* (277) Necrophotic Greaves */			
(38297, 50649, 0, 1, 1, 1), /* (277) Deathwhisper Raiment */			
(38297, 50642, 0, 1, 1, 1), /* (277) Juggernaut Band */			
(38297, 50640, 0, 1, 1, 1); /* (277) Broken Ram Skull Helm */



-- [37813] Deathbringer Saurfang  (42)
/*
			
			$n0 = 202239;	// mask 1 10N
			$n1 = 202240;	// mask 2 25N
			$n2 = 202238;	// mask 4 10H
			$n3 = 202241;	// mask 8 25H
*/
UPDATE `gameobject_template` SET `data1`= 28046 WHERE `entry` = 202239; # 10
UPDATE `gameobject_template` SET `data1`= 28074 WHERE `entry` = 202240;
UPDATE `gameobject_template` SET `data1`= 28058 WHERE `entry` = 202238;
UPDATE `gameobject_template` SET `data1`= 28088 WHERE `entry` = 202241;
DELETE FROM `gameobject_loot_template` WHERE `entry` IN(28046,28074,28058,28088);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(28046, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28046, 49908, 5, 0, 1, 1), /* Saronit */
(28046, 34240, 100, 0, -34240, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(28074, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28074, 49908, 20, 0, 1, 1), /* Saronit */
(28074, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(28074, 34252, 100, 0, -34252, 1), /* Lootreferenz Normal 25 */
(28074, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 10 ]- */
(28058, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28058, 49908, 20, 0, 1, 1), /* Saronit */
(28058, 34264, 100, 0, -34264, 1), /* Lootreferenz Heroic 10 */
(28058, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 25 ]- */
(28088, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28088, 49908, 20, 0, 1, 1), /* Saronit */
(28088, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(28088, 34276, 100, 0, -34276, 1), /* Lootreferenz Heroic 25 */
(28088, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
(28088, 34279, 100, 0, -34279, 1); /* Lootreferenz T10.277 * */

		
DELETE FROM `reference_loot_template` WHERE `entry` IN(34240, 34252, 34264, 34276, 34278, 34279);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10			 ]- */
(34240, 50805, 0, 1, 1, 1), /* (251) Mag'hari Chieftain's Staff */			
(34240, 50798, 0, 1, 1, 1), /* (251) Ramaladni's Blade of Culling */			
(34240, 50801, 0, 1, 1, 1), /* (251) Blade-Scored Carapace */			
(34240, 50809, 0, 1, 1, 1), /* (251) Soulcleave Pendant */			
(34240, 50804, 0, 1, 1, 1), /* (251) Icecrown Spire Sandals */			
(34240, 50803, 0, 1, 1, 1), /* (251) Saurfang's Cold-Forged Band */			
(34240, 50808, 0, 1, 1, 1), /* (251) Deathforged Legplates */			
(34240, 50799, 0, 1, 1, 1), /* (251) Scourge Stranglers */			
(34240, 50800, 0, 1, 1, 1), /* (251) Hauberk of a Thousand Cuts */			
(34240, 50807, 0, 1, 1, 1), /* (251) Thaumaturge's Crackling Cowl */			
(34240, 50806, 0, 1, 1, 1), /* (251) Leggings of Unrelenting Blood */			
(34240, 50802, 0, 1, 1, 1), /* (251) Gargoyle Spit Bracers */
/* -[ Referenz Normal 25			 ]- */
(34252, 50362, 0, 1, 1, 1), /* (264) Deathbringer's Will */			
(34252, 50333, 0, 1, 1, 1), /* (264) Toskk's Maximized Wristguards */			
(34252, 50014, 0, 1, 1, 1), /* (264) Greatcloak of the Turned Champion */			
(34252, 50412, 0, 1, 1, 1), /* (264) Bloodvenom Blade */			
(34252, 50015, 0, 1, 1, 1), /* (264) Belt of the Blood Nova */
/* -[ Referenz Heroic 10			 ]- */
(34264, 51894, 0, 1, 1, 1), /* (264) Soulcleave Pendant */			
(34264, 51905, 0, 1, 1, 1), /* (264) Ramaladni's Blade of Culling */			
(34264, 51898, 0, 1, 1, 1), /* (264) Mag'hari Chieftain's Staff */			
(34264, 51903, 0, 1, 1, 1), /* (264) Hauberk of a Thousand Cuts */			
(34264, 51899, 0, 1, 1, 1), /* (264) Icecrown Spire Sandals */			
(34264, 51904, 0, 1, 1, 1), /* (264) Scourge Stranglers */			
(34264, 51895, 0, 1, 1, 1), /* (264) Deathforged Legplates */			
(34264, 51900, 0, 1, 1, 1), /* (264) Saurfang's Cold-Forged Band */			
(34264, 51902, 0, 1, 1, 1), /* (264) Blade-Scored Carapace */			
(34264, 51897, 0, 1, 1, 1), /* (264) Leggings of Unrelenting Blood */			
(34264, 51901, 0, 1, 1, 1), /* (264) Gargoyle Spit Bracers */			
(34264, 51896, 0, 1, 1, 1), /* (264) Thaumaturge's Crackling Cowl */
/* -[ Referenz Heroic 25			 ]- */
(34276, 50363, 0, 1, 1, 1), /* (277) Deathbringer's Will */			
(34276, 50670, 0, 1, 1, 1), /* (277) Toskk's Maximized Wristguards */			
(34276, 50668, 0, 1, 1, 1), /* (277) Greatcloak of the Turned Champion */			
(34276, 50672, 0, 1, 1, 1), /* (277) Bloodvenom Blade */			
(34276, 50671, 0, 1, 1, 1), /* (277) Belt of the Blood Nova */

/* -[ T10 264 ]- */
(34278, 52025, 0, 1, 1, 1), /* (80) Vanquisher's Mark of Sanctification			 */
(34278, 52027, 0, 1, 1, 1), /* (80) Conqueror's Mark of Sanctification			 */
(34278, 52026, 0, 1, 1, 1), /* (80) Protector's Mark of Sanctification */

#T10 277
(34279, 52028, 0, 1, 1, 1), /* (80) Vanquisher's Mark of Sanctification			 */
(34279, 52029, 0, 1, 1, 1), /* (80) Protector's Mark of Sanctification			 */
(34279, 52030, 0, 1, 1, 1); /* (80) Conqueror's Mark of Sanctification			 */


/*
 * [37126] Sister Svalna  (10)
 */
UPDATE `creature_template` SET `LootID`= 37126 WHERE `entry` = 37126;
UPDATE `creature_template` SET `LootID`= 37126 WHERE `entry` = 38258;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37126);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
(37126, 49426, 100, 0, 2, 2); /* Emblem des Frostes */
		

/*
 * [36626] Festergut  (59)
 */
UPDATE `creature_template` SET `LootID`= 36626 WHERE `entry` = 36626;
UPDATE `creature_template` SET `LootID`= 37504 WHERE `entry` = 37504;
UPDATE `creature_template` SET `LootID`= 37505 WHERE `entry` = 37505;
UPDATE `creature_template` SET `LootID`= 37506 WHERE `entry` = 37506;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36626, 37504, 37505, 37506);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36626, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36626, 49908, 5, 0, 1, 1), /* Saronit */
(36626, 36626, 100, 0, -36626, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(37504, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37504, 49908, 20, 0, 1, 1), /* Saronit */
(37504, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(37504, 37504, 100, 0, -37504, 3), /* Lootreferenz Normal 25 */
(37504, 50226, -100, 0, 1, 1), /* (Quest) Festergut's Acidic Blood */
/* -[ Heroic 10 ]- */
(37505, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37505, 49908, 20, 0, 1, 1), /* Saronit */
(37505, 37505, 100, 0, -37505, 2), /* Lootreferenz Heroic 10 */
/* -[ Heroic 25 ]- */
(37506, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37506, 49908, 20, 0, 1, 1), /* Saronit */
(37506, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(37506, 37506, 100, 0, -37506, 3), /* Lootreferenz Heroic 25 */
(37506, 50226, -100, 0, 1, 1); /* (Quest) Festergut's Acidic Blood */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36626, 37504, 37505, 37506);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36626, 50966, 0, 1, 1, 1), /* (251) Abracadaver */			
(36626, 50810, 0, 1, 1, 1), /* (251) Gutbuster */			
(36626, 50852, 0, 1, 1, 1), /* (251) Precious' Putrid Collar */			
(36626, 50990, 0, 1, 1, 1), /* (251) Kilt of Untreated Wounds */			
(36626, 50858, 0, 1, 1, 1), /* (251) Plague-Soaked Leather Leggings */			
(36626, 50812, 0, 1, 1, 1), /* (251) Taldron's Long Neglected Boots */			
(36626, 50985, 0, 1, 1, 1), /* (251) Wrists of Septic Shock */			
(36626, 50986, 0, 1, 1, 1), /* (251) Signet of Putrefaction */			
(36626, 50811, 0, 1, 1, 1), /* (251) Festering Fingerguards */			
(36626, 50988, 0, 1, 1, 1), /* (251) Bloodstained Surgeon's Shoulderguards */			
(36626, 50967, 0, 1, 1, 1), /* (251) Festergut's Gaseous Gloves */			
(36626, 50859, 0, 1, 1, 1), /* (251) Cloak of Many Skins */
/* -[ Referenz Normal 25 ]- */			
(37504, 50040, 0, 1, 1, 1), /* (264) Distant Land */			
(37504, 50062, 0, 1, 1, 1), /* (264) Plague Scientist's Boots */			
(37504, 50056, 0, 1, 1, 1), /* (264) Plaguebringer's Stained Pants */			
(37504, 50413, 0, 1, 1, 1), /* (264) Nerub'ar Stalker's Cord */			
(37504, 50042, 0, 1, 1, 1), /* (264) Gangrenous Leggings */			
(37504, 50063, 0, 1, 1, 1), /* (264) Lingering Illness */			
(37504, 50038, 0, 1, 1, 1), /* (264) Carapace of Forgotten Kings */			
(37504, 50060, 0, 1, 1, 1), /* (264) Faceplate of the Forgotten */			
(37504, 50061, 0, 1, 1, 1), /* (264) Holiday's Grace */			
(37504, 50035, 0, 1, 1, 1), /* (264) Black Bruise */			
(37504, 50064, 0, 1, 1, 1), /* (264) Unclean Surgical Gloves */			
(37504, 50414, 0, 1, 1, 1), /* (264) Might of Blight */			
(37504, 50037, 0, 1, 1, 1), /* (264) Fleshrending Gauntlets */			
(37504, 50041, 0, 1, 1, 1), /* (264) Leather of Stitched Scourge Parts */			
(37504, 50059, 0, 1, 1, 1), /* (264) Horrific Flesh Epaulets */			
(37504, 50036, 0, 1, 1, 1), /* (264) Belt of Broken Bones */
/* -[ Referenz Heroic 10 ]- */			
(37505, 51887, 0, 1, 1, 1), /* (264) Abracadaver */			
(37505, 51893, 0, 1, 1, 1), /* (264) Gutbuster */			
(37505, 51882, 0, 1, 1, 1), /* (264) Kilt of Untreated Wounds */			
(37505, 51890, 0, 1, 1, 1), /* (264) Precious' Putrid Collar */			
(37505, 51889, 0, 1, 1, 1), /* (264) Plague-Soaked Leather Leggings */			
(37505, 51891, 0, 1, 1, 1), /* (264) Taldron's Long Neglected Boots */			
(37505, 51892, 0, 1, 1, 1), /* (264) Festering Fingerguards */			
(37505, 51885, 0, 1, 1, 1), /* (264) Wrists of Septic Shock */			
(37505, 51883, 0, 1, 1, 1), /* (264) Bloodstained Surgeon's Shoulderguards */			
(37505, 51884, 0, 1, 1, 1), /* (264) Signet of Putrefaction */			
(37505, 51886, 0, 1, 1, 1), /* (264) Festergut's Gaseous Gloves */			
(37505, 51888, 0, 1, 1, 1), /* (264) Cloak of Many Skins */
/* -[ Referenz Heroic 25 ]- */			
(37506, 50695, 0, 1, 1, 1), /* (277) Distant Land */			
(37506, 50699, 0, 1, 1, 1), /* (277) Plague Scientist's Boots */			
(37506, 50697, 0, 1, 1, 1), /* (277) Gangrenous Leggings */			
(37506, 50702, 0, 1, 1, 1), /* (277) Lingering Illness */			
(37506, 50700, 0, 1, 1, 1), /* (277) Holiday's Grace */			
(37506, 50694, 0, 1, 1, 1), /* (277) Plaguebringer's Stained Pants */			
(37506, 50693, 0, 1, 1, 1), /* (277) Might of Blight */			
(37506, 50689, 0, 1, 1, 1), /* (277) Carapace of Forgotten Kings */			
(37506, 50692, 0, 1, 1, 1), /* (277) Black Bruise */			
(37506, 50690, 0, 1, 1, 1), /* (277) Fleshrending Gauntlets */			
(37506, 50703, 0, 1, 1, 1), /* (277) Unclean Surgical Gloves */			
(37506, 50701, 0, 1, 1, 1), /* (277) Faceplate of the Forgotten */			
(37506, 50696, 0, 1, 1, 1), /* (277) Leather of Stitched Scourge Parts */			
(37506, 50688, 0, 1, 1, 1), /* (277) Nerub'ar Stalker's Cord */			
(37506, 50691, 0, 1, 1, 1), /* (277) Belt of Broken Bones */			
(37506, 50698, 0, 1, 1, 1); /* (277) Horrific Flesh Epaulets */



/*
 * [36627] Rotface  (57)
 */
UPDATE `creature_template` SET `LootID`= 36627 WHERE `entry` = 36627;
UPDATE `creature_template` SET `LootID`= 38390 WHERE `entry` = 38390;
UPDATE `creature_template` SET `LootID`= 38549 WHERE `entry` = 38549;
UPDATE `creature_template` SET `LootID`= 38550 WHERE `entry` = 38550;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36627, 38390, 38549, 38550);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36627, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36627, 49908, 5, 0, 1, 1), /* Saronit */
(36627, 36627, 100, 0, -36627, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(38390, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38390, 49908, 20, 0, 1, 1), /* Saronit */
(38390, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38390, 38390, 100, 0, -38390, 3), /* Lootreferenz Normal 25 */
(38390, 50231, -100, 0, 1, 1), /* (Quest) Rotface's Acidic Blood */
/* -[ Heroic 10 ]- */
(38549, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38549, 49908, 20, 0, 1, 1), /* Saronit */
(38549, 38549, 100, 0, -38549, 2), /* Lootreferenz Heroic 10 */
/* -[ Heroic 25 ]- */
(38550, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38550, 49908, 20, 0, 1, 1), /* Saronit */
(38550, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38550, 38550, 100, 0, -38550, 3), /* Lootreferenz Heroic 25 */
(38550, 50231, -100, 0, 1, 1); /* (Quest) Rotface's Acidic Blood */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36627, 38390, 38549, 38550);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36627, 51004, 0, 1, 1, 1), /* (251) Lockjaw */			
(36627, 50998, 0, 1, 1, 1), /* (251) Shaft of Glacial Ice */			
(36627, 51007, 0, 1, 1, 1), /* (251) Ether-Soaked Bracers */			
(36627, 51003, 0, 1, 1, 1), /* (251) Abomination Knuckles */			
(36627, 51000, 0, 1, 1, 1), /* (251) Flesh-Shaper's Gurney Strap */			
(36627, 50999, 0, 1, 1, 1), /* (251) Gluth's Fetching Knife */			
(36627, 51001, 0, 1, 1, 1), /* (251) Rotface's Rupturing Ring */			
(36627, 51002, 0, 1, 1, 1), /* (251) Taldron's Short-Sighted Helm */			
(36627, 51005, 0, 1, 1, 1), /* (251) Gloves of Broken Fingers */			
(36627, 51006, 0, 1, 1, 1), /* (251) Shuffling Shoes */			
(36627, 51009, 0, 1, 1, 1), /* (251) Chestguard of the Failed Experiment */			
(36627, 51008, 0, 1, 1, 1), /* (251) Choker of Filthy Diamonds */
/* -[ Referenz Normal 25 ]- */			
(38390, 50028, 0, 1, 1, 1), /* (264) Trauma */			
(38390, 50025, 0, 1, 1, 1), /* (264) Seal of Many Mouths */			
(38390, 50353, 0, 1, 1, 1), /* (264) Dislodged Foreign Object */			
(38390, 50019, 0, 1, 1, 1), /* (264) Winding Sheet */			
(38390, 50023, 0, 1, 1, 1), /* (264) Bile-Encrusted Medallion */			
(38390, 50021, 0, 1, 1, 1), /* (264) Aldriana's Gloves of Secrecy */			
(38390, 50020, 0, 1, 1, 1), /* (264) Raging Behemoth's Shoulderplates */			
(38390, 50033, 0, 1, 1, 1), /* (264) Corpse-Impaling Spike */			
(38390, 50022, 0, 1, 1, 1), /* (264) Dual-Bladed Pauldrons */			
(38390, 50016, 0, 1, 1, 1), /* (264) Rib Spreader */			
(38390, 50027, 0, 1, 1, 1), /* (264) Rot-Resistant Breastplate */			
(38390, 50026, 0, 1, 1, 1), /* (264) Helm of the Elder Moon */			
(38390, 50024, 0, 1, 1, 1), /* (264) Blightborne Warplate */			
(38390, 50030, 0, 1, 1, 1), /* (264) Bloodsunder's Bracers */			
(38390, 50032, 0, 1, 1, 1), /* (264) Death Surgeon's Sleeves */
/* -[ Referenz Heroic 10 ]- */			
(38549, 51875, 0, 1, 1, 1), /* (264) Lockjaw */			
(38549, 51881, 0, 1, 1, 1), /* (264) Shaft of Glacial Ice */			
(38549, 51872, 0, 1, 1, 1), /* (264) Ether-Soaked Bracers */			
(38549, 51878, 0, 1, 1, 1), /* (264) Rotface's Rupturing Ring */			
(38549, 51877, 0, 1, 1, 1), /* (264) Taldron's Short-Sighted Helm */			
(38549, 51880, 0, 1, 1, 1), /* (264) Gluth's Fetching Knife */			
(38549, 51876, 0, 1, 1, 1), /* (264) Abomination Knuckles */			
(38549, 51871, 0, 1, 1, 1), /* (264) Choker of Filthy Diamonds */			
(38549, 51874, 0, 1, 1, 1), /* (264) Gloves of Broken Fingers */			
(38549, 51879, 0, 1, 1, 1), /* (264) Flesh-Shaper's Gurney Strap */			
(38549, 51873, 0, 1, 1, 1), /* (264) Shuffling Shoes */			
(38549, 51870, 0, 1, 1, 1), /* (264) Chestguard of the Failed Experiment */
/* -[ Referenz Heroic 25 ]- */			
(38550, 50678, 0, 1, 1, 1), /* (277) Seal of Many Mouths */			
(38550, 50685, 0, 1, 1, 1), /* (277) Trauma */			
(38550, 50348, 0, 1, 1, 1), /* (277) Dislodged Foreign Object */			
(38550, 50682, 0, 1, 1, 1), /* (277) Bile-Encrusted Medallion */			
(38550, 50684, 0, 1, 1, 1), /* (277) Corpse-Impaling Spike */			
(38550, 50673, 0, 1, 1, 1), /* (277) Dual-Bladed Pauldrons */			
(38550, 50676, 0, 1, 1, 1), /* (277) Rib Spreader */			
(38550, 50675, 0, 1, 1, 1), /* (277) Aldriana's Gloves of Secrecy */			
(38550, 50674, 0, 1, 1, 1), /* (277) Raging Behemoth's Shoulderplates */			
(38550, 50677, 0, 1, 1, 1), /* (277) Winding Sheet */			
(38550, 50680, 0, 1, 1, 1), /* (277) Rot-Resistant Breastplate */			
(38550, 50681, 0, 1, 1, 1), /* (277) Blightborne Warplate */			
(38550, 50679, 0, 1, 1, 1), /* (277) Helm of the Elder Moon */			
(38550, 50686, 0, 1, 1, 1), /* (277) Death Surgeon's Sleeves */			
(38550, 50687, 0, 1, 1, 1); /* (277) Bloodsunder's Bracers */




/*
 * [36678] Professor Putricide  (42)
 */
UPDATE `creature_template` SET `LootID`= 36678 WHERE `entry` = 36678;
UPDATE `creature_template` SET `LootID`= 38431 WHERE `entry` = 38431;
UPDATE `creature_template` SET `LootID`= 38585 WHERE `entry` = 38585;
UPDATE `creature_template` SET `LootID`= 38586 WHERE `entry` = 38586;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36678, 38431, 38585, 38586);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36678, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36678, 49908, 5, 0, 1, 1), /* Saronit */
(36678, 36678, 100, 0, -36678, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(38431, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38431, 49908, 20, 0, 1, 1), /* Saronit */
(38431, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38431, 38431, 100, 0, -38431, 1), /* Lootreferenz Normal 25 */
(38431, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 10 ]- */
(38585, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38585, 49908, 20, 0, 1, 1), /* Saronit */
(38585, 38585, 100, 0, -38585, 1), /* Lootreferenz Heroic 10 */
(38585, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 25 ]- */
(38586, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38586, 49908, 20, 0, 1, 1), /* Saronit */
(38586, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38586, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
(38586, 34279, 100, 0, -34279, 1), /* Lootreferenz T10.277 */
(38586, 38586, 100, 0, -38586, 1); /* Lootreferenz Heroic 25 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36678, 38431, 38585, 38586);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36678, 51016, 0, 1, 1, 1), /* (251) Pendant of Split Veins */			
(36678, 51013, 0, 1, 1, 1), /* (251) Discarded Bag of Entrails */			
(36678, 50341, 0, 1, 1, 1), /* (251) Unidentifiable Organ */			
(36678, 51020, 0, 1, 1, 1), /* (251) Shoulders of Ruinous Senility */			
(36678, 51017, 0, 1, 1, 1), /* (251) Cauterized Cord */			
(36678, 51015, 0, 1, 1, 1), /* (251) Shoulderpads of the Morbid Ritual */			
(36678, 51012, 0, 1, 1, 1), /* (251) Infected Choker */			
(36678, 51010, 0, 1, 1, 1), /* (251) The Facelifter */			
(36678, 51014, 0, 1, 1, 1), /* (251) Scalpel-Sharpening Shoulderguards */			
(36678, 51011, 0, 1, 1, 1), /* (251) Flesh-Carving Scalpel */			
(36678, 51019, 0, 1, 1, 1), /* (251) Rippling Flesh Kilt */			
(36678, 51018, 0, 1, 1, 1), /* (251) Chestplate of Septic Stitches */
/* -[ Referenz Normal 25 ]- */			
(38431, 50351, 0, 1, 1, 1), /* (264) Tiny Abomination in a Jar */			
(38431, 50179, 0, 1, 1, 1), /* (264) Last Word */			
(38431, 50068, 0, 1, 1, 1), /* (264) Rigormortis */			
(38431, 50067, 0, 1, 1, 1), /* (264) Astrylian's Sutured Cinch */			
(38431, 50069, 0, 1, 1, 1), /* (264) Professor's Bloodied Smock */
/* -[ Referenz Heroic 10 ]- */			
(38585, 51863, 0, 1, 1, 1), /* (264) Pendant of Split Veins */			
(38585, 51859, 0, 1, 1, 1), /* (264) Shoulders of Ruinous Senility */			
(38585, 51868, 0, 1, 1, 1), /* (264) Flesh-Carving Scalpel */			
(38585, 51862, 0, 1, 1, 1), /* (264) Cauterized Cord */			
(38585, 51869, 0, 1, 1, 1), /* (264) The Facelifter */			
(38585, 50344, 0, 1, 1, 1), /* (264) Unidentifiable Organ */			
(38585, 51867, 0, 1, 1, 1), /* (264) Infected Choker */			
(38585, 51866, 0, 1, 1, 1), /* (264) Discarded Bag of Entrails */			
(38585, 51865, 0, 1, 1, 1), /* (264) Scalpel-Sharpening Shoulderguards */			
(38585, 51864, 0, 1, 1, 1), /* (264) Shoulderpads of the Morbid Ritual */			
(38585, 51860, 0, 1, 1, 1), /* (264) Rippling Flesh Kilt */			
(38585, 51861, 0, 1, 1, 1), /* (264) Chestplate of Septic Stitches */
/* -[ Referenz Heroic 25 ]- */			
(38586, 50706, 0, 1, 1, 1), /* (277) Tiny Abomination in a Jar */			
(38586, 50704, 0, 1, 1, 1), /* (277) Rigormortis */			
(38586, 50708, 0, 1, 1, 1), /* (277) Last Word */			
(38586, 50707, 0, 1, 1, 1), /* (277) Astrylian's Sutured Cinch */			
(38586, 50705, 0, 1, 1, 1); /* (277) Professor's Bloodied Smock */



/*
 * [37970] Prince Valanar  (56)
 */
UPDATE `creature_template` SET `LootID`= 37970 WHERE `entry` = 37970;
UPDATE `creature_template` SET `LootID`= 38401 WHERE `entry` = 38401;
UPDATE `creature_template` SET `LootID`= 38784 WHERE `entry` = 38784;
UPDATE `creature_template` SET `LootID`= 38785 WHERE `entry` = 38785;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37970, 38401, 38784, 38785);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(37970, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37970, 49908, 5, 0, 1, 1), /* Saronit */
(37970, 37970, 100, 0, -37970, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(38401, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38401, 49908, 20, 0, 1, 1), /* Saronit */
(38401, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38401, 38401, 100, 0, -38401, 3), /* Lootreferenz Normal 25 */
/* -[ Heroic 10 ]- */
(38784, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38784, 49908, 20, 0, 1, 1), /* Saronit */
(38784, 38784, 100, 0, -38784, 2), /* Lootreferenz Heroic 10 */
/* -[ Heroic 25 ]- */
(38785, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38785, 49908, 20, 0, 1, 1), /* Saronit */
(38785, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38785, 38785, 100, 0, -38785, 3); /* Lootreferenz Heroic 25 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(37970, 38401, 38784, 38785);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(37970, 51381, 0, 1, 1, 1), /* (251) Cerise Coiled Ring */			
(37970, 51326, 0, 1, 1, 1), /* (251) Wand of Ruby Claret */			
(37970, 51022, 0, 1, 1, 1), /* (251) Hersir's Greatspear */			
(37970, 51021, 0, 1, 1, 1), /* (251) Soulbreaker */			
(37970, 51325, 0, 1, 1, 1), /* (251) Blood-Drinker's Girdle */			
(37970, 51024, 0, 1, 1, 1), /* (251) Thrice Fanged Signet */			
(37970, 51025, 0, 1, 1, 1), /* (251) Battle-Maiden's Legguards */			
(37970, 51023, 0, 1, 1, 1), /* (251) Taldaram's Soft Slippers */			
(37970, 51383, 0, 1, 1, 1), /* (251) Spaulders of the Blood Princes */			
(37970, 51379, 0, 1, 1, 1), /* (251) Bloodsoul Raiment */			
(37970, 51380, 0, 1, 1, 1), /* (251) Pale Corpse Boots */			
(37970, 51382, 0, 1, 1, 1), /* (251) Heartsick Mender's Cape */
/* -[ Referenz Normal 25 ]- */			
(38401, 50173, 0, 1, 1, 1), /* (264) Shadow Silk Spindle */			
(38401, 50170, 0, 1, 1, 1), /* (264) Valanar's Other Signet Ring */			
(38401, 49919, 0, 1, 1, 1), /* (264) Cryptmaker */			
(38401, 50071, 0, 1, 1, 1), /* (264) Treads of the Wasteland */			
(38401, 50074, 0, 1, 1, 1), /* (264) Royal Crimson Cloak */			
(38401, 50075, 0, 1, 1, 1), /* (264) Taldaram's Plated Fists */			
(38401, 50175, 0, 1, 1, 1), /* (264) Crypt Keeper's Bracers */			
(38401, 50184, 0, 1, 1, 1), /* (264) Keleseth's Seducer */			
(38401, 50073, 0, 1, 1, 1), /* (264) Geistlord's Punishment Sack */			
(38401, 50072, 0, 1, 1, 1), /* (264) Landsoul's Horned Greathelm */			
(38401, 50176, 0, 1, 1, 1), /* (264) San'layn Ritualist Gloves */			
(38401, 50172, 0, 1, 1, 1), /* (264) Sanguine Silk Robes */			
(38401, 50177, 0, 1, 1, 1), /* (264) Mail of Crimson Coins */			
(38401, 50174, 0, 1, 1, 1), /* (264) Incarnadine Band of Mending */			
(38401, 50171, 0, 1, 1, 1), /* (264) Shoulders of Frost-Tipped Thorns */
/* -[ Referenz Heroic 10 ]- */			
(38784, 51849, 0, 1, 1, 1), /* (264) Cerise Coiled Ring */			
(38784, 51852, 0, 1, 1, 1), /* (264) Wand of Ruby Claret */			
(38784, 51857, 0, 1, 1, 1), /* (264) Hersir's Greatspear */			
(38784, 51856, 0, 1, 1, 1), /* (264) Taldaram's Soft Slippers */			
(38784, 51848, 0, 1, 1, 1), /* (264) Heartsick Mender's Cape */			
(38784, 51855, 0, 1, 1, 1), /* (264) Thrice Fanged Signet */			
(38784, 51858, 0, 1, 1, 1), /* (264) Soulbreaker */			
(38784, 51854, 0, 1, 1, 1), /* (264) Battle-Maiden's Legguards */			
(38784, 51853, 0, 1, 1, 1), /* (264) Blood-Drinker's Girdle */			
(38784, 51847, 0, 1, 1, 1), /* (264) Spaulders of the Blood Princes */			
(38784, 51851, 0, 1, 1, 1), /* (264) Bloodsoul Raiment */			
(38784, 51850, 0, 1, 1, 1), /* (264) Pale Corpse Boots */
/* -[ Referenz Heroic 25 ]- */			
(38785, 50719, 0, 1, 1, 1), /* (277) Shadow Silk Spindle */			
(38785, 50714, 0, 1, 1, 1), /* (277) Valanar's Other Signet Ring */			
(38785, 50603, 0, 1, 1, 1), /* (277) Cryptmaker */			
(38785, 50715, 0, 1, 1, 1), /* (277) Shoulders of Frost-Tipped Thorns */			
(38785, 50712, 0, 1, 1, 1), /* (277) Landsoul's Horned Greathelm */			
(38785, 50721, 0, 1, 1, 1), /* (277) Crypt Keeper's Bracers */			
(38785, 50716, 0, 1, 1, 1), /* (277) Taldaram's Plated Fists */			
(38785, 50713, 0, 1, 1, 1), /* (277) Geistlord's Punishment Sack */			
(38785, 50710, 0, 1, 1, 1), /* (277) Keleseth's Seducer */			
(38785, 50717, 0, 1, 1, 1), /* (277) Sanguine Silk Robes */			
(38785, 50723, 0, 1, 1, 1), /* (277) Mail of Crimson Coins */			
(38785, 50718, 0, 1, 1, 1), /* (277) Royal Crimson Cloak */			
(38785, 50711, 0, 1, 1, 1), /* (277) Treads of the Wasteland */			
(38785, 50720, 0, 1, 1, 1), /* (277) Incarnadine Band of Mending */			
(38785, 50722, 0, 1, 1, 1); /* (277) San'layn Ritualist Gloves */



/*
 * [37955] Blood-Queen Lana'thel  (44)
 */
UPDATE `creature_template` SET `LootID`= 37955 WHERE `entry` = 37955;
UPDATE `creature_template` SET `LootID`= 38434 WHERE `entry` = 38434;
UPDATE `creature_template` SET `LootID`= 38435 WHERE `entry` = 38435;
UPDATE `creature_template` SET `LootID`= 38436 WHERE `entry` = 38436;
DELETE FROM `creature_loot_template` WHERE `entry` IN(37955, 38434, 38435, 38436);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(37955, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(37955, 49908, 5, 0, 1, 1), /* Saronit */
(37955, 37955, 100, 0, -37955, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(38434, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38434, 49908, 20, 0, 1, 1), /* Saronit */
(38434, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38434, 38434, 100, 0, -38434, 1), /* Lootreferenz Normal 25 */
(38434, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 10 ]- */
(38435, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38435, 49908, 20, 0, 1, 1), /* Saronit */
(38435, 38435, 100, 0, -38435, 1), /* Lootreferenz Heroic 10 */
(38435, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 25 ]- */
(38436, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38436, 49908, 20, 0, 1, 1), /* Saronit */
(38436, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38436, 38436, 100, 0, -38436, 1), /* Lootreferenz Heroic 25 */
(38436, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
(38436, 34279, 100, 0, -34279, 1); /* Lootreferenz T10.277 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(37955, 38434, 38435, 38436);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(37955, 51554, 0, 1, 1, 1), /* (251) Cowl of Malefic Repose */			
(37955, 51553, 0, 1, 1, 1), /* (251) Lana'thel's Bloody Nail */			
(37955, 51385, 0, 1, 1, 1), /* (251) Stakethrower */			
(37955, 51387, 0, 1, 1, 1), /* (251) Seal of the Twilight Queen */			
(37955, 51386, 0, 1, 1, 1), /* (251) Throatrender Handguards */			
(37955, 51550, 0, 1, 1, 1), /* (251) Ivory-Inlaid Leggings */			
(37955, 51384, 0, 1, 1, 1), /* (251) Bloodsipper */			
(37955, 51555, 0, 1, 1, 1), /* (251) Tightening Waistband */			
(37955, 51548, 0, 1, 1, 1), /* (251) Collar of Haughty Disdain */			
(37955, 51556, 0, 1, 1, 1), /* (251) Veincrusher Gauntlets */			
(37955, 51552, 0, 1, 1, 1), /* (251) Shoulderpads of the Searing Kiss */			
(37955, 51551, 0, 1, 1, 1), /* (251) Chestguard of Siphoned Elements */
/* -[ Referenz Normal 25 ]- */			
(38434, 50178, 0, 1, 1, 1), /* (264) Bloodfall */			
(38434, 50181, 0, 1, 1, 1), /* (264) Dying Light */			
(38434, 50182, 0, 1, 1, 1), /* (264) Blood Queen's Crimson Choker */			
(38434, 50354, 0, 1, 1, 1), /* (264) Bauble of True Blood */			
(38434, 50180, 0, 1, 1, 1), /* (264) Lana'thel's Chain of Flagellation */			
(38434, 50065, 0, 1, 1, 1), /* (264) Icecrown Glacial Wall */
/* -[ Referenz Heroic 10 ]- */			
(38435, 51837, 0, 1, 1, 1), /* (264) Cowl of Malefic Repose */			
(38435, 51843, 0, 1, 1, 1), /* (264) Seal of the Twilight Queen */			
(38435, 51845, 0, 1, 1, 1), /* (264) Stakethrower */			
(38435, 51838, 0, 1, 1, 1), /* (264) Lana'thel's Bloody Nail */			
(38435, 51836, 0, 1, 1, 1), /* (264) Tightening Waistband */			
(38435, 51839, 0, 1, 1, 1), /* (264) Shoulderpads of the Searing Kiss */			
(38435, 51841, 0, 1, 1, 1), /* (264) Ivory-Inlaid Leggings */			
(38435, 51842, 0, 1, 1, 1), /* (264) Collar of Haughty Disdain */			
(38435, 51844, 0, 1, 1, 1), /* (264) Throatrender Handguards */			
(38435, 51835, 0, 1, 1, 1), /* (264) Veincrusher Gauntlets */			
(38435, 51846, 0, 1, 1, 1), /* (264) Bloodsipper */			
(38435, 51840, 0, 1, 1, 1), /* (264) Chestguard of Siphoned Elements */
/* -[ Referenz Heroic 25 ]- */			
(38436, 50727, 0, 1, 1, 1), /* (277) Bloodfall */			
(38436, 50724, 0, 1, 1, 1), /* (277) Blood Queen's Crimson Choker */			
(38436, 50725, 0, 1, 1, 1), /* (277) Dying Light */			
(38436, 50726, 0, 1, 1, 1), /* (277) Bauble of True Blood */			
(38436, 50729, 0, 1, 1, 1), /* (277) Icecrown Glacial Wall */			
(38436, 50728, 0, 1, 1, 1); /* (277) Lana'thel's Chain of Flagellation */



/*
 * [201959] Cache of the Dreamwalker - Object - World of Warcraft (54)
 */
UPDATE `gameobject_template` SET `data1`= 28052 WHERE `entry` = 201959; /* 10 */
UPDATE `gameobject_template` SET `data1`= 28082 WHERE `entry` = 202339; /* 25 */
UPDATE `gameobject_template` SET `data1`= 28064 WHERE `entry` = 202338; /* 10 H */
UPDATE `gameobject_template` SET `data1`= 28096 WHERE `entry` = 202340; /* 25 H */
DELETE FROM `gameobject_loot_template` WHERE `entry` IN(28052, 28082, 28064, 28096);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(28052, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28052, 49908, 5, 0, 1, 1), /* Saronit */
(28052, 28052, 100, 0, -34241, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(28082, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28082, 49908, 20, 0, 1, 1), /* Saronit */
/*(28082, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(28082, 28082, 100, 0, -34253, 3), /* Lootreferenz Normal 25 */
/* -[ Heroic 10 ]- */
(28064, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28064, 49908, 20, 0, 1, 1), /* Saronit */
(28064, 28064, 100, 0, -34265, 2), /* Lootreferenz Heroic 10 */
/* -[ Heroic 25 ]- */
(28096, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(28096, 49908, 20, 0, 1, 1), /* Saronit */
/*(28096, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(28096, 28096, 100, 0, -34277, 3); /* Lootreferenz Heroic 25 */

		
DELETE FROM `reference_loot_template` WHERE `entry` IN(34241, 34253, 34265, 34277);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(34241, 51562, 0, 1, 1, 1), /* (251) Oxheart */			
(34241, 51584, 0, 1, 1, 1), /* (251) Lich Wrappings */			
(34241, 51582, 0, 1, 1, 1), /* (251) Sister Svalna's Aether Staff */			
(34241, 51565, 0, 1, 1, 1), /* (251) Skinned Whelp Shoulders */			
(34241, 51583, 0, 1, 1, 1), /* (251) Stormbringer Gloves */			
(34241, 51566, 0, 1, 1, 1), /* (251) Legguards of the Twisted Dream */			
(34241, 51777, 0, 1, 1, 1), /* (251) Leggings of the Refracted Mind */			
(34241, 51563, 0, 1, 1, 1), /* (251) Taiga Bindings */			
(34241, 51561, 0, 1, 1, 1), /* (251) Dreamhunter's Carbine */			
(34241, 51586, 0, 1, 1, 1), /* (251) Emerald Saint's Spaulders */			
(34241, 51585, 0, 1, 1, 1), /* (251) Sister Svalna's Spangenhelm */			
(34241, 51564, 0, 1, 1, 1), /* (251) Ironrope Belt of Ymirjar */
/* -[ Referenz Normal 25 ]- */			
(34253, 50205, 0, 1, 1, 1), /* (264) Frostbinder's Shredded Cape */			
(34253, 50195, 0, 1, 1, 1), /* (264) Noose of Malachite */			
(34253, 50192, 0, 1, 1, 1), /* (264) Scourge Reaver's Legplates */			
(34253, 50183, 0, 1, 1, 1), /* (264) Lungbreaker */			
(34253, 50202, 0, 1, 1, 1), /* (264) Snowstorm Helm */			
(34253, 50190, 0, 1, 1, 1), /* (264) Grinning Skull Greatboots */			
(34253, 50416, 0, 1, 1, 1), /* (264) Boots of the Funeral March */			
(34253, 50418, 0, 1, 1, 1), /* (264) Robe of the Waking Nightmare */			
(34253, 50186, 0, 1, 1, 1), /* (264) Frostbrood Sapphire Ring */			
(34253, 50472, 0, 1, 1, 1), /* (264) Nightmare Ender */			
(34253, 50188, 0, 1, 1, 1), /* (264) Anub'ar Stalker's Gloves */			
(34253, 50417, 0, 1, 1, 1), /* (264) Bracers of Eternal Dreaming */			
(34253, 50185, 0, 1, 1, 1), /* (264) Devium's Eternally Cold Ring */			
(34253, 50199, 0, 1, 1, 1), /* (264) Leggings of Dying Candles */
/* -[ Referenz Heroic 10 ]- */			
(34265, 51833, 0, 1, 1, 1), /* (264) Oxheart */			
(34265, 51828, 0, 1, 1, 1), /* (264) Sister Svalna's Aether Staff */			
(34265, 51826, 0, 1, 1, 1), /* (264) Lich Wrappings */			
(34265, 51832, 0, 1, 1, 1), /* (264) Taiga Bindings */			
(34265, 51827, 0, 1, 1, 1), /* (264) Stormbringer Gloves */			
(34265, 51829, 0, 1, 1, 1), /* (264) Legguards of the Twisted Dream */			
(34265, 51834, 0, 1, 1, 1), /* (264) Dreamhunter's Carbine */			
(34265, 51830, 0, 1, 1, 1), /* (264) Skinned Whelp Shoulders */			
(34265, 51823, 0, 1, 1, 1), /* (264) Leggings of the Refracted Mind */			
(34265, 51825, 0, 1, 1, 1), /* (264) Sister Svalna's Spangenhelm */			
(34265, 51824, 0, 1, 1, 1), /* (264) Emerald Saint's Spaulders */			
(34265, 51831, 0, 1, 1, 1), /* (264) Ironrope Belt of Ymirjar */
/* -[ Referenz Heroic 25 ]- */			
(34277, 50628, 0, 1, 1, 1), /* (277) Frostbinder's Shredded Cape */			
(34277, 50620, 0, 1, 1, 1), /* (277) Coldwraith Links */			
(34277, 50624, 0, 1, 1, 1), /* (277) Scourge Reaver's Legplates */			
(34277, 50621, 0, 1, 1, 1), /* (277) Lungbreaker */			
(34277, 50618, 0, 1, 1, 1), /* (277) Frostbrood Sapphire Ring */			
(34277, 50627, 0, 1, 1, 1), /* (277) Noose of Malachite */			
(34277, 50619, 0, 1, 1, 1), /* (277) Anub'ar Stalker's Gloves */			
(34277, 50626, 0, 1, 1, 1), /* (277) Snowstorm Helm */			
(34277, 50629, 0, 1, 1, 1), /* (277) Robe of the Waking Nightmare */			
(34277, 50630, 0, 1, 1, 1), /* (277) Bracers of Eternal Dreaming */			
(34277, 50631, 0, 1, 1, 1), /* (277) Nightmare Ender */			
(34277, 50623, 0, 1, 1, 1), /* (277) Leggings of Dying Candles */			
(34277, 50632, 0, 1, 1, 1), /* (277) Boots of the Funeral March */			
(34277, 50622, 0, 1, 1, 1); /* (277) Devium's Eternally Cold Ring */



/*
 * [36853] Sindragosa  (42)
 */
UPDATE `creature_template` SET `LootID`= 36853 WHERE `entry` = 36853;
UPDATE `creature_template` SET `LootID`= 38265 WHERE `entry` = 38265;
UPDATE `creature_template` SET `LootID`= 38266 WHERE `entry` = 38266;
UPDATE `creature_template` SET `LootID`= 38267 WHERE `entry` = 38267;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36853, 38265, 38266, 38267);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36853, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36853, 49908, 5, 0, 1, 1), /* Saronit */
(36853, 36853, 100, 0, -36853, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(38265, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38265, 49908, 20, 0, 1, 1), /* Saronit */
(38265, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38265, 38265, 100, 0, -38265, 1), /* Lootreferenz Normal 25 */
(38265, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 10 ]- */
(38266, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38266, 49908, 20, 0, 1, 1), /* Saronit */
(38266, 38266, 100, 0, -38266, 1), /* Lootreferenz Heroic 10 */
(38266, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 25 ]- */
(38267, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(38267, 49908, 20, 0, 1, 1), /* Saronit */
(38267, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(38267, 38267, 100, 0, -38267, 1), /* Lootreferenz Heroic 25 */
(38267, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
(38267, 34279, 100, 0, -34279, 1); /* Lootreferenz T10.277 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36853, 38265, 38266, 38267);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36853, 51788, 0, 1, 1, 1), /* (251) Bleak Coldarra Carver */			
(36853, 51779, 0, 1, 1, 1), /* (251) Rimetooth Pendant */			
(36853, 51790, 0, 1, 1, 1), /* (251) Robes of Azure Downfall */			
(36853, 51784, 0, 1, 1, 1), /* (251) Splintershard */			
(36853, 51791, 0, 1, 1, 1), /* (251) Lost Pavise of the Blue Flight */			
(36853, 51782, 0, 1, 1, 1), /* (251) Etched Dragonbone Girdle */			
(36853, 51786, 0, 1, 1, 1), /* (251) Legplates of Aetheric Strife */			
(36853, 51783, 0, 1, 1, 1), /* (251) Vambraces of the Frost Wyrm Queen */			
(36853, 51789, 0, 1, 1, 1), /* (251) Icicle Shapers */			
(36853, 51785, 0, 1, 1, 1), /* (251) Wyrmwing Treads */			
(36853, 51792, 0, 1, 1, 1), /* (251) Shoulderguards of Crystalline Bone */			
(36853, 51787, 0, 1, 1, 1), /* (251) Scourge Fanged Stompers */
/* -[ Referenz Normal 25 ]- */			
(38265, 50421, 0, 1, 1, 1), /* (264) Sindragosa's Cruel Claw */			
(38265, 50360, 0, 1, 1, 1), /* (264) Phylactery of the Nameless Lich */			
(38265, 50423, 0, 1, 1, 1), /* (264) Sundial of Eternal Dusk */			
(38265, 50361, 0, 1, 1, 1), /* (264) Sindragosa's Flawless Fang */			
(38265, 50424, 0, 1, 1, 1), /* (264) Memory of Malygos */
/* -[ Referenz Heroic 10 ]- */			
(38266, 51815, 0, 1, 1, 1), /* (264) Bleak Coldarra Carver */			
(38266, 51822, 0, 1, 1, 1), /* (264) Rimetooth Pendant */			
(38266, 51813, 0, 1, 1, 1), /* (264) Robes of Azure Downfall */			
(38266, 51818, 0, 1, 1, 1), /* (264) Wyrmwing Treads */			
(38266, 51820, 0, 1, 1, 1), /* (264) Vambraces of the Frost Wyrm Queen */			
(38266, 51816, 0, 1, 1, 1), /* (264) Scourge Fanged Stompers */			
(38266, 51812, 0, 1, 1, 1), /* (264) Lost Pavise of the Blue Flight */			
(38266, 51819, 0, 1, 1, 1), /* (264) Splintershard */			
(38266, 51811, 0, 1, 1, 1), /* (264) Shoulderguards of Crystalline Bone */			
(38266, 51821, 0, 1, 1, 1), /* (264) Etched Dragonbone Girdle */			
(38266, 51817, 0, 1, 1, 1), /* (264) Legplates of Aetheric Strife */			
(38266, 51814, 0, 1, 1, 1), /* (264) Icicle Shapers */
/* -[ Referenz Heroic 25 ]- */			
(38267, 50365, 0, 1, 1, 1), /* (277) Phylactery of the Nameless Lich */			
(38267, 50635, 0, 1, 1, 1), /* (277) Sundial of Eternal Dusk */			
(38267, 50633, 0, 1, 1, 1), /* (277) Sindragosa's Cruel Claw */			
(38267, 50636, 0, 1, 1, 1), /* (277) Memory of Malygos */			
(38267, 50364, 0, 1, 1, 1); /* (277) Sindragosa's Flawless Fang */



/*
 * [36597] The Lich King  (45)
 */
UPDATE `creature_template` SET `LootID`= 36597 WHERE `entry` = 36597;
UPDATE `creature_template` SET `LootID`= 39166 WHERE `entry` = 39166;
UPDATE `creature_template` SET `LootID`= 39167 WHERE `entry` = 39167;
UPDATE `creature_template` SET `LootID`= 39168 WHERE `entry` = 39168;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36597, 39166, 39167, 39168);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
/* -[ Normal 10 ]- */
(36597, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(36597, 49908, 5, 0, 1, 1), /* Saronit */
(36597, 36597, 100, 0, -36597, 2), /* Lootreferenz Normal 10 */
/* -[ Normal 25 ]- */
(39166, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(39166, 49908, 20, 0, 1, 1), /* Saronit */
(39166, 50274, -5, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(39166, 51315, -100, 0, 1, 1), /* Sealed Chest */
(39166, 39166, 100, 0, -39166, 1), /* Lootreferenz Normal 25 */
(39166, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 10 ]- */
(39167, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(39167, 49908, 20, 0, 1, 1), /* Saronit */
(39167, 39167, 100, 0, -39167, 1), /* Lootreferenz Heroic 10 */
(39167, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
/* -[ Heroic 25 ]- */
(39168, 49426, 100, 0, 2, 2), /* Emblem des Frostes */
(39168, 49908, 20, 0, 1, 1), /* Saronit */
(39168, 50274, -20, 0, 1, 1), /* Shadowfrost Shard (Quest) */
(39168, 51315, -100, 0, 1, 1), /* Sealed Chest */
(39168, 39168, 100, 0, -39168, 1), /* Lootreferenz Heroic 25 */
(39168, 34278, 100, 0, -34278, 2), /* Lootreferenz T10.264 */
(39168, 34279, 100, 0, -34279, 1); /* Lootreferenz T10.277 */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36597, 39166, 39167, 39168);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
/* -[ Referenz Normal 10 ]- */			
(36597, 51796, 0, 1, 1, 1), /* (258) Warmace of Menethil */			
(36597, 51803, 0, 1, 1, 1), /* (258) Tel'thas, Dagger of the Blood King */			
(36597, 51802, 0, 1, 1, 1), /* (258) Windrunner's Heartseeker */			
(36597, 51799, 0, 1, 1, 1), /* (258) Halion, Staff of Forgotten Love */			
(36597, 51797, 0, 1, 1, 1), /* (258) Tainted Twig of Nordrassil */			
(36597, 51798, 0, 1, 1, 1), /* (258) Valius, Gavel of the Lightbringer */			
(36597, 51800, 0, 1, 1, 1), /* (258) Stormfury, Black Blade of the Betrayer */			
(36597, 51801, 0, 1, 1, 1), /* (258) Pugius, Fist of Defiance */			
(36597, 51795, 0, 1, 1, 1), /* (258) Troggbane, Axe of the Frostborne King */
/* -[ Referenz Normal 25 ]- */			
(39166, 50070, 0, 1, 1, 1), /* (271) Glorenzelg, High-Blade of the Silver Hand */			
(39166, 50012, 0, 1, 1, 1), /* (271) Havoc's Call, Blade of Lordaeron Kings */			
(39166, 50429, 0, 1, 1, 1), /* (271) Archus, Greatstaff of Antonidas */			
(39166, 50428, 0, 1, 1, 1), /* (271) Royal Scepter of Terenas II */			
(39166, 49981, 0, 1, 1, 1), /* (271) Fal'inrush, Defender of Quel'thalas */			
(39166, 50425, 0, 1, 1, 1), /* (271) Oathbinder, Charge of the Ranger-General */			
(39166, 50426, 0, 1, 1, 1), /* (271) Heaven's Fall, Kryss of a Thousand Lies */			
(39166, 50427, 0, 1, 1, 1), /* (271) Bloodsurge, Kel'Thuzad's Blade of Agony */			
(39166, 49997, 0, 1, 1, 1), /* (271) Mithrios, Bronzebeard's Legacy */
/* -[ Referenz Heroic 10 ]- */			
(39167, 51946, 0, 1, 1, 1), /* (271) Warmace of Menethil */			
(39167, 51944, 0, 1, 1, 1), /* (271) Valius, Gavel of the Lightbringer */			
(39167, 51945, 0, 1, 1, 1), /* (271) Tainted Twig of Nordrassil */			
(39167, 51939, 0, 1, 1, 1), /* (271) Tel'thas, Dagger of the Blood King */			
(39167, 51943, 0, 1, 1, 1), /* (271) Halion, Staff of Forgotten Love */			
(39167, 51940, 0, 1, 1, 1), /* (271) Windrunner's Heartseeker */			
(39167, 51947, 0, 1, 1, 1), /* (271) Troggbane, Axe of the Frostborne King */			
(39167, 51941, 0, 1, 1, 1), /* (271) Pugius, Fist of Defiance */			
(39167, 51942, 0, 1, 1, 1), /* (271) Stormfury, Black Blade of the Betrayer */
/* -[ Referenz Heroic 25 ]- */			
(39168, 50730, 0, 1, 1, 1), /* (284) Glorenzelg, High-Blade of the Silver Hand */			
(39168, 50734, 0, 1, 1, 1), /* (284) Royal Scepter of Terenas II */			
(39168, 50731, 0, 1, 1, 1), /* (284) Archus, Greatstaff of Antonidas */			
(39168, 50737, 0, 1, 1, 1), /* (284) Havoc's Call, Blade of Lordaeron Kings */			
(39168, 50735, 0, 1, 1, 1), /* (284) Oathbinder, Charge of the Ranger-General */			
(39168, 50733, 0, 1, 1, 1), /* (284) Fal'inrush, Defender of Quel'thalas */			
(39168, 50732, 0, 1, 1, 1), /* (284) Bloodsurge, Kel'Thuzad's Blade of Agony */			
(39168, 50738, 0, 1, 1, 1), /* (284) Mithrios, Bronzebeard's Legacy */			
(39168, 50736, 0, 1, 1, 1); /* (284) Heaven's Fall, Kryss of a Thousand Lies */