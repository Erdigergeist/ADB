/* ICC Rotface - Place all Puddle Stalkers on the ground */
UPDATE `creature` SET `position_z` = 360.469 WHERE `id` = 37013;

/* ICC Saurfang */
UPDATE `creature_template` SET `ScriptName` = "npc_bloodbeast" WHERE `entry` = 38508;

/* ICC Valkyr Herald */
UPDATE `creature_template` SET `ScriptName` = "npc_valkyr_herald" WHERE `entry` = 37098;
UPDATE `creature_template` SET `ScriptName` = "npc_severed_essence" WHERE `entry` = 38410;


/* PDK Snobold Vasall - make attackable */
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 34800;

/* Uldar XT Spell Scripts */
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES 
(63018, "spell_xt002%"),
(65121, "spell_xt002%"),
(63018, "spell_xt002%"),
(63018, "spell_xt002%"),
(63018, "spell_xt002%"),
(64233, "spell_xt002_gravity_bomb_damage"),
(63025, "spell_xt002_gravity_bomb_damage"),
(5369, 'at_RX_214_repair_o_matic_station'),
(5423, 'at_RX_214_repair_o_matic_station'),
(64234, 'spell_xt002_gravity_bomb_aura'),
(63024, 'spell_xt002_gravity_bomb_aura');


SELECT * FROM creature_template WHERE entry=37098
