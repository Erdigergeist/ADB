-- [36494] Forgemaster Garfrost (15)
UPDATE `creature_template` SET `LootID`= 36494 WHERE `entry` = 36494;
UPDATE `creature_template` SET `LootID`= 37613 WHERE `entry` = 37613;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36494,37613, 3649401);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36494, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(36494, 3649401, 100, 0, -3649401, 2), --  Lootreferenz Normal
(36494, 49723, -100, 0, 1, 1), /* (1) The Forgemaster's Hammer */
# Heroic
(37613, 47241, 100, 0, 2, 2), --  Emblem des Triumphs
(37613, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(37613, 3649402, 100, 0, -3649402, 2), --  Lootreferenz Heroic
(37613, 49723, -100, 0, 1, 1); /* (1) The Forgemaster's Hammer */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3649401, 3649402);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal			
(3649401, 49801, 0, 1, 1, 1), /* (219) Unspeakable Secret */			
(3649401, 49802, 0, 1, 1, 1), /* (219) Garfrost's Two-Ton Hammer */			
(3649401, 49804, 0, 1, 1, 1), /* (219) Polished Mirror Helm */			
(3649401, 49803, 0, 1, 1, 1), /* (219) Ring of Carnelian and Bone */			
(3649401, 49805, 0, 1, 1, 1), /* (219) Ice-Steeped Sandals */			
(3649401, 49806, 0, 1, 1, 1), /* (219) Flayer's Black Belt */
# Referenz Heroic			
(3649402, 50227, 0, 1, 1, 1), /* (232) Surgeon's Needle */			
(3649402, 50230, 0, 1, 1, 1), /* (232) Malykriss Vambraces */			
(3649402, 50229, 0, 1, 1, 1), /* (232) Legguards of the Frosty Depths */			
(3649402, 50228, 0, 1, 1, 1), /* (232) Barbed Ymirheim Choker */			
(3649402, 50233, 0, 1, 1, 1), /* (232) Spurned Val'kyr Shoulderguards */			
(3649402, 50234, 0, 1, 1, 1), /* (232) Shoulderplates of Frozen Blood */			
(3649402, 50379, 0, 1, 1, 1), /* (1) Battered Hilt (Alliance) */			
(3649402, 50380, 0, 1, 1, 1); /* (1) Battered Hilt (Horde) */


-- [36476] Ick (14)
UPDATE `creature_template` SET `LootID`= 36476 WHERE `entry` = 36476;
UPDATE `creature_template` SET `LootID`= 37627 WHERE `entry` = 37627;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36476, 3647601,37627);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36476, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(36476, 3647601, 100, 0, -3647601, 2), --  Lootreferenz Normal
# Heroic
(37627, 47241, 100, 0, 2, 2), --  Emblem des Triumphs
(37627, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(37627, 3647602, 100, 0, -3647602, 2); --  Lootreferenz Heroic
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3647601, 3647602);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal			
(3647601, 49807, 0, 1, 1, 1), /* (219) Krick's Beetle Stabber */			
(3647601, 49812, 0, 1, 1, 1), /* (219) Purloined Wedding Ring */			
(3647601, 49810, 0, 1, 1, 1), /* (219) Scabrous Zombie Leather Belt */			
(3647601, 49808, 0, 1, 1, 1), /* (219) Bent Gold Belt */			
(3647601, 49809, 0, 1, 1, 1), /* (219) Wristguards of Subterranean Moss */			
(3647601, 49811, 0, 1, 1, 1), /* (219) Black Dragonskin Breeches */
# Referenz Heroic			
(3647602, 50262, 0, 1, 1, 1), /* (232) Felglacier Bolter */			
(3647602, 50265, 0, 1, 1, 1), /* (232) Blackened Ghoul Skin Leggings */			
(3647602, 50264, 0, 1, 1, 1), /* (232) Chewed Leather Wristguards */			
(3647602, 50263, 0, 1, 1, 1), /* (232) Braid of Salt and Fire */			
(3647602, 50235, 0, 1, 1, 1), /* (232) Ick's Rotting Thumb */			
(3647602, 50266, 0, 1, 1, 1), /* (232) Ancient Polar Bear Hide */			
(3647602, 50379, 0, 1, 1, 1), /* (1) Battered Hilt (Alliance) */			
(3647602, 50380, 0, 1, 1, 1); /* (1) Battered Hilt (Horde) */


