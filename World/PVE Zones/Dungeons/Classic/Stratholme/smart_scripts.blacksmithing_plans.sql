DELETE FROM `smart_scripts` WHERE (`entryorguid`=176325 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(176325, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 12, 11120, 6, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Crimson Hammersmith when Blacksmithing Plans were looted');

DELETE FROM `smart_scripts` WHERE (`entryorguid`=176327 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(176327, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 12, 11121, 6, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Black Guard Swordsmith when Blacksmithing Plans were looted');

UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` IN ('176325', '176327');