UPDATE `creature_template` SET `LootID`= 33993 WHERE `entry` = 33993;
UPDATE `creature_template` SET `LootID`= 33994 WHERE `entry` = 33994;
DELETE FROM `creature_loot_template` WHERE `entry` IN(33993, 33994);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(33993, 45362, 5.45, 0, 1, 1), /* (219) Valorous Scourgestalker Legguards */
(33993, 45360, 5.12, 0, 1, 1), /* (219) Valorous Scourgestalker Handguards */
(33993, 46131, 5.04, 0, 1, 1), /* (219) Valorous Kirin Tor Gauntlets */
(33993, 45420, 4.94, 0, 1, 1), /* (219) Valorous Deathbringer Leggings */
(33993, 45367, 4.93, 0, 1, 1), /* (219) Valorous Kirin Tor Leggings */
(33993, 45397, 4.84, 0, 1, 1), /* (219) Valorous Terrorblade Gauntlets */
(33993, 45399, 4.78, 0, 1, 1), /* (219) Valorous Terrorblade Legplates */
(33993, 45419, 4.49, 0, 1, 1), /* (219) Valorous Deathbringer Gloves */
(33993, 40806, 2.79, 0, 1, 1), /* (213) Deadly Gladiator's Dreadplate Gauntlets */
(33993, 40804, 2.65, 0, 1, 1), /* (213) Deadly Gladiator's Plate Gauntlets */
(33993, 40845, 2.65, 0, 1, 1), /* (213) Deadly Gladiator's Dreadplate Legguards */
(33993, 41204, 2.59, 0, 1, 1), /* (213) Deadly Gladiator's Chain Leggings */
(33993, 45388, 2.57, 0, 1, 1), /* (219) Valorous Leggings of Sanctification */
(33993, 42016, 2.56, 0, 1, 1), /* (213) Deadly Gladiator's Felweave Handguards */
(33993, 45337, 2.53, 0, 1, 1), /* (219) Valorous Darkruned Handguards */
(33993, 40844, 2.53, 0, 1, 1), /* (213) Deadly Gladiator's Plate Legguards */
(33993, 41766, 2.45, 0, 1, 1), /* (213) Deadly Gladiator's Leather Gloves */
(33993, 41142, 2.44, 0, 1, 1), /* (213) Deadly Gladiator's Chain Gauntlets */
(33993, 45426, 2.43, 0, 1, 1), /* (219) Valorous Siegebreaker Handguards */
(33993, 45394, 2.42, 0, 1, 1), /* (219) Valorous Pants of Sanctification */
(33993, 41958, 2.4, 0, 1, 1), /* (213) Deadly Gladiator's Silk Trousers */
(33993, 41654, 2.39, 0, 1, 1), /* (213) Deadly Gladiator's Leather Legguards */
(33993, 45392, 2.38, 0, 1, 1), /* (219) Valorous Handwraps of Sanctification */
(33993, 45387, 2.38, 0, 1, 1), /* (219) Valorous Gloves of Sanctification */
(33993, 41970, 2.36, 0, 1, 1), /* (213) Deadly Gladiator's Silk Handguards */
(33993, 42004, 2.33, 0, 1, 1), /* (213) Deadly Gladiator's Felweave Trousers */
(33993, 45427, 2.32, 0, 1, 1), /* (219) Valorous Siegebreaker Legguards */
(33993, 45430, 2.31, 0, 1, 1), /* (219) Valorous Siegebreaker Gauntlets */
(33993, 45338, 2.31, 0, 1, 1), /* (219) Valorous Darkruned Legguards */
(33993, 45341, 2.3, 0, 1, 1), /* (219) Valorous Darkruned Gauntlets */
(33993, 45432, 2.29, 0, 1, 1), /* (219) Valorous Siegebreaker Legplates */
(33993, 45343, 2.15, 0, 1, 1), /* (219) Valorous Darkruned Legplates */
(33993, 45351, 2.07, 0, 1, 1), /* (219) Valorous Nightsong Gloves */
(33993, 45355, 1.93, 0, 1, 1), /* (219) Valorous Nightsong Handgrips */
(33993, 45345, 1.91, 0, 1, 1), /* (219) Valorous Nightsong Handguards */
(33993, 45416, 1.88, 0, 1, 1), /* (219) Valorous Worldbreaker War-Kilt */
(33993, 45357, 1.86, 0, 1, 1), /* (219) Valorous Nightsong Legguards */
(33993, 41835, 1.84, 0, 1, 1), /* (213) Deadly Gladiator's Boots of Triumph */
(33993, 40880, 1.74, 0, 1, 1), /* (213) Deadly Gladiator's Greaves of Triumph */
(33993, 45376, 1.74, 0, 1, 1), /* (219) Valorous Aegis Gauntlets */
(33993, 40879, 1.71, 0, 1, 1), /* (213) Deadly Gladiator's Girdle of Triumph */
(33993, 45371, 1.68, 0, 1, 1), /* (219) Valorous Aegis Greaves */
(33993, 45370, 1.66, 0, 1, 1), /* (219) Valorous Aegis Gloves */
(33993, 45384, 1.66, 0, 1, 1), /* (219) Valorous Aegis Legguards */
(33993, 45379, 1.66, 0, 1, 1), /* (219) Valorous Aegis Legplates */
(33993, 45353, 1.66, 0, 1, 1), /* (219) Valorous Nightsong Trousers */
(33993, 45409, 1.62, 0, 1, 1), /* (219) Valorous Worldbreaker Kilt */
(33993, 45347, 1.61, 0, 1, 1), /* (219) Valorous Nightsong Leggings */
(33993, 45406, 1.58, 0, 1, 1), /* (219) Valorous Worldbreaker Gloves */
(33993, 45401, 1.57, 0, 1, 1), /* (219) Valorous Worldbreaker Handguards */
(33993, 40974, 1.55, 0, 1, 1), /* (213) Deadly Gladiator's Girdle of Salvation */
(33993, 42114, 1.55, 0, 1, 1), /* (213) Deadly Gladiator's Band of Ascendancy */
(33993, 40975, 1.53, 0, 1, 1), /* (213) Deadly Gladiator's Greaves of Salvation */
(33993, 45383, 1.53, 0, 1, 1), /* (219) Valorous Aegis Handguards */
(33993, 45403, 1.51, 0, 1, 1), /* (219) Valorous Worldbreaker Legguards */
(33993, 40888, 1.51, 0, 1, 1), /* (213) Deadly Gladiator's Bracers of Triumph */
(33993, 45414, 1.49, 0, 1, 1), /* (219) Valorous Worldbreaker Grips */
(33993, 41234, 1.49, 0, 1, 1), /* (213) Deadly Gladiator's Waistguard of Triumph */
(33993, 42115, 1.48, 0, 1, 1), /* (213) Deadly Gladiator's Band of Victory */
(33993, 41880, 1.47, 0, 1, 1), /* (213) Deadly Gladiator's Cord of Salvation */
(33993, 41902, 1.45, 0, 1, 1), /* (213) Deadly Gladiator's Treads of Dominance */
(33993, 41897, 1.43, 0, 1, 1), /* (213) Deadly Gladiator's Cord of Dominance */
(33993, 41229, 1.43, 0, 1, 1), /* (213) Deadly Gladiator's Sabatons of Triumph */
(33993, 41884, 1.43, 0, 1, 1), /* (213) Deadly Gladiator's Treads of Salvation */
(33993, 42067, 1.39, 0, 1, 1), /* (213) Deadly Gladiator's Cloak of Triumph */
(33993, 41831, 1.37, 0, 1, 1), /* (213) Deadly Gladiator's Belt of Triumph */
(33993, 40982, 1.35, 0, 1, 1), /* (213) Deadly Gladiator's Bracers of Salvation */
(33993, 41224, 1.34, 0, 1, 1), /* (213) Deadly Gladiator's Wristguards of Triumph */
(33993, 41892, 1.31, 0, 1, 1), /* (213) Deadly Gladiator's Cuffs of Salvation */
(33993, 42027, 1.3, 0, 1, 1), /* (213) Deadly Gladiator's Pendant of Triumph */
(33993, 41908, 1.29, 0, 1, 1), /* (213) Deadly Gladiator's Cuffs of Dominance */
(33993, 42028, 1.28, 0, 1, 1), /* (213) Deadly Gladiator's Pendant of Victory */
(33993, 41939, 1.27, 0, 1, 1), /* (213) Deadly Gladiator's Satin Gloves */
(33993, 41839, 1.26, 0, 1, 1), /* (213) Deadly Gladiator's Armwraps of Triumph */
(33993, 42068, 1.25, 0, 1, 1), /* (213) Deadly Gladiator's Cloak of Victory */
(33993, 40846, 1.17, 0, 1, 1), /* (213) Deadly Gladiator's Scaled Legguards */
(33993, 40805, 1.15, 0, 1, 1), /* (213) Deadly Gladiator's Scaled Gauntlets */
# Normal 25
(3399301, 47242, 100, 0, 1, 1), --  Trophy
(33994, 47556, 20, 0, 1, 1), --  Crusader Orb
(33994, 46142, 10.07, 0, 1, 1), /* (226) Conqueror's Scourgestalker Handguards */
(33994, 46144, 10.11, 0, 1, 1), /* (226) Conqueror's Scourgestalker Legguards */
(33994, 46126, 9.78, 0, 1, 1), /* (226) Conqueror's Terrorblade Legplates */
(33994, 46124, 9.74, 0, 1, 1), /* (226) Conqueror's Terrorblade Gauntlets */
(33994, 46135, 9.74, 0, 1, 1), /* (226) Conqueror's Deathbringer Gloves */
(33994, 46132, 9.46, 0, 1, 1), /* (226) Conqueror's Kirin Tor Gauntlets */
(33994, 46139, 9.38, 0, 1, 1), /* (226) Conqueror's Deathbringer Leggings */
(33994, 46133, 8.99, 0, 1, 1), /* (226) Conqueror's Kirin Tor Leggings */
(33994, 46170, 5.41, 0, 1, 1), /* (226) Conqueror's Pants of Sanctification */
(33994, 41767, 5.27, 0, 1, 1), /* (232) Furious Gladiator's Leather Gloves */
(33994, 41655, 5.15, 0, 1, 1), /* (232) Furious Gladiator's Leather Legguards */
(33994, 40848, 5.14, 0, 1, 1), /* (232) Furious Gladiator's Dreadplate Legguards */
(33994, 40807, 4.88, 0, 1, 1), /* (232) Furious Gladiator's Plate Gauntlets */
(33994, 46163, 5.08, 0, 1, 1), /* (226) Conqueror's Handwraps of Sanctification */
(33994, 41143, 5, 0, 1, 1), /* (232) Furious Gladiator's Chain Gauntlets */
(33994, 41959, 4.73, 0, 1, 1), /* (232) Furious Gladiator's Silk Trousers */
(33994, 40809, 4.95, 0, 1, 1), /* (232) Furious Gladiator's Dreadplate Gauntlets */
(33994, 42005, 4.93, 0, 1, 1), /* (232) Furious Gladiator's Felweave Trousers */
(33994, 41205, 4.95, 0, 1, 1), /* (232) Furious Gladiator's Chain Leggings */
(33994, 40847, 4.89, 0, 1, 1), /* (232) Furious Gladiator's Plate Legguards */
(33994, 46116, 4.89, 0, 1, 1), /* (226) Conqueror's Darkruned Legplates */
(33994, 46119, 4.81, 0, 1, 1), /* (226) Conqueror's Darkruned Handguards */
(33994, 46164, 4.8, 0, 1, 1), /* (226) Conqueror's Siegebreaker Handguards */
(33994, 46188, 4.74, 0, 1, 1), /* (226) Conqueror's Gloves of Sanctification */
(33994, 46121, 4.74, 0, 1, 1), /* (226) Conqueror's Darkruned Legguards */
(33994, 46150, 4.68, 0, 1, 1), /* (226) Conqueror's Siegebreaker Legplates */
(33994, 41971, 4.68, 0, 1, 1), /* (232) Furious Gladiator's Silk Handguards */
(33994, 46148, 4.67, 0, 1, 1), /* (226) Conqueror's Siegebreaker Gauntlets */
(33994, 40927, 4.67, 0, 1, 1), /* (232) Furious Gladiator's Ornamented Gloves */
(33994, 46113, 4.66, 0, 1, 1), /* (226) Conqueror's Darkruned Gauntlets */
(33994, 46195, 4.63, 0, 1, 1), /* (226) Conqueror's Leggings of Sanctification */
(33994, 46169, 4.61, 0, 1, 1), /* (226) Conqueror's Siegebreaker Legguards */
(33994, 42017, 4.38, 0, 1, 1), /* (232) Furious Gladiator's Felweave Handguards */
(33994, 46158, 3.71, 0, 1, 1), /* (226) Conqueror's Nightsong Handgrips */
(33994, 46210, 3.51, 0, 1, 1), /* (226) Conqueror's Worldbreaker Kilt */
(33994, 46208, 3.49, 0, 1, 1), /* (226) Conqueror's Worldbreaker War-Kilt */
(33994, 46181, 3.43, 0, 1, 1), /* (226) Conqueror's Aegis Greaves */
(33994, 46183, 3.42, 0, 1, 1), /* (226) Conqueror's Nightsong Handguards */
(33994, 41225, 3.42, 0, 1, 1), /* (226) Furious Gladiator's Wristguards of Triumph */
(33994, 46155, 3.4, 0, 1, 1), /* (226) Conqueror's Aegis Gauntlets */
(33994, 46179, 3.37, 0, 1, 1), /* (226) Conqueror's Aegis Gloves */
(33994, 41893, 3.12, 0, 1, 1), /* (226) Furious Gladiator's Cuffs of Salvation */
(33994, 46192, 3.36, 0, 1, 1), /* (226) Conqueror's Nightsong Trousers */
(33994, 46200, 3.36, 0, 1, 1), /* (226) Conqueror's Worldbreaker Grips */
(33994, 46199, 3.3, 0, 1, 1), /* (226) Conqueror's Worldbreaker Handguards */
(33994, 46189, 3.31, 0, 1, 1), /* (226) Conqueror's Nightsong Gloves */
(33994, 46160, 3.29, 0, 1, 1), /* (226) Conqueror's Nightsong Legguards */
(33994, 46174, 3.23, 0, 1, 1), /* (226) Conqueror's Aegis Handguards */
(33994, 46202, 3.21, 0, 1, 1), /* (226) Conqueror's Worldbreaker Legguards */
(33994, 46176, 3.21, 0, 1, 1), /* (226) Conqueror's Aegis Legguards */
(33994, 40889, 3.16, 0, 1, 1), /* (226) Furious Gladiator's Bracers of Triumph */
(33994, 46153, 3.12, 0, 1, 1), /* (226) Conqueror's Aegis Legplates */
(33994, 42034, 3.11, 0, 1, 1), /* (226) Furious Gladiator's Pendant of Triumph */
(33994, 41235, 3.01, 0, 1, 1), /* (226) Furious Gladiator's Waistguard of Triumph */
(33994, 41881, 3, 0, 1, 1), /* (226) Furious Gladiator's Cord of Salvation */
(33994, 40983, 2.98, 0, 1, 1), /* (226) Furious Gladiator's Bracers of Salvation */
(33994, 40977, 2.99, 0, 1, 1), /* (226) Furious Gladiator's Greaves of Salvation */
(33994, 46207, 2.98, 0, 1, 1), /* (226) Conqueror's Worldbreaker Gloves */
(33994, 46185, 2.92, 0, 1, 1), /* (226) Conqueror's Nightsong Leggings */
(33994, 42035, 2.89, 0, 1, 1), /* (226) Furious Gladiator's Pendant of Victory */
(33994, 42075, 2.83, 0, 1, 1), /* (226) Furious Gladiator's Cloak of Victory */
(33994, 41909, 2.82, 0, 1, 1), /* (226) Furious Gladiator's Cuffs of Dominance */
(33994, 41840, 2.8, 0, 1, 1), /* (226) Furious Gladiator's Armwraps of Triumph */
(33994, 41898, 2.76, 0, 1, 1), /* (226) Furious Gladiator's Cord of Dominance */
(33994, 42074, 2.75, 0, 1, 1), /* (226) Furious Gladiator's Cloak of Triumph */
(33994, 42117, 2.72, 0, 1, 1), /* (226) Furious Gladiator's Band of Triumph */
(33994, 41836, 2.74, 0, 1, 1), /* (226) Furious Gladiator's Boots of Triumph */
(33994, 41885, 2.73, 0, 1, 1), /* (226) Furious Gladiator's Slippers of Salvation */
(33994, 40976, 2.72, 0, 1, 1), /* (226) Furious Gladiator's Girdle of Salvation */
(33994, 41230, 2.68, 0, 1, 1), /* (226) Furious Gladiator's Sabatons of Triumph */
(33994, 41832, 2.67, 0, 1, 1), /* (226) Furious Gladiator's Belt of Triumph */
(33994, 40882, 2.65, 0, 1, 1), /* (226) Furious Gladiator's Greaves of Triumph */
(33994, 41940, 2.62, 0, 1, 1), /* (232) Furious Gladiator's Satin Gloves */
(33994, 42116, 2.55, 0, 1, 1), /* (226) Furious Gladiator's Band of Dominance */
(33994, 41864, 2.55, 0, 1, 1), /* (232) Furious Gladiator's Mooncloth Leggings */
(33994, 41927, 2.55, 0, 1, 1), /* (232) Furious Gladiator's Satin Leggings */
(33994, 41903, 2.53, 0, 1, 1), /* (226) Furious Gladiator's Slippers of Dominance */
(33994, 40881, 2.49, 0, 1, 1), /* (226) Furious Gladiator's Girdle of Triumph */
(33994, 41874, 2.3, 0, 1, 1), /* (232) Furious Gladiator's Mooncloth Gloves */
(33994, 40849, 2.27, 0, 1, 1), /* (232) Furious Gladiator's Scaled Legguards */
(33994, 40939, 2.21, 0, 1, 1), /* (232) Furious Gladiator's Ornamented Legplates */
(33994, 41001, 1.85, 0, 1, 1), /* (232) Furious Gladiator's Ringmail Gauntlets */
(33994, 41137, 1.77, 0, 1, 1), /* (232) Furious Gladiator's Linked Gauntlets */
(33994, 41667, 1.73, 0, 1, 1), /* (232) Furious Gladiator's Dragonhide Legguards */
(33994, 41293, 1.73, 0, 1, 1), /* (232) Furious Gladiator's Wyrmhide Gloves */
(33994, 41304, 1.71, 0, 1, 1), /* (232) Furious Gladiator's Wyrmhide Legguards */
(33994, 41007, 1.7, 0, 1, 1), /* (232) Furious Gladiator's Mail Gauntlets */
(33994, 41033, 1.66, 0, 1, 1), /* (232) Furious Gladiator's Mail Leggings */
(33994, 41298, 1.62, 0, 1, 1), /* (232) Furious Gladiator's Kodohide Legguards */
(33994, 41027, 1.61, 0, 1, 1), /* (232) Furious Gladiator's Ringmail Leggings */
(33994, 41287, 1.6, 0, 1, 1), /* (232) Furious Gladiator's Kodohide Gloves */
(33994, 42037, 1.59, 0, 1, 1), /* (226) Furious Gladiator's Pendant of Ascendancy */
(33994, 41621, 1.57, 0, 1, 1), /* (226) Furious Gladiator's Boots of Salvation */
(33994, 41773, 1.57, 0, 1, 1), /* (232) Furious Gladiator's Dragonhide Gloves */
(33994, 41065, 1.57, 0, 1, 1), /* (226) Furious Gladiator's Wristguards of Dominance */
(33994, 41199, 1.56, 0, 1, 1), /* (232) Furious Gladiator's Linked Leggings */
(33994, 41060, 1.47, 0, 1, 1), /* (226) Furious Gladiator's Wristguards of Salvation */
(33994, 41055, 1.46, 0, 1, 1), /* (226) Furious Gladiator's Sabatons of Salvation */
(33994, 41640, 1.45, 0, 1, 1), /* (226) Furious Gladiator's Armwraps of Dominance */
(33994, 41625, 1.44, 0, 1, 1), /* (226) Furious Gladiator's Armwraps of Salvation */
(33994, 41075, 1.38, 0, 1, 1), /* (226) Furious Gladiator's Sabatons of Dominance */
(33994, 41070, 1.4, 0, 1, 1), /* (226) Furious Gladiator's Waistguard of Dominance */
(33994, 41051, 1.35, 0, 1, 1), /* (226) Furious Gladiator's Waistguard of Salvation */
(33994, 42073, 1.3, 0, 1, 1), /* (226) Furious Gladiator's Cloak of Deliverance */
(33994, 42071, 1.28, 0, 1, 1), /* (226) Furious Gladiator's Cloak of Ascendancy */
(33994, 41617, 1.21, 0, 1, 1), /* (226) Furious Gladiator's Belt of Salvation */
(33994, 42038, 1.21, 0, 1, 1); /* (226) Furious Gladiator's Pendant of Subjugation */

