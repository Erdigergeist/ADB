UPDATE `item_template` SET `LootID`= 44113 WHERE `entry` = 44113;
DELETE FROM `item_loot_template` WHERE `entry` IN(44113);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `Groupid`, `mincountOrRef`, `maxcount`) VALUES
('44113','33871','0.6','1','0','1','1'),
('44113','33925','0.6','1','0','1','1'),
('44113','34834','0.4','1','0','1','1'),
('44113','43007','100','1','0','1','6'),
('44113','43016','41','1','0','1','1'),
('44113','44114','19','1','0','3','5'),
('44113','44228','20','1','0','3','5');