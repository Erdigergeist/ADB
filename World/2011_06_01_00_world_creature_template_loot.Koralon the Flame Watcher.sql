-- [35013] Koralon the Flame Watcher (171)
UPDATE `creature_template` SET `LootID`= 35013 WHERE `entry` = 35013;
UPDATE `creature_template` SET `LootID`= 3501301 WHERE `entry` = 3501301;
DELETE FROM `creature_loot_template` WHERE `entry` IN(35013, 3501301);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(35013, 47785, 2.57, 0, 1, 1), /* (232) Kel'Thuzad's Leggings of Conquest */
(35013, 48254, 2.55, 0, 1, 1), /* (232) Windrunner's Handguards of Conquest */
(35013, 48222, 2.54, 0, 1, 1), /* (232) VanCleef's Gauntlets of Conquest */
(35013, 41655, 2.54, 0, 1, 1), /* (232) Furious Gladiator's Leather Legguards */
(35013, 40847, 2.54, 0, 1, 1), /* (232) Furious Gladiator's Plate Legguards */
(35013, 40807, 2.52, 0, 1, 1), /* (232) Furious Gladiator's Plate Gauntlets */
(35013, 47775, 2.47, 0, 1, 1), /* (232) Sunstrider's Leggings of Conquest */
(35013, 48278, 2.46, 0, 1, 1), /* (232) Windrunner's Legguards of Conquest */
(35013, 40927, 2.45, 0, 1, 1), /* (232) Furious Gladiator's Ornamented Gloves */
(35013, 48375, 2.43, 0, 1, 1), /* (232) Wrynn's Gauntlets of Conquest */
(35013, 48252, 2.43, 0, 1, 1), /* (232) Windrunner's Legguards of Conquest */
(35013, 42017, 2.41, 0, 1, 1), /* (232) Furious Gladiator's Felweave Handguards */
(35013, 41767, 2.41, 0, 1, 1), /* (232) Furious Gladiator's Leather Gloves */
(35013, 48276, 2.4, 0, 1, 1), /* (232) Windrunner's Handguards of Conquest */
(35013, 40809, 2.38, 0, 1, 1), /* (232) Furious Gladiator's Dreadplate Gauntlets */
(35013, 41205, 2.37, 0, 1, 1), /* (232) Furious Gladiator's Chain Leggings */
(35013, 47752, 2.37, 0, 1, 1), /* (232) Khadgar's Gauntlets of Conquest */
(35013, 48220, 2.35, 0, 1, 1), /* (232) VanCleef's Legplates of Conquest */
(35013, 48244, 2.36, 0, 1, 1), /* (232) Garona's Gauntlets of Conquest */
(35013, 47800, 2.34, 0, 1, 1), /* (232) Gul'dan's Leggings of Conquest */
(35013, 40848, 2.32, 0, 1, 1), /* (232) Furious Gladiator's Dreadplate Legguards */
(35013, 47773, 2.32, 0, 1, 1), /* (232) Sunstrider's Gauntlets of Conquest */
(35013, 48246, 2.3, 0, 1, 1), /* (232) Garona's Legplates of Conquest */
(35013, 41971, 2.28, 0, 1, 1), /* (232) Furious Gladiator's Silk Handguards */
(35013, 41959, 2.27, 0, 1, 1), /* (232) Furious Gladiator's Silk Trousers */
(35013, 47750, 2.25, 0, 1, 1), /* (232) Khadgar's Leggings of Conquest */
(35013, 47802, 2.25, 0, 1, 1), /* (232) Gul'dan's Gloves of Conquest */
(35013, 42005, 2.22, 0, 1, 1), /* (232) Furious Gladiator's Felweave Trousers */
(35013, 47783, 2.11, 0, 1, 1), /* (232) Kel'Thuzad's Gloves of Conquest */
(35013, 41143, 2.11, 0, 1, 1), /* (232) Furious Gladiator's Chain Gauntlets */
# Normal 25
(3501301, 47772, 5.36, 0, 1, 1), /* (245) Sunstrider's Gauntlets of Triumph */
(3501301, 48241, 5.24, 0, 1, 1), /* (245) Garona's Gauntlets of Triumph */
(3501301, 48273, 5.19, 0, 1, 1), /* (245) Windrunner's Handguards of Triumph */
(3501301, 48224, 5.03, 0, 1, 1), /* (245) VanCleef's Gauntlets of Triumph */
(3501301, 47753, 4.99, 0, 1, 1), /* (245) Khadgar's Gauntlets of Triumph */
(3501301, 47782, 5, 0, 1, 1), /* (245) Kel'Thuzad's Gloves of Triumph */
(3501301, 47803, 4.94, 0, 1, 1), /* (245) Gul'dan's Gloves of Triumph */
(3501301, 48256, 4.92, 0, 1, 1), /* (245) Windrunner's Handguards of Triumph */
(3501301, 48239, 4.87, 0, 1, 1), /* (245) Garona's Legplates of Triumph */
(3501301, 47755, 4.73, 0, 1, 1), /* (245) Khadgar's Leggings of Triumph */
(3501301, 48226, 4.72, 0, 1, 1), /* (245) VanCleef's Legplates of Triumph */
(3501301, 47805, 4.57, 0, 1, 1), /* (245) Gul'dan's Leggings of Triumph */
(3501301, 48271, 4.51, 0, 1, 1), /* (245) Windrunner's Legguards of Triumph */
(3501301, 48258, 4.42, 0, 1, 1), /* (245) Windrunner's Legguards of Triumph */
(3501301, 47770, 4.41, 0, 1, 1), /* (245) Sunstrider's Leggings of Triumph */
(3501301, 47780, 4.19, 0, 1, 1), /* (245) Kel'Thuzad's Leggings of Triumph */
(3501301, 41236, 3.47, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Triumph */
(3501301, 41882, 3.4, 0, 1, 1), /* (245) Relentless Gladiator's Cord of Salvation */
(3501301, 40979, 3.39, 0, 1, 1), /* (245) Relentless Gladiator's Greaves of Salvation */
(3501301, 41865, 3.39, 0, 1, 1), /* (251) Relentless Gladiator's Mooncloth Leggings */
(3501301, 40978, 3.28, 0, 1, 1), /* (245) Relentless Gladiator's Girdle of Salvation */
(3501301, 41034, 3.27, 0, 1, 1), /* (251) Relentless Gladiator's Mail Leggings */
(3501301, 41904, 3.23, 0, 1, 1), /* (245) Relentless Gladiator's Treads of Dominance */
(3501301, 41972, 3.19, 0, 1, 1), /* (251) Relentless Gladiator's Silk Handguards */
(3501301, 40883, 3.14, 0, 1, 1), /* (245) Relentless Gladiator's Girdle of Triumph */
(3501301, 41226, 3.13, 0, 1, 1), /* (245) Relentless Gladiator's Wristguards of Triumph */
(3501301, 40928, 3.1, 0, 1, 1), /* (251) Relentless Gladiator's Ornamented Gloves */
(3501301, 41899, 3.08, 0, 1, 1), /* (245) Relentless Gladiator's Cord of Dominance */
(3501301, 41206, 3.08, 0, 1, 1), /* (251) Relentless Gladiator's Chain Leggings */
(3501301, 41928, 3.08, 0, 1, 1), /* (251) Relentless Gladiator's Satin Leggings */
(3501301, 40812, 3.07, 0, 1, 1), /* (251) Relentless Gladiator's Scaled Gauntlets */
(3501301, 40884, 3.06, 0, 1, 1), /* (245) Relentless Gladiator's Greaves of Triumph */
(3501301, 42006, 3.07, 0, 1, 1), /* (251) Relentless Gladiator's Felweave Trousers */
(3501301, 42018, 3.05, 0, 1, 1), /* (251) Relentless Gladiator's Felweave Handguards */
(3501301, 41656, 3.04, 0, 1, 1), /* (251) Relentless Gladiator's Leather Legguards */
(3501301, 41028, 3.04, 0, 1, 1), /* (251) Relentless Gladiator's Ringmail Leggings */
(3501301, 41875, 3.02, 0, 1, 1), /* (251) Relentless Gladiator's Mooncloth Gloves */
(3501301, 40851, 3, 0, 1, 1), /* (251) Relentless Gladiator's Dreadplate Legguards */
(3501301, 41837, 2.98, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Triumph */
(3501301, 41305, 2.98, 0, 1, 1), /* (251) Relentless Gladiator's Wyrmhide Legguards */
(3501301, 40810, 2.97, 0, 1, 1), /* (251) Relentless Gladiator's Plate Gauntlets */
(3501301, 41774, 2.97, 0, 1, 1), /* (251) Relentless Gladiator's Dragonhide Gloves */
(3501301, 40940, 2.97, 0, 1, 1), /* (251) Relentless Gladiator's Ornamented Legplates */
(3501301, 40850, 2.97, 0, 1, 1), /* (251) Relentless Gladiator's Plate Legguards */
(3501301, 41138, 2.96, 0, 1, 1), /* (251) Relentless Gladiator's Linked Gauntlets */
(3501301, 41231, 2.95, 0, 1, 1), /* (245) Relentless Gladiator's Sabatons of Triumph */
(3501301, 41299, 2.94, 0, 1, 1), /* (251) Relentless Gladiator's Kodohide Legguards */
(3501301, 40811, 2.92, 0, 1, 1), /* (251) Relentless Gladiator's Dreadplate Gauntlets */
(3501301, 40852, 2.91, 0, 1, 1), /* (251) Relentless Gladiator's Scaled Legguards */
(3501301, 41288, 2.91, 0, 1, 1), /* (251) Relentless Gladiator's Kodohide Gloves */
(3501301, 41200, 2.89, 0, 1, 1), /* (251) Relentless Gladiator's Linked Leggings */
(3501301, 42118, 2.88, 0, 1, 1), /* (245) Relentless Gladiator's Band of Ascendancy */
(3501301, 41886, 2.86, 0, 1, 1), /* (245) Relentless Gladiator's Treads of Salvation */
(3501301, 42041, 2.83, 0, 1, 1), /* (245) Relentless Gladiator's Pendant of Triumph */
(3501301, 41894, 2.84, 0, 1, 1), /* (245) Relentless Gladiator's Cuffs of Salvation */
(3501301, 41960, 2.82, 0, 1, 1), /* (251) Relentless Gladiator's Silk Trousers */
(3501301, 48066, 2.82, 0, 1, 1), /* (245) Zabra's Gloves of Triumph */
(3501301, 42119, 2.79, 0, 1, 1), /* (245) Relentless Gladiator's Band of Victory */
(3501301, 41833, 2.8, 0, 1, 1), /* (245) Relentless Gladiator's Belt of Triumph */
(3501301, 42081, 2.79, 0, 1, 1), /* (245) Relentless Gladiator's Cloak of Triumph */
(3501301, 41768, 2.79, 0, 1, 1), /* (251) Relentless Gladiator's Leather Gloves */
(3501301, 41841, 2.79, 0, 1, 1), /* (245) Relentless Gladiator's Armwraps of Triumph */
(3501301, 48096, 2.77, 0, 1, 1), /* (245) Zabra's Handwraps of Triumph */
(3501301, 41294, 2.76, 0, 1, 1), /* (251) Relentless Gladiator's Wyrmhide Gloves */
(3501301, 41668, 2.75, 0, 1, 1), /* (251) Relentless Gladiator's Dragonhide Legguards */
(3501301, 42042, 2.72, 0, 1, 1), /* (245) Relentless Gladiator's Pendant of Victory */
(3501301, 41008, 2.7, 0, 1, 1), /* (251) Relentless Gladiator's Mail Gauntlets */
(3501301, 41002, 2.69, 0, 1, 1), /* (251) Relentless Gladiator's Ringmail Gauntlets */
(3501301, 41144, 2.66, 0, 1, 1), /* (251) Relentless Gladiator's Chain Gauntlets */
(3501301, 48446, 2.64, 0, 1, 1), /* (245) Wrynn's Legguards of Triumph */
(3501301, 48094, 2.61, 0, 1, 1), /* (245) Zabra's Pants of Triumph */
(3501301, 40890, 2.61, 0, 1, 1), /* (245) Relentless Gladiator's Bracers of Triumph */
(3501301, 41941, 2.6, 0, 1, 1), /* (251) Relentless Gladiator's Satin Gloves */
(3501301, 41910, 2.6, 0, 1, 1), /* (245) Relentless Gladiator's Cuffs of Dominance */
(3501301, 48064, 2.59, 0, 1, 1), /* (245) Zabra's Leggings of Triumph */
(3501301, 42082, 2.57, 0, 1, 1), /* (245) Relentless Gladiator's Cloak of Victory */
(3501301, 40984, 2.53, 0, 1, 1), /* (245) Relentless Gladiator's Bracers of Salvation */
(3501301, 48077, 2.53, 0, 1, 1), /* (245) Velen's Handwraps of Triumph */
(3501301, 48539, 2.5, 0, 1, 1), /* (245) Thassarian's Handguards of Triumph */
(3501301, 48484, 2.5, 0, 1, 1), /* (245) Thassarian's Legplates of Triumph */
(3501301, 48452, 2.49, 0, 1, 1), /* (245) Wrynn's Handguards of Triumph */
(3501301, 48541, 2.48, 0, 1, 1), /* (245) Thassarian's Legguards of Triumph */
(3501301, 48377, 2.44, 0, 1, 1), /* (245) Wrynn's Gauntlets of Triumph */
(3501301, 48499, 2.42, 0, 1, 1), /* (245) Koltira's Gauntlets of Triumph */
(3501301, 48079, 2.42, 0, 1, 1), /* (245) Velen's Pants of Triumph */
(3501301, 48392, 2.41, 0, 1, 1), /* (245) Hellscream's Gauntlets of Triumph */
(3501301, 48462, 2.4, 0, 1, 1), /* (245) Hellscream's Handguards of Triumph */
(3501301, 48556, 2.31, 0, 1, 1), /* (245) Koltira's Handguards of Triumph */
(3501301, 47983, 2.31, 0, 1, 1), /* (245) Velen's Gloves of Triumph */
(3501301, 47985, 2.3, 0, 1, 1), /* (245) Velen's Leggings of Triumph */
(3501301, 48482, 2.28, 0, 1, 1), /* (245) Thassarian's Gauntlets of Triumph */
(3501301, 48379, 2.17, 0, 1, 1), /* (245) Wrynn's Legplates of Triumph */
(3501301, 48593, 2.07, 0, 1, 1), /* (245) Liadrin's Gloves of Triumph */
(3501301, 48625, 1.98, 0, 1, 1), /* (245) Liadrin's Gauntlets of Triumph */
(3501301, 48464, 1.95, 0, 1, 1), /* (245) Hellscream's Legguards of Triumph */
(3501301, 48554, 1.9, 0, 1, 1), /* (245) Koltira's Legguards of Triumph */
(3501301, 48394, 1.87, 0, 1, 1), /* (245) Hellscream's Legplates of Triumph */
(3501301, 48497, 1.82, 0, 1, 1), /* (245) Koltira's Legplates of Triumph */
(3501301, 48658, 1.81, 0, 1, 1), /* (245) Liadrin's Handguards of Triumph */
(3501301, 48349, 1.8, 0, 1, 1), /* (245) Nobundo's War-Kilt of Triumph */
(3501301, 48301, 1.79, 0, 1, 1), /* (245) Thrall's Handguards of Triumph */
(3501301, 48334, 1.78, 0, 1, 1), /* (245) Thrall's Gloves of Triumph */
(3501301, 48317, 1.77, 0, 1, 1), /* (245) Nobundo's Gloves of Triumph */
(3501301, 48163, 1.75, 0, 1, 1), /* (245) Malfurion's Gloves of Triumph */
(3501301, 48576, 1.72, 0, 1, 1), /* (245) Turalyon's Gloves of Triumph */
(3501301, 48640, 1.71, 0, 1, 1), /* (245) Turalyon's Handguards of Triumph */
(3501301, 48578, 1.7, 0, 1, 1), /* (245) Turalyon's Greaves of Triumph */
(3501301, 48362, 1.7, 0, 1, 1), /* (245) Thrall's War-Kilt of Triumph */
(3501301, 48182, 1.68, 0, 1, 1), /* (245) Runetotem's Gloves of Triumph */
(3501301, 48193, 1.67, 0, 1, 1), /* (245) Runetotem's Handgrips of Triumph */
(3501301, 48660, 1.67, 0, 1, 1), /* (245) Liadrin's Legguards of Triumph */
(3501301, 48347, 1.66, 0, 1, 1), /* (245) Nobundo's Grips of Triumph */
(3501301, 48212, 1.66, 0, 1, 1), /* (245) Malfurion's Handgrips of Triumph */
(3501301, 48610, 1.64, 0, 1, 1), /* (245) Turalyon's Legplates of Triumph */
(3501301, 48286, 1.64, 0, 1, 1), /* (245) Nobundo's Handguards of Triumph */
(3501301, 48364, 1.63, 0, 1, 1), /* (245) Thrall's Grips of Triumph */
(3501301, 41056, 1.61, 0, 1, 1), /* (245) Relentless Gladiator's Sabatons of Salvation */
(3501301, 41061, 1.61, 0, 1, 1), /* (245) Relentless Gladiator's Wristguards of Salvation */
(3501301, 48133, 1.6, 0, 1, 1), /* (245) Malfurion's Handguards of Triumph */
(3501301, 48623, 1.59, 0, 1, 1), /* (245) Liadrin's Legplates of Triumph */
(3501301, 48135, 1.57, 0, 1, 1), /* (245) Malfurion's Leggings of Triumph */
(3501301, 41636, 1.57, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Dominance */
(3501301, 48288, 1.55, 0, 1, 1), /* (245) Nobundo's Legguards of Triumph */
(3501301, 48591, 1.54, 0, 1, 1), /* (245) Liadrin's Greaves of Triumph */
(3501301, 48638, 1.53, 0, 1, 1), /* (245) Turalyon's Legguards of Triumph */
(3501301, 48210, 1.52, 0, 1, 1), /* (245) Malfurion's Legguards of Triumph */
(3501301, 41622, 1.51, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Salvation */
(3501301, 41071, 1.5, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Dominance */
(3501301, 48319, 1.5, 0, 1, 1), /* (245) Nobundo's Kilt of Triumph */
(3501301, 41052, 1.5, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Salvation */
(3501301, 41626, 1.49, 0, 1, 1), /* (245) Relentless Gladiator's Armwraps of Salvation */
(3501301, 41076, 1.49, 0, 1, 1), /* (245) Relentless Gladiator's Sabatons of Dominance */
(3501301, 48303, 1.49, 0, 1, 1), /* (245) Thrall's Legguards of Triumph */
(3501301, 41631, 1.46, 0, 1, 1), /* (245) Relentless Gladiator's Belt of Dominance */
(3501301, 48608, 1.45, 0, 1, 1), /* (245) Turalyon's Gauntlets of Triumph */
(3501301, 48180, 1.44, 0, 1, 1), /* (245) Runetotem's Trousers of Triumph */
(3501301, 48165, 1.43, 0, 1, 1), /* (245) Malfurion's Trousers of Triumph */
(3501301, 41066, 1.42, 0, 1, 1), /* (245) Relentless Gladiator's Wristguards of Dominance */
(3501301, 48152, 1.39, 0, 1, 1), /* (245) Runetotem's Handguards of Triumph */
(3501301, 48150, 1.38, 0, 1, 1); /* (245) Runetotem's Leggings of Triumph */