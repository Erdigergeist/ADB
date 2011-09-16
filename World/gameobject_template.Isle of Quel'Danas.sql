delete from gameobject where id in (401006,201384);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('418052','201384','571','1','1','5797.52','695.496','657.949','4.1603','0','0','0.873059','-0.487614','-180','100','1'),
('418053','401006','658','3','1','726.09','-237.64','528.932','5.4906','0','0','0.386002','-0.922498','-300','0','0'),
('418054','401006','658','3','1','638.121','-209.633','528.932','3.41321','0','0','0.990792','-0.135392','-300','0','1');

delete from gameobject_template where entry in (401006,201384);
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) values('401006','8','0','Forgemaster\'s Anvil (TEMP)','','','','0','0','1','0','0','0','0','0','0','1636','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('201384','3','7679','Saubere Wäsche','','','','0','4','1','49648','0','0','0','0','0','43','201384','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340');

delete from gameobject_loot_template where entry = 201384;
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('201384','49648','-100','1','0','1','1');

delete from gossip_menu where entry in ('10199','10390','10858','36856','10857','30000');
insert into `gossip_menu` (`entry`, `text_id`)
 values
('10199','14151'),
('10390','14425'),
('10857','15074'),
('10858','15076'),
('36856','15066'),
('30000','40000');

delete from gossip_menu_option where menu_id in ('10199','10390','10858','36856','10857','30000');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) values
('10199','0','0','GOSSIP_OPTION_QUESTGIVER','2','2','0','0','0','0','0',NULL),
('10199','1','0','What do you know of ancient swords?','1','1','0','0','50139','0','0',NULL),
('10199','2','0','What do you know of ancient swords?','1','1','0','0','50140','0','0',NULL),
('10390','0','0','GOSSIP_OPTION_QUESTGIVER','2','2','0','0','0','0','0',NULL),
('10857','0','0','GOSSIP_OPTION_QUESTGIVER','2','2','0','0','0','0','0',NULL),
('10857','1','0','I\'m ready to deliver the tome, Magister Hathorel.','1','1','0','0','10857','0','0',NULL),
('10858','0','0','GOSSIP_OPTION_QUESTGIVER','2','2','0','0','0','0','0',NULL),
('10858','1','0','I\'m ready to deliver the tome, Arcanist Tybalin.','1','1','0','0','10858','0','0',NULL),
('36856','0','0','Arcanist Tubalin said you might be able to lend me a certain tabard.','1','1','0','0','36856','0','0',NULL),
('36856','1','0','Magister Hathorel said you might be able to lend me a certain tabard.','1','1','0','0','36856','0','0',NULL),
('30000','0','0','Ich bräuchte euren Segen für Quel\'Delar.','1','1','0','0','30000','0','0',NULL);

delete from gossip_scripts where id in ('10199','10390','10858','36856','10857','30000');
insert into `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) values
('10858','0','15','69722','1','0','0','0','0','0'),
('50139','0','0','0','0','2000000063','0','0','0','0'),
('50140','0','0','0','0','2000000057','0','0','0','0'),
('50139','1','8','36715','0','0','0','0','0','0'),
('50140','1','8','36715','0','0','0','0','0','0'),
('36856','0','9','7779521','60','0','0','0','0','0'),
('10857','0','15','69722','1','0','0','0','0','0'),
('30000','0','8','37601','0','0','0','0','0','0');

delete from npc_text where id = 40000;
insert into `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) values('40000','Seid gegrüßt, $N. Wie kann ich euch helfen?','Seid gegrüßt, $N. Wie kann ich euch helfen?','0','1','1','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','1');

delete from conditions where sourcegroup in ('10199','10390','10858','36856','10857','30000');
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) values
('15','10199','1','0','9','24555','0','0','0','',NULL),
('15','10199','2','0','9','14444','0','0','0','',NULL),
('15','10858','1','0','9','24451','0','0','0','',NULL),
('15','36856','0','0','9','24556','0','0','0','',NULL),
('15','36856','1','0','9','20438','0','0','0','',NULL),
('15','10858','2','0','2','49698','1','0','0','',NULL),
('15','36856','2','0','2','49648','1','0','0','',NULL),
('15','36856','3','0','2','49648','1','0','0','',NULL),
('15','10857','2','0','2','49698','1','0','0','',NULL),
('15','10857','1','0','9','20439','0','0','0','',NULL),
('15','30000','0','0','9','24535','0','0','0','',NULL),
('15','30000','0','0','9','24563','0','0','0','',NULL);