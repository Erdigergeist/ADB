UPDATE `creature_template` SET `LootID`= 36497 WHERE `entry` = 36497;
UPDATE `creature_template` SET `LootID`= 36498 WHERE `entry` = 36498;
DELETE FROM `creature_loot_template` WHERE `entry` IN(36497, 36498);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal
(36497, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(36497, 3649701, 100, 0, -3649701, 2), --  Lootreferenz Normal
# Heroic
(36498, 43228, 100, 0, 3, 3), --  Splitter des Steinbewahrers
(36498, 3649702, 100, 0, -3649702, 2); --  Lootreferenz Heroic
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(36497, 36498);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal			
(36497, 50317, 0, 1, 1, 1), /* (80) Papa's New Bag */			
(36497, 49783, 0, 1, 1, 1), /* (219) Lucky Old Sun */			
(36497, 50316, 0, 1, 1, 1), /* (80) Papa's Brand New Bag */			
(36497, 49787, 0, 1, 1, 1), /* (219) Seven Stormy Mornings */			
(36497, 49785, 0, 1, 1, 1), /* (219) Bewildering Shoulderpads */			
(36497, 49788, 0, 1, 1, 1), /* (219) Cold Sweat Grips */			
(36497, 49786, 0, 1, 1, 1), /* (219) Robes of the Cheating Heart */			
(36497, 49784, 0, 1, 1, 1), /* (219) Minister's Number One Legplates */
# Referenz Heroic			
(36498, 50317, 0, 1, 1, 1), /* (80) Papa's New Bag */			
(36498, 50191, 0, 1, 1, 1), /* (232) Nighttime */			
(36498, 50169, 0, 1, 1, 1), /* (232) Papa's Brand New Knife */			
(36498, 50193, 0, 1, 1, 1), /* (232) Very Fashionable Shoulders */			
(36498, 50194, 0, 1, 1, 1), /* (232) Weeping Gauntlets */			
(36498, 50196, 0, 1, 1, 1), /* (232) Love's Prisoner */			
(36498, 50197, 0, 1, 1, 1), /* (232) Eyes of Bewilderment */			
(36498, 50316, 0, 1, 1, 1), /* (80) Papa's Brand New Bag */			
(36498, 50379, 0, 1, 1, 1), /* (1) Battered Hilt (Alliance) */			
(36498, 50380, 0, 1, 1, 1); /* (1) Battered Hilt (Horde) */