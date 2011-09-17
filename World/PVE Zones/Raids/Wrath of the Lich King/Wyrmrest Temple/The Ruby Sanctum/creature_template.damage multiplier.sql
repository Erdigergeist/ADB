-- DMG Multiplier
-- Boss Zarithrian
UPDATE `creature_template` SET `dmg_multiplier` = '45' WHERE `entry` = '39746';
UPDATE `creature_template` SET `dmg_multiplier` = '55' WHERE `entry` = '39805';
-- Trash
UPDATE `creature_template` SET `dmg_multiplier` = '30' WHERE `entry` IN ('40419', '40417', '40421', '40423');
UPDATE `creature_template` SET `dmg_multiplier` = '50' WHERE `entry` IN ('40420', '40418', '40422', '40424');