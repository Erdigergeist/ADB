-- [36789] Valithria Dreamwalker (56)
DELETE FROM `gameobject_template` WHERE `entry` IN(201959, 202338, 202339, 202340);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES('201959','3','9233','Cache of the Dreamwalker','','','','0','0','1.5','0','0','0','0','0','0','57','201959','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','11723');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES('202338','3','9233','Cache of the Dreamwalker','','','','0','0','1.5','0','0','0','0','0','0','57','202338','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','11723');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES('202339','3','9233','Cache of the Dreamwalker','','','','0','0','1.5','0','0','0','0','0','0','57','202339','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','11723');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES('202340','3','9233','Cache of the Dreamwalker','','','','0','0','1.5','0','0','0','0','0','0','57','202340','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','11723');
DELETE FROM `gameobject_loot_template` WHERE `entry` IN(201959, 202338, 202339, 202340);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(201959, 49426, 100, 0, 1, 2, 2), --  Emblem des Frostes
(201959, 49908, 5, 0, 1, 2, 2), --  Saronit
(201959, 3678901, 100, 0, 1, -201959, 3), --  Lootreferenz Normal 10
# Normal 25
(202338, 49426, 100, 0, 1, 2, 2), --  Emblem des Frostes
(202338, 49908, 20, 0, 1, 2, 2), --  Saronit
(202338, 50274, -5, 0, 1, 1, 1), --  Shadowfrost Shard (Quest)
(202338, 3678902, 100, 0, 1, -202338, 4), --  Lootreferenz Normal 25
# Heroic 10
(202339, 49426, 100, 0, 1, 2, 2), --  Emblem des Frostes
(202339, 49908, 20, 0, 1, 2, 2), --  Saronit
(202339, 3678903, 100, 0, 1, -202339, 3), --  Lootreferenz Heroic 10
# Heroic 25
(202340, 49426, 100, 0, 1, 2, 2), --  Emblem des Frostes
(202340, 49908, 20, 0, 1, 2, 2), --  Saronit
(202340, 50274, -10, 0, 1, 1, 1), --  Shadowfrost Shard (Quest)
(202340, 3678904, 100, 0, 1, -202340, 4); --  Lootreferenz Heroic 25
		
