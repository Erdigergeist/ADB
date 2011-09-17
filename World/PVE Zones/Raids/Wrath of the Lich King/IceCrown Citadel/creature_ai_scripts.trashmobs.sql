-- Diener des Throns
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36724');
INSERT INTO `creature_ai_scripts` VALUES 
('3672401', '36724', '0', '6', '100', '31', '15000', '15000', '15000', '15000', '11', '71029', '4', '1', '', '', '', '', '', '', '', '', 'Servant of the Throne - Glacial Blast');

-- Todesgeweihter Wächter
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37007');
INSERT INTO `creature_ai_scripts` VALUES 
('3700701', '37007', '0', '6', '100', '31', '5000', '5000', '5000', '5000', '11', '71021', '1', '1', '', '', '', '', '', '', '', '', 'Todesgeweihter Waechter - Saebelhieb'),
('3700702', '37007', '0', '6', '100', '31', '19000', '19000', '19000', '19000', '11', '71022', '0', '1', '', '', '', '', '', '', '', '', 'Todesgeweihter Waechter - Unterbrechender Schrei');

-- Gefräßige Monstrosität
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37886');
INSERT INTO `creature_ai_scripts` VALUES 
('3788601', '37886', '0', '6', '100', '3', '20000', '20000', '20000', '20000', '11', '70633', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 10'),
('3788602', '37886', '0', '6', '100', '5', '20000', '20000', '20000', '20000', '11', '71283', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 25'),
('3788603', '37886', '0', '6', '100', '9', '20000', '20000', '20000', '20000', '11', '72025', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 10h'),
('3788604', '37886', '0', '6', '100', '17', '20000', '20000', '20000', '20000', '11', '72026', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 25h');

-- Loderndes Skelett
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36791');
INSERT INTO `creature_ai_scripts` VALUES 
('3679101', '36791', '0', '6', '100', '3', '6000', '6000', '6000', '6000', '11', '70754', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 10'),
('3679102', '36791', '0', '6', '100', '5', '6000', '6000', '6000', '6000', '11', '71748', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 25'),
('3679103', '36791', '0', '6', '100', '9', '6000', '6000', '6000', '6000', '11', '72023', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 10h'),
('3679104', '36791', '0', '6', '100', '17', '6000', '6000', '6000', '6000', '11', '72024', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 25h'),
('3679105', '36791', '0', '6', '100', '11', '20000', '20000', '20000', '20000', '11', '69325', '0', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Verwuesten 10'),
('3679106', '36791', '0', '6', '100', '21', '20000', '20000', '20000', '20000', '11', '71730', '0', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Verwuesten 25');

-- Sinistrer Berater
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37571');
INSERT INTO `creature_ai_scripts` VALUES 
('3757101', '37571', '0', '6', '100', '11', '6000', '6000', '6000', '6000', '11', '72057', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Lichslap 10'),
('3757102', '37571', '0', '6', '100', '21', '6000', '6000', '6000', '6000', '11', '72421', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Lichslap 25'),
('3757103', '37571', '0', '6', '100', '31', '19000', '22000', '19000', '22000', '11', '72065', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Shroud of Protection'),
('3757104', '37571', '0', '6', '100', '31', '19000', '22000', '19000', '22000', '11', '72066', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Shroud of Spell Warding');

-- Sinistrer Erzmagier
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37664');
INSERT INTO `creature_ai_scripts` VALUES 
('3766401', '37664', '0', '6', '100', '11', '20000', '20000', '20000', '20000', '11', '70408', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Amplify Magic 10'),
('3766402', '37664', '0', '6', '100', '21', '20000', '20000', '20000', '20000', '11', '72336', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Amplify Magic 25'),
('3766403', '37664', '0', '6', '100', '11', '10000', '12000', '10000', '12000', '11', '70407', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Blast Wave 10'),
('3766404', '37664', '0', '6', '100', '21', '10000', '12000', '10000', '12000', '11', '71151', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Blast Wave 25'),
('3766405', '37664', '0', '6', '100', '11', '15000', '17000', '15000', '17000', '11', '70409', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Fireball 10'),
('3766406', '37664', '0', '6', '100', '21', '15000', '17000', '15000', '17000', '11', '71153', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Fireball 25'),
('3766407', '37664', '0', '6', '100', '31', '10000', '14000', '10000', '14000', '11', '71153', '5', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Polymorph');

-- Sinistrer Blutritter
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37595');
INSERT INTO `creature_ai_scripts` VALUES 
('3759501', '37595', '11', '6', '100', '31', '', '', '', '', '11', '71736', '0', '1', '', '', '', '', '', '', '', '', 'Darkfallen Blood Knight - Vampiric Aura'),
('3759502', '37595', '0', '6', '100', '31', '7000', '7000', '7000', '7000', '11', '70437', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Blood Knight - Unholy Strike');

-- Sinistrer Kommandant
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37662 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37662, 0, 0, 1, 0, 0, 100, 30, 1, 1, 1, 1, 11, 70750, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(37662, 0, 1, '', 0, 0, 100, 30, 60000, 60000, '', '', 11, 70750, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(37662, 0, 1, '', 0, 0, 100, 10, 18000, 22000, '', '', 11, 70449, '', '', '', '', '', 6, '', '', '', '', '', '', '', ''),
(37662, 0, 1, '', 0, 0, 100, 20, 18000, 22000, '', '', 11, 71155, '', '', '', '', '', 6, '', '', '', '', '', '', '', '');

-- Sinistrer Leutnant
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37665 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37665, 0, 0, '', 0, 0, 100, 10, 13000, 17000, '', '', 11, 70435, '', '', '', '', '', 18, 10, '', '', '', '', '', '', ''),
(37665, 0, 1, '', 0, 0, 100, 20, 13000, 17000, '', '', 11, 71154, '', '', '', '', '', 18, 10, '', '', '', '', '', '', ''),
(37665, 0, 2, '', 0, 0, 100, 30, 13000, 17000, '', '', 11, 70423, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Sinistrer Adliger
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37663 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37663, 0, 0, '', 0, 0, 100, 30, 15000, 19000, '', '', 11, 70645, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37663, 0, 1, '', 0, 0, 100, 10, 6000, 10000, '', '', 11, 72960, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37663, 0, 1, '', 0, 0, 100, 20, 6000, 10000, '', '', 11, 72961, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Sinistrer Taktiker
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37666 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37666, 0, 0, '', 0, 0, 100, 30, 13000, 17000, '', '', 11, 70432, '', '', '', '', '', 18, 15, '', '', '', '', '', '', ''),
(37666, 0, 1, '', 0, 0, 100, 30, 13000, 17000, '', '', 11, 70431, '', '', '', '', '', 18, 40, '', '', '', '', '', '', ''),
(37666, 0, 2, '', 0, 0, 100, 30, 8000, 12000, '', '', 11, 70437, '', '', '', '', '', 2, 40, '', '', '', '', '', '', '');

-- Knecht der Todessprecher
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36811 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36811, 0, 0, '', 0, 0, 100, 30, 8000, 12000, '', '', 11, 69387, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36811, 0, 1, '', 0, 0, 100, 10, 10000, 14000, '', '', 11, 69355, '', '', '', '', '', 2, '', '', '', '', '', '', '', ''),
(36811, 0, 1, '', 0, 0, 100, 20, 10000, 14000, '', '', 11, 71106, '', '', '', '', '', 2, '', '', '', '', '', '', '', '');

-- Jünger der Todessprecher
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36807 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36807, 0, 0, '', 0, 0, 100, 30, 15000, 19000, '', '', 11, 69391, '', '', '', '', '', 11, 0, 30, '', '', '', '', '', ''),
(36807, 0, 1, '', 0, 0, 100, 30, 10000, 14000, '', '', 11, 69387, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36807, 0, 2, '', 0, 0, 100, 10, 20000, 30000, '', '', 11, 69389, '', '', '', '', '', 11, 0, 40, '', '', '', '', '', ''),
(36807, 0, 3, '', 0, 0, 100, 20, 20000, 30000, '', '', 11, 71107, '', '', '', '', '', 11, 0, 40, '', '', '', '', '', '');

-- Hohepriester der Todessprecher
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36829 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36829, 0, 0, '', 4, 0, 100, 30, '', '', '', '', 11, 69491, '', '', '', '', '', 1, '', '', '', '', '', '', '', ''),
(36829, 0, 1, '', 0, 0, 100, 30, 8000, 12000, '', '', 11, 69483, '', '', '', '', '', 2, '', '', '', '', '', '', '', '');

-- Diener der Todessprecher
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36805 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36805, 0, 0, '', 0, 0, 100, 10, 13000, 17000, '', '', 11, 69576, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36805, 0, 1, '', 0, 0, 100, 20, 13000, 17000, '', '', 11, 71108, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36805, 0, 2, '', 0, 0, 100, 30, 18000, 22000, '', '', 11, 69405, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36805, 0, 3, '', 0, 0, 100, 10, 24000, 26000, '', '', 11, 69404, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36805, 0, 3, '', 0, 0, 100, 20, 24000, 26000, '', '', 11, 71112, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Zelot der Todessprecher
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36808 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36808, 0, 0, '', 0, 0, 100, 30, 8000, 12000, '', '', 11, 69492, '', '', '', '', '', 2, '', '', '', '', '', '', '', '');

-- Verwesender Koloss
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36880 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36880, 0, 0, '', 0, 0, 100, 10, 8000, 12000, '', '', 11, 71114, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(36880, 0, 1, '', 0, 0, 100, 20, 8000, 12000, '', '', 11, 71115, '', '', '', '', '', 0, '', '', '', '', '', '', '', '');

-- Empowered Vampiric Fiend
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37919 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37919, 0, 0, '', 63, 0, 100, 30, '', '', '', '', 11, 41290, '', '', '', '', '', 1, '', '', '', '', '', '', '', ''),
(37919, 0, 1, '', 0, 0, 100, 30, 60000, 65000, '', '', 11, 70711, '', '', '', '', '', 1, '', '', '', '', '', '', '', ''),
(37919, 0, 2, '', 0, 0, 100, 30, 13000, 17000, '', '', 11, 70710, '', '', '', '', '', 2, '', '', '', '', '', '', '', '');

-- Rasende Monstrosität
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37546 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37546, 0, 0, '', 0, 0, 100, 30, 6000, 10000, '', '', 11, 70191, '', '', '', '', '', 2, '', '', '', '', '', '', '', ''),
(37546, 0, 1, '', 0, 0, 100, 30, 30000, 30000, '', '', 11, 70371, '', '', '', '', '', 1, '', '', '', '', '', '', '', '');

-- Tierführer der Frostwächter
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37531 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37531, 0, 0, '', 0, 0, 100, 10, 8000, 12000, '', '', 11, 71337, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(37531, 0, 1, '', 0, 0, 100, 20, 8000, 12000, '', '', 11, 71338, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(37531, 0, 2, '', 0, 0, 100, 30, 8000, 12000, '', '', 11, 71357, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Zauberin der Frostwächter
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37229 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37229, 0, 0, '', 0, 0, 100, 30, 13000, 17000, '', '', 11, 71320, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(37229, 0, 1, '', 0, 0, 100, 30, 6000, 10000, '', '', 11, 71318, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37229, 0, 2, '', 0, 0, 100, 20, 12000, 16000, '', '', 11, 71331, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Krieger der Frostwächter
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37228 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37228, 0, 0, '', 0, 0, 100, 30, 18000, 22000, '', '', 11, 71325, '', '', '', '', '', 1, '', '', '', '', '', '', '', ''),
(37228, 0, 1, '', 0, 0, 100, 10, 10000, 14000, '', '', 11, 71316, '', '', '', '', '', 2, '', '', '', '', '', '', '', ''),
(37228, 0, 2, '', 0, 0, 100, 20, 10000, 14000, '', '', 11, 71317, '', '', '', '', '', 2, '', '', '', '', '', '', '', '');

-- Frostschwingenwelpe
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37532 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37532, 0, 0, '', 4, 0, 100, 30, '', '', '', '', 11, 71350, '', '', '', '', '', 2, '', '', '', '', '', '', '', ''),
(37532, 0, 1, '', 0, 0, 100, 10, 6000, 10000, '', '', 11, 71361, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37532, 0, 2, '', 0, 0, 100, 20, 6000, 10000, '', '', 11, 71362, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Seuchenwissenschaftler
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37023 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37023, 0, 0, '', 0, 0, 100, 30, 13000, 17000, '', '', 11, 71103, '', '', '', '', '', 2, '', '', '', '', '', '', '', ''),
(37023, 0, 1, '', 0, 0, 100, 30, 6000, 10000, '', '', 11, 73079, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37023, 0, 2, '', 0, 0, 100, 30, 25000, 29000, '', '', 11, 69871, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Eiternder Schrecken
DELETE FROM `smart_scripts` WHERE (`entryorguid`=10404 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(10404, 0, 0, '', 0, 0, 100, 31, 15000, 30000, '', '', 11, 71088, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(10404, 0, 1, '', 0, 0, 100, 10, 8000, 12000, '', '', 11, 71089, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(10404, 0, 2, '', 0, 0, 100, 20, 8000, 12000, '', '', 11, 71090, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Auferstandener Erzmagier
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37868 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37868, 0, 0, '', 0, 0, 100, 30, 10000, 14000, '', '', 11, 70602, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37868, 0, 1, '', 0, 0, 100, 2, 10000, 14000, '', '', 11, 70759, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37868, 0, 2, '', 0, 0, 100, 4, 10000, 14000, '', '', 11, 71889, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37868, 0, 3, '', 0, 0, 100, 8, 10000, 14000, '', '', 11, 72015, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37868, 0, 4, '', 0, 0, 100, 16, 10000, 14000, '', '', 11, 72016, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37868, 0, 5, '', 0, 0, 100, 10, 13000, 17000, '', '', 11, 71179, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(37868, 0, 6, '', 0, 0, 100, 20, 13000, 17000, '', '', 11, 71741, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Auferstandener Diener der Todessprecher
DELETE FROM `smart_scripts` WHERE (`entryorguid`=36844 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36844, 0, 0, '', 0, 0, 100, 10, 13000, 17000, '', '', 11, 69576, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36844, 0, 1, '', 0, 0, 100, 20, 13000, 17000, '', '', 11, 71108, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36844, 0, 2, '', 0, 0, 100, 30, 18000, 22000, '', '', 11, 69405, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36844, 0, 3, '', 0, 0, 100, 10, 24000, 26000, '', '', 11, 69404, '', '', '', '', '', 5, '', '', '', '', '', '', '', ''),
(36844, 0, 3, '', 0, 0, 100, 20, 24000, 26000, '', '', 11, 71112, '', '', '', '', '', 5, '', '', '', '', '', '', '', '');

-- Die Verdammten
DELETE FROM `smart_scripts` WHERE (`entryorguid`=37011 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37011, 0, 0, '', 0, 0, 100, 30, 10000, 14000, '', '', 11, 70960, '', '', '', '', '', 0, '', '', '', '', '', '', '', ''),
(37011, 0, 1, '', 6, 0, 100, 30, '', '', '', '', 11, 70961, '', '', '', '', '', 0, '', '', '', '', '', '', '', '');