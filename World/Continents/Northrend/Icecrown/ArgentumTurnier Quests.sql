UPDATE `creature_template` SET `spell2` = '62626', `spell3` = '63003' WHERE `entry` IN ('33845', '33844');

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '', `unit_flags` = '131076', `dynamicflags` = '136' WHERE `entry` IN ('33229', '33243', '33272');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='33229' AND `source_type`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('33229', '0', '0', '1', '8', '0', '100', '0', '62544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', ''),
('33229', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '33341', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='33243' AND `source_type`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('33243', '0', '0', '1', '8', '0', '100', '0', '62626', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', ''),
('33243', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '33339', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '');

DELETE FROM `smart_scripts` WHERE (`entryorguid`='33272' AND `source_type`='0');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('33272', '0', '0', '1', '8', '0', '100', '0', '63003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', ''),
('33272', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '33', '33340', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '');



DELETE FROM `smart_scripts` WHERE `entryorguid` IN ('33973', '33972', '33974');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('33973', '0', '0', '0', '62', '0', '100', '0', '10398', '1', '0', '0', '33', '33973', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest Den Nahkampf Beherrschen'),
('33972', '0', '0', '0', '62', '0', '100', '0', '10400', '1', '0', '0', '33', '33972', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest Den Ansturmangriff Beherrschen'),
('33974', '0', '0', '0', '62', '0', '100', '0', '10402', '1', '0', '0', '33', '33974', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest Den Schildbrecherangriff Beherrschen');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN ('33973', '33972', '33974');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN ('10398', '10400', '10402');
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
('10398', '1', '0', 'Erzaehlt mir etwas ueber den Nahkampf', '1', '1', '0', '0', '0', '0', ''),
('10400', '1', '0', 'Erzaehlt mir etwas ueber den Ansturmangriff', '1', '1', '0', '0', '0', '0', ''),
('10402', '1', '0', 'Erzaehlt mir etwas ueber den Schildbrecherangriff', '1', '1', '0', '0', '0', '0', '');