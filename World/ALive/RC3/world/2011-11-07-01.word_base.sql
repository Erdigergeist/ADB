/* ICC/Rotface - Place all Puddle Stalkers on the ground */
UPDATE `creature` SET `position_z` = 360.469 WHERE `id` = 37013;

UPDATE `creature_template` SET `ScriptName` = "npc_bloodbeast" WHERE `entry` = 38508;

/* PDK/Snobold Vasall - make attackable */
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 34800;

SELECT * FROM creature_template WHERE entry=34800