-- [38433] Toravon the Ice Watcher (188)
UPDATE `creature_template` SET `LootID`= 38433 WHERE `entry` = 38433;
UPDATE `creature_template` SET `LootID`= 3843301 WHERE `entry` = 38462;
DELETE FROM `creature_loot_template` WHERE `entry` IN(38433, 38462);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(38433, 50114, 4.83, 0, 1, 1), /* (251) Ahn'Kahar Blood Hunter's Handguards */
(38433, 50090, 4.81, 0, 1, 1), /* (251) Shadowblade Legplates */
(38433, 50242, 4.7, 0, 1, 1), /* (251) Dark Coven Leggings */
(38433, 50240, 4.69, 0, 1, 1), /* (251) Dark Coven Gloves */
(38433, 50116, 4.66, 0, 1, 1), /* (251) Ahn'Kahar Blood Hunter's Legguards */
(38433, 50277, 4.51, 0, 1, 1), /* (251) Bloodmage Leggings */
(38433, 50088, 4.53, 0, 1, 1), /* (251) Shadowblade Gauntlets */
(38433, 50275, 4.52, 0, 1, 1), /* (251) Bloodmage Gloves */
(38433, 50766, 2.91, 0, 1, 1), /* (251) Crimson Acolyte Gloves */
(38433, 50393, 2.62, 0, 1, 1), /* (251) Crimson Acolyte Pants */
(38433, 50854, 2.55, 0, 1, 1), /* (251) Scourgelord Legguards */
(38433, 50095, 2.46, 0, 1, 1), /* (251) Scourgelord Gauntlets */
(38433, 50391, 2.45, 0, 1, 1), /* (251) Crimson Acolyte Handwraps */
(38433, 50079, 2.37, 0, 1, 1), /* (251) Ymirjar Lord's Gauntlets */
(38433, 50847, 2.35, 0, 1, 1), /* (251) Ymirjar Lord's Legguards */
(38433, 50849, 2.34, 0, 1, 1), /* (251) Ymirjar Lord's Handguards */
(38433, 50081, 2.34, 0, 1, 1), /* (251) Ymirjar Lord's Legplates */
(38433, 50856, 2.31, 0, 1, 1), /* (251) Scourgelord Handguards */
(38433, 50769, 2.28, 0, 1, 1), /* (251) Crimson Acolyte Leggings */
(38433, 50097, 2.19, 0, 1, 1), /* (251) Scourgelord Legplates */
(38433, 50827, 1.92, 0, 1, 1), /* (251) Lasherweave Handgrips */
(38433, 50107, 1.84, 0, 1, 1), /* (251) Lasherweave Gauntlets */
(38433, 50831, 1.86, 0, 1, 1), /* (251) Frost Witch's Grips */
(38433, 40851, 1.84, 0, 1, 1), /* (251) Relentless Gladiator's Dreadplate Legguards */
(38433, 50861, 1.8, 0, 1, 1), /* (251) Lightsworn Legguards */
(38433, 50327, 1.78, 0, 1, 1), /* (251) Lightsworn Gauntlets */
(38433, 41656, 1.78, 0, 1, 1), /* (251) Relentless Gladiator's Leather Legguards */
(38433, 41034, 1.77, 0, 1, 1), /* (251) Relentless Gladiator's Mail Leggings */
(38433, 50868, 1.75, 0, 1, 1), /* (251) Lightsworn Gloves */
(38433, 40890, 1.76, 0, 1, 1), /* (245) Relentless Gladiator's Bracers of Triumph */
(38433, 41200, 1.73, 0, 1, 1), /* (251) Relentless Gladiator's Linked Leggings */
(38433, 41288, 1.72, 0, 1, 1), /* (251) Relentless Gladiator's Kodohide Gloves */
(38433, 41768, 1.7, 0, 1, 1), /* (251) Relentless Gladiator's Leather Gloves */
(38433, 40940, 1.7, 0, 1, 1), /* (251) Relentless Gladiator's Ornamented Legplates */
(38433, 41236, 1.68, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Triumph */
(38433, 41774, 1.64, 0, 1, 1), /* (251) Relentless Gladiator's Dragonhide Gloves */
(38433, 50825, 1.63, 0, 1, 1), /* (251) Lasherweave Legguards */
(38433, 50863, 1.62, 0, 1, 1), /* (251) Lightsworn Handguards */
(38433, 50109, 1.63, 0, 1, 1), /* (251) Lasherweave Legplates */
(38433, 50820, 1.61, 0, 1, 1), /* (251) Lasherweave Trousers */
(38433, 41837, 1.61, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Triumph */
(38433, 41875, 1.61, 0, 1, 1), /* (251) Relentless Gladiator's Mooncloth Gloves */
(38433, 40811, 1.6, 0, 1, 1), /* (251) Relentless Gladiator's Dreadplate Gauntlets */
(38433, 50866, 1.59, 0, 1, 1), /* (251) Lightsworn Greaves */
(38433, 41002, 1.57, 0, 1, 1), /* (251) Relentless Gladiator's Ringmail Gauntlets */
(38433, 50822, 1.56, 0, 1, 1), /* (251) Lasherweave Gloves */
(38433, 50838, 1.55, 0, 1, 1), /* (251) Frost Witch's Legguards */
(38433, 50325, 1.56, 0, 1, 1), /* (251) Lightsworn Legplates */
(38433, 41231, 1.55, 0, 1, 1), /* (245) Relentless Gladiator's Sabatons of Triumph */
(38433, 41206, 1.55, 0, 1, 1), /* (251) Relentless Gladiator's Chain Leggings */
(38433, 41294, 1.53, 0, 1, 1), /* (251) Relentless Gladiator's Wyrmhide Gloves */
(38433, 41226, 1.53, 0, 1, 1), /* (245) Relentless Gladiator's Wristguards of Triumph */
(38433, 41886, 1.53, 0, 1, 1), /* (245) Relentless Gladiator's Treads of Salvation */
(38433, 41305, 1.52, 0, 1, 1), /* (251) Relentless Gladiator's Wyrmhide Legguards */
(38433, 40978, 1.52, 0, 1, 1), /* (245) Relentless Gladiator's Girdle of Salvation */
(38433, 50833, 1.52, 0, 1, 1), /* (251) Frost Witch's War-Kilt */
(38433, 40883, 1.49, 0, 1, 1), /* (245) Relentless Gladiator's Girdle of Triumph */
(38433, 42118, 1.49, 0, 1, 1), /* (245) Relentless Gladiator's Band of Ascendancy */
(38433, 50842, 1.49, 0, 1, 1), /* (251) Frost Witch's Gloves */
(38433, 41144, 1.49, 0, 1, 1), /* (251) Relentless Gladiator's Chain Gauntlets */
(38433, 41899, 1.49, 0, 1, 1), /* (245) Relentless Gladiator's Cord of Dominance */
(38433, 40928, 1.48, 0, 1, 1), /* (251) Relentless Gladiator's Ornamented Gloves */
(38433, 50836, 1.48, 0, 1, 1), /* (251) Frost Witch's Handguards */
(38433, 41941, 1.47, 0, 1, 1), /* (251) Relentless Gladiator's Satin Gloves */
(38433, 50844, 1.47, 0, 1, 1), /* (251) Frost Witch's Kilt */
(38433, 41299, 1.46, 0, 1, 1), /* (251) Relentless Gladiator's Kodohide Legguards */
(38433, 41008, 1.45, 0, 1, 1), /* (251) Relentless Gladiator's Mail Gauntlets */
(38433, 42006, 1.45, 0, 1, 1), /* (251) Relentless Gladiator's Felweave Trousers */
(38433, 42018, 1.45, 0, 1, 1), /* (251) Relentless Gladiator's Felweave Handguards */
(38433, 41138, 1.45, 0, 1, 1), /* (251) Relentless Gladiator's Linked Gauntlets */
(38433, 41882, 1.44, 0, 1, 1), /* (245) Relentless Gladiator's Cord of Salvation */
(38433, 40810, 1.44, 0, 1, 1), /* (251) Relentless Gladiator's Plate Gauntlets */
(38433, 40812, 1.43, 0, 1, 1), /* (251) Relentless Gladiator's Scaled Gauntlets */
(38433, 40984, 1.41, 0, 1, 1), /* (245) Relentless Gladiator's Bracers of Salvation */
(38433, 41028, 1.41, 0, 1, 1), /* (251) Relentless Gladiator's Ringmail Leggings */
(38433, 40850, 1.4, 0, 1, 1), /* (251) Relentless Gladiator's Plate Legguards */
(38433, 41904, 1.39, 0, 1, 1), /* (245) Relentless Gladiator's Treads of Dominance */
(38433, 41928, 1.39, 0, 1, 1), /* (251) Relentless Gladiator's Satin Leggings */
(38433, 41668, 1.39, 0, 1, 1), /* (251) Relentless Gladiator's Dragonhide Legguards */
(38433, 41960, 1.38, 0, 1, 1), /* (251) Relentless Gladiator's Silk Trousers */
(38433, 41833, 1.38, 0, 1, 1), /* (245) Relentless Gladiator's Belt of Triumph */
(38433, 40884, 1.37, 0, 1, 1), /* (245) Relentless Gladiator's Greaves of Triumph */
(38433, 41071, 1.35, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Dominance */
(38433, 41865, 1.35, 0, 1, 1), /* (251) Relentless Gladiator's Mooncloth Leggings */
(38433, 40979, 1.33, 0, 1, 1), /* (245) Relentless Gladiator's Greaves of Salvation */
(38433, 40852, 1.33, 0, 1, 1), /* (251) Relentless Gladiator's Scaled Legguards */
(38433, 41972, 1.31, 0, 1, 1), /* (251) Relentless Gladiator's Silk Handguards */
(38433, 42041, 1.31, 0, 1, 1), /* (245) Relentless Gladiator's Pendant of Triumph */
# Normal 25
(38462, 47242, 100, 0, 1, 1), --  Trophy
(38462, 47556, 20, 0, 1, 1), --  Crusader Orb
(38462, 51152, 7.68, 0, 1, 1), /* (264) Sanctified Ahn'Kahar Blood Hunter's Legguards */
(38462, 51209, 7.39, 0, 1, 1), /* (264) Sanctified Dark Coven Gloves */
(38462, 51188, 7.37, 0, 1, 1), /* (264) Sanctified Shadowblade Gauntlets */
(38462, 51157, 7.11, 0, 1, 1), /* (264) Sanctified Bloodmage Leggings */
(38462, 51159, 6.93, 0, 1, 1), /* (264) Sanctified Bloodmage Gloves */
(38462, 51154, 6.78, 0, 1, 1), /* (264) Sanctified Ahn'Kahar Blood Hunter's Handguards */
(38462, 51186, 6.75, 0, 1, 1), /* (264) Sanctified Shadowblade Legplates */
(38462, 51207, 6.71, 0, 1, 1), /* (264) Sanctified Dark Coven Leggings */
(38462, 51466, 4.1, 0, 1, 1), /* (270) Wrathful Gladiator's Silk Trousers */
(38462, 51495, 4.06, 0, 1, 1), /* (270) Wrathful Gladiator's Leather Legguards */
(38462, 51416, 3.98, 0, 1, 1), /* (270) Wrathful Gladiator's Dreadplate Legguards */
(38462, 51459, 3.95, 0, 1, 1), /* (270) Wrathful Gladiator's Chain Gauntlets */
(38462, 51128, 3.89, 0, 1, 1), /* (264) Sanctified Scourgelord Gauntlets */
(38462, 51179, 3.86, 0, 1, 1), /* (264) Sanctified Crimson Acolyte Gloves */
(38462, 51126, 3.83, 0, 1, 1), /* (264) Sanctified Scourgelord Legplates */
(38462, 51539, 3.64, 0, 1, 1), /* (270) Wrathful Gladiator's Felweave Trousers */
(38462, 51537, 3.62, 0, 1, 1), /* (270) Wrathful Gladiator's Felweave Handguards */
(38462, 51464, 3.62, 0, 1, 1), /* (270) Wrathful Gladiator's Silk Handguards */
(38462, 51213, 3.62, 0, 1, 1), /* (264) Sanctified Ymirjar Lord's Gauntlets */
(38462, 51542, 3.57, 0, 1, 1), /* (270) Wrathful Gladiator's Plate Gauntlets */
(38462, 51216, 3.58, 0, 1, 1), /* (264) Sanctified Ymirjar Lord's Legguards */
(38462, 51183, 3.58, 0, 1, 1), /* (264) Sanctified Crimson Acolyte Handwraps */
(38462, 51217, 3.57, 0, 1, 1), /* (264) Sanctified Ymirjar Lord's Handguards */
(38462, 51544, 3.55, 0, 1, 1), /* (270) Wrathful Gladiator's Plate Legguards */
(38462, 51461, 3.5, 0, 1, 1), /* (270) Wrathful Gladiator's Chain Leggings */
(38462, 51131, 3.48, 0, 1, 1), /* (264) Sanctified Scourgelord Legguards */
(38462, 51493, 3.46, 0, 1, 1), /* (270) Wrathful Gladiator's Leather Gloves */
(38462, 51132, 3.45, 0, 1, 1), /* (264) Sanctified Scourgelord Handguards */
(38462, 51181, 3.4, 0, 1, 1), /* (264) Sanctified Crimson Acolyte Pants */
(38462, 51177, 3.38, 0, 1, 1), /* (264) Sanctified Crimson Acolyte Leggings */
(38462, 51414, 3.38, 0, 1, 1), /* (270) Wrathful Gladiator's Dreadplate Gauntlets */
(38462, 51211, 3.24, 0, 1, 1), /* (264) Sanctified Ymirjar Lord's Legplates */
(38462, 51172, 2.66, 0, 1, 1), /* (264) Sanctified Lightsworn Handguards */
(38462, 51146, 2.6, 0, 1, 1), /* (264) Sanctified Lasherweave Trousers */
(38462, 51359, 2.6, 0, 1, 1), /* (264) Wrathful Gladiator's Girdle of Salvation */
(38462, 51369, 2.59, 0, 1, 1), /* (264) Wrathful Gladiator's Boots of Triumph */
(38462, 51169, 2.58, 0, 1, 1), /* (264) Sanctified Lightsworn Gloves */
(38462, 51350, 2.55, 0, 1, 1), /* (264) Wrathful Gladiator's Waistguard of Triumph */
(38462, 51138, 2.54, 0, 1, 1), /* (264) Sanctified Lasherweave Gauntlets */
(38462, 51148, 2.48, 0, 1, 1), /* (264) Sanctified Lasherweave Gloves */
(38462, 51191, 2.51, 0, 1, 1), /* (264) Sanctified Frost Witch's Handguards */
(38462, 51168, 2.49, 0, 1, 1), /* (264) Sanctified Lightsworn Greaves */
(38462, 51163, 2.47, 0, 1, 1), /* (264) Sanctified Lightsworn Gauntlets */
(38462, 51171, 2.44, 0, 1, 1), /* (264) Sanctified Lightsworn Legguards */
(38462, 51351, 2.44, 0, 1, 1), /* (264) Wrathful Gladiator's Sabatons of Triumph */
(38462, 51144, 2.42, 0, 1, 1), /* (264) Sanctified Lasherweave Handgrips */
(38462, 51360, 2.43, 0, 1, 1), /* (264) Wrathful Gladiator's Greaves of Salvation */
(38462, 51201, 2.4, 0, 1, 1), /* (264) Sanctified Frost Witch's Gloves */
(38462, 51161, 2.36, 0, 1, 1), /* (264) Sanctified Lightsworn Legplates */
(38462, 51327, 2.36, 0, 1, 1), /* (264) Wrathful Gladiator's Cord of Dominance */
(38462, 51136, 2.35, 0, 1, 1), /* (264) Sanctified Lasherweave Legplates */
(38462, 51203, 2.32, 0, 1, 1), /* (264) Sanctified Frost Witch's Kilt */
(38462, 51328, 2.3, 0, 1, 1), /* (264) Wrathful Gladiator's Treads of Dominance */
(38462, 51196, 2.28, 0, 1, 1), /* (264) Sanctified Frost Witch's Grips */
(38462, 51198, 2.24, 0, 1, 1), /* (264) Sanctified Frost Witch's War-Kilt */
(38462, 51193, 2.23, 0, 1, 1), /* (264) Sanctified Frost Witch's Legguards */
(38462, 51336, 2.18, 0, 1, 1), /* (264) Wrathful Gladiator's Band of Dominance */
(38462, 51142, 2.17, 0, 1, 1), /* (264) Sanctified Lasherweave Legguards */
(38462, 51363, 2.16, 0, 1, 1), /* (264) Wrathful Gladiator's Greaves of Triumph */
(38462, 51368, 2.17, 0, 1, 1), /* (264) Wrathful Gladiator's Belt of Triumph */
(38462, 51365, 2.15, 0, 1, 1), /* (264) Wrathful Gladiator's Cord of Salvation */
(38462, 51477, 2.1, 0, 1, 1), /* (270) Wrathful Gladiator's Scaled Legguards */
(38462, 51361, 2.09, 0, 1, 1), /* (264) Wrathful Gladiator's Bracers of Salvation */
(38462, 51367, 2.07, 0, 1, 1), /* (264) Wrathful Gladiator's Cuffs of Salvation */
(38462, 51362, 2.07, 0, 1, 1), /* (264) Wrathful Gladiator's Girdle of Triumph */
(38462, 51357, 2.05, 0, 1, 1), /* (264) Wrathful Gladiator's Pendant of Victory */
(38462, 51354, 2.03, 0, 1, 1), /* (264) Wrathful Gladiator's Cloak of Triumph */
(38462, 51485, 2.01, 0, 1, 1), /* (270) Wrathful Gladiator's Mooncloth Leggings */
(38462, 51366, 2.02, 0, 1, 1), /* (264) Wrathful Gladiator's Treads of Salvation */
(38462, 51471, 2, 0, 1, 1), /* (270) Wrathful Gladiator's Ornamented Legplates */
(38462, 51488, 1.96, 0, 1, 1), /* (270) Wrathful Gladiator's Satin Gloves */
(38462, 51358, 1.91, 0, 1, 1), /* (264) Wrathful Gladiator's Band of Triumph */
(38462, 51329, 1.91, 0, 1, 1), /* (264) Wrathful Gladiator's Cuffs of Dominance */
(38462, 51475, 1.91, 0, 1, 1), /* (270) Wrathful Gladiator's Scaled Gauntlets */
(38462, 51490, 1.84, 0, 1, 1), /* (270) Wrathful Gladiator's Satin Leggings */
(38462, 51364, 1.81, 0, 1, 1), /* (264) Wrathful Gladiator's Bracers of Triumph */
(38462, 51355, 1.79, 0, 1, 1), /* (264) Wrathful Gladiator's Pendant of Triumph */
(38462, 51370, 1.77, 0, 1, 1), /* (264) Wrathful Gladiator's Armwraps of Triumph */
(38462, 51356, 1.77, 0, 1, 1), /* (264) Wrathful Gladiator's Cloak of Victory */
(38462, 51469, 1.76, 0, 1, 1), /* (270) Wrathful Gladiator's Ornamented Gloves */
(38462, 51352, 1.73, 0, 1, 1), /* (264) Wrathful Gladiator's Wristguards of Triumph */
(38462, 51483, 1.7, 0, 1, 1), /* (270) Wrathful Gladiator's Mooncloth Gloves */
(38462, 51426, 1.44, 0, 1, 1), /* (270) Wrathful Gladiator's Dragonhide Gloves */
(38462, 51512, 1.42, 0, 1, 1), /* (270) Wrathful Gladiator's Mail Leggings */
(38462, 51504, 1.4, 0, 1, 1), /* (270) Wrathful Gladiator's Linked Gauntlets */
(38462, 51500, 1.36, 0, 1, 1), /* (270) Wrathful Gladiator's Ringmail Leggings */
(38462, 51422, 1.31, 0, 1, 1), /* (270) Wrathful Gladiator's Kodohide Legguards */
(38462, 51434, 1.28, 0, 1, 1), /* (270) Wrathful Gladiator's Wyrmhide Gloves */
(38462, 51506, 1.28, 0, 1, 1), /* (270) Wrathful Gladiator's Linked Leggings */
(38462, 51344, 1.28, 0, 1, 1), /* (264) Wrathful Gladiator's Boots of Dominance */
(38462, 51374, 1.27, 0, 1, 1), /* (264) Wrathful Gladiator's Waistguard of Dominance */
(38462, 51498, 1.25, 0, 1, 1), /* (270) Wrathful Gladiator's Ringmail Gauntlets */
(38462, 51510, 1.24, 0, 1, 1), /* (270) Wrathful Gladiator's Mail Gauntlets */
(38462, 51420, 1.22, 0, 1, 1), /* (270) Wrathful Gladiator's Kodohide Gloves */
(38462, 51428, 1.21, 0, 1, 1), /* (270) Wrathful Gladiator's Dragonhide Legguards */
(38462, 51371, 1.16, 0, 1, 1), /* (264) Wrathful Gladiator's Waistguard of Salvation */
(38462, 51341, 1.13, 0, 1, 1), /* (264) Wrathful Gladiator's Boots of Salvation */
(38462, 51345, 1.11, 0, 1, 1), /* (264) Wrathful Gladiator's Armwraps of Dominance */
(38462, 51436, 1.08, 0, 1, 1), /* (270) Wrathful Gladiator's Wyrmhide Legguards */
(38462, 51342, 1.06, 0, 1, 1); /* (264) Wrathful Gladiator's Armwraps of Salvation */

-- [35013] Koralon the Flame Watcher (159)
UPDATE `creature_template` SET `LootID`= 35013 WHERE `entry` = 35013;
UPDATE `creature_template` SET `LootID`= 3501301 WHERE `entry` = 35360;
DELETE FROM `creature_loot_template` WHERE `entry` IN(35013, 35360);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
# Normal 10
(35013, 47241, 5.48, 0, 1, 1), /* (80) Emblem of Triumph */
(35013, 48254, 2.56, 0, 1, 1), /* (232) Windrunner's Handguards of Conquest */
(35013, 47785, 2.55, 0, 1, 1), /* (232) Kel'Thuzad's Leggings of Conquest */
(35013, 48222, 2.54, 0, 1, 1), /* (232) VanCleef's Gauntlets of Conquest */
(35013, 41655, 2.54, 0, 1, 1), /* (232) Furious Gladiator's Leather Legguards */
(35013, 40807, 2.52, 0, 1, 1), /* (232) Furious Gladiator's Plate Gauntlets */
(35013, 40847, 2.52, 0, 1, 1), /* (232) Furious Gladiator's Plate Legguards */
(35013, 48375, 2.47, 0, 1, 1), /* (232) Wrynn's Gauntlets of Conquest */
(35013, 48278, 2.47, 0, 1, 1), /* (232) Windrunner's Legguards of Conquest */
(35013, 47775, 2.47, 0, 1, 1), /* (232) Sunstrider's Leggings of Conquest */
(35013, 40927, 2.45, 0, 1, 1), /* (232) Furious Gladiator's Ornamented Gloves */
(35013, 48252, 2.43, 0, 1, 1), /* (232) Windrunner's Legguards of Conquest */
(35013, 41767, 2.42, 0, 1, 1), /* (232) Furious Gladiator's Leather Gloves */
(35013, 42017, 2.41, 0, 1, 1), /* (232) Furious Gladiator's Felweave Handguards */
(35013, 48276, 2.4, 0, 1, 1), /* (232) Windrunner's Handguards of Conquest */
(35013, 40809, 2.38, 0, 1, 1), /* (232) Furious Gladiator's Dreadplate Gauntlets */
(35013, 41205, 2.36, 0, 1, 1), /* (232) Furious Gladiator's Chain Leggings */
(35013, 48220, 2.35, 0, 1, 1), /* (232) VanCleef's Legplates of Conquest */
(35013, 47800, 2.35, 0, 1, 1), /* (232) Gul'dan's Leggings of Conquest */
(35013, 48244, 2.35, 0, 1, 1), /* (232) Garona's Gauntlets of Conquest */
(35013, 47752, 2.34, 0, 1, 1), /* (232) Khadgar's Gauntlets of Conquest */
(35013, 40848, 2.32, 0, 1, 1), /* (232) Furious Gladiator's Dreadplate Legguards */
(35013, 47773, 2.32, 0, 1, 1), /* (232) Sunstrider's Gauntlets of Conquest */
(35013, 48246, 2.3, 0, 1, 1), /* (232) Garona's Legplates of Conquest */
(35013, 41971, 2.27, 0, 1, 1), /* (232) Furious Gladiator's Silk Handguards */
(35013, 41959, 2.27, 0, 1, 1), /* (232) Furious Gladiator's Silk Trousers */
(35013, 47750, 2.26, 0, 1, 1), /* (232) Khadgar's Leggings of Conquest */
(35013, 47802, 2.24, 0, 1, 1), /* (232) Gul'dan's Gloves of Conquest */
(35013, 42005, 2.22, 0, 1, 1), /* (232) Furious Gladiator's Felweave Trousers */
# Normal 25
(35360, 47242, 100, 0, 1, 1), --  Trophy
(35360, 47556, 20, 0, 1, 1), --  Crusader Orb
(35360, 47241, 5.8, 0, 1, 1), /* (80) Emblem of Triumph */
(35360, 47772, 5.37, 0, 1, 1), /* (245) Sunstrider's Gauntlets of Triumph */
(35360, 48241, 5.26, 0, 1, 1), /* (245) Garona's Gauntlets of Triumph */
(35360, 48273, 5.21, 0, 1, 1), /* (245) Windrunner's Handguards of Triumph */
(35360, 48224, 5.04, 0, 1, 1), /* (245) VanCleef's Gauntlets of Triumph */
(35360, 47753, 5, 0, 1, 1), /* (245) Khadgar's Gauntlets of Triumph */
(35360, 47782, 5.01, 0, 1, 1), /* (245) Kel'Thuzad's Gloves of Triumph */
(35360, 47803, 4.95, 0, 1, 1), /* (245) Gul'dan's Gloves of Triumph */
(35360, 48256, 4.92, 0, 1, 1), /* (245) Windrunner's Handguards of Triumph */
(35360, 48239, 4.89, 0, 1, 1), /* (245) Garona's Legplates of Triumph */
(35360, 48226, 4.73, 0, 1, 1), /* (245) VanCleef's Legplates of Triumph */
(35360, 47755, 4.73, 0, 1, 1), /* (245) Khadgar's Leggings of Triumph */
(35360, 47805, 4.6, 0, 1, 1), /* (245) Gul'dan's Leggings of Triumph */
(35360, 48271, 4.51, 0, 1, 1), /* (245) Windrunner's Legguards of Triumph */
(35360, 48258, 4.42, 0, 1, 1), /* (245) Windrunner's Legguards of Triumph */
(35360, 47770, 4.41, 0, 1, 1), /* (245) Sunstrider's Leggings of Triumph */
(35360, 47780, 4.19, 0, 1, 1), /* (245) Kel'Thuzad's Leggings of Triumph */
(35360, 41236, 3.47, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Triumph */
(35360, 41882, 3.41, 0, 1, 1), /* (245) Relentless Gladiator's Cord of Salvation */
(35360, 40979, 3.39, 0, 1, 1), /* (245) Relentless Gladiator's Greaves of Salvation */
(35360, 41865, 3.38, 0, 1, 1), /* (251) Relentless Gladiator's Mooncloth Leggings */
(35360, 40978, 3.29, 0, 1, 1), /* (245) Relentless Gladiator's Girdle of Salvation */
(35360, 41034, 3.27, 0, 1, 1), /* (251) Relentless Gladiator's Mail Leggings */
(35360, 41904, 3.25, 0, 1, 1), /* (245) Relentless Gladiator's Treads of Dominance */
(35360, 41972, 3.2, 0, 1, 1), /* (251) Relentless Gladiator's Silk Handguards */
(35360, 40883, 3.15, 0, 1, 1), /* (245) Relentless Gladiator's Girdle of Triumph */
(35360, 41226, 3.15, 0, 1, 1), /* (245) Relentless Gladiator's Wristguards of Triumph */
(35360, 40928, 3.1, 0, 1, 1), /* (251) Relentless Gladiator's Ornamented Gloves */
(35360, 41899, 3.08, 0, 1, 1), /* (245) Relentless Gladiator's Cord of Dominance */
(35360, 41206, 3.08, 0, 1, 1), /* (251) Relentless Gladiator's Chain Leggings */
(35360, 42006, 3.08, 0, 1, 1), /* (251) Relentless Gladiator's Felweave Trousers */
(35360, 41928, 3.07, 0, 1, 1), /* (251) Relentless Gladiator's Satin Leggings */
(35360, 40812, 3.07, 0, 1, 1), /* (251) Relentless Gladiator's Scaled Gauntlets */
(35360, 42018, 3.07, 0, 1, 1), /* (251) Relentless Gladiator's Felweave Handguards */
(35360, 40884, 3.05, 0, 1, 1), /* (245) Relentless Gladiator's Greaves of Triumph */
(35360, 41656, 3.05, 0, 1, 1), /* (251) Relentless Gladiator's Leather Legguards */
(35360, 41028, 3.05, 0, 1, 1), /* (251) Relentless Gladiator's Ringmail Leggings */
(35360, 40851, 3, 0, 1, 1), /* (251) Relentless Gladiator's Dreadplate Legguards */
(35360, 41875, 2.99, 0, 1, 1), /* (251) Relentless Gladiator's Mooncloth Gloves */
(35360, 41305, 2.99, 0, 1, 1), /* (251) Relentless Gladiator's Wyrmhide Legguards */
(35360, 41837, 2.98, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Triumph */
(35360, 41774, 2.96, 0, 1, 1), /* (251) Relentless Gladiator's Dragonhide Gloves */
(35360, 40850, 2.96, 0, 1, 1), /* (251) Relentless Gladiator's Plate Legguards */
(35360, 40810, 2.96, 0, 1, 1), /* (251) Relentless Gladiator's Plate Gauntlets */
(35360, 41138, 2.96, 0, 1, 1), /* (251) Relentless Gladiator's Linked Gauntlets */
(35360, 40940, 2.96, 0, 1, 1), /* (251) Relentless Gladiator's Ornamented Legplates */
(35360, 41231, 2.95, 0, 1, 1), /* (245) Relentless Gladiator's Sabatons of Triumph */
(35360, 41299, 2.95, 0, 1, 1), /* (251) Relentless Gladiator's Kodohide Legguards */
(35360, 40852, 2.92, 0, 1, 1), /* (251) Relentless Gladiator's Scaled Legguards */
(35360, 40811, 2.92, 0, 1, 1), /* (251) Relentless Gladiator's Dreadplate Gauntlets */
(35360, 41288, 2.92, 0, 1, 1), /* (251) Relentless Gladiator's Kodohide Gloves */
(35360, 41200, 2.89, 0, 1, 1), /* (251) Relentless Gladiator's Linked Leggings */
(35360, 41886, 2.86, 0, 1, 1), /* (245) Relentless Gladiator's Treads of Salvation */
(35360, 42118, 2.87, 0, 1, 1), /* (245) Relentless Gladiator's Band of Ascendancy */
(35360, 48066, 2.83, 0, 1, 1), /* (245) Zabra's Gloves of Triumph */
(35360, 42041, 2.82, 0, 1, 1), /* (245) Relentless Gladiator's Pendant of Triumph */
(35360, 41894, 2.82, 0, 1, 1), /* (245) Relentless Gladiator's Cuffs of Salvation */
(35360, 41768, 2.81, 0, 1, 1), /* (251) Relentless Gladiator's Leather Gloves */
(35360, 41833, 2.81, 0, 1, 1), /* (245) Relentless Gladiator's Belt of Triumph */
(35360, 41960, 2.8, 0, 1, 1), /* (251) Relentless Gladiator's Silk Trousers */
(35360, 41841, 2.8, 0, 1, 1), /* (245) Relentless Gladiator's Armwraps of Triumph */
(35360, 42119, 2.78, 0, 1, 1), /* (245) Relentless Gladiator's Band of Victory */
(35360, 42081, 2.77, 0, 1, 1), /* (245) Relentless Gladiator's Cloak of Triumph */
(35360, 48096, 2.77, 0, 1, 1), /* (245) Zabra's Handwraps of Triumph */
(35360, 41294, 2.75, 0, 1, 1), /* (251) Relentless Gladiator's Wyrmhide Gloves */
(35360, 41668, 2.74, 0, 1, 1), /* (251) Relentless Gladiator's Dragonhide Legguards */
(35360, 42042, 2.73, 0, 1, 1), /* (245) Relentless Gladiator's Pendant of Victory */
(35360, 41008, 2.68, 0, 1, 1), /* (251) Relentless Gladiator's Mail Gauntlets */
(35360, 41002, 2.69, 0, 1, 1), /* (251) Relentless Gladiator's Ringmail Gauntlets */
(35360, 41144, 2.64, 0, 1, 1), /* (251) Relentless Gladiator's Chain Gauntlets */
(35360, 48446, 2.64, 0, 1, 1), /* (245) Wrynn's Legguards of Triumph */
(35360, 48094, 2.62, 0, 1, 1), /* (245) Zabra's Pants of Triumph */
(35360, 40890, 2.61, 0, 1, 1), /* (245) Relentless Gladiator's Bracers of Triumph */
(35360, 41910, 2.59, 0, 1, 1), /* (245) Relentless Gladiator's Cuffs of Dominance */
(35360, 41941, 2.59, 0, 1, 1), /* (251) Relentless Gladiator's Satin Gloves */
(35360, 48064, 2.58, 0, 1, 1), /* (245) Zabra's Leggings of Triumph */
(35360, 42082, 2.57, 0, 1, 1), /* (245) Relentless Gladiator's Cloak of Victory */
(35360, 48077, 2.53, 0, 1, 1), /* (245) Velen's Handwraps of Triumph */
(35360, 40984, 2.52, 0, 1, 1), /* (245) Relentless Gladiator's Bracers of Salvation */
(35360, 48484, 2.51, 0, 1, 1), /* (245) Thassarian's Legplates of Triumph */
(35360, 48539, 2.5, 0, 1, 1), /* (245) Thassarian's Handguards of Triumph */
(35360, 48452, 2.49, 0, 1, 1), /* (245) Wrynn's Handguards of Triumph */
(35360, 48541, 2.48, 0, 1, 1), /* (245) Thassarian's Legguards of Triumph */
(35360, 48499, 2.42, 0, 1, 1), /* (245) Koltira's Gauntlets of Triumph */
(35360, 48377, 2.43, 0, 1, 1), /* (245) Wrynn's Gauntlets of Triumph */
(35360, 48462, 2.41, 0, 1, 1), /* (245) Hellscream's Handguards of Triumph */
(35360, 48079, 2.41, 0, 1, 1), /* (245) Velen's Pants of Triumph */
(35360, 48392, 2.4, 0, 1, 1), /* (245) Hellscream's Gauntlets of Triumph */
(35360, 48556, 2.32, 0, 1, 1), /* (245) Koltira's Handguards of Triumph */
(35360, 47983, 2.31, 0, 1, 1), /* (245) Velen's Gloves of Triumph */
(35360, 47985, 2.31, 0, 1, 1), /* (245) Velen's Leggings of Triumph */
(35360, 48482, 2.27, 0, 1, 1), /* (245) Thassarian's Gauntlets of Triumph */
(35360, 48379, 2.14, 0, 1, 1), /* (245) Wrynn's Legplates of Triumph */
(35360, 48593, 2.09, 0, 1, 1), /* (245) Liadrin's Gloves of Triumph */
(35360, 48625, 1.99, 0, 1, 1), /* (245) Liadrin's Gauntlets of Triumph */
(35360, 48464, 1.97, 0, 1, 1), /* (245) Hellscream's Legguards of Triumph */
(35360, 48554, 1.9, 0, 1, 1), /* (245) Koltira's Legguards of Triumph */
(35360, 48394, 1.87, 0, 1, 1), /* (245) Hellscream's Legplates of Triumph */
(35360, 48658, 1.82, 0, 1, 1), /* (245) Liadrin's Handguards of Triumph */
(35360, 48497, 1.82, 0, 1, 1), /* (245) Koltira's Legplates of Triumph */
(35360, 48349, 1.8, 0, 1, 1), /* (245) Nobundo's War-Kilt of Triumph */
(35360, 48301, 1.78, 0, 1, 1), /* (245) Thrall's Handguards of Triumph */
(35360, 48317, 1.78, 0, 1, 1), /* (245) Nobundo's Gloves of Triumph */
(35360, 48334, 1.77, 0, 1, 1), /* (245) Thrall's Gloves of Triumph */
(35360, 48163, 1.75, 0, 1, 1), /* (245) Malfurion's Gloves of Triumph */
(35360, 48576, 1.72, 0, 1, 1), /* (245) Turalyon's Gloves of Triumph */
(35360, 48640, 1.71, 0, 1, 1), /* (245) Turalyon's Handguards of Triumph */
(35360, 48362, 1.71, 0, 1, 1), /* (245) Thrall's War-Kilt of Triumph */
(35360, 48578, 1.71, 0, 1, 1), /* (245) Turalyon's Greaves of Triumph */
(35360, 48182, 1.68, 0, 1, 1), /* (245) Runetotem's Gloves of Triumph */
(35360, 48193, 1.68, 0, 1, 1), /* (245) Runetotem's Handgrips of Triumph */
(35360, 48660, 1.66, 0, 1, 1), /* (245) Liadrin's Legguards of Triumph */
(35360, 48347, 1.65, 0, 1, 1), /* (245) Nobundo's Grips of Triumph */
(35360, 48212, 1.65, 0, 1, 1), /* (245) Malfurion's Handgrips of Triumph */
(35360, 48286, 1.63, 0, 1, 1), /* (245) Nobundo's Handguards of Triumph */
(35360, 48610, 1.62, 0, 1, 1), /* (245) Turalyon's Legplates of Triumph */
(35360, 48364, 1.63, 0, 1, 1), /* (245) Thrall's Grips of Triumph */
(35360, 41056, 1.63, 0, 1, 1), /* (245) Relentless Gladiator's Sabatons of Salvation */
(35360, 41061, 1.62, 0, 1, 1), /* (245) Relentless Gladiator's Wristguards of Salvation */
(35360, 48133, 1.6, 0, 1, 1), /* (245) Malfurion's Handguards of Triumph */
(35360, 48623, 1.59, 0, 1, 1), /* (245) Liadrin's Legplates of Triumph */
(35360, 48135, 1.57, 0, 1, 1), /* (245) Malfurion's Leggings of Triumph */
(35360, 41636, 1.57, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Dominance */
(35360, 48288, 1.55, 0, 1, 1), /* (245) Nobundo's Legguards of Triumph */
(35360, 48638, 1.54, 0, 1, 1), /* (245) Turalyon's Legguards of Triumph */
(35360, 48591, 1.53, 0, 1, 1), /* (245) Liadrin's Greaves of Triumph */
(35360, 48210, 1.51, 0, 1, 1), /* (245) Malfurion's Legguards of Triumph */
(35360, 41622, 1.5, 0, 1, 1), /* (245) Relentless Gladiator's Boots of Salvation */
(35360, 48303, 1.5, 0, 1, 1), /* (245) Thrall's Legguards of Triumph */
(35360, 41071, 1.5, 0, 1, 1), /* (245) Relentless Gladiator's Waistguard of Dominance */
(35360, 41052, 1.5, 0, 1, 1); /* (245) Relentless Gladiator's Waistguard of Salvation */