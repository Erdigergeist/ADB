/*Aliance*/
DELETE FROM gossip_menu_option WHERE menu_id=10040 AND id=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES (10040, 0, 0, 'Bleibt bei mir, Freund. Ich muss wissen, was hier geschehen ist.', 1, 1, 0, 0, 31305, 0, 0, '');

DELETE FROM gossip_scripts WHERE id = 31305;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (31305, 0, 0, 1, 0, 2000005411, 0, 0, 0, 0);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (31305, 0, 8, 31312, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (31305, 0, 33, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (2000005411, 'We attacked under cover of a blizzard.... The Scourge were caught off guard... our victory was certain.... Then... from behind us... the Horde came from nowhere. They cost us... everything....  ', NULL, NULL, 'Wir griffen unter dem Schatten eines Blizzards an ... Unser Sieg war nah .. Dann ... hinter uns ... Die Horde ... sie kam aus dem Nichts ... Sie nahmen ... uns ... alles ...', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 10040, 0, 0, 9, 13231, 0, 0, 0, '', NULL);

/*Horde*/
DELETE FROM gossip_menu_option WHERE menu_id=10041;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES (10041, 0, 0, 'Bleibt bei mir Bruder! Ich muss wissen was geschehen ist', 1, 3, 0, 0, 10041, 0, 0, '');

DELETE FROM gossip_scripts WHERE menu_id=10041;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (10041, 0, 8, 31272, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (10041, 0, 33, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (10041, 0, 0, 1, 0, 2000005412, 0, 0, 0, 0);

INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (2000005412, 'Gathering... information.... on the Scourge.\r\nAlliance forces appeared...\r\nWe took cover - waited until they attacked the gate,\r\nthen, we hit them from the rear.\r\nPinched between us... and the Scourge... it was too much for them...', NULL, NULL, 'Gathering... information.... on the Scourge.\r\nAlliance forces appeared...\r\nWe took cover - waited until they attacked the gate,\r\nthen, we hit them from the rear.\r\nPinched between us... and the Scourge... it was too much for them...', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 10041, 0, 0, 9, 13228, 0, 0, 0, '', NULL);

UPDATE `creature_template` SET `gossip_menu_id`=10041 WHERE `entry`=31273 LIMIT 1;

DELETE FROM gossip_menu WHERE entry=10041;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (10041, 13940);