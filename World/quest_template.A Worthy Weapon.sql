DELETE FROM event_scripts where id = 20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (20990, 0, 17, 44978, 1, 0, 0, 0, 0, 0);

DELETE FROM gameobject WHERE id = 300009;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (300009, 571, 1, 1, 4603.99, -1599.25, 156.657, 2.59353, 0, 0, 0.962688, 0.270614, 300, 0, 1);