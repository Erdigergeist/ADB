
UPDATE creature SET spawnMask = 3 WHERE id IN (
/* Plague Wing */
     36626,36627,36678,

/* Blood Wing */
     37970,37972,37973,37955,

/* Frost Wing */
     /*36789,*/,37950,36853,

/* Frozen Throne */
     36597
);
UPDATE creature SET spawnMask = 1 WHERE guid = 137746; /* Vali 10 */
UPDATE creature SET spawnMask = 2 WHERE guid = 137747; /* Vali 25 */

UPDATE gameobject SET spawnMask = 0 WHERE id = 202338; /* Vali Chest 10 H */
UPDATE gameobject SET spawnMask = 0 WHERE id = 202340; /* Vali Chest 25 H */

/* Sigils of the three wings */
UPDATE gameobject SET state = 0 WHERE id IN(202181 ,202182 ,202183);

/* Add doors for heroic */
INSERT INTO `gameobject` (
`id`, `map`, `spawnMask`, `phaseMask`, 
`position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, 
`spawntimesecs`, `animprogress`, `state`) VALUES
(201919,631,12, 1,4356.99,2652.37,351.1,4.65739,0,0,0.726281,-0.687398,300,0,1),
(201920,631,12, 1,4475.31,2769.4,350.964,0.0196023,0,0,0.00980097,0.999952,300,0,1),
(201919,631,12, 1,4357.09,2886.3,351.1,1.57861,0,0,0.709863,0.70434,300,0,1);