DELETE FROM `reference_loot_template` WHERE `entry` IN(201959, 202338, 202339, 202340);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`) VALUES
# Referenz Normal 10			
(201959, 51562, 0, 1, 1, 1), /* (251) Oxheart */			
(201959, 51582, 0, 1, 1, 1), /* (251) Sister Svalna's Aether Staff */			
(201959, 51584, 0, 1, 1, 1), /* (251) Lich Wrappings */			
(201959, 51561, 0, 1, 1, 1), /* (251) Dreamhunter's Carbine */			
(201959, 51565, 0, 1, 1, 1), /* (251) Skinned Whelp Shoulders */			
(201959, 51566, 0, 1, 1, 1), /* (251) Legguards of the Twisted Dream */			
(201959, 51583, 0, 1, 1, 1), /* (251) Stormbringer Gloves */			
(201959, 51585, 0, 1, 1, 1), /* (251) Sister Svalna's Spangenhelm */			
(201959, 51586, 0, 1, 1, 1), /* (251) Emerald Saint's Spaulders */			
(201959, 51563, 0, 1, 1, 1), /* (251) Taiga Bindings */			
(201959, 51777, 0, 1, 1, 1), /* (251) Leggings of the Refracted Mind */			
(201959, 51564, 0, 1, 1, 1), /* (251) Ironrope Belt of Ymirjar */
# Referenz Normal 25			
(202338, 50205, 0, 1, 1, 1), /* (264) Frostbinder's Shredded Cape */			
(202338, 50186, 0, 1, 1, 1), /* (264) Frostbrood Sapphire Ring */			
(202338, 50192, 0, 1, 1, 1), /* (264) Scourge Reaver's Legplates */			
(202338, 50472, 0, 1, 1, 1), /* (264) Nightmare Ender */			
(202338, 50183, 0, 1, 1, 1), /* (264) Lungbreaker */			
(202338, 50199, 0, 1, 1, 1), /* (264) Leggings of Dying Candles */			
(202338, 50190, 0, 1, 1, 1), /* (264) Grinning Skull Greatboots */			
(202338, 50418, 0, 1, 1, 1), /* (264) Robe of the Waking Nightmare */			
(202338, 50187, 0, 1, 1, 1), /* (264) Coldwraith Links */			
(202338, 50188, 0, 1, 1, 1), /* (264) Anub'ar Stalker's Gloves */			
(202338, 50202, 0, 1, 1, 1), /* (264) Snowstorm Helm */			
(202338, 50195, 0, 1, 1, 1), /* (264) Noose of Malachite */			
(202338, 50185, 0, 1, 1, 1), /* (264) Devium's Eternally Cold Ring */			
(202338, 50416, 0, 1, 1, 1), /* (264) Boots of the Funeral March */			
(202338, 50417, 0, 1, 1, 1), /* (264) Bracers of Eternal Dreaming */
# Referenz Heroic 10			
(202339, 51833, 0, 1, 1, 1), /* (264) Oxheart */			
(202339, 51826, 0, 1, 1, 1), /* (264) Lich Wrappings */			
(202339, 51828, 0, 1, 1, 1), /* (264) Sister Svalna's Aether Staff */			
(202339, 51832, 0, 1, 1, 1), /* (264) Taiga Bindings */			
(202339, 51823, 0, 1, 1, 1), /* (264) Leggings of the Refracted Mind */			
(202339, 51830, 0, 1, 1, 1), /* (264) Skinned Whelp Shoulders */			
(202339, 51834, 0, 1, 1, 1), /* (264) Dreamhunter's Carbine */			
(202339, 51829, 0, 1, 1, 1), /* (264) Legguards of the Twisted Dream */			
(202339, 51827, 0, 1, 1, 1), /* (264) Stormbringer Gloves */			
(202339, 51825, 0, 1, 1, 1), /* (264) Sister Svalna's Spangenhelm */			
(202339, 51824, 0, 1, 1, 1), /* (264) Emerald Saint's Spaulders */			
(202339, 51831, 0, 1, 1, 1), /* (264) Ironrope Belt of Ymirjar */
# Referenz Heroic 25			
(202340, 50628, 0, 1, 1, 1), /* (277) Frostbinder's Shredded Cape */			
(202340, 50618, 0, 1, 1, 1), /* (277) Frostbrood Sapphire Ring */			
(202340, 50624, 0, 1, 1, 1), /* (277) Scourge Reaver's Legplates */			
(202340, 50629, 0, 1, 1, 1), /* (277) Robe of the Waking Nightmare */			
(202340, 50620, 0, 1, 1, 1), /* (277) Coldwraith Links */			
(202340, 50631, 0, 1, 1, 1), /* (277) Nightmare Ender */			
(202340, 50626, 0, 1, 1, 1), /* (277) Snowstorm Helm */			
(202340, 50625, 0, 1, 1, 1), /* (277) Grinning Skull Greatboots */			
(202340, 50619, 0, 1, 1, 1), /* (277) Anub'ar Stalker's Gloves */			
(202340, 50621, 0, 1, 1, 1), /* (277) Lungbreaker */			
(202340, 50627, 0, 1, 1, 1), /* (277) Noose of Malachite */			
(202340, 50632, 0, 1, 1, 1), /* (277) Boots of the Funeral March */			
(202340, 50623, 0, 1, 1, 1), /* (277) Leggings of Dying Candles */			
(202340, 50630, 0, 1, 1, 1), /* (277) Bracers of Eternal Dreaming */			
(202340, 50622, 0, 1, 1, 1); /* (277) Devium's Eternally Cold Ring */