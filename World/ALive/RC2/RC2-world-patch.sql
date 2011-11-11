
/* 01.09. */
UPDATE `creature_template` SET `mechanic_immune_mask` = '617299803' WHERE `entry` IN ('36853', '38265', '38266', '38267');

/* 01.09. */
UPDATE `creature_template` SET `speed_walk` = '0.6' , `speed_run` = '0.6' WHERE `entry` = '38104';

/* 14.09. */
UPDATE `creature_template` SET `ScriptName`='boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName`='boss_razorscale_controller' WHERE `entry`=33233;
UPDATE `gameobject_template` SET `ScriptName`='go_razorscale_harpoon' WHERE `entry` IN(194519,194541,194542,194543);
UPDATE `creature_template` SET `ScriptName`='npc_mole_machine_trigger' WHERE `entry`=33245;
UPDATE `creature_template` SET `ScriptName`='npc_expedition_commander' WHERE `entry`=33210;
UPDATE `creature_template` SET `ScriptName`='npc_darkrune_guardian' WHERE `entry`=33388;
UPDATE `creature_template` SET `ScriptName`='npc_darkrune_sentinel' WHERE `entry`=33846;
UPDATE `creature_template` SET `ScriptName`='npc_darkrune_watcher' WHERE `entry`=33453;

/* 14.09. */
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE `entry` IN ('35029', '35538', '35030', '35530', '35037', '35535', '35032', '35039', '35527', '35033', '35521', '35034', '35528', '35036', '35543', '35040', '35542', '35031', '35536', '35028', '35541', '34942', '35531', '35050', '35532', '35042', '35533', '35047', '35524', '35051', '35544', '35043', '35523', '35048', '35539', '35038', '35537', '35052', '35519', '35045', '35534', '35041', '35520', '35044', '35525', '35049', '35529', '35046', '35522'); 

/* 14.09. */
UPDATE `creature_template` SET `mechanic_immune_mask` = '650854399' WHERE `entry` IN ('34564', '34566', '35615', '35616');
UPDATE `creature_template` SET `mechanic_immune_mask` = '617299965' WHERE `entry` IN ('34497', '35350', '35351', '35352', '34496', '35347', '35348', '35349');
UPDATE `creature_template` SET `mechanic_immune_mask` = '650854399' WHERE `entry` IN ('34797', '35447', '35448', '35449');
UPDATE `creature_template` SET `mechanic_immune_mask` = '650854399' WHERE `entry` IN ('35144', '35511', '35512', '35513', '34799', '35514', '35515', '35516');
UPDATE `creature_template` SET `mechanic_immune_mask` = '650854399' WHERE `entry` IN ('34796', '35438', '35439', '35440', '34800', '35441', '35442', '35443');

/* 14.09. */
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='40419');
INSERT INTO `creature_ai_scripts` VALUES 
('4041901', '40419', '0', '6', '100', '31', '7000', '10000', '10000', '13000', '11', '75417', '1', '0', '', '', '', '', '', '', '', '', 'Angreifer der Schmorschuppen Schockwelle'),
('4041902', '40419', '0', '6', '100', '31', '10000', '12000', '8000', '11000', '11', '15248', '1', '0', '', '', '', '', '', '', '', '', 'Angreifer der Schmorschuppen Spalten');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id` = '40417');
Insert INTO `creature_ai_scripts` VALUES
('4041701', '40417', '0', '6', '100', '31', '7000', '10000', '10000', '13000', '11', '75413', '1', '0', '', '', '', '', '', '', '', '', 'Herbeirufer der Schmorschuppe Flammenwelle'),
('4041702', '40417', '0', '6', '100', '31', '5000', '7000', '8000', '13000', '11', '75412', '1', '0', '', '', '', '', '', '', '', '', 'Herbeirufer der Schmorschuppe Versengen');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='40421');
INSERT INTO `creature_ai_scripts` VALUES 
('4042101', '40421', '0', '6', '100', '31', '3000', '8000', '6000', '12000', '11', '15621', '1', '0', '', '', '', '', '', '', '', '', 'Elite der Schmorschuppe Schaedelkracher');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='40423');
INSERT INTO `creature_ai_scripts` VALUES 
('4042301', '40423', '0', '6', '100', '31', '5000', '7000', '8000', '12000', '11', '75414', '0', '0', '', '', '', '', '', '', '', '', 'Kommandant der Schmorschuppen Sammelruf'),
('4042302', '40423', '0', '6', '100', '31', '7000', '10000', '6000', '11000', '11', '13737', '1', '0', '', '', '', '', '', '', '', '', 'Kommandant der Schmorschuppen Toedlicher stoss');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN ('40419', '40417', '40421', '40423');
UPDATE `creature` SET `spawntimesecs`= '604800' WHERE `id` IN ('40419', '40417', '40421', '40423');
UPDATE `creature_template` SET `dmg_multiplier` = '45' WHERE `entry` = '39746';
UPDATE `creature_template` SET `dmg_multiplier` = '55' WHERE `entry` = '39805';
UPDATE `creature_template` SET `dmg_multiplier` = '30' WHERE `entry` IN ('40419', '40417', '40421', '40423');
UPDATE `creature_template` SET `dmg_multiplier` = '50' WHERE `entry` IN ('40420', '40418', '40422', '40424');

/* 14.09. */
UPDATE `creature_template` SET `exp`=0,`speed_run`=0.78571 WHERE `entry`=28239; 
DELETE FROM `creature_template_addon` WHERE `entry`=28239;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28239,0,0,1,0, '51019'); 

/* 14.09. */
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179545;
DELETE FROM `gameobject` WHERE `id` IN (179545,179485);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(6,179545,429,1,1,116.135,638.836,-48.467,-0.785397,0,0,0,1,7200,255,1),
(159,179485,429,1,1,558.806,550.065,-25.4008,3.14159,0,0,0,1,180,255,1);

/* 14.09. */
SET @Gossip=21272;

DELETE FROM `gossip_menu` WHERE `text_id` IN (4513,4533,4534,4535,4536);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(3701,4513), 
(@Gossip+0,4533),
(@Gossip+1,4534),
(@Gossip+2,4535),
(@Gossip+3,4536);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (3701,@Gossip+0,@Gossip+1,@Gossip+2,@Gossip+3);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(3701,0,0, 'You may speak frankly, Neeru...' ,1,1,@Gossip+0,0,0,0,NULL),
(@Gossip+0,0,0, 'It is good to see the Burning Blade is taking over where the Shadow Council once failed.' ,1,1,@Gossip+1,0,0,0,NULL),
(@Gossip+1,0,0, 'So the Searing Blade is expendable?' ,1,1,@Gossip+2,0,0,0,NULL),
(@Gossip+2,0,0, 'If there is anything you would have of me...' ,1,1,@Gossip+3,0,0,0,NULL);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=3216;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3216 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3216, 0, 0, 0, 62, 0, 100, 0, @Gossip+2, 0, 0, 0, 15, 5727, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Neeru Fireblade - On gossip select give Hidden Enemies quest completed');

UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `entry`=5727; 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=3701;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup` BETWEEN @Gossip+0 AND @Gossip+3;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,3701,0,0,2,14544,1,0,0,'', 'Neeru Fireblade: Quest Hidden Enemies gossip option - requires item Lieutenant''s Insignia'),
(14,@Gossip+0,4533,0,2,14544,1,0,0, '', 'Neeru Fireblade: Quest Hidden Enemies gossip 1 - requires item Lieutenant''s Insignia'),
(14,@Gossip+1,4534,0,2,14544,1,0,0, '', 'Neeru Fireblade: Quest Hidden Enemies gossip 2 - requires item Lieutenant''s Insignia'),
(14,@Gossip+2,4535,0,2,14544,1,0,0, '', 'Neeru Fireblade: Quest Hidden Enemies gossip 3 - requires item Lieutenant''s Insignia'),
(14,@Gossip+3,4536,0,2,14544,1,0,0, '', 'Neeru Fireblade: Quest Hidden Enemies gossip 4 - requires item Lieutenant''s Insignia');

/* 14.09. */
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66512;
INSERT INTO `spell_linked_spell` VALUES
(66512, 66510, 0, 'Summon Deep Jormungar on Pound Drum');
 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=0 AND `SourceEntry`=66512;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 0, 66512, 0, 18, 0, 195308, 0, 0, '', 'Pound Drum: Target Mysterious Snow Mound'),
(13, 0, 66512, 0, 18, 0, 195309, 0, 0, '', 'Pound Drum: Target Mysterious Snow Mound');

