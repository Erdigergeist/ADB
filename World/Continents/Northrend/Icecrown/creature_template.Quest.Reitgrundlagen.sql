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