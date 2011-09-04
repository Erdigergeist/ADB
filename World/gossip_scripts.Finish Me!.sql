DELETE FROM gossip_scripts WHERE id=31304;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (31304, 0, 8, 31312, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (31304, 0, 18, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=10040 and id=1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES (10040, 1, 0, 'Gute Reise, Held der Allianz!', 1, 1, 0, 0, 31304, 0, 0, '');

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 10040, 1, 0, 9, 13232, 0, 0, 0, '', NULL);