/* 14.09. */
SET @ENTRY := 1200;
SET @SPELL_SACRED_CLEANSING := 8913;
SET @SPELL_TOUCH_OF_DEATH := 3108;
SET @SPELL_PRESENCE_OF_DEATH := 3109;
SET @SPELL_UNHOLY_SHIELD := 8909;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_UNHOLY_SHIELD,0,0,0,0,0,1,0,0,0,0,0,0,0,"Morbent Fel - Out Of Combat - Cast Unholy Shield"),
(@ENTRY,0,1,0,8,0,100,0,@SPELL_SACRED_CLEANSING,0,0,0,36,24782,0,0,0,0,0,1,0,0,0,0,0,0,0,"Morbent Fel - On Spellhit - Update Template"),
(@ENTRY,0,2,0,0,0,100,0,0,0,24000,24000,11,@SPELL_TOUCH_OF_DEATH,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morbent Fel - In Combat - Cast Touch of Death"),
(@ENTRY,0,3,0,0,0,100,0,0,0,3700,13300,11,@SPELL_PRESENCE_OF_DEATH,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morbent Fel - In Combat - Cast Presence of Death"),
(@ENTRY,0,4,0,2,0,100,1,0,15,0,0,28,@SPELL_UNHOLY_SHIELD,1,0,0,0,0,1,0,0,0,0,0,0,0,"Morbent Fel - At 15% HP - Remove Unholy Shield");

/* 14.09. */
SET @Gossip=21276;
SET @Azuregos=15481;
SET @Item=20949;
UPDATE `creature_template` SET `gossip_menu_id`=@Gossip, `AIName`='SmartAI' WHERE `entry`=@Azuregos;

DELETE FROM `gossip_menu` WHERE (`entry` BETWEEN @Gossip AND @Gossip+12) AND `text_id` IN (7881,7901,7885,7886,7887,7888,7889,7890,7891,7892,7893,7894,7895,7896,7897);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@Gossip+00, 7881),
(@Gossip+00, 7901), 
(@Gossip+00, 7885), 
(@Gossip+01, 7886), 
(@Gossip+02, 7887), 
(@Gossip+03, 7888), 
(@Gossip+04, 7889), 
(@Gossip+05, 7890), 
(@Gossip+06, 7891), 
(@Gossip+07, 7892), 
(@Gossip+08, 7893),
(@Gossip+09, 7894),
(@Gossip+10, 7895),
(@Gossip+11, 7896),
(@Gossip+12, 7897);

DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @Gossip AND @Gossip + 14;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(@Gossip+00,0,'How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?',1,1,@Gossip+01),
(@Gossip+01,0,'Alright. Where?',1,1,@Gossip+02),
(@Gossip+02,0,'By Bronzebeard''s... um, beard! What are you talking about?',1,1,@Gossip+03),
(@Gossip+03,0,'Fish? You gave a piece of what could be the key to saving all life on Kalimdor to a fish?',1,1,@Gossip+04),
(@Gossip+04,0,'A minnow? The oceans are filled with minnows! There could be a hundred million million minnows out there!',1,1,@Gossip+05),
(@Gossip+05,0,'...',1,1,@Gossip+06),
(@Gossip+06,0,'You put the piece on a minnow and placed the minnow somewhere in the waters of the sea between here and the Eastern Kingdoms? And this minnow has special powers?',1,1,@Gossip+07),
(@Gossip+07,0,'You''re insane.',1,1,@Gossip+08),
(@Gossip+08,0,'I''m all ears.',1,1,@Gossip+09),
(@Gossip+09,0,'Come again.',1,1,@Gossip+10),
(@Gossip+10,0,'Ok, let me get this straight. You put the scepter entrusted to your Flight by Anachronos  on a minnow of your own making and now you expect me to build an... an arcanite buoy or something... to force your minnow out of hiding? AND potentially incur the wrath of an Elemental Lord? Did I miss anything? Perhaps I am to do this without any clothes on, during a solar eclipse, on a leap year?',1,1,@Gossip+11),
(@Gossip+11,0,'FINE! And how, dare I ask, am I supposed to acquire an arcanite buoy?',1,1,@Gossip+12),
(@Gossip+12,0,'But...',1,1,0);

DELETE FROM `creature_text` WHERE `entry`=@Azuregos;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@Azuregos, 0, 0, 'I SAID GOOD BYE!', 12, 0, 100, 1, 0, 0, 'Spirit of Azuregos');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup` BETWEEN @Gossip+0 AND @Gossip+2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(14,@Gossip+0,7901,0,2,@Item,1, 'Spirit of Azuregos - show gossip 7901 if player has item Magical Ledger'),
(14,@Gossip+0,7885,0,14,8575,0, 'Spirit of Azuregos - show gossip 7885 if player does not have quest Azuregos''s Magical Ledger'),
(14,@Gossip+0,7885,0,8,8555,0, 'Spirit of Azuregos - show gossip 7885 if player has quest The Charge of the Dragonflights rewarded'),
(14,@Gossip+0,7881,0,14,8555,0, 'Spirit of Azuregos - show gossip 7881 if player does not have quest The Charge of the Dragonflights'),
(15,@Gossip+0,0,0,26,@Item,1, 'Spirit of Azuregos - show gossip option if player does not have item Magical Ledger'),
(15,@Gossip+0,0,0,14,8575,0, 'Spirit of Azuregos - show gossip option if player does not have quest Azuregos''s Magical Ledger'),
(15,@Gossip+0,0,0,8,8555,0, 'Spirit of Azuregos - show gossip option if player has quest The Charge of the Dragonflights rewarded');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@Azuregos AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@Azuregos, 0, 0, 0, 62, 0, 100, 0, @Gossip+11, 0, 0, 0, 56, @Item, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Azuregos - On gossip select 11 give item'),
(@Azuregos, 0, 1, 2, 62, 0, 100, 0, @Gossip+12, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Azuregos - On gossip select 12 close gossip'),
(@Azuregos, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Azuregos - Link 2 say');

/* 14.09. */
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (57294,57399);
INSERT INTO `spell_linked_spell` VALUES
(57294,59690,2,'Well Fed - Well Fed (DND)'),
(57399,59699,2,'Well Fed - Well Fed (DND)');

DELETE FROM `spell_group` WHERE `spell_id` IN (59690,59699);

/* 14.09. */
DELETE FROM `gossip_menu` WHERE `entry`=2211 AND `text_id`=2850;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(2211, 2850);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=160445;

DELETE FROM `smart_scripts` WHERE `entryorguid`=160445 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(160445, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 12, 9136, 1, 60*1000, 0, 0, 0, 8, 0, 0, 0, -7917.378906, -2610.533936, 221.123123, 5.040257, 'Sha''ni Proudtusk''s Remains - On gossip hello summon Sha''ni Proudtusk');


/* 14.09. */
DELETE FROM `spell_target_position` WHERE `id` IN (46233,52462,54963);
INSERT INTO `spell_target_position` (`id` ,`target_map` ,`target_position_x` ,`target_position_y` ,`target_position_z` ,`target_orientation`) VALUES
(46233,571,3202.959961,5274.073730,46.887897,0.015704), 
(52462,609,2387.738525,-5898.617676,108.353539,4.354776), 
(54963,571,6153.721191,-1075.270142,403.517365,2.232988); 

/* 14.09. */
DELETE FROM `creature` WHERE `id`=25589;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(2017,25589,571,1,1,0,0,4464.63,5378.07,-15.2737,6.05299,600,0,0,1,0,0);
DELETE FROM `creature_template_addon` WHERE `entry`=25589;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(25589,0,1,1,0, '');

/* 14.09. */
UPDATE `instance_template` SET `allowMount`=1 WHERE `map`=531;
UPDATE `instance_template` SET `allowMount`=1 WHERE `map`=631;
/* 14.09. */
UPDATE `game_event` SET `start_time`='2011-12-04 00:01:00' WHERE `eventEntry`=4;

SET @GUID = 209102;

DELETE FROM `creature` WHERE `id` IN (28601, 28602) AND `map`=1;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@GUID+00,28601, 1, -6027.13, -1249.12, -146.765, 0.0407544),
(@GUID+01,28602, 1, -6165.74, -1250.34, -162.183, 3.16428),
(@GUID+02,28602, 1, -6118.16, -1258.77, -143.281, 3.17606),
(@GUID+03,28602, 1, -6118.18, -1241.33, -143.281, 3.12169),
(@GUID+04,28602, 1, -6104.87, -1256.41, -143.281, 3.04315),
(@GUID+05,28602, 1, -6104.56, -1243.58, -143.281, 3.07064),
(@GUID+06,28602, 1, -6067.35, -1243.76, -143.481, 3.17274),
(@GUID+07,28602, 1, -6067.17, -1255.45, -143.430, 3.15703),
(@GUID+08,28602, 1, -6038.16, -1243.56, -146.897, 3.15153),
(@GUID+09,28602, 1, -6036.82, -1255.32, -146.901, 3.19238),
(@GUID+10,28602, 1, -6042.26, -1249.25, -146.887, 3.19238);

DELETE FROM `creature_equip_template` WHERE `entry`=2476;
INSERT INTO `creature_equip_template` VALUES 
(2476, 7714, 0, 0);

UPDATE `creature_template` SET `faction_A` = 2080, `faction_H` = 2080, `lootid` = `entry` WHERE `entry` IN (28601, 28602);
UPDATE `creature_template` SET `equipment_id` = 1803 WHERE `entry`=28601;
UPDATE `creature_template` SET `equipment_id` = 2476 WHERE `entry`=28601;

DELETE FROM `creature_loot_template` WHERE `entry`=28601;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(28601, 38708, -100, 1, 0, 1, 1);

/* 15.09. - Wintergrasp */
UPDATE `creature_template` SET `mechanic_immune_mask` = '804257791' WHERE `entry` = '28366';	-- Set all immunities
UPDATE `creature_template` SET `speed_walk` = '0', `speed_run` = '0' WHERE `entry` = '28366';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` = '28366'; 		-- creature does not aggro (ignore faction/reputation hostility) 
UPDATE `creature_template` SET `type_flags` = '131112' WHERE `entry` = '28366'; 	-- UNK4, UNK6, UNK18
UPDATE `creature_template` SET `unit_flags` = '32772' WHERE `entry` = '28366';		-- Disable Move, UNK15
UPDATE `creature_template` SET `InhabitType` = '5' WHERE `entry` = '28366';			-- Avoid npc can fall under GameObject
UPDATE `creature_template` SET `spell1` = '51421' WHERE `entry` = '28366';			-- Fire Cannon
DELETE FROM `creature` WHERE `id` = '28366';
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5148','2862.03','421.631','3.16591','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5132.03','2748.01','413.492','2.97742','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5148.95','2820.29','421.621','3.18162','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5164.31','2715.92','413.492','4.76712','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5236.22','2732.86','421.65','4.61398','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5265.22','2704.63','421.7','3.12565','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5246.86','2632.68','413.403','3.24738','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5278.58','2599.88','413.403','4.86923','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5350.89','2616.14','421.242','4.72787','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5390.94','2615.6','421.126','4.69645','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5264.19','2861.45','421.586','3.19241','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5264.83','2819.81','421.656','3.11781','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5322.18','2756.85','421.645','4.71217','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5363.98','2923.76','421.709','1.62162','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5323.01','2923.57','421.646','1.50774','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5235','2948.6','420.88','1.51952','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5266.17','2976.57','421.067','3.12958','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5248.49','3047.63','412.147','3.25603','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5281.72','3079.01','412.147','1.55643','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5352.18','3061.45','421.102','1.57999','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5391.2','3061.18','419.616','1.68994','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5164.03','2966.71','413.494','1.50536','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5131.06','2934.92','413.494','3.17041','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4489.64','1955.5','441.995','0.35102','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4447.59','1975.57','441.995','1.94146','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4375.35','2798.9','412.631','3.98743','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4374.26','2845.65','412.631','2.34595','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4420.78','2845.79','412.631','0.806563','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4421.87','2799.58','412.631','5.49933','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4536.13','3598.01','402.887','4.04636','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4582.66','3603.19','402.887','5.6368','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','4531.29','3644.98','402.887','2.49128','300','0','0','50000','0','0','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('28366','571','1','1','0','0','5363.72','2757.03','421.629','4.75716','300','0','0','50000','0','0','0','0','0');

