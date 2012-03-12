DELETE FROM `creature_loot_template` WHERE `entry`='0';
INSERT INTO `creature_loot_template` VALUES 
('22911', '32358', '100', '1', '0', '1', '1');

UPDATE `creature_template` SET `lootid` = '22911' WHERE `entry` = '22911';