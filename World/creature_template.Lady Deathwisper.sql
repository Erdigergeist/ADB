-- [36855] Lady Deathwhisper (55)
UPDATE `creature_template` SET `LootID`= 36855 WHERE `entry` = 36855;
UPDATE `creature_template` SET `LootID`= 3685501 WHERE `entry` = 3685501;
UPDATE `creature_template` SET `LootID`= 3685502 WHERE `entry` = 3685502;
UPDATE `creature_template` SET `LootID`= 3685503 WHERE `entry` = 3685503;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36855, 3685501, 3685502, 3685503);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(36855, 49908, 5, 0, 2, 2), --  Saronit
(36855, 3685501, 100, 0, -3685501, 3), --  Lootreferenz Normal 10
# Normal 25
(3685501, 49908, 20, 0, 2, 2), --  Saronit
(3685501, 50274, -5, 0, 1, 1), --  Shadowfrost Shard (Quest)
(3685501, 3685502, 100, 0, -3685502, 4), --  Lootreferenz Normal 25
# Heroic 10
(3685502, 49908, 20, 0, 2, 2), --  Saronit
(3685502, 3685503, 100, 0, -3685503, 3), --  Lootreferenz Heroic 10
# Heroic 25
(3685503, 49908, 20, 0, 2, 2), --  Saronit
(3685503, 50274, -10, 0, 1, 1), --  Shadowfrost Shard (Quest)
(3685503, 3685504, 100, 0, -3685504, 4); --  Lootreferenz Heroic 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3685501, 3685502, 3685503, 3685504);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(3685501, 50781, 0, 1, 1, 1), /* (251) Scourgelord's Baton */			
(3685501, 50776, 0, 1, 1, 1), /* (251) Njorndar Bone Bow */			
(3685501, 50782, 0, 1, 1, 1), /* (251) Sister's Handshrouds */			
(3685501, 50342, 0, 1, 1, 1), /* (251) Whispering Fanged Skull */			
(3685501, 50780, 0, 1, 1, 1), /* (251) Chestguard of the Frigid Noose */			
(3685501, 50779, 0, 1, 1, 1), /* (251) Deathspeaker Zealot's Helm */			
(3685501, 50778, 0, 1, 1, 1), /* (251) Soulthief's Braided Belt */			
(3685501, 50777, 0, 1, 1, 1), /* (251) Handgrips of Frost and Sleet */			
(3685501, 50783, 0, 1, 1, 1), /* (251) Boots of the Frozen Seed */			
(3685501, 50786, 0, 1, 1, 1), /* (251) Ghoul Commander's Cuirass */			
(3685501, 50785, 0, 1, 1, 1), /* (251) Bracers of Dark Blessings */			
(3685501, 50784, 0, 1, 1, 1), /* (251) Deathspeaker Disciple's Belt */
# Referenz Normal 25			
(3685502, 49992, 0, 1, 1, 1), /* (264) Nibelung */			
(3685502, 50034, 0, 1, 1, 1), /* (264) Zod's Repeating Longbow */			
(3685502, 49994, 0, 1, 1, 1), /* (264) The Lady's Brittle Bracers */			
(3685502, 49987, 0, 1, 1, 1), /* (264) Cultist's Bloodsoaked Spaulders */			
(3685502, 49989, 0, 1, 1, 1), /* (264) Ahn'kahar Onyx Neckguard */			
(3685502, 49982, 0, 1, 1, 1), /* (264) Heartpierce */			
(3685502, 49988, 0, 1, 1, 1), /* (264) Leggings of Northern Lights */			
(3685502, 49983, 0, 1, 1, 1), /* (264) Blood-Soaked Saronite Stompers */			
(3685502, 49990, 0, 1, 1, 1), /* (264) Ring of Maddening Whispers */			
(3685502, 49991, 0, 1, 1, 1), /* (264) Shoulders of Mercy Killing */			
(3685502, 49995, 0, 1, 1, 1), /* (264) Fallen Lord's Handguards */			
(3685502, 49993, 0, 1, 1, 1), /* (264) Necrophotic Greaves */			
(3685502, 49996, 0, 1, 1, 1), /* (264) Deathwhisper Raiment */			
(3685502, 49986, 0, 1, 1, 1), /* (264) Broken Ram Skull Helm */			
(3685502, 49985, 0, 1, 1, 1), /* (264) Juggernaut Band */			
(3685502, 50650, 0, 1, 1, 1), /* (277) Fallen Lord's Handguards */
# Referenz Heroic 10			
(3685503, 51922, 0, 1, 1, 1), /* (264) Scourgelord's Baton */			
(3685503, 51927, 0, 1, 1, 1), /* (264) Njorndar Bone Bow */			
(3685503, 51921, 0, 1, 1, 1), /* (264) Sister's Handshrouds */			
(3685503, 50343, 0, 1, 1, 1), /* (264) Whispering Fanged Skull */			
(3685503, 51926, 0, 1, 1, 1), /* (264) Handgrips of Frost and Sleet */			
(3685503, 51925, 0, 1, 1, 1), /* (264) Soulthief's Braided Belt */			
(3685503, 51923, 0, 1, 1, 1), /* (264) Chestguard of the Frigid Noose */			
(3685503, 51918, 0, 1, 1, 1), /* (264) Bracers of Dark Blessings */			
(3685503, 51920, 0, 1, 1, 1), /* (264) Boots of the Frozen Seed */			
(3685503, 51919, 0, 1, 1, 1), /* (264) Deathspeaker Disciple's Belt */			
(3685503, 51924, 0, 1, 1, 1), /* (264) Deathspeaker Zealot's Helm */			
(3685503, 51917, 0, 1, 1, 1), /* (264) Ghoul Commander's Cuirass */
# Referenz Heroic 25			
(3685504, 50648, 0, 1, 1, 1), /* (277) Nibelung */			
(3685504, 50638, 0, 1, 1, 1), /* (277) Zod's Repeating Longbow */			
(3685504, 50651, 0, 1, 1, 1), /* (277) The Lady's Brittle Bracers */			
(3685504, 50644, 0, 1, 1, 1), /* (277) Ring of Maddening Whispers */			
(3685504, 50647, 0, 1, 1, 1), /* (277) Ahn'kahar Onyx Neckguard */			
(3685504, 50646, 0, 1, 1, 1), /* (277) Cultist's Bloodsoaked Spaulders */			
(3685504, 50645, 0, 1, 1, 1), /* (277) Leggings of Northern Lights */			
(3685504, 50639, 0, 1, 1, 1), /* (277) Blood-Soaked Saronite Stompers */			
(3685504, 50643, 0, 1, 1, 1), /* (277) Shoulders of Mercy Killing */			
(3685504, 50641, 0, 1, 1, 1), /* (277) Heartpierce */			
(3685504, 50652, 0, 1, 1, 1), /* (277) Necrophotic Greaves */			
(3685504, 50642, 0, 1, 1, 1), /* (277) Juggernaut Band */			
(3685504, 50649, 0, 1, 1, 1), /* (277) Deathwhisper Raiment */			
(3685504, 50650, 0, 1, 1, 1), /* (277) Fallen Lord's Handguards */			
(3685504, 50640, 0, 1, 1, 1); /* (277) Broken Ram Skull Helm */