/* 17.09. - ICC Trash AI*/
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36724');
INSERT INTO `creature_ai_scripts` VALUES 
('3672401', '36724', '0', '6', '100', '31', '15000', '15000', '15000', '15000', '11', '71029', '4', '1', '', '', '', '', '', '', '', '', 'Servant of the Throne - Glacial Blast');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37007');
INSERT INTO `creature_ai_scripts` VALUES 
('3700701', '37007', '0', '6', '100', '31', '5000', '5000', '5000', '5000', '11', '71021', '1', '1', '', '', '', '', '', '', '', '', 'Todesgeweihter Waechter - Saebelhieb'),
('3700702', '37007', '0', '6', '100', '31', '19000', '19000', '19000', '19000', '11', '71022', '0', '1', '', '', '', '', '', '', '', '', 'Todesgeweihter Waechter - Unterbrechender Schrei');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37886');
INSERT INTO `creature_ai_scripts` VALUES 
('3788601', '37886', '0', '6', '100', '3', '20000', '20000', '20000', '20000', '11', '70633', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 10'),
('3788602', '37886', '0', '6', '100', '5', '20000', '20000', '20000', '20000', '11', '71283', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 25'),
('3788603', '37886', '0', '6', '100', '9', '20000', '20000', '20000', '20000', '11', '72025', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 10h'),
('3788604', '37886', '0', '6', '100', '17', '20000', '20000', '20000', '20000', '11', '72026', '1', '1', '', '', '', '', '', '', '', '', 'Gefraessige Monstrositaet - Magensaeure 25h');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36791');
INSERT INTO `creature_ai_scripts` VALUES 
('3679101', '36791', '0', '6', '100', '3', '6000', '6000', '6000', '6000', '11', '70754', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 10'),
('3679102', '36791', '0', '6', '100', '5', '6000', '6000', '6000', '6000', '11', '71748', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 25'),
('3679103', '36791', '0', '6', '100', '9', '6000', '6000', '6000', '6000', '11', '72023', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 10h'),
('3679104', '36791', '0', '6', '100', '17', '6000', '6000', '6000', '6000', '11', '72024', '1', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Feuerball 25h'),
('3679105', '36791', '0', '6', '100', '11', '20000', '20000', '20000', '20000', '11', '69325', '0', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Verwuesten 10'),
('3679106', '36791', '0', '6', '100', '21', '20000', '20000', '20000', '20000', '11', '71730', '0', '1', '', '', '', '', '', '', '', '', 'Loderndes Skelett - Verwuesten 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37571');
INSERT INTO `creature_ai_scripts` VALUES 
('3757101', '37571', '0', '6', '100', '11', '6000', '6000', '6000', '6000', '11', '72057', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Lichslap 10'),
('3757102', '37571', '0', '6', '100', '21', '6000', '6000', '6000', '6000', '11', '72421', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Lichslap 25'),
('3757103', '37571', '0', '6', '100', '31', '19000', '22000', '19000', '22000', '11', '72065', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Shroud of Protection'),
('3757104', '37571', '0', '6', '100', '31', '19000', '22000', '19000', '22000', '11', '72066', '1', '1', '', '', '', '', '', '', '', '', 'Sinistrer Berater - Shroud of Spell Warding');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37664');
INSERT INTO `creature_ai_scripts` VALUES 
('3766401', '37664', '0', '6', '100', '11', '20000', '20000', '20000', '20000', '11', '70408', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Amplify Magic 10'),
('3766402', '37664', '0', '6', '100', '21', '20000', '20000', '20000', '20000', '11', '72336', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Amplify Magic 25'),
('3766403', '37664', '0', '6', '100', '11', '10000', '12000', '10000', '12000', '11', '70407', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Blast Wave 10'),
('3766404', '37664', '0', '6', '100', '21', '10000', '12000', '10000', '12000', '11', '71151', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Blast Wave 25'),
('3766405', '37664', '0', '6', '100', '11', '15000', '17000', '15000', '17000', '11', '70409', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Fireball 10'),
('3766406', '37664', '0', '6', '100', '21', '15000', '17000', '15000', '17000', '11', '71153', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Fireball 25'),
('3766407', '37664', '0', '6', '100', '31', '10000', '14000', '10000', '14000', '11', '71153', '5', '1', '', '', '', '', '', '', '', '', 'Darkfallen Archmage - Polymorph');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37595');
INSERT INTO `creature_ai_scripts` VALUES 
('3759501', '37595', '11', '6', '100', '31', '', '', '', '', '11', '71736', '0', '1', '', '', '', '', '', '', '', '', 'Darkfallen Blood Knight - Vampiric Aura'),
('3759502', '37595', '0', '6', '100', '31', '7000', '7000', '7000', '7000', '11', '70437', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Blood Knight - Unholy Strike');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37662');
INSERT INTO `creature_ai_scripts` VALUES 
('3766201', '37662', '0', '6', '100', '31', '1', '10', '30000', '35000', '11', '70750', '0', '1', '', '', '', '', '', '', '', '', 'Darkfallen Commander - Battle Shout'),
('3766202', '37662', '0', '6', '100', '11', '18000', '22000', '18000', '22000', '11', '70449', '5', '1', '', '', '', '', '', '', '', '', 'Darkfallen Commander - Vampire Rush 10'),
('3766203', '37662', '0', '6', '100', '21', '18000', '22000', '18000', '22000', '11', '71155', '5', '1', '', '', '', '', '', '', '', '', 'Darkfallen Commander - Vampire Rush 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37665');
INSERT INTO `creature_ai_scripts` VALUES 
('3766501', '37665', '0', '6', '100', '11', '13000', '17000', '13000', '17000', '11', '70435', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Lieutnant - Rend Flash 10'),
('3766502', '37665', '0', '6', '100', '21', '13000', '17000', '13000', '17000', '11', '71154', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Lieutnant - Rend Flash 25'),
('3766503', '37665', '0', '6', '100', '31', '10000', '12000', '25000', '27000', '11', '70423', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Lieutnant - Vampiric Curse');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37663');
INSERT INTO `creature_ai_scripts` VALUES 
('3766301', '37663', '0', '6', '100', '31', '15000', '19000', '15000', '19000', '11', '70645', '5', '1', '', '', '', '', '', '', '', '', 'Darkfallen Noble - Chains of Shadow'),
('3766302', '37663', '0', '6', '100', '11', '6000', '10000', '6000', '10000', '11', '72960', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Noble - Shadowbolt 10'),
('3766303', '37663', '0', '6', '100', '21', '6000', '10000', '6000', '10000', '11', '72961', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Noble - Shadowbolt 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37666');
INSERT INTO `creature_ai_scripts` VALUES 
('3766601', '37666', '0', '6', '100', '31', '13000', '17000', '13000', '17000', '11', '70432', '5', '1', '', '', '', '', '', '', '', '', 'Darkfallen Tactican - Blood Sap'),
('3766602', '37666', '0', '6', '100', '31', '13000', '17000', '13000', '17000', '11', '70431', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Tactican - Shadowstep'),
('3766603', '37666', '0', '6', '100', '31', '8000', '12000', '8000', '12000', '11', '70437', '1', '1', '', '', '', '', '', '', '', '', 'Darkfallen Tactican - Unholy Strike');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36811');
INSERT INTO `creature_ai_scripts` VALUES 
('3681101', '36811', '0', '6', '100', '31', '8000', '12000', '8000', '12000', '11', '69387', '1', '1', '', '', '', '', '', '', '', '', 'Deathspeak Attendant - Shadow Bolt'),
('3681102', '36811', '0', '6', '100', '11', '10000', '14000', '10000', '14000', '11', '69355', '0', '1', '', '', '', '', '', '', '', '', 'Deathspeak Attendant - Shadow Nova 10'),
('3681103', '36811', '0', '6', '100', '21', '10000', '14000', '10000', '14000', '11', '71106', '0', '1', '', '', '', '', '', '', '', '', 'Deathspeak Attendant - Shadow Nova 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36807');
INSERT INTO `creature_ai_scripts` VALUES 
('3680701', '36807', '0', '6', '100', '31', '15000', '19000', '15000', '19000', '11', '69391', '0', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Disciple - Dark Blessing'),
('3680702', '36807', '0', '6', '100', '31', '10000', '14000', '10000', '14000', '11', '69387', '1', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Disciple - Shadow Bolt'),
('3680703', '36807', '0', '6', '100', '11', '20000', '30000', '20000', '30000', '11', '69389', '0', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Disciple - Shadow Mend 10'),
('3680704', '36807', '0', '6', '100', '21', '20000', '30000', '20000', '30000', '11', '71107', '0', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Disciple - Shadow Mend 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36829');
INSERT INTO `creature_ai_scripts` VALUES 
('3682901', '36829', '11', '6', '100', '31', '', '', '', '', '11', '69491', '0', '1', '', '', '', '', '', '', '', '', 'Deathspeaker High Priest - Aura of Darkness'),
('3682902', '36829', '0', '6', '100', '31', '8000', '12000', '8000', '12000', '11', '69483', '1', '1', '', '', '', '', '', '', '', '', 'Deathspeaker High Priest - Dark Reckoning');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36805');
INSERT INTO `creature_ai_scripts` VALUES 
('3680501', '36805', '0', '6', '100', '11', '13000', '17000', '13000', '17000', '11', '69576', '1', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Servant - Chaos Bolt 10'),
('3680502', '36805', '0', '6', '100', '21', '13000', '17000', '13000', '17000', '11', '71108', '1', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Servant - Chaos Bolt 25'),
('3680503', '36805', '0', '6', '100', '31', '18000', '22000', '18000', '22000', '11', '69405', '4', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Servant - Consuming Shadows'),
('3680504', '36805', '0', '6', '100', '11', '24000', '26000', '24000', '26000', '11', '69404', '4', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Servant - Curse of Agony 10'),
('3680505', '36805', '0', '6', '100', '21', '24000', '26000', '24000', '26000', '11', '71112', '4', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Servant - Curse of Agony 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36808');
INSERT INTO `creature_ai_scripts` VALUES 
('3680801', '36808', '0', '6', '100', '31', '8000', '12000', '8000', '12000', '11', '69492', '1', '1', '', '', '', '', '', '', '', '', 'Deathspeaker Zealot - Shadow Cleave');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36880');
INSERT INTO `creature_ai_scripts` VALUES 
('3688001', '36880', '0', '6', '100', '11', '8000', '12000', '8000', '12000', '11', '71114', '1', '1', '', '', '', '', '', '', '', '', 'Decaying Colossus - Massive Stomp 10'),
('3688002', '36880', '0', '6', '100', '21', '8000', '12000', '8000', '12000', '11', '71115', '1', '1', '', '', '', '', '', '', '', '', 'Decaying Colossus - Massive Stomp 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37919');
INSERT INTO `creature_ai_scripts` VALUES 
('3791901', '37919', '11', '6', '100', '31', '', '', '', '', '11', '41290', '0', '1', '', '', '', '', '', '', '', '', 'Empowered Vampiric Fiend - Disease Cloud'),
('3791902', '37919', '0', '6', '100', '31', '30000', '35000', '60000', '65000', '11', '70711', '0', '1', '', '', '', '', '', '', '', '', 'Empowered Vampiric Fiend - Empowered Blood'),
('3791903', '37919', '0', '6', '100', '31', '13000', '17000', '13000', '17000', '11', '70710', '1', '1', '', '', '', '', '', '', '', '', 'Empowered Vampiric Fiend - Leeching Rot');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37546');
INSERT INTO `creature_ai_scripts` VALUES 
('3754601', '37546', '0', '6', '100', '31', '6000', '10000', '6000', '10000', '11', '70191', '1', '1', '', '', '', '', '', '', '', '', 'Frenzied Abomination - Cleave'),
('3754602', '37546', '0', '6', '100', '31', '30000', '30000', '30000', '30000', '11', '70371', '0', '1', '', '', '', '', '', '', '', '', 'Frenzied Abomination - Enrage');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37531');
INSERT INTO `creature_ai_scripts` VALUES 
('3753101', '37531', '0', '6', '100', '11', '8000', '12000', '8000', '12000', '11', '71337', '0', '1', '', '', '', '', '', '', '', '', 'Frostwarden Handler - Concussive Shock 10'),
('3753102', '37531', '0', '6', '100', '21', '8000', '12000', '8000', '12000', '11', '71338', '0', '1', '', '', '', '', '', '', '', '', 'Frostwarden Handler - Concussive Shock 25'),
('3753103', '37531', '0', '6', '100', '31', '10000', '15000', '10000', '15000', '11', '71357', '0', '1', '', '', '', '', '', '', '', '', 'Frostwarden Handler - Order Whelp');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37229');
INSERT INTO `creature_ai_scripts` VALUES 
('3722901', '37229', '0', '6', '100', '31', '13000', '17000', '13000', '17000', '11', '71320', '0', '1', '', '', '', '', '', '', '', '', 'Frostwarden Sorceress - Frost Nova'),
('3722902', '37229', '0', '6', '100', '31', '6000', '10000', '6000', '10000', '11', '71318', '1', '1', '', '', '', '', '', '', '', '', 'Frostwarden Sorceress - Frostbolt'),
('3722903', '37229', '0', '6', '100', '21', '12000', '16000', '12000', '16000', '11', '71331', '1', '1', '', '', '', '', '', '', '', '', 'Frostwarden Sorceress - Ice Tomb 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37228');
INSERT INTO `creature_ai_scripts` VALUES 
('3722801', '37228', '0', '6', '100', '31', '18000', '22000', '18000', '22000', '11', '71325', '0', '1', '', '', '', '', '', '', '', '', 'Frostwarden Warrior - Frostblade'),
('3722802', '37228', '0', '6', '100', '11', '10000', '14000', '10000', '14000', '11', '71316', '1', '1', '', '', '', '', '', '', '', '', 'Frostwarden Warrior - Glacial Strike 10'),
('3722803', '37228', '0', '6', '100', '21', '10000', '14000', '10000', '14000', '11', '71317', '1', '1', '', '', '', '', '', '', '', '', 'Frostwarden Warrior - Glacial Strike 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37532');
INSERT INTO `creature_ai_scripts` VALUES 
('3753201', '37532', '4', '6', '100', '31', '', '', '', '', '11', '71350', '1', '1', '', '', '', '', '', '', '', '', 'Frostwing Whelp - Focus Fire'),
('3753202', '37532', '0', '6', '100', '11', '6000', '10000', '6000', '10000', '11', '71361', '1', '1', '', '', '', '', '', '', '', '', 'Frostwing Whelp - Frost Blast 10'),
('3753203', '37532', '0', '6', '100', '21', '6000', '10000', '6000', '10000', '11', '71362', '1', '1', '', '', '', '', '', '', '', '', 'Frostwing Whelp - Frost Blast 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37023');
INSERT INTO `creature_ai_scripts` VALUES 
('3702301', '37023', '0', '6', '100', '31', '13000', '17000', '13000', '17000', '11', '71103', '1', '1', '', '', '', '', '', '', '', '', 'Plague Scientist - Combobulating Spray'),
('3702302', '37023', '0', '6', '100', '31', '6000', '10000', '6000', '10000', '11', '73079', '4', '1', '', '', '', '', '', '', '', '', 'Plague Scientist - Plague Blast'),
('3702303', '37023', '0', '6', '100', '31', '25000', '29000', '25000', '29000', '11', '69871', '1', '1', '', '', '', '', '', '', '', '', 'Plague Scientist - Plague Stream');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='10404');
INSERT INTO `creature_ai_scripts` VALUES 
('1040401', '10404', '0', '6', '100', '31', '15000', '30000', '15000', '30000', '11', '71088', '0', '1', '', '', '', '', '', '', '', '', 'Pusutlating Horror - Blight Bomb'),
('1040402', '10404', '0', '6', '100', '11', '8000', '12000', '8000', '12000', '11', '71089', '4', '1', '', '', '', '', '', '', '', '', 'Pusutlating Horror - Bubbling Pus 10'),
('1040403', '10404', '0', '6', '100', '21', '8000', '12000', '8000', '12000', '11', '71090', '4', '1', '', '', '', '', '', '', '', '', 'Pusutlating Horror - Bubbling Pus 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37868');
INSERT INTO `creature_ai_scripts` VALUES 
('3786801', '37868', '0', '6', '100', '31', '10000', '14000', '10000', '14000', '11', '70602', '4', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Corruption'),
('3786802', '37868', '0', '6', '100', '3', '7000', '9000', '7000', '9000', '11', '70759', '0', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Frostbolt Volley 10 nhc'),
('3786803', '37868', '0', '6', '100', '9', '7000', '9000', '7000', '9000', '11', '72015', '0', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Frostbolt Volley 10 hc'),
('3786804', '37868', '0', '6', '100', '5', '7000', '9000', '7000', '9000', '11', '71889', '0', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Frostbolt Volley 25 nhc'),
('3786805', '37868', '0', '6', '100', '17', '7000', '9000', '7000', '9000', '11', '72016', '0', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Frostbolt Volley 25 hc'),
('3786806', '37868', '0', '6', '100', '11', '13999', '17000', '13000', '17000', '11', '71179', '4', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Mana Void 10'),
('3786807', '37868', '0', '6', '100', '21', '13999', '17000', '13000', '17000', '11', '71741', '4', '1', '', '', '', '', '', '', '', '', 'Risen Archmage - Mana Void 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='36844');
INSERT INTO `creature_ai_scripts` VALUES 
('3684401', '36844', '0', '6', '100', '11', '13000', '17000', '13000', '17000', '11', '69576', '1', '1', '', '', '', '', '', '', '', '', 'Risen Deathspeaker Servant - Chaos Bolt 10'),
('3684402', '36844', '0', '6', '100', '21', '13000', '17000', '13000', '17000', '11', '71108', '1', '1', '', '', '', '', '', '', '', '', 'Risen Deathspeaker Servant - Chaos Bolt 25'),
('3684403', '36844', '0', '6', '100', '31', '18000', '22000', '18000', '22000', '11', '69405', '1', '1', '', '', '', '', '', '', '', '', 'Risen Deathspeaker Servant - Consuming Shadows'),
('3684404', '36844', '0', '6', '100', '11', '24000', '26000', '24000', '26000', '11', '69404', '1', '1', '', '', '', '', '', '', '', '', 'Risen Deathspeaker Servant - Curse of Agony 10'),
('3684405', '36844', '0', '6', '100', '21', '24000', '26000', '24000', '26000', '11', '71112', '1', '1', '', '', '', '', '', '', '', '', 'Risen Deathspeaker Servant - Curse of Agony 25');

DELETE FROM `creature_ai_scripts` WHERE (`creature_id`='37011');
INSERT INTO `creature_ai_scripts` VALUES 
('3701101', '37011', '0', '6', '100', '31', '10000', '14000', '10000', '14000', '11', '70960', '0', '0', '', '', '', '', '', '', '', '', 'The Damned - Bone Flurry'),
('3701102', '37011', '6', '6', '100', '31', '', '', '', '', '11', '70961', '0', '1', '', '', '', '', '', '', '', '', 'The Damned - Shattered Bones');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN ('36724', '37007', '37886', '36791', '37571', '37664', '37595', '37662', '37665', '37663', '37666', '36811', '36807', '36829', '36805', '36808', '36880', '37919', '37546', '37531', '37229', '37228', '37532', '37023', '10404', '37868', '36844', '37011');


/* 17.09. */
DELETE FROM `creature_loot_template` WHERE `entry`=29915 AND `item`=41843;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (29915, 41843, -100, 1);
UPDATE `creature_loot_template` SET `groupid`=2 WHERE `entry`=29915 AND `item`=41989 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry`=29915 LIMIT 1;
UPDATE `creature` SET `curhealth`=51 WHERE `guid`=63161 LIMIT 1;

UPDATE `creature_model_info` SET `combat_reach`=14 WHERE `modelid`=8570 LIMIT 1;

/* 21.09. */
UPDATE `creature_template` SET `speed_walk` = '0', `speed_run` = '0', `unit_flags` = '33554820' WHERE `entry` = '33140';
UPDATE `creature_template` SET `speed_walk` = '0', `speed_run` = '0', `unit_flags` = '33554820', `ScriptName` = 'npc_runic_smash' WHERE `entry` = '33141';

/* 30.09. */
UPDATE `creature_template` SET `mechanic_immune_mask` = '667631615' IN ('32867', '33693', '32927', '33692');
UPDATE `creature_template` SET `mechanic_immune_mask` = '617299965' IN ('32857', '33694');
UPDATE `creature_template` SET `mechanic_immune_mask` = '617299965' IN ('33515', '34175');

/* 30.09. */
DELETE FROM trinity_string WHERE entry IN (1137, 1138);
INSERT INTO trinity_string (`entry`,`content_default`) VALUES
(1137, 'Dev mode is ON'),
(1138, 'Dev mode is OFF'); 

DELETE FROM command WHERE name = 'dev';
INSERT INTO command VALUES
('dev', 3, 'Syntax: .dev [on/off]\r\n\r\nEnable or Disable in game Dev tag or show current state if on/off not provided.'); 

/* 30.09. */
UPDATE `gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` ='192642' LIMIT 1 ;
UPDATE `gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` ='192643' LIMIT 1 ;
UPDATE `battleground_template` SET `MinPlayersPerTeam` = '0', `MaxPlayersPerTeam` = '2' WHERE `battleground_template`.`id` ='10' LIMIT 1 ;
DELETE FROM `disables` WHERE `entry` = '10';
 
/* 2.10. */ 
SET @LibraryLaborer := 29724;
SET @UldarBoss := 29725;
SET @AirStrip := 29726;
SET @ReavandDispo := 29727;
SET @HallsofStone := 29728;
SET @Dirkee := 29729;
SET @Recovery := 29730;

SET @UldarBossRef := 50013;
SET @AirStripRef := 50013+1;
SET @HallsofStoneRef := 50013+2;
SET @ReavandDispoRef := 50013+3;
SET @LibraryLaborerRef := 50013+4;
 
DELETE FROM `skinning_loot_template` WHERE `entry` IN (@Recovery,@Dirkee,@LibraryLaborer,@ReavandDispo,@HallsofStone,@AirStrip,@UldarBoss);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(@Recovery, 41338, 42, 1, 0, 1, 3),
(@Recovery, 41337, 44, 1, 0, 1, 3),
(@Recovery, 39690, 9, 1, 0, 1, 3),
(@Recovery, 39681, 4, 1, 0, 2, 4),
(@Recovery, 49050, 0.5, 1, 0, 1, 1),
(@Recovery, 39682, 0.5, 1, 0, 1, 1), 
(@Dirkee, 41338, 42, 1, 0, 1, 3),
(@Dirkee, 41337, 44.5, 1, 0, 1, 3), 
(@Dirkee, 39690, 10, 1, 0, 1, 3), 
(@Dirkee, 39681, 3, 1, 0, 2, 4), 
(@Dirkee, 49050, 0.5, 1, 0, 1, 1),
(@LibraryLaborer , 1, 100, 1, 0, -@LibraryLaborerRef, 1),
(@ReavandDispo, 1, 100, 1, 0, -@ReavandDispoRef, 1),
(@HallsofStone, 1, 100, 1, 0, -@HallsofStoneRef, 1),
(@AirStrip, 1, 100, 1, 0, -@AirStripRef, 1),
(@UldarBoss, 1, 100, 1, 0, -@UldarBossRef, 1);
 
DELETE FROM `reference_loot_template` WHERE `entry` IN (@AirStripRef,@ReavandDispoRef,@LibraryLaborerRef,@HallsofStoneRef,@UldarBossRef);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(@AirStripRef, 41338, 33, 1, 0, 1, 1), 
(@AirStripRef, 41337, 42, 1, 0, 1, 1), 
(@AirStripRef, 39690, 13, 1, 0, 1, 3), 
(@AirStripRef, 39681, 10, 1, 0, 1, 4), 
(@AirStripRef, 39686, 1.2, 1, 0, 1, 1), 
(@AirStripRef, 49050, 0.8, 1, 0, 1, 1), 
(@ReavandDispoRef, 41338, 40, 1, 0, 1, 3), 
(@ReavandDispoRef, 41337, 40, 1, 0, 1, 3), 
(@ReavandDispoRef, 39690, 9.5, 1, 0, 1, 3), 
(@ReavandDispoRef, 39681, 9.5, 1, 0, 2, 4), 
(@ReavandDispoRef, 39686, 0.5, 1, 0, 1, 1), 
(@ReavandDispoRef, 49050, 0.5, 1, 0, 1, 1),
(@LibraryLaborerRef, 41338, 43, 1, 0, 1, 3),
(@LibraryLaborerRef, 41337, 42, 1, 0, 1, 3),
(@LibraryLaborerRef, 39690, 9, 1, 0, 1, 3), 
(@LibraryLaborerRef, 39681, 4, 1, 0, 2, 4),
(@LibraryLaborerRef, 49050, 1, 1, 0, 1, 1),
(@LibraryLaborerRef, 39686, 0.5, 1, 0, 1, 1), 
(@LibraryLaborerRef, 39682, 0.5, 1, 0, 1, 1), 
(@HallsofStoneRef, 41338, 43.5, 1, 0, 1, 3),
(@HallsofStoneRef, 41337, 42, 1, 0, 1, 3),
(@HallsofStoneRef, 39690, 8, 1, 0, 1, 3), 
(@HallsofStoneRef, 39681, 5, 1, 0, 2, 4), 
(@HallsofStoneRef, 49050, 0.5, 1, 0, 1, 1), 
(@HallsofStoneRef, 39686, 0.5, 1, 0, 1, 1), 
(@HallsofStoneRef, 39682, 0.5, 1, 0, 1, 1), 
(@UldarBossRef, 35627, 43, 1, 0, 2, 10), 
(@UldarBossRef, 35624, 42, 1, 0, 4, 10), 
(@UldarBossRef, 35623, 43, 1, 0, 2, 6), 
(@UldarBossRef, 36860, 42, 1, 0, 2, 6),
(@UldarBossRef, 39690, 30, 1, 0, 16, 19), 
(@UldarBossRef, 39686, 26, 1, 0, 2, 3), 
(@UldarBossRef, 39682, 22, 1, 0, 5, 5), 
(@UldarBossRef, 39681, 21, 1, 0, 8, 10), 
(@UldarBossRef, 49050, 2, 1, 0, 1, 1); 

UPDATE `creature_template` SET `skinloot`=@LibraryLaborer WHERE `entry` IN (29389,29724);
UPDATE `creature_template` SET `skinloot`=@ReavandDispo WHERE `entry` IN (34273,34274,29382); 
UPDATE `creature_template` SET `skinloot`=@Dirkee WHERE `entry`=32500; 
UPDATE `creature_template` SET `skinloot`=@Recovery WHERE `entry` IN (34267,34268); 
UPDATE `creature_template` SET `skinloot`=@AirStrip WHERE `entry` IN (32358,25792,25758,25752,25753,25814,25793); 
UPDATE `creature_template` SET `skinloot`=@HallsofStone WHERE `entry` IN (27972,31383,27971,31387);
UPDATE `creature_template` SET `skinloot`=@UldarBoss WHERE `entry` IN (34332,34106,33113,34003,33293,33885);

/* 2.10. */ 
SET @ENTRY := 21729;
SET @SPELL_LIGHTNING_BOLT := 37273;
SET @SPELL_MAGNETO_COLLECTOR := 37136;
SET @SPELL_ELECTROMENTAL_VISUAL := 37248;
SET @SPELL_SUMMON_ELECTROMENTAL := 37264;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_ELECTROMENTAL_VISUAL,1,0,0,0,0,1,0,0,0,0,0,0,0,"Electromental - Out Of Combat - Cast Power Converters: Electromental Visual"),
(@ENTRY,0,1,0,0,0,100,0,1000,2000,2400,3800,11,@SPELL_LIGHTNING_BOLT,1,0,0,0,0,2,0,0,0,0,0,0,0,"Electromental - In Combat - Cast Lightning Bolt"),
(@ENTRY,0,2,0,8,0,100,0,@SPELL_MAGNETO_COLLECTOR,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Electromental - on spellhit - increment event phase'),
(@ENTRY,0,3,0,6,1,100,0,0,0,0,0,33,21731,0,0,0,0,0,7,0,0,0,0,0,0,0,'Electromental - on death during phase 1 - give quest credit');

DELETE FROM `spell_dbc` WHERE `Id`=@SPELL_SUMMON_ELECTROMENTAL;
INSERT INTO `spell_dbc`(`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(@SPELL_SUMMON_ELECTROMENTAL,0,0,256,0,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,26,1,0,-1,0,0,28,0,0,1,0,0,0,0,0,0,0,0,0,0,0,18,38,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,@ENTRY,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'Power Converters: Summon Electromental');

/* 2.10. */ 
UPDATE `gameobject_template` SET `ScriptName`='go_blackhoof_cage'/*,`data2`=30000*/ WHERE `entry`=186287;
UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry`=11145;
DELETE FROM `creature_text` WHERE `entry`=23720;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(23720,0,0,"Thank you! There's no telling what those brutes would've done to me.",12,0,100,18,0,0,"Theramore Prisoner");
/* 2.10. */ 
SET @ENTRY := 31397;
SET @QUEST := 13300;
SET @GOSSIP := 10137;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Saronite Mine Slave - On Gossip Select - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,1,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Saronite Mine Slave - On Script - Close Gossip"),
(@ENTRY*100,9,1,0,0,0,100,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Saronite Mine Slave - On Script - Yell Line (random)"),
(@ENTRY*100,9,2,0,0,0,100,1,0,0,0,0,33,31866,0,0,0,0,0,0,0,0,0,0,0,0,0,"Saronite Mine Slave - On Script - Quest Credit"),
(@ENTRY*100,9,3,0,0,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,0,0,0,0,0,0,0,0,"Saronite Mine Slave - On Script - Force Despawn");

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"AHAHAHAHA... you'll join us soon enough!",14,0,100,0,0,0,"Saronite Mine Slave"),
(@ENTRY,0,1,"I don't want to leave! I want to stay here!",14,0,100,0,0,0,"Saronite Mine Slave"),
(@ENTRY,0,2,"NO! You're wrong! The voices in my head are beautiful!",14,0,100,0,0,0,"Saronite Mine Slave"),
(@ENTRY,0,3,"My life for you!",14,0,100,0,0,0,"Saronite Mine Slave"),
(@ENTRY,0,4,"I'm coming, master!",14,0,100,0,0,0,"Saronite Mine Slave");

DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=14068;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,14068);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(@GOSSIP,0,0,"Go on, you're free. Get out of here!",1,1,0);

DELETE FROM `conditions` WHERE `SourceGroup`=@GOSSIP AND `ConditionValue1`=@QUEST;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP,0,0,9,@QUEST,0,0,0,'',"Only show first gossip if player is on quest Slaves to Saronite");
/* 2.10. */ 
SET @ENTRY := 27931;
SET @SPELL_CREDIT := 50035;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts`  (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)  VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,11,@SPELL_CREDIT,0,0,0,0,0,7,0,0,0,0,0,0,0,'Despawn Mummy Bunny - Just Summoned - Quest Credit');

DELETE FROM `gameobject` WHERE `id`=192262; 
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(173, 192262, 571, 1, 0x8, 8497.219, -90.90104, 789.2875, 0.1396245, 0, 0, 0.06975555, 0.9975641, 0, 0, 0);
/* 2.10. */ 
SET @ENTRY := 33499;
SET @QUEST_LOOT := 45080; 
SET @QUEST := 13654;
SET @SPELL1 := 63124;
SET @SPELL2 := 63126;

UPDATE `creature_template` SET `lootid`=`entry` WHERE `entry`=@ENTRY;
DELETE FROM `creature_loot_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_loot_template` VALUES
(@ENTRY,@QUEST_LOOT,-100,1,0,1,1); 

DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`emote`) VALUES
(@ENTRY,234); 

SET @ENTRY := 33498;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL1,1,0,0,81,16777216,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maloric - on Aura: Incapacitate Maloric - set npcflag: Spellclick'),
(@ENTRY,0,1,0,23,0,100,0,@SPELL1,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maloric - on NoAura: Incapacitate Maloric - set npcflag: none');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=@QUEST_LOOT;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,@QUEST_LOOT,0,24,1,@ENTRY,0,0,'','Item:Large Femur only target Maloric'),
(17,0,@SPELL2,0,9,@QUEST,0,0,0,'','Needs taken Quest 13654 to perform Spell: Search Maloric');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY;
INSERT INTO `npc_spellclick_spells` VALUES
(@ENTRY,@SPELL2,@QUEST,1,@QUEST,2,0,0,0);

/* 2.10. */ 
DELETE FROM `player_factionchange_items` WHERE `alliance_id`=48356;
 
DELETE FROM `player_factionchange_spells` WHERE `alliance_id` IN (67093,67091,67095,67096,67092,67085,67080,67082,67087,67083,67084,67086,60867,67065,67064,67079,67066);
INSERT INTO `player_factionchange_spells` (`alliance_id`,`horde_id`) VALUES
(67093,67132),
(67091,67130),
(67095,67134),
(67096,67135),
(67092,67131),
(67085,67141),
(67080,67136),
(67082,67138),
(67087,67139),
(67083,67143),
(67084,67140),
(67086,67142),
(60867,60866),
(67065,67147),
(67064,67144),
(67079,67145),
(67066,67146);
 
DELETE FROM `player_factionchange_items` WHERE `alliance_id` IN (47003,47626,44503,47654);
INSERT INTO `player_factionchange_items` (`race_A`,`alliance_id`,`commentA`,`race_H`,`horde_id`,`commentH`) VALUES
(0,47003,'Dawnbreaker Greaves',0,47430,'Dawnbreaker Sabatons'),
(0,47626,'Plans: Sunforged Breastplate',0,47643,'Plans: Sunforged Breastplate'),
(0,44503,'Schematic: Mekgineers Chopper',0,44502,'Schematic: Mechano-Hog'),
(0,47654,'Pattern: Bejeweled Wizards Bracers',0,47639,'Pattern: Bejeweled Wizards Bracers');
/* 2.10. */ 
UPDATE `creature_template` SET `minlevel`=82, `maxlevel`=82 WHERE `entry`=31674;

DELETE FROM `gameobject` WHERE `id`=192262;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(173, 192262, 571, 1, 0x8, 8497.219, -90.90104, 789.2875, 0.1396245, 0, 0, 0.06975555, 0.9975641, 0, 0, 0);

DELETE FROM `creature` WHERE `id` IN (30301,30322,30300);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(4089, 30301, 571, 1, 0x8, 0, 0, 8497.78, -99.0251, 786.528, 3.01942, 120, 0, 0, 1, 0, 0, 0, 0, 0), 
(4090, 30322, 571, 1, 0x8, 0, 0, 8505.47, -86.2532, 787.339, 3.28122, 120, 0, 0, 1, 0, 0, 0, 0, 0), 
(4765, 30322, 571, 1, 0x8, 0, 0, 8502.62, -111.308, 790.176, 3.05433, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(6095, 30322, 571, 1, 0x8, 0, 0, 8498.78, -46.0375, 788.895, 2.53073, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(6096, 30300, 571, 1, 0x8, 0, 0, 8015.63, -126.515, 865.719, 3.39914, 120, 0, 0, 1, 0, 0, 0, 0, 0); 

UPDATE `gameobject_template` SET `flags`=0x4 WHERE `entry`=192262; 
UPDATE `creature_template` SET `faction_A`=1771,`faction_H`=1771,`unit_flags`=0x8040,`speed_walk`=2.8,`speed_run`=1.5873 WHERE `entry`=30300; 
UPDATE `creature_template` SET `faction_A`=1770,`faction_H`=1770,`npcflag`=0x1,`unit_flags`=0x300,`equipment_id`=1003,`speed_run`=0.99206 WHERE `entry`=30322; 
UPDATE `creature_template` SET `faction_A`=113,`faction_H`=113,`unit_flags`=0x300,`speed_walk`=6,`speed_run`=2.14286,`VehicleId`=227 WHERE `entry`=30301; 

UPDATE `creature_model_info` SET `bounding_radius`=3.1,`combat_reach`=50,`gender`=0 WHERE `modelid`=27093; 
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1,`gender`=0 WHERE `modelid`=26091; 
UPDATE `creature_model_info` SET `bounding_radius`=1.55,`combat_reach`=5,`gender`=2 WHERE `modelid`=26935;

DELETE FROM `creature_template_addon` WHERE `entry` IN (30300,30322,30301);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30300,0,0,1,0, NULL), 
(30322,0,0,1,0, NULL), 
(30301,0,0,1,0, NULL); 

DELETE FROM `spell_area` WHERE spell=56526;
INSERT INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES 
(56526,4436,13007,1,13007,0,0,2,1), 
(56526,4435,13007,1,13007,0,0,2,1); 

/* 2.10. */ 
SET @ENTRY := 25678;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry`=-767;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Doctor Razorgin - On Aggro - Say Line 0 (random)');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Ah, good... more parts!',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines'),
(@ENTRY,0,1,'Clear!',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines'),
(@ENTRY,0,2,'Fresh meat!',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines'),
(@ENTRY,0,3,'I recommened evisceration!',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines'),
(@ENTRY,0,4,'It''s no good... you need more work first.',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines'),
(@ENTRY,0,5,'Live, damn you!',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines'),
(@ENTRY,0,6,'The doctor is in!',14,0,100,0,0,0,'Part of the Doctor Razorgin on aggro lines');

/* 2.10. */ 
DELETE FROM `gossip_menu` WHERE `entry` IN (8336,8342,8341,8340,8339,8338) AND `text_id` IN (10401,10405,10406,10407,10408,10409);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES 
(8336,10401),
(8342,10405),
(8341,10406),
(8340,10407),
(8339,10408),
(8338,10409);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8336;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,8336,0,0,9,10577,0,0,0,'','Only show first gossip if player is on quest What Illidan Wants, Illidan Gets...');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8336,8342,8341,8340,8339,8338);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(8336,0,0,'I bring word from Lord Illidan.',1,1,8342),
(8342,0,0,'The cipher fragment is to be moved. Have it delivered to Zuluhed.',1,1,8341),
(8341,0,0,'Perhaps you did not hear me, Ruusk. I am giving you an order from Illidan himself!',1,1,8340),
(8340,0,0,'Very well. I will return to the Black Temple and notify Lord Illidan of your unwillingness to carry out his wishes. I suggest you make arrangements with your subordinates and let them know that you will soon be leaving this world.',1,1,8339),
(8339,0,0,'Do I need to go into all the gory details? I think we are both well aware of what Lord Illidan does with those that would oppose his word. Now, I must be going! Farewell, Ruusk! Forever...',1,1,8338),
(8338,0,0,'Ah, good of you to come around, Ruusk. Thank you and farewell.',1,1,0); 

UPDATE `creature_template` SET `gossip_menu_id`=8336,`AIName`='SmartAI' WHERE `entry`=20563;
DELETE FROM `smart_scripts` WHERE `entryorguid`=20563;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(20563,0,0,1,62,0,100,0,8338,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Commander Ruusk - On Gossip Select - Close Gossip'),
(20563,0,1,0,61,0,100,0,0,0,0,0,26,10577,0,0,0,0,0,7,0,0,0,0,0,0,0,'Commander Ruusk - On Gossip Select (link) - Quest Credit');
/* 2.10. */ 
UPDATE `creature_template` SET `unit_flags`=32768,`equipment_id`=53 WHERE `entry`=24062;
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=24178; 
UPDATE `creature_model_info` SET `bounding_radius`=1.25,`combat_reach`=4.375,`gender`=0 WHERE `modelid`=22486; 

DELETE FROM `creature_template_addon` WHERE `entry` IN (24062,24178);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(24062,0,1,257,0, NULL), 
(24178,0,3,1,0, '6606'); 
DELETE FROM `creature_addon` WHERE `guid` IN (120419,120422,106573);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(120419,0,0,0,0,1,''), 
(120422,0,0,0,0,1,''); 

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=43209;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,43209,0,23,4534,0,0,64,'','Place Ram Meat can only be used in Wildervar Mine');

DELETE FROM `spell_target_position` WHERE `id`=43209;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(43209,571,2636.288086,-5050.891113,295.537445,5.374982);

SET @ENTRY := 24178;
SET @SPELL_GROUND_SMASH := 12734; 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Shatterhorn - On Aggro - Say Line 0'),
(@ENTRY,0,1,0,0,0,100,0,3000,5000,12000,13000,11,@SPELL_GROUND_SMASH,1,0,0,0,0,2,0,0,0,0,0,0,0,'Shatterhorn - In Combat - Cast Ground Smash'),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,41,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Shatterhorn - Force Despawn 8 Seconds After Death'),
(@ENTRY,0,3,0,8,0,0,0,43209,0,0,0,19,0x300,1,0,0,0,0,1,0,0,0,0,0,0,0,'Shatterhorn - On Place Meat spellhit remove unit flags'),
(@ENTRY,0,4,0,8,0,0,0,43209,0,0,0,28,6606,1,0,0,0,0,1,0,0,0,0,0,0,0,'Shatterhorn - On Place Meat spellhit remove sleep aura'),
(@ENTRY,0,5,0,8,0,0,0,43209,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Shatterhorn - On Place Meat spellhit remove byte1 3');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s wakes up from the smell of fresh meat!',16,0,100,15,0,0,'Shatterhorn on aggro line and roar at same time');

/* 6.10. Ulduar, Sara*/ 
UPDATE `creature_template` SET `unit_flags` = '33554496' WHERE `entry` = 33134;

/* 6.10-4 deprecated */
/* 6.10-5 - Damage for Lich King Battle */
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=150 WHERE `entry`=36597;
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=180 WHERE `entry`=39167; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=180 WHERE `entry`=39168; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=225 WHERE `entry`=39169; 

UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=50 WHERE `entry`=37698; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=60 WHERE `entry`=39299; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=60 WHERE `entry`=39300; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=75 WHERE `entry`=39301; 

UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=7 WHERE `entry`=37695; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=8.4 WHERE `entry`=39309; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=8.4 WHERE `entry`=39310; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=10.5 WHERE `entry`=39311; 

UPDATE `creature_template` SET `difficulty_entry_1`=39302,`difficulty_entry_2`=39303,`difficulty_entry_3`=39304 WHERE `entry`=36701; 
UPDATE `creature_template` SET `speed_walk`=2,`speed_run`=1.42857,`exp`=2,`minlevel`=83,`maxlevel`=83,`faction_A`=14,`faction_H`=14,`dynamicflags`=0 WHERE `entry` IN (39302,39303,39304); 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=60 WHERE `entry`=36701; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=72 WHERE `entry`=39302; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=72 WHERE `entry`=39303; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=90 WHERE `entry`=39304; 

UPDATE `creature_template` SET `difficulty_entry_1`=39296 WHERE `entry`=36824; 
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`exp`=2,`faction_A`=14,`faction_H`=14,`flags_extra`=256 WHERE `entry`=39296; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=20 WHERE `entry`=36824; 
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=20 WHERE `entry`=39296; 

UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=20 WHERE `entry`=36823; 


/* 6.10-6 NPCs in Grizzly Hills */
/* Pathing for Conquest Hold Berserker Entry: 27500 */
SET @NPC := 105857;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2721.081,`position_y`=-1832.136,`position_z`=4.838899 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2710.015,-1832.177,4.838899,0,0,0,100,0),
(@PATH,2,2700.421,-1833.964,4.838899,0,0,0,100,0),
(@PATH,3,2693.419,-1835.334,4.867931,0,0,0,100,0),
(@PATH,4,2700.177,-1834.009,4.838899,0,0,0,100,0),
(@PATH,5,2710.015,-1832.177,4.838899,0,0,0,100,0),
(@PATH,6,2721.081,-1832.136,4.838899,0,0,0,100,0),
(@PATH,7,2732.511,-1831.47,4.838899,0,0,0,100,0),
(@PATH,8,2737.419,-1830.768,4.838899,0,0,0,100,0),
(@PATH,9,2732.511,-1831.47,4.838899,0,0,0,100,0),
(@PATH,10,2721.081,-1832.136,4.838899,0,0,0,100,0);
/* Pathing for Conquest Hold Berserker Entry: 27500 */
SET @NPC := 105821;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2738.191,`position_y`=-1784.905,`position_z`=5.87062 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2734.5,-1775.514,6.962903,0,0,0,100,0),
(@PATH,2,2738.191,-1784.905,5.87062,0,0,0,100,0),
(@PATH,3,2741.883,-1793.762,5.804742,0,0,0,100,0),
(@PATH,4,2746.422,-1807.012,5.22166,0,0,0,100,0),
(@PATH,5,2748.496,-1816.049,5.223536,0,0,0,100,0),
(@PATH,6,2750.136,-1823.419,5.425339,0,0,0,100,0),
(@PATH,7,2748.496,-1816.049,5.223536,0,0,0,100,0),
(@PATH,8,2746.422,-1807.012,5.22166,0,0,0,100,0),
(@PATH,9,2741.883,-1793.762,5.804742,0,0,0,100,0),
(@PATH,10,2738.191,-1784.905,5.87062,0,0,0,100,0);
/* Pathing for Conquest Hold Berserker Entry: 27500 */
SET @NPC := 105859;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2753.638,`position_y`=-1895.846,`position_z`=5.03679 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2754.177,-1888.177,5.087607,0,0,0,100,0),
(@PATH,2,2754.56,-1879.827,5.126619,0,0,0,100,0),
(@PATH,3,2754.854,-1867.842,5.131936,0,0,0,100,0),
(@PATH,4,2754.627,-1856.456,5.450566,0,0,0,100,0),
(@PATH,5,2753.946,-1848.716,5.450566,0,0,0,100,0),
(@PATH,6,2751.545,-1837.476,5.39562,0,0,0,100,0),
(@PATH,7,2753.931,-1848.54,5.450566,0,0,0,100,0),
(@PATH,8,2754.627,-1856.456,5.450566,0,0,0,100,0),
(@PATH,9,2754.854,-1867.842,5.131936,0,0,0,100,0),
(@PATH,10,2754.56,-1879.827,5.126619,0,0,0,100,0),
(@PATH,11,2754.177,-1888.177,5.087607,0,0,0,100,0),
(@PATH,12,2753.638,-1895.846,5.03679,0,0,0,100,0);
/* Pathing for Conquest Hold Berserker Entry: 27500 */
SET @NPC := 105810;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2805.754,`position_y`=-1824.487,`position_z`=10.76279 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2811.704,-1833.185,11.26279,0,0,0,100,0),
(@PATH,2,2825.015,-1839.888,11.25652,0,0,0,100,0),
(@PATH,3,2811.704,-1833.185,11.26279,0,0,0,100,0),
(@PATH,4,2805.754,-1824.487,10.76279,0,0,0,100,0),
(@PATH,5,2806.472,-1815.43,10.76279,0,0,0,100,0),
(@PATH,6,2806.509,-1806.167,10.63779,0,0,0,100,0),
(@PATH,7,2806.472,-1815.43,10.76279,0,0,0,100,0),
(@PATH,8,2805.754,-1824.487,10.76279,0,0,0,100,0);
/* Pathing for Conquest Hold Berserker Entry: 27500 */
SET @NPC := 105750;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2691.886,`position_y`=-1764.669,`position_z`=9.601107 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2681.84,-1768.02,9.601107,0,0,0,100,0),
(@PATH,2,2691.886,-1764.669,9.601107,0,0,0,100,0),
(@PATH,3,2705.537,-1760.065,9.601107,0,0,0,100,0),
(@PATH,4,2714.329,-1758.981,9.601107,0,0,0,100,0),
(@PATH,5,2705.537,-1760.065,9.601107,0,0,0,100,0),
(@PATH,6,2691.886,-1764.669,9.601107,0,0,0,100,0);
/* Pathing for Conquest Hold Berserker Entry: 27500 */
SET @NPC := 105854;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2683.998,`position_y`=-1873.36,`position_z`=14.20639 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2681.924,-1863.327,14.19665,0,0,0,100,0),
(@PATH,2,2691.357,-1860.246,13.94065,0,0,0,100,0),
(@PATH,3,2705.164,-1860.508,13.85815,0,0,0,100,0),
(@PATH,4,2706.999,-1867.629,13.94356,0,0,0,100,0),
(@PATH,5,2702.301,-1873.661,13.86975,0,0,0,100,0),
(@PATH,6,2690.931,-1875.133,13.94601,0,0,0,100,0),
(@PATH,7,2683.998,-1873.36,14.20639,0,0,0,100,0);

/* Pathing for Westfall Brigade Marine Entry: 27501 */
SET @NPC := 105933;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2670.551,`position_y`=-2010.984,`position_z`=18.17214 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2673.404,-2006.613,18.2068,0,0,0,100,0),
(@PATH,2,2670.639,-2010.848,18.17313,0,0,0,100,0),
(@PATH,3,2667.047,-2016.413,18.20223,0,0,0,100,0),
(@PATH,4,2670.551,-2010.984,18.17214,0,0,0,100,0);
/* Pathing for Westfall Brigade Marine Entry: 27501 */
SET @NPC := 105932;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2633.481,`position_y`=-1987.501,`position_z`=8.764043 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2632.814,-1993.635,8.538836,0,0,0,100,0),
(@PATH,2,2638.163,-1998.093,8.282835,0,0,0,100,0),
(@PATH,3,2643.552,-2000.655,8.280496,0,0,0,100,0),
(@PATH,4,2646.837,-1997.753,8.30875,0,0,0,100,0),
(@PATH,5,2649.113,-1994.113,8.310638,0,0,0,100,0),
(@PATH,6,2649.836,-1989.002,8.284628,0,0,0,100,0),
(@PATH,7,2645.433,-1984.703,8.336969,0,0,0,100,0),
(@PATH,8,2638.931,-1981.989,8.592985,0,0,0,100,0),
(@PATH,9,2633.481,-1987.501,8.764043,0,0,0,100,0);

/* Missing spawn for Purkom "Venture Coin Vendor" Horde */
DELETE FROM `creature` WHERE `id`=27730;
DELETE FROM `creature` WHERE `guid`=107018 AND `id`=27511;
INSERT INTO creature (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(107018,27730,571,1,1,0,0,2492.467,-1839.655,11.72851,5.532694,120,0,0,1,0,0);

/* Rogue Voidwalkers Shouldn't have weapons */
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry`=16974;

/* Add Missing Spawn */
DELETE FROM `creature` WHERE `guid` IN (13425,13426,13427,13428,14241);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
/* Bubb Lazarr */
(13425,27628,571,1,1,0,0,2404.771,-1823.437,1.99793,5.078908,300,0,0,1,0,0),
/* Rocket Propelled Warhead */
(13426,27593,571,1,1,0,0,2394.92358,-1832.18921,-1.69907868,2.687807,300,0,0,1,0,0),
(13427,27593,571,1,1,0,0,2396.13013,-1829.49475,-1.6780616,2.75762,300,0,0,1,0,0),
(13428,27593,571,1,1,0,0,2397.40283,-1826.75,-1.65229559,2.72271371,300,0,0,1,0,0),
(14241,27593,571,1,1,0,0,2398.62329,-1824.14063,-1.66098964,2.740167,300,0,0,1,0,0);

/* Template updates Rocket Propelled Warhead */
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`InhabitType`=4,`unit_flags`=`unit_flags`|16384,`speed_walk`=12,`speed_run`=4.28571 WHERE `entry`=27593;

UPDATE `creature_model_info` SET `bounding_radius`=0.534723,`combat_reach`=3.5,`gender`=2 WHERE `modelid`=26611; /* Rocket Propelled Warhead */

DELETE FROM `creature_template_addon` WHERE `entry`=27593;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(27593,0,0,1,0, NULL); /* Rocket Propelled Warhead */

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=27593;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(27593, 49177, 0, 0, 0, 1, 0, 0, 0); /* Ride Rocket Propelled Warhead */

/* Fix requirements for Element 115 from Nayd */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceEntry`=37664;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(4, 24095, 37664, 0, 9, 12433, 0, 0, 0, '', 'Element 115 - Seeking Solvent'),
(4, 24095, 37664, 1, 9, 12434, 0, 0, 0, '', 'Element 115 - Always Seeking Solvent'),
(4, 24095, 37664, 2, 9, 12443, 0, 0, 0, '', 'Element 115 - Seeking Solvent'),
(4, 24095, 37664, 3, 9, 12446, 0, 0, 0, '', 'Element 115 - Always Seeking Solvent'),
(4, 24095, 37664, 4, 9, 12437, 0, 0, 0, '', 'Element 115 - Riding the Red Rocket A'),
(4, 24095, 37664, 5, 9, 12432, 0, 0, 0, '', 'Element 115 - Riding the Red Rocket H');
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=24095 AND `item`=37664;

/* Add some missing Azure Scalebane Spawns to crystalsong Forest */
DELETE FROM `creature` WHERE `guid` IN (6499,6627,7630,10504,12599,12954,13423,13424);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`unit_flags`,`dynamicflags`) VALUES
(6499,31402,571,1,1,0,0,5220.886,591.7798,187.861328,4.866286,180,10,0,1,0,1,0,0),
(6627,31402,571,1,1,0,0,5344.32,595.7,183.07399,4.99164152,180,10,0,1,0,1,0,0),
(7630,31402,571,1,1,0,0,5411.67773,623.1622,178.355133,0.87266463,180,10,0,1,0,1,0,0),
(10504,31402,571,1,1,0,0,5434.40332,783.9654,182.770508,0.5726554,180,10,0,1,0,1,0,0),
(12599,31402,571,1,1,0,0,5464.40771,716.290344,171.820313,2.65290046,180,10,0,1,0,1,0,0),
(12954,31402,571,1,1,0,0,5573.34326,862.8543,161.738586,1.48352981,180,10,0,1,0,1,0,0),
(13423,31402,571,1,1,0,0,5659.52734,987.839844,174.5677,0.314159274,180,0,0,1,0,0,570688256,32),
(13424,31402,571,1,1,0,0,5660.18652,1028.454,174.562653,2.79252672,180,0,0,1,0,0,570688256,32);
/* Addons for dead appearance */
DELETE FROM `creature_addon` WHERE `guid` IN (13423,13424);
INSERT INTO `creature_addon` (`guid`,`bytes2`,`auras`) VALUES
(13423,1,29266),
(13424,1,29266);
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=25195; /* Azure Scalebane */
DELETE FROM `creature_template_addon` WHERE `entry`=31402;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(31402,0,0,1,0, NULL); /* Azure Scalebane */

/* 
6.10-7
6.10-8 - deprecated 
*/

/* 8.10 - HoL - Hardened Steel Skycaller, delete old scripts */
DELETE from creature_ai_scripts where creature_id = 28580;

/* 08.10 - Uldar ScriptNames*/
UPDATE creature_template SET scriptname = 'mob_saronit_vapor' WHERE entry = 33488;

/* Set LosOK, notInCombat and logLoot for dreamwalker caches */
UPDATE `gameobject_template` SET `data10` = '1', `data12` = '1', `data13` = '1' WHERE `entry` = '201959';
UPDATE `gameobject_template` SET `data10` = '1', `data12` = '1', `data13` = '1' WHERE `entry` = '202338';
UPDATE `gameobject_template` SET `data10` = '1', `data12` = '1', `data13` = '1' WHERE `entry` = '202339';
UPDATE `gameobject_template` SET `data10` = '1', `data12` = '1', `data13` = '1' WHERE `entry` = '202340';

/* 20.10 -  spawn dreamwalker caches*/
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(	'', '201959', '631', '1', '1', '4203.700195', '2484.830078', '364.955994', '3.141590', '', '', '', '', '-120', '', '1'),
('', '202338', '631', '4', '1', '4203,700195', '2484,830078', '364,955994', '3,141590', '', '', '', '', '-120', '', '1'),
('', '202339', '631', '2', '1', '4203,700195', '2484,830078', '364,955994', '3,141590', '', '', '', '', '-120', '', '1'),
('', '202340', '631', '8', '1', '4203,700195', '2484,830078', '364,955994', '3,141590', '', '', '', '', '-120', '', '1');

/* 20.10 - Change teleport to lich king precipice */
UPDATE `spell_target_position` SET `target_position_z` = 1042.9 WHERE `id` = 70860;

/* 25.10 */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN ('37531', '37532', '37868', '36791', '37886');

UPDATE `spell_bonus_data` SET `ap_bonus` = 0.2 WHERE `entry` = 49184;

/* mechanic immune mask for icc creatures */
UPDATE creature_template SET mechanic_immune_mask=651935615 WHERE entry in (
"36597","39166","39167","39168",
"36612","37957","37958","37959",
"36626","37504","37505","37506",
"36627","38390","38549","38550",
"36678","38431","38585","38586",
"36853","38265","38266","38267",
"37813","38402","38582","38583",
"37955","38434","38435","38436",
"37970","38401","38784","38785",
"37972","38399","38769","38770",
"37973","38400","38771","38772");

UPDATE creature_template SET mechanic_immune_mask=14401405 WHERE entry in (36855,38106,38296,38297);