-- [36658] Scourgelord Tyrannus (27)
UPDATE `creature_template` SET `LootID`= 36658 WHERE `entry` = 36658;
UPDATE `creature_template` SET `LootID`= 36938 WHERE `entry` = 36938;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36658,36938,3665801);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36658, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(36658, 3665801, 100, 0, -3665801, 2), --  Lootreferenz Normal
(36658, 43102, 0, 0, 1, 1), /* (80) Frozen Orb */
# Heroic
(36938, 47241, 100, 0, 2, 2), --  Emblem des Triumphs
(36938, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(36938, 3665802, 100, 0, -3665802, 2), --  Lootreferenz Heroic
(36938, 43102, 94.44, 0, 1, 1); /* (80) Frozen Orb */
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(3665801, 3665802);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal			
(3665801, 49813, 0, 1, 1, 1), /* (219) Rimebane Rifle */			
(3665801, 49825, 0, 1, 1, 1), /* (219) Palebone Robes */			
(3665801, 49823, 0, 1, 1, 1), /* (219) Cloak of the Fallen Cardinal */			
(3665801, 49824, 0, 1, 1, 1), /* (219) Horns of the Spurned Val'kyr */			
(3665801, 49821, 0, 1, 1, 1), /* (219) Protector of Frigid Souls */			
(3665801, 49826, 0, 1, 1, 1), /* (219) Shroud of Rime */			
(3665801, 49822, 0, 1, 1, 1), /* (219) Rimewoven Silks */			
(3665801, 49819, 0, 1, 1, 1), /* (219) Skeleton Lord's Cranium */			
(3665801, 49818, 0, 1, 1, 1), /* (219) Painfully Sharp Choker */			
(3665801, 49816, 0, 1, 1, 1), /* (219) Scourgelord's Frigid Chestplate */			
(3665801, 49820, 0, 1, 1, 1), /* (219) Gondria's Spectral Bracer */			
(3665801, 49817, 0, 1, 1, 1), /* (219) Shaggy Wyrmleather Leggings */
# Referenz Heroic			
(3665802, 50273, 0, 1, 1, 1), /* (232) Engraved Gargoyle Femur */			
(3665802, 50268, 0, 1, 1, 1), /* (232) Rimefang's Claw */			
(3665802, 50267, 0, 1, 1, 1), /* (232) Tyrannical Beheader */			
(3665802, 50284, 0, 1, 1, 1), /* (232) Rusty Frozen Fingerguards */			
(3665802, 50285, 0, 1, 1, 1), /* (232) Icebound Bronze Cuirass */			
(3665802, 50259, 0, 1, 1, 1), /* (232) Nevermelting Ice Crystal */			
(3665802, 50283, 0, 1, 1, 1), /* (232) Mudslide Boots */			
(3665802, 50286, 0, 1, 1, 1), /* (232) Prelate's Snowshoes */			
(3665802, 50272, 0, 1, 1, 1), /* (232) Frost Wyrm Ribcage */			
(3665802, 50270, 0, 1, 1, 1), /* (232) Belt of Rotted Fingernails */			
(3665802, 50269, 0, 1, 1, 1), /* (232) Fleshwerk Leggings */			
(3665802, 50271, 0, 1, 1, 1), /* (232) Band of Stained Souls */			
(3665802, 50379, 0, 1, 1, 1), /* (1) Battered Hilt (Alliance) */			
(3665802, 50380, 0, 1, 1, 1); /* (1) Battered Hilt (Horde) */