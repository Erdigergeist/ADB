DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=9118;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(9118,16,181,0, ''),
(9118,6,490,0, '');
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=61719;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(61716,61719,2, 'Rabbit Costume: Lay Egg periodic'),
(61734,61719,2, 'Noblegarden Bunny: Lay Egg periodic');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=9118 AND `type`=6;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(9118,6,543,0, '');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_vanquished_clutches';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64981, 'spell_item_vanquished_clutches');
ALTER TABLE `instance_template`
DROP COLUMN `startLocX`,
DROP COLUMN `startLocY`,
DROP COLUMN `startLocZ`,
DROP COLUMN `startLocO`,
CHANGE `parent` `parent` SMALLINT(5) UNSIGNED NOT NULL;
ALTER TABLE `creature_equip_template`
CHANGE `entry` `entry` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `equipentry1` `itemEntry1` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `equipentry2` `itemEntry2` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `equipentry3` `itemEntry3` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
ADD COLUMN `newEntry` INT UNSIGNED AUTO_INCREMENT,
ADD INDEX(newEntry),
DROP PRIMARY KEY;

UPDATE `creature_template` ct, `creature_equip_template` cet
SET ct.`equipment_id` = cet.`newEntry`
WHERE ct.`equipment_id` = cet.`entry`;

UPDATE `game_event_model_equip` geme, `creature_equip_template` cet
SET geme.`equipment_id` = cet.`newEntry`
WHERE geme.`equipment_id` = cet.`entry`;

UPDATE `creature` c, `creature_equip_template` cet
SET c.`equipment_id` = cet.`newEntry`
WHERE c.`equipment_id` = cet.`entry`;

UPDATE `creature_equip_template` SET `entry` = `newEntry`;

ALTER TABLE `creature_equip_template`
ADD PRIMARY KEY(`entry`),
DROP COLUMN `newEntry`;CREATE TABLE `temp_auras` (
  `spell` MEDIUMINT(8) UNSIGNED NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

DELIMITER %%

CREATE FUNCTION `ConvertAuras`(`auras` VARCHAR(1024))
RETURNS VARCHAR(1024) CHARSET utf8
DETERMINISTIC
BEGIN
  DECLARE tmp VARCHAR(1024);
  DECLARE curr VARCHAR(10);
  DECLARE k INT;
  DECLARE pos INT;
  DECLARE startp INT;

  SET @k = 0;
  SET @tmp = '';
  SET @startp = 1;
  SET @pos = LOCATE(' ', auras);

  DELETE FROM temp_auras;

  WHILE @pos > 0 DO
    IF @k = 0 THEN
      SET @curr = SUBSTR(auras, @startp, @pos - @startp);

      IF NOT EXISTS(SELECT spell FROM temp_auras WHERE spell = @curr) THEN
        SET @tmp = CONCAT(@tmp, @curr, ' ');
        INSERT INTO temp_auras VALUES(@curr);
      END IF;
    END IF;

    SET @k = 1-@k;
    SET @startp = @pos+1;
    SET @pos = LOCATE(' ', auras, @startp);
  END WHILE;

  SET @tmp = RTRIM(@tmp);
  RETURN @tmp;
END%%

DELIMITER ;

UPDATE `creature_addon` SET `auras` = REPLACE(`auras`, '  ', ' ');
UPDATE `creature_addon` SET `auras` = TRIM(`auras`);
UPDATE `creature_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_addon` SET `auras` = ConvertAuras(`auras`) WHERE `auras` IS NOT NULL;

DROP FUNCTION `ConvertAuras`;
DROP TABLE `temp_auras`;CREATE TABLE `temp_auras` (
  `spell` MEDIUMINT(8) UNSIGNED NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

DELIMITER %%

CREATE FUNCTION `ConvertAuras`(`auras` VARCHAR(1024))
RETURNS VARCHAR(1024) CHARSET utf8
DETERMINISTIC
BEGIN
  DECLARE tmp VARCHAR(1024);
  DECLARE curr VARCHAR(10);
  DECLARE k INT;
  DECLARE pos INT;
  DECLARE startp INT;

  SET @k = 0;
  SET @tmp = '';
  SET @startp = 1;
  SET @pos = LOCATE(' ', auras);

  DELETE FROM temp_auras;

  WHILE @pos > 0 DO
    IF @k = 0 THEN
      SET @curr = SUBSTR(auras, @startp, @pos - @startp);

      IF NOT EXISTS(SELECT spell FROM temp_auras WHERE spell = @curr) THEN
        SET @tmp = CONCAT(@tmp, @curr, ' ');
        INSERT INTO temp_auras VALUES(@curr);
      END IF;
    END IF;

    SET @k = 1-@k;
    SET @startp = @pos+1;
    SET @pos = LOCATE(' ', auras, @startp);
  END WHILE;

  SET @tmp = RTRIM(@tmp);
  RETURN @tmp;
END%%

DELIMITER ;

UPDATE `creature_template_addon` SET `auras` = REPLACE(`auras`, '  ', ' ');
UPDATE `creature_template_addon` SET `auras` = TRIM(`auras`);
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_template_addon` SET `auras` = ConvertAuras(`auras`) WHERE `auras` IS NOT NULL;

DROP FUNCTION `ConvertAuras`;
DROP TABLE `temp_auras`;-- Nefarian T2 Head
SET @REF:= 34348; -- (found by StoredProc)

-- Delete all so we can also renumber the itemids on refs for old loot
DELETE FROM `creature_loot_template` WHERE `entry`=11583; 
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(11583,19002,100,1,0,1,1),
(11583,19003,100,1,0,1,1),
(11583,21138,-100,1,0,1,1),
(11583,21142,-100,1,0,1,1),
(11583,1,100,1,1,-34002,2),
(11583,2,100,1,1,-34003,2),
(11583,3,100,1,1,-34009,2),
(11583,4,100,1,1,-34010,2),
(11583,5,100,1,1,-@REF,2);

DELETE FROM `reference_loot_template` WHERE `entry`=@REF;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@REF,16929,0,1,1,1,1), -- Nemesis Skullcap (Warlock)
(@REF,16914,0,1,1,1,1), -- Netherwind Crown (Mage)
(@REF,16963,0,1,1,1,1), -- Helm of Wrath (Warrior)
(@REF,16908,0,1,1,1,1), -- Bloodfang Hood (Rogue)
(@REF,16955,0,1,1,1,1), -- Judgement Crown (Paladin)
(@REF,16900,0,1,1,1,1), -- Stormrage Cover (Druid)
(@REF,16939,0,1,1,1,1), -- Dragonstalker's Helm (Hunter)
(@REF,16921,0,1,1,1,1), -- Halo of Transcendence (Priest)
(@REF,16947,0,1,1,1,1); -- Helmet of Ten Storms (Shaman)
UPDATE `achievement_criteria_data` SET `ScriptName`='achievement_has_orphan_out' WHERE `ScriptName`='achievement_school_of_hard_knocks';
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6641,6642,6643,6644,6651,6652,6653,6654,6655,6656,6657,6659,10391,12398);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(6641,16,201,0,''), -- School of Hard Knocks
(6642,16,201,0,''), -- School of Hard Knocks
(6643,16,201,0,''), -- School of Hard Knocks
(6644,16,201,0,''), -- School of Hard Knocks
(6651,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6651,16,201,0,''), -- Bad Example
(6652,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6652,16,201,0,''), -- Bad Example
(6653,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6653,16,201,0,''), -- Bad Example
(6654,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6654,16,201,0,''), -- Bad Example
(6655,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6655,16,201,0,''), -- Bad Example
(6656,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6656,16,201,0,''), -- Bad Example
(6657,11,0,0, 'achievement_has_orphan_out'), -- Bad Example
(6657,16,201,0,''), -- Bad Example
(6659,11,0,0, 'achievement_has_orphan_out'), -- Hail To The King, Baby
(6659,16,201,0,''), -- Hail To The King, Baby
(10391,11,0,0, 'achievement_has_orphan_out'), -- Home Alone
(10391,16,201,0,''), -- Home Alone
(12398,11,0,0, 'achievement_has_orphan_out'), -- Daily Chores
(12398,16,201,0,''); -- Daily Chores

DELETE FROM `disables` WHERE `entry` IN (6641,6642,6643,6644,6651,6652,6653,6654,6655,6656,6657,6659,10391,12398) AND `sourceType`=4;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6641,6642,6643,6644,6651,6652,6653,6654,6655,6656,6657,6659,10391,12398) AND `type`!=16;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(6641,5,58818,0,''), -- School of Hard Knocks
(6642,5,58818,0,''), -- School of Hard Knocks
(6643,5,58818,0,''), -- School of Hard Knocks
(6644,5,58818,0,''), -- School of Hard Knocks
(6651,5,58818,0,''), -- Bad Example
(6652,5,58818,0,''), -- Bad Example
(6653,5,58818,0,''), -- Bad Example
(6654,5,58818,0,''), -- Bad Example
(6655,5,58818,0,''), -- Bad Example
(6656,5,58818,0,''), -- Bad Example
(6657,5,58818,0,''), -- Bad Example
(6659,5,58818,0,''), -- Hail To The King, Baby
(10391,5,58818,0,''), -- Home Alone
(12398,5,58818,0,''); -- Daily Chores

UPDATE `creature_template` SET `speed_walk`=1,`speed_run`=1.14286,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|768,`dynamicflags`=0,`npcflag`=`npcflag`|3,`baseattacktime`=2000,`scale`=1 WHERE `entry` IN (14305,14444,22817,22818,33532,33533);

DELETE FROM `creature_template_addon` WHERE `entry` IN (14305,14444,22817,22818,33532,33533);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(14305,0,0,0,1,0,'58818'),
(14444,0,0,0,1,0,'58818'),
(22817,0,0,0,1,0,'58818'),
(22818,0,0,0,1,0,'58818'),
(33532,0,0,0,1,0,'58818'),
(33533,0,0,0,1,0,'58818');
UPDATE `conditions` SET `ConditionValue2`=27827,`Comment`='Dispelling Illusions: Crate Dummy target' WHERE `SourceEntry`=49590;
DELETE FROM `creature` WHERE `id`=30996;
UPDATE `creature` SET `modelId`=0,`spawndist`=0,`MovementType`=0 WHERE `id` IN (27827,28960);
UPDATE `creature_template` SET `modelid1`=22712,`modelid2`=17200,`flags_extra`=`flags_extra`|128 WHERE `entry`=27827; -- reverse models (parsers fault)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=28960; -- reverse models (parsers fault)

DELETE FROM `creature_text` WHERE `entry`=27915;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27915,0,0, 'Good work with the crates! Come talk to me in front of Stratholme for your next assignment!',4,0,0,0,0,0, 'Chromie - SAY_EVENT_START');
UPDATE `creature_template` SET `ScriptName`='npc_create_helper_cot' WHERE `entry`=27827;
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=-63311;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
 (-47960,-63311, 0, 'Glyph of Shadowflame Rank 1'),
 (-61291,-63311, 0, 'Glyph of Shadowflame Rank 2');
DELETE FROM `spell_proc_event` where entry = 33648;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(33648, 0, 0, 0, 0, 0, 0, 2, 0, 0, 45);
DELETE FROM `command` WHERE `name`='modify scale';
INSERT INTO `command` VALUES
('modify scale',1,'.modify scale #scale\nModify size of the selected player or creature to \"normal scale\"*rate. If no player or creature is selected, modify your size.\n#rate may range from 0.1 to 10.');
UPDATE `spell_proc_event` SET `procFlags`=0x00010000 WHERE `entry` IN (71602,71645);
UPDATE `gameobject` SET `spawnMask`=1 WHERE `guid`=2853;
DELETE FROM `gameobject` WHERE `id`=193603;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(150,193603,578,2,1,1015.06,1051.09,605.619,0.017452,0,0,0,1,-608400,0,1);DELETE FROM `spell_proc_event` WHERE `entry` = 70844;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70844,0,4,256,0,0,0,0,0,0,0);
DELETE FROM `spell_proc_event` WHERE `entry`=67115;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(67115,0x00,15,0x01400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45); -- Item - Death Knight T9 Melee 2P Bonus
-- Proc event for item spells
DELETE FROM `spell_proc_event` WHERE `entry` IN (67712,67758);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(67712,0,0,0,0,0,0x00011000,0x0000002,0,0,2),
(67758,0,0,0,0,0,0x00011000,0x0000002,0,0,2);
-- Procced spell Pillar of Flame should not scale with spellpower
DELETE FROM `spell_bonus_data` WHERE `entry` IN (67760,67714);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(67760,0,0,0,0, 'Item - Coliseum 25 Heroic Caster Trinket - Pillar of Flame'),
(67714,0,0,0,0, 'Item - Coliseum 25 Normal Caster Trinket - Pillar of Flame');
-- Siphon Essence should not scale with spellpower
DELETE FROM `spell_bonus_data` WHERE `entry`=38395;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(38395,0,0,0,0, 'Warlock - Siphon Essence T6 2P proc');
DELETE FROM `creature_text` WHERE `entry`=37217;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37217,0,0, '%s cries out with a loud, baying howl!',3,0,0,0,0,0, 'Precious - EMOTE_PRECIOUS_ZOMBIES');
DELETE FROM `spell_script_names` WHERE `spell_id`=47496 AND `ScriptName`='spell_dk_gnoul_explode';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47496, 'spell_dk_gnoul_explode');UPDATE `game_event` SET `start_time`='2011-08-07 00:01:00' WHERE (`eventEntry`='3');
UPDATE `game_event` SET `start_time`='2011-06-05 00:01:00' WHERE (`eventEntry`='4');
UPDATE `game_event` SET `start_time`='2011-07-03 00:01:00' WHERE (`eventEntry`='5');UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (23801,24746,29594);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23801,24746,29594);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23801,0,0,0,6,0,100,1,0,0,0,0,85,25281,2,0,0,0,0,7,0,0,0,0,0,0,0,'Turkey - Cast Marker on death'),
(24746,0,0,0,6,0,100,1,0,0,0,0,85,25281,2,0,0,0,0,7,0,0,0,0,0,0,0,'Fjord Turkey - Cast Marker on death'),
(29594,0,0,0,6,0,100,1,0,0,0,0,85,25281,2,0,0,0,0,7,0,0,0,0,0,0,0,'Angry Turkey - Cast Marker on death');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_turkey_marker';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(25281, 'spell_gen_turkey_marker');
UPDATE `game_event` SET `length`=7*24*60 WHERE `eventEntry`=9; -- Noblegarden: 7 days length
-- Quest: Bring 'Em Back Alive (11690)
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=45877,`unit_flags`=`unit_flags`|512,`speed_run`=2  WHERE `entry`=25596; -- Infected Kodo Beast
UPDATE `creature_template_addon` SET `bytes1`=7,`bytes2`=1,`mount`=0,`emote`=0,`auras`=45771 WHERE `entry`=25596; -- Aura: Scourge Infection
DELETE FROM `smart_scripts` WHERE `entryorguid`=25596 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25596,0,0,0,27,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Infected Kodo Beast - remove death state on passager boarded'),
(25596,0,1,0,31,0,100,0,45877,0,0,0,41,0,0,0,0,0,0,22,0,0,0,0,0,0,0, 'Infected Kodo Beast - On Spell Hit despawn');

DELETE FROM `npc_spellclick_spells` where `npc_entry`=25596;
INSERT INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) values 
(25596,45875,11690,1,11690,0,0,0,0);
-- Fix criteria for Wrath of the Horde achievements
DELETE FROM `disables` WHERE `sourceType`=4 AND  `entry` IN (6637,6638,6639,6640);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6637,6638,6639,6640);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6637,6,1537,0, ''), -- killed player in Ironforge
(6638,6,1657,0, ''), -- killed player in Darnassus
(6639,6,3557,0, ''), -- killed player in The Exodar
(6640,6,1519,0, ''); -- killed player in Stormwind City

-- Fix criteria for Wrath of the Alliance achievements
DELETE FROM `disables` WHERE `sourceType`=4 AND  `entry` IN (6636,6633,6634,6635);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6636,6633,6634,6635);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6636,6,1497,0, ''), -- killed player in Undercity
(6633,6,1638,0, ''), -- killed player in Thunder Bluff
(6634,6,3487,0, ''), -- killed player in Silvermoon City
(6635,6,1637,0, ''); -- killed player in Orgrimmar
-- Quest: A Mammoth Undertaking (12607)
UPDATE `creature_template` SET `VehicleId`=206,`AIName`='SmartAI',`spell1`=51660,`speed_run`=0.95238 WHERE `entry`=28379;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28379 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(28379,0,0,0,31,0,100,0,51660,0,0,0,41,0,0,0,0,0,0,22,0,0,0,0,0,0,0, 'Shattertusk Mammoth - On Spell Hit - Despawn');

DELETE FROM `npc_spellclick_spells` where `npc_entry`=28379;
INSERT INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) values 
(28379,51658,12607,1,12607,0,0,0,0);

DELETE FROM `creature_template_addon` WHERE `entry`=28379;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28379,0,0,1,0, NULL); -- Shattertusk Mammoth
-- SAI for Restless Apparition
SET @ENTRY := 23861;

UPDATE `creature_template` SET `ScriptName`='',`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Restless Apparition - On spawn - Run script'),
(@ENTRY*100,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Restless Apparition - Script - Say text 0'),
(@ENTRY*100,9,1,0,0,0,100,0,8000,8000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Restless Apparition - Script - Despawn');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'The darkness... the corruption... they came too quickly for anyone to know...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,1, 'It is too late for us, living one. Take yourself and your friend away from here before you both are... claimed...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,2, 'Go away, whoever you are! Witch Hill is mine... mine!',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,3, 'The darkness will consume all... all the living...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,4, 'The manor... someone else... will soon be consumed...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,5, 'Why have you come here, outsider? You will only find pain! Our fate will be yours...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,6, 'It was... terrible... the demon...',0,0,15,25,0,0, 'Restless Apparition');
-- Zeppelin Power Core
SET @ENTRY := 23832;
-- Remove aura hack
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=@ENTRY);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,0,1,0, NULL); -- Zeppelin Power Core

-- Remove random movement
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;

-- SmartAI for Zeppelin Power Core
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,1,0,100,0,1000,60000,90000,120000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeppelin Power Core - OOC - Load script every 1.5-2 min'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,11,42491,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeppelin Power Core - Script - Cast Energized Periodic on self'),
(@ENTRY*100,9,1,0,0,0,100,0,60000,90000,0,0,28,42491,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeppelin Power Core - Script - After 1 - 1.5 min, remove Energized Periodic on self');

-- Add condition for Ooze Buster (item 33108, spell 42489)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=33108;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,33108,0,24,1,4394,0,0, '', 'Item 33108 can target Bubbling Swamp Ooze'),
(18,0,33108,1,24,1,4393,0,0, '', 'Item 33108 can target Acidic Swamp Ooze');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (42489,42485,42492);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(42489, 'spell_ooze_zap'),
(42485, 'spell_ooze_zap_channel_end'),
(42492, 'spell_energize_aoe');
UPDATE `creature_text` SET `type`=0 WHERE `type`=12 AND `entry`=23861;
DELETE FROM `spell_script_names` WHERE `spell_id`=63276;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(63276,'spell_mark_of_the_faceless');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (63489,62274);
INSERT INTO `spell_script_names` 
VALUES
(63489, 'spell_shield_of_runes'),
(62274, 'spell_shield_of_runes');
UPDATE `trinity_string` SET `content_default` = 'Mute time remaining: %s, Ban time remaining: %s' WHERE `entry` = 550;
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (33245,34188);
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry`=33282;
UPDATE `version` SET `db_version`='TDB 335.11.40' LIMIT 1;
-- Trapdoor Crawler
UPDATE `creature` SET `modelid`=0 WHERE `id`=28221;
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=4.6,`gender`=1 WHERE `modelid`=18043;
DELETE FROM `creature_template_addon` WHERE `entry`=28221;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28221,0,0,1,0, '11959');
DROP TABLE IF EXISTS `reserved_name`;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (62124, 67485);
INSERT INTO `spell_bonus_data` VALUES
(67485, 0, -1, 0.5, -1, 'Paladin - Hand of Reckoning Triggered');
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.2143 WHERE `entry` = 6789;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = -11129;
INSERT INTO `spell_linked_spell` VALUES (-11129, -28682, 0, 'Combustion');
UPDATE `trinity_string` SET `content_default` = '|cfff00000[GM Announcement by [%s]]: %s|r' WHERE `entry` = 6613;
UPDATE `trinity_string` SET `content_default`='|cfff00000[GM Announcement]: %s|r' WHERE `entry`=6613;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=65536 WHERE `entry`=70756;
DELETE FROM `spell_bonus_data` WHERE `entry`=64801;
INSERT INTO `spell_bonus_data` VALUES (64801,0.45,0,0,0,'Druid - T8 Restoration 4P Bonus');
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 0x00002000, `SpellFamilyMask2` = 0 WHERE `entry` = 64908;
DELETE FROM `spell_proc_event` WHERE `entry` = 64568;
UPDATE `spell_proc_event` SET `cooldown` = 10 WHERE `entry` = 64571;
UPDATE `spell_bonus_data` SET `direct_bonus` = -1 WHERE `entry` = 27243;
DELETE FROM `spell_bonus_data` WHERE `entry` = 27285;
INSERT INTO `spell_bonus_data` VALUES (27285, 0.2129, -1, -1, -1,'Warlock - Seed of Corruption Proc');
DELETE FROM `spell_proc_event` WHERE `entry` IN (20335,20336,20337);
INSERT INTO `spell_proc_event` VALUES
(20335,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0,100,0),
(20336,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0,100,0),
(20337,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0,100,0);
UPDATE `spell_linked_spell` SET `type` = 1 WHERE `spell_trigger` = 20066;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=`SpellFamilyMask1`|0x00010000 WHERE `entry` IN (44445,44446,44448);
DELETE FROM `conditions` WHERE `SourceEntry` = 56453;
INSERT INTO `conditions` VALUES
(17,0,56453,0,11,67544,0,0,0,'','Lock and Load - Lock and Load Marker');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 56453;
INSERT INTO `spell_linked_spell` VALUES
(56453,67544,0,'Lock and Load Marker');
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 1 WHERE `entry` = 51123;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 2 WHERE `entry` = 51127;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 3 WHERE `entry` = 51128;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 4 WHERE `entry` = 51129;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 5 WHERE `entry` = 51130;
DELETE FROM `spell_proc_event` WHERE `entry` IN (49004,49508,49509);
INSERT INTO `spell_proc_event` VALUES
(49004,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000033,0,0,0),
(49508,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000033,0,0,0),
(49509,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000033,0,0,0);
UPDATE `spell_proc_event` SET `procEx` = 0x0010000 WHERE `entry` = 16864;
DELETE FROM `spell_pet_auras` WHERE `spell` IN (34455,34459,34460);
INSERT INTO `spell_pet_auras` VALUES
(34455,0,0,75593),
(34459,0,0,75446),
(34460,0,0,75447);
DELETE FROM `spell_proc_event` WHERE `entry` = 46916;
DELETE FROM `spell_proc_event` WHERE `entry` = 20784;
INSERT INTO `spell_proc_event` VALUES
(20784,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000002,0,0,0);
UPDATE `spell_proc_event` SET `SpellFamilyMask2`=0x00001000 WHERE `entry` IN (34753,34859,34860);
UPDATE `spell_proc_event` SET `SpellFamilyMask0`=`SpellFamilyMask0`|0x00000001 WHERE `entry` IN (66192,66191,65661);
UPDATE `spell_proc_event` SET `procEx`=`procEx`|0x00000030 WHERE `entry` IN (31244,31245);
DELETE FROM `spell_proc_event` WHERE `entry` IN (66799,66814,66815,66816,66817);
INSERT INTO `spell_proc_event` VALUES
(66799,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66814,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66815,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66816,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66817,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0);
DELETE FROM `spell_proc_event` WHERE `entry` = 31801;
UPDATE `spell_group` SET `spell_id` = 14893 WHERE `id` = 1097;
UPDATE `spell_group` SET `spell_id` = 16177 WHERE `id` = 1098;
DELETE FROM `spell_group` WHERE `id` = 1044 OR `spell_id` = -1044;
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.526 WHERE `entry` = 596;
DELETE FROM `spell_bonus_data` WHERE `entry` = 64085;
INSERT INTO `spell_bonus_data` VALUES
(64085,1.2,-1,-1,-1,'Priest - Vampiric Touch (Dispelled)');
UPDATE `spell_bonus_data` SET `ap_bonus` = 0.06 WHERE `entry` = 48721;
DELETE FROM `spell_bonus_data` WHERE `entry` = 49941;
DELETE FROM `spell_proc_event` WHERE `entry` = 54936;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (53188,53189,53190,53191,53194,53195);
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.3 WHERE `entry` = 50288;
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 50294;
DELETE FROM `spell_dbc` WHERE `id` = 100000;
INSERT INTO `spell_dbc` VALUES (100000,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,-1,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,'Bone Shield cooldown - serverside spell');
UPDATE `spell_proc_event` SET `cooldown` = 2 WHERE `entry` = 49222;
DELETE FROM `script_texts` WHERE `npc_entry` IN (10427,20129);
DELETE FROM `creature_text` WHERE `entry`=18728;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`comment`) VALUES
(18728,0,0, 'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',1,11332,'kazzak SAY_INTRO'),
(18728,1,0, 'The Legion will conquer all!',1,11333,'kazzak SAY_AGGRO1'),
(18728,1,1, 'All mortals will perish!',1,11334,'kazzak SAY_AGGRO2'),
(18728,2,0, 'All life must be eradicated!',1,11335,'kazzak SAY_SURPREME1'),
(18728,2,1, 'I''ll rip the flesh from your bones!',1,11336,'kazzak SAY_SURPREME2'),
(18728,3,0, 'Kirel Narak!',1,11337,'kazzak SAY_KILL1'),
(18728,3,1, 'Contemptible wretch!',1,11338,'kazzak SAY_KILL2'),
(18728,3,2, 'The universe will be remade.',1,11339,'kazzak SAY_KILL3'),
(18728,4,0, 'The Legion... will never... fall.',1,11340,'kazzak SAY_DEATH'),
(18728,5,0, '%s goes into a frenzy!',2,0,'kazzak EMOTE_FRENZY'),
(18728,6,0, 'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',1,0,'kazzak SAY_RAND1'),
(18728,6,1, 'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',1,0,'kazzak SAY_RAND2');
DELETE FROM `spell_script_names` WHERE `spell_id`=32960 AND `ScriptName`= 'spell_doomlord_kazzak_mark_of_kazzak';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(32960, 'spell_doomlord_kazzak_mark_of_kazzak');
DELETE FROM `spell_script_names` WHERE `spell_id`=32960 AND `ScriptName`= 'spell_doomlord_kazzak_mark_of_kazzak';
UPDATE `spell_dbc` SET `Id` = 100001 WHERE `Id` = 200000;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (467,7294);
INSERT INTO `spell_bonus_data` VALUES
(467,0.033,-1,-1,-1,'Druid - Thorns'),
(7294,0.033,-1,-1,-1,'Paladin - Retribution Aura');
DELETE FROM `spell_script_names` WHERE `spell_id`=28441;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(28441, 'spell_item_ashbringer');
DELETE FROM `spell_bonus_data` WHERE `entry`=2818;
INSERT INTO `spell_bonus_data` VALUES
(2818,0,0,0,0.03,'Rogue - Deadly Poison All Ranks($AP*0.12 / number of ticks)');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rog_deadly_poison';
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-2818,'spell_rog_deadly_poison');
DELETE FROM `areatrigger_scripts` WHERE `entry` BETWEEN 5616 AND 5618;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5616,'at_icc_start_frostwing_gauntlet'),
(5617,'at_icc_start_frostwing_gauntlet'),
(5618,'at_icc_start_frostwing_gauntlet');
-- delete excessive spawns
DELETE FROM `creature` WHERE `guid` IN (137758,137759);
DELETE FROM `creature_addon` WHERE `guid` IN (137758,137759);
DELETE FROM `linked_respawn` WHERE `guid` IN (137758,137759) AND `linkType`=0;

UPDATE `creature_addon` SET `auras`='70203 71465' WHERE `guid`=137753; -- Sister Svalna

DELETE FROM `creature_text` WHERE `entry` IN (37126,37129,37122,37123,37124,37125);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37126,0,0, 'You may have once fought beside me, Crok, but now you are nothing more than a traitor. Come, your second death approaches!',1,0,0,0,0,17017, 'Sister Svalna - SAY_EVENT_START'),
(37126,1,0, 'Miserable creatures! Die!',1,0,0,0,0,17018, 'Sister Svalna - SAY_KILL_CAPTAIN'),
(37126,2,0, 'Foolish Crok. You brought my reinforcements with you. Arise, Argent Champions, and serve the Lich King in death!',1,0,0,0,0,17019, 'Sister Svanlna - SAY_RESURRECT_CAPTAINS'),
(37126,3,0, 'Come, Scourgebane. I''ll show the master which of us is truly worthy of the title of \"Champion\"!',1,0,0,0,0,17020, 'Sister Svalna - SAY_AGGRO'),
(37126,4,0, 'What a pitiful choice of an ally, Crok!',1,0,0,0,0,17021, 'Sister Svalna - SAY_KILL'),
(37126,5,0, 'What? They died so easily? No matter.',1,0,0,0,0,17022, 'Sister Svalna - SAY_CAPTAIN_DEATH'),
(37126,6,0, 'Perhaps... you were right, Crok.',1,0,0,0,0,17023, 'Sister Svalna - SAY_DEATH'),
(37126,7,0, '%s has impaled $N!',3,0,0,0,0,0, 'Sister Svalna - EMOTE_SVALNA_IMPALE'),
(37126,8,0, '%s''s Aether Shield has been shattered by $N!',3,0,0,0,0,0, 'Sister Svalna - EMOTE_SVALNA_BROKEN_SHIELD'),
(37129,0,0, 'Ready your arms, my Argent Brothers. The Vrykul will protect the Frost Queen with their lives.',1,0,0,0,0,16819, 'Crok Scourgebane - SAY_CROK_INTRO_1'),
(37129,1,0, 'Enough idle banter! Our champions have arrived - support them as we push our way through the hall!',1,0,0,0,0,16820, 'Crok Scourgebane - SAY_CROK_INTRO_3'),
(37129,2,0, 'Draw them back to us, and we''ll assist you.',1,0,0,0,0,16821, 'Crok Scourgebane - SAY_CROK_COMBAT_WP_0'),
(37129,3,0, 'Quickly, push on!',1,0,0,0,0,16823, 'Crok Scourgebane - SAY_CROK_COMBAT_WP_1'),
(37129,4,0, 'Her reinforcements will arrive shortly, we must bring her down quickly!',1,0,0,0,0,16824, 'Crok Scourgebane - SAY_CROK_FINAL_WP'),
(37129,5,0, 'I''ll draw her attacks. Return our brothers to their graves, then help me bring her down!',1,0,0,15,0,16826, 'Crok Scourgebane - SAY_CROK_COMBAT_SVALNA'),
(37129,6,0, 'I must rest for a moment',1,0,0,0,0,16826, 'Crok Scourgebane - SAY_CROK_WEAKENING_GAUNTLET'),
(37129,7,0, 'Champions, I cannot hold her back any longer!',1,0,0,0,0,16827, 'Crok Scourgebane - SAY_CROK_WEAKENING_SVALNA'),
(37129,8,0, 'Vengeance alone... was not enough!',1,0,0,0,0,16828, 'Crok Scourgebane - SAY_CROK_DEATH'),
(37122,0,0, 'Never... could reach... the top shelf...',1,0,0,0,0,16586, 'Captain Arnath - SAY_ARNATH_DEATH'),
(37122,1,0, 'You miserable fools never did manage to select a decent bat wing.',1,0,0,0,0,16587, 'Captain Arnath - SAY_ARNATH_RESURRECTED'),
(37122,2,0, 'THAT was for bringing me spoiled spider ichor!',1,0,0,0,0,16588, 'Captain Arnath - SAY_ARNATH_KILL'),
(37122,3,0, 'Don''t... let Finklestein use me... for his potions...',1,0,0,0,0,16589, 'Captain Arnath - SAY_ARNATH_SECOND_DEATH'),
(37122,4,0, 'The loss of our comrades was unpreventable. They lived and died in the service of the Argent Crusade.',1,0,0,0,0,16590, 'Captain Arnath - SAY_ARNATH_SURVIVE_TALK'),
(37122,5,0, 'Even dying here beats spending another day collecting reagents for that madman, Finklestein.',1,0,0,0,0,16585, 'Captain Arnath - SAY_ARNATH_INTRO_2'),
(37123,0,0, 'No amount of healing can save me now. Fight on, brothers...',1,0,0,0,0,16810, 'Captain Brandon - SAY_BRANDON_DEATH'),
(37123,1,0, 'What? This strength...? All of the pain is gone! You... must join me in the eternal embrace of death!',1,0,0,0,0,16811, 'Captain Brandon - SAY_BRANDON_RESURRECTED'),
(37123,2,0, 'It doesn''t hurt anymore, does it?',1,0,0,0,0,16812, 'Captain Brandon - SAY_BRANDON_KILL'),
(37123,3,0, 'I''m sorry...',1,0,0,0,0,16813, 'Captain Brandon - SAY_BRANDON_SECOND_DEATH'),
(37123,4,0, 'You have done much in this war against the Scourge. May the light embrace you.',1,0,0,0,0,16815, 'Captain Brandon - SAY_BRANDON_SURVIVE_TALK'),
(37124,0,0, 'Please... burn my remains. Let me live warm in the afterlife...',1,0,0,0,0,16844, 'Captain Grondel - SAY_GRONDEL_DEATH'),
(37124,1,0, 'No! Why was I denied a death by flame? You must all BURN!',1,0,0,0,0,16845, 'Captain Grondel - SAY_GRONDEL_RESURRECTED'),
(37124,2,0, 'Can you feel the burn?',1,0,0,0,0,16846, 'Captain Grondel - SAY_GRONDEL_KILL'),
(37124,3,0, 'What... have I done? No!',1,0,0,0,0,16847, 'Captain Grondel - SAY_GRONDEL_SECOND_DEATH'),
(37124,4,0, 'What can possibly redeem this unholy place? Thank you...',1,0,0,0,0,16849, 'Captain Grondel - SAY_GRONDEL_SURVIVE_TALK'),
(37125,0,0, 'It was... a worthy afterlife.',1,0,0,0,0,16998, 'Captain Rupert - SAY_RUPERT_DEATH'),
(37125,1,0, 'There is no escaping the Lich King''s will. Prepare for an explosive encounter!',1,0,0,0,0,16999, 'Captain Rupert - SAY_RUPERT_RESURRECTED'),
(37125,2,0, 'So that''s what happens when you stand too close to a bomb!',1,0,0,0,0,17000, 'Captain Rupert - SAY_RUPERT_KILL'),
(37125,3,0, 'What an... explosive ending!',1,0,0,0,0,17001, 'Captain Rupert - SAY_RUPERT_SECOND_DEATH'),
(37125,4,0, 'Beware the dangers that lie ahead... and do try to remain in one piece.',1,0,0,0,0,17003, 'Captain Rupert - SAY_RUPERT_SURVIVE_TALK');

DELETE FROM `script_waypoint` WHERE `entry`=37129;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(37129,0,4356.90,2648.00,350.285,0, 'Crok Scourgebane - at first trash pack'),
(37129,1,4357.00,2582.17,351.101,0, 'Crok Scourgebane - at second trash pack'),
(37129,2,4357.21,2555.91,354.478,0, NULL),
(37129,3,4357.09,2547.81,354.766,0, NULL),
(37129,4,4356.88,2512.40,358.436,0, 'Crok Scourgebane - at Sister Svalna');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (70078,70053);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=50307;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,70078,0,18,1,37122,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70078,0,18,1,37123,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70078,0,18,1,37124,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70078,0,18,1,37125,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70053,0,18,1,37122,0,0, '', 'Sister Svalna - Revive Champion'),
(13,0,70053,0,18,1,37123,0,0, '', 'Sister Svalna - Revive Champion'),
(13,0,70053,0,18,1,37124,0,0, '', 'Sister Svalna - Revive Champion'),
(13,0,70053,0,18,1,37125,0,0, '', 'Sister Svalna - Revive Champion'),
(18,0,50307,0,24,1,37126,0,0, '', 'Infernal Spear- Sister Svalna target');

UPDATE `creature_template` SET `difficulty_entry_1`=38349,`minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`rangedattackpower`=86,`equipment_id`=2423 WHERE `entry`=37491; -- Captain Arnath (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`dmg_multiplier`=13,`rangedattackpower`=86,`dynamicflags`=8,`equipment_id`=2423 WHERE `entry`=38349; -- Captain Arnath (Undead)
UPDATE `creature_template` SET `difficulty_entry_1`=38350,`minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`rangedattackpower`=86,`equipment_id`=2424 WHERE `entry`=37493; -- Captain Brandon (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`dmg_multiplier`=13,`rangedattackpower`=86,`dynamicflags`=8,`equipment_id`=2424 WHERE `entry`=38350; -- Captain Brandon (Undead)
UPDATE `creature_template` SET `difficulty_entry_1`=38351,`minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=2425 WHERE `entry`=37494; -- Captain Grondel (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`dmg_multiplier`=13,`rangedattackpower`=112,`dynamicflags`=8,`equipment_id`=2425 WHERE `entry`=38351; -- Captain Grondel (Undead)
UPDATE `creature_template` SET `difficulty_entry_1`=38352,`minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=2426 WHERE `entry`=37495; -- Captain Rupert (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`exp`=2,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`dmg_multiplier`=13,`rangedattackpower`=112,`dynamicflags`=8,`equipment_id`=2426 WHERE `entry`=38352; -- Captain Rupert (Undead)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`faction_A`=2209,`faction_H`=2209,`npcflag`=`npcflag`|16777216,`dynamicflags`=0,`equipment_id`=2364 WHERE `entry`=38248; -- Impaling Spear

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=38248;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(38248,71462,0,0,0,1,0,71443,2); -- Impaling Spear
UPDATE `creature_template` SET `ScriptName`='boss_sister_svalna' WHERE `entry`=37126;
UPDATE `creature_template` SET `ScriptName`='npc_crok_scourgebane' WHERE `entry`=37129;
UPDATE `creature_template` SET `ScriptName`='npc_captain_arnath' WHERE `entry`=37122;
UPDATE `creature_template` SET `ScriptName`='npc_captain_brandon' WHERE `entry`=37123;
UPDATE `creature_template` SET `ScriptName`='npc_captain_grondel' WHERE `entry`=37124;
UPDATE `creature_template` SET `ScriptName`='npc_captain_rupert' WHERE `entry`=37125;
UPDATE `creature_template` SET `ScriptName`='npc_frostwing_vrykul' WHERE `entry` IN (37132,38125,37127,37134,37133);
UPDATE `creature_template` SET `ScriptName`='npc_impaling_spear' WHERE `entry`=38248;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_svalna_caress_of_death';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_svalna_revive_champion';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_svalna_remove_spear';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70078, 'spell_svalna_caress_of_death'),
(70053, 'spell_svalna_revive_champion'),
(71462, 'spell_svalna_remove_spear');
DELETE FROM `script_texts` WHERE `npc_entry` IN (12429);
DELETE FROM `creature_text` WHERE `entry`=18733;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`comment`) VALUES
(18733,0,0, 'Do not proceed. You will be eliminated!',1,11344,'doomwalker SAY_AGGRO'),
(18733,1,0, 'Tectonic disruption commencing.',1,11345,'doomwalker SAY_EARTHQUAKE_1'),
(18733,1,1, 'Magnitude set. Release.',1,11346,'doomwalker SAY_EARTHQUAKE_2'),
(18733,2,0, 'Trajectory locked.',1,11347,'doomwalker SAY_OVERRUN_1'),
(18733,2,1, 'Engage maximum speed.',1,11348,'doomwalker SAY_OVERRUN_2'),
(18733,3,0, 'Threat level zero.',1,11349,'doomwalker SAY_SLAY_1'),
(18733,3,1, 'Directive accomplished.',1,11350,'doomwalker SAY_SLAY_2'),
(18733,3,2, 'Target exterminated.',1,11351,'doomwalker SAY_SLAY_3'),
(18733,4,0, 'System failure in five, f-o-u-r...',1,11352,'doomwalker SAY_DEATH');-- Update creature_text to use proper text values
UPDATE `creature_text` SET `type`=12 WHERE `type`=0;
UPDATE `creature_text` SET `type`=14 WHERE `type`=1;
UPDATE `creature_text` SET `type`=16 WHERE `type`=2;
UPDATE `creature_text` SET `type`=41 WHERE `type`=3;
UPDATE `creature_text` SET `type`=15 WHERE `type`=4;
UPDATE `creature_text` SET `type`=42 WHERE `type`=5;
DELETE FROM `disables` WHERE `entry` IN (3368,3369,3370,3371,7623,12578,3684,5529,5512,5530,5531,5532,5533,5534,5535,9165,9166,5536,5537,5538,5539,5540,13254,5541,5542,5543,5544,5545,5546,5547,5548,7573,7574,10619,10620,11497,11498,11500,11501,12178,12179,12181,12182,13255) AND `sourceType`=4;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3368,3369,3370,3371,7623,12578,3684,5529,5512,5530,5531,5532,5533,5534,5535,9165,9166,5536,5537,5538,5539,5540,13254,5541,5542,5543,5544,5545,5546,5547,5548,7573,7574,10619,10620,11497,11498,11500,11501,12178,12179,12181,12182,13255);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3368,0,0,0,''), -- Alterac Valley
(3369,0,0,0,''), -- Arathi Basin
(3370,0,0,0,''), -- Eye of the Storm
(3371,0,0,0,''), -- Warsong Gulch
(7623,0,0,0,''), -- Strand of the Ancients
(12578,0,0,0,''), -- Isle of Conquest
(3684,7,23505,0,''), -- Berserking killing blow
(5529,0,0,0,''), -- Total Killing Blows
(5512,20,0,0,''), -- Eastern Kingdoms
(5530,20,1,0,''), -- Kalimdor
(5531,20,530,0,''), -- Burning Crusade Areas
(5532,20,571,0,''), -- Northrend
(5533,20,559,0,''), -- Nagrand Arena
(5534,20,562,0,''), -- Blade's Edge Arena
(5535,20,572,0,''), -- Ruind of Lordaeron
(9165,20,617,0,''), -- Dalaran Sewers
(9166,20,618,0,''), -- Ring of Valor
(5536,20,30,0,''), -- Alterac Valley
(5537,20,529,0,''), -- Arathi Basin
(5538,20,489,0,''), -- Warsong Gulch
(5539,20,566,0,''), -- Eye of the Storm
(5540,20,607,0,''), -- Strand of the Ancients
(13254,20,628,0,''), -- Isle of Conquest
(5541,11,0,0,'achievement_arena_2v2_kills'), -- 2v2 Arena Killing Blows
(5542,11,0,0,'achievement_arena_3v3_kills'), -- 3v3 Arena Killing Blows
(5543,11,0,0,'achievement_arena_5v5_kills'), -- 5v5 Arena Killing Blows
(5544,20,30,0,''), -- Alterac Valley Killing Blows
(5545,20,529,0,''), -- Arathi Basin Killing Blows
(5546,20,489,0,''), -- Warsong Gulch Killing Blows
(5547,20,566,0,''), -- Eye of the Storm Killing Blows
(5548,20,607,0,''), -- Strand of the Ancients Killing Blows
(7573,1,30249,0,''), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(7573,11,0,0,'achievement_denyin_the_scion'), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(7574,1,30249,0,''), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(7574,11,0,0,'achievement_denyin_the_scion'), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(10619,1,33142,0,''), -- Leviathan Turret
(10620,1,33142,0,''), -- Leviathan Turret
(11497,1,35273,0,''), -- Glaive Thrower
(11498,1,34775,0,''), -- Demolisher
(11500,1,34793,0,''), -- Catapult
(11501,1,35069,0,''), -- Siege Engine
(12178,1,34802,0,''), -- Glaive Thrower
(12179,1,34775,0,''), -- Demolisher
(12181,1,34793,0,''), -- Catapult
(12182,1,34776,0,''), -- Siege Engine
(13255,20,628,0,''); -- Isle of Conquest Killing Blows
DELETE FROM `disables` WHERE `entry` IN (7265,7549) AND `sourceType`=4;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7265,7549) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7265,11,0,0,'achievement_momma_said_knock_you_out'), -- Momma Said Knock You Out (10 player)
(7549,11,0,0,'achievement_momma_said_knock_you_out'); -- Momma Said Knock You Out (25 player)
UPDATE `achievement_criteria_data` SET `type`=5 WHERE `type`=7 AND `criteria_id`=3684;
-- Add Missing Options to Exodar Paladin Trainer
DELETE FROM `gossip_menu_option` WHERE `menu_id`=7260 AND `id` IN (1,2);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(7260,1,2, 'I wish to unlearn my talents',16,16,0,0,0,0,0, ''),
(7260,2,2, 'Purchase a Dual Talent Specialization',18,16,0,0,0,0,10000000, 'Are you sure you wish to purchase a Dual Talent Specialization?');
-- Add Missing Options to Silvermoon Paladin Trainer
DELETE FROM `gossip_menu_option` WHERE `menu_id`=6647 AND `id` IN (1,2);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(6647,1,2, 'I wish to unlearn my talents',16,16,0,0,0,0,0, ''),
(6647,2,2, 'Purchase a Dual Talent Specialization',18,16,0,0,0,0,10000000, 'Are you sure you wish to purchase a Dual Talent Specialization?');
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry` = 4625;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4625 AND `source_type` = 0 AND `id` IN (0,1);
INSERT INTO `smart_scripts` VALUES
(4625,0,0,0,1,0,100,3,0,1100,0,1100,11,7083,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ward Keepers - Cast the Guard Spell'),
(4625,0,1,0,6,0,100,2,0,0,0,0,34,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'Ward Keepers - Send Event on Die');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (710,18647);
INSERT INTO `spell_script_names` VALUES (710,"spell_warl_banish"),(18647,"spell_warl_banish");
UPDATE `creature` c LEFT JOIN `creature_template` ct ON c.id=ct.`Entry` SET c.`MovementType`=0,c.`spawndist`=0 WHERE (ct.flags_extra & 128)!=0;
UPDATE `spell_proc_event` SET `procEx` = 0x00040000 WHERE `entry` IN (56636, 56637, 56638);
DELETE FROM `spell_bonus_data` WHERE `entry` IN (69729,69730,69733,69734);
INSERT INTO `spell_bonus_data` VALUES
(69729,-1,0,-1,-1,'Item - Onyxia 10 Caster Trinket - Searing Flames'),
(69730,-1,0,-1,-1,'Item - Onyxia 25 Caster Trinket - Searing Flames'),
(69733,0,-1,-1,-1,'Item - Onyxia 10 Caster Trinket - Cauterizing Heal'),
(69734,0,-1,-1,-1,'Item - Onyxia 25 Caster Trinket - Cauterizing Heal');
DELETE FROM `spell_proc_event` WHERE `entry` IN (69739,69755);
INSERT INTO `spell_proc_event` VALUES
(69739,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),
(69755,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45);
UPDATE `spell_proc_event` SET `ppmRate`=2 WHERE `entry`=51127;
UPDATE `spell_proc_event` SET `ppmRate`=4 WHERE `entry`=51128;
UPDATE `spell_proc_event` SET `ppmRate`=6 WHERE `entry`=51129;
UPDATE `spell_proc_event` SET `ppmRate`=8 WHERE `entry`=51130;
-- Fix Argent Crusaders Tabard
DELETE FROM `spell_target_position` WHERE `id`=66238;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(66238,571,8480.062,1092.5375,554.4877,0.6014);
DELETE FROM `creature_text` WHERE `entry` IN (18733,17711);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`comment`) VALUES
(17711,0,0, 'Do not proceed. You will be eliminated!',1,11344,'doomwalker SAY_AGGRO'),
(17711,1,0, 'Tectonic disruption commencing.',1,11345,'doomwalker SAY_EARTHQUAKE_1'),
(17711,1,1, 'Magnitude set. Release.',1,11346,'doomwalker SAY_EARTHQUAKE_2'),
(17711,2,0, 'Trajectory locked.',1,11347,'doomwalker SAY_OVERRUN_1'),
(17711,2,1, 'Engage maximum speed.',1,11348,'doomwalker SAY_OVERRUN_2'),
(17711,3,0, 'Threat level zero.',1,11349,'doomwalker SAY_SLAY_1'),
(17711,3,1, 'Directive accomplished.',1,11350,'doomwalker SAY_SLAY_2'),
(17711,3,2, 'Target exterminated.',1,11351,'doomwalker SAY_SLAY_3'),
(17711,4,0, 'System failure in five, f-o-u-r...',1,11352,'doomwalker SAY_DEATH');
-- This creature is only supposed to be summoned.
DELETE FROM `creature` WHERE `id`=4196;
DELETE FROM `creature_addon` WHERE `guid` IN (14343,14342,14341,14340,14339,14338,14337);
-- Fix achievement criteria for Not In My House
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=7021;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7021;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7021,6,4572,0, ''), -- check if player is in Warsong Flag Room
(7021,7,23333,0, ''); -- check if victim has a Horde Flag buff
DELETE FROM `disables` WHERE `sourceType`=4 AND  `entry`=7020;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7020;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7020,6,4571,0, ''), -- check if player is in Silverwing Flag Room
(7020,7,23335,0, ''); -- check if victim has a Alliance Flag buff

-- Fix achievement criteria for Take a Chill Pill
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=3879;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=3879;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3879,6,3820,0, ''), -- check if player is in Eye of the Storm
(3879,7,23505,0, ''); -- check if victim has a Berserking buff
-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126691;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1090.053,`position_y`=657.417,`position_z`=201.9775 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1094.174,663.0545,202.243,0,0,0,100,0),
(@PATH,2,1093.973,671.6352,202.1839,0,0,0,100,0),
(@PATH,3,1090.33,676.6746,201.9775,0,0,0,100,0),
(@PATH,4,1080.979,677.0645,201.9775,0,0,0,100,0),
(@PATH,5,1077.056,671.3228,202.4617,0,0,0,100,0),
(@PATH,6,1076.541,663.8468,202.5533,0,0,0,100,0),
(@PATH,7,1080.974,657.8231,201.9775,0,0,0,100,0),
(@PATH,8,1090.053,657.417,201.9775,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126695;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1170.523,`position_y`=645.3429,`position_z`=196.235 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1161.521,639.6048,196.235,0,0,0,100,0),
(@PATH,2,1153.933,638.7031,196.235,0,0,0,100,0),
(@PATH,3,1145.4,639.8294,196.235,0,0,0,100,0),
(@PATH,4,1138.166,644.63,196.235,0,0,0,100,0),
(@PATH,5,1145.4,639.8294,196.235,0,0,0,100,0),
(@PATH,6,1153.933,638.7031,196.235,0,0,0,100,0),
(@PATH,7,1161.521,639.6048,196.235,0,0,0,100,0),
(@PATH,8,1170.523,645.3429,196.235,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126694;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1008.858,`position_y`=651.2056,`position_z`=201.9775 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1000.427,660.0714,202.4617,0,0,0,100,0),
(@PATH,2,1008.856,651.2029,201.9775,0,0,0,100,0),
(@PATH,3,1017.993,659.7945,202.4206,0,0,0,100,0),
(@PATH,4,1008.858,651.2056,201.9775,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126689;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1007.622,`position_y`=680.3897,`position_z`=201.9775 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1009.632,678.1111,201.9775,0,0,0,100,0),
(@PATH,2,1011.626,675.8503,201.9775,0,0,0,100,0),
(@PATH,3,1013.619,673.5897,201.9775,0,0,0,100,0),
(@PATH,4,1014.087,673.0586,201.9775,0,0,0,100,0),
(@PATH,5,1012.174,675.2281,201.9775,0,0,0,100,0),
(@PATH,6,1010.179,677.4907,201.9775,0,0,0,100,0),
(@PATH,7,1009.943,677.858,201.9775,0,0,0,100,0),
(@PATH,8,1008.536,677.9459,201.9775,0,0,0,100,0),
(@PATH,9,1006.057,676.2379,201.9775,0,0,0,100,0),
(@PATH,10,1003.621,674.5599,201.9775,0,0,0,100,0),
(@PATH,11,1003.016,674.143,201.9775,0,0,0,100,0),
(@PATH,12,1005.35,675.7533,201.9775,0,0,0,100,0),
(@PATH,13,1007.832,677.4641,201.9775,0,0,0,100,0),
(@PATH,14,1007.622,680.3897,201.9775,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126688;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1003.653,`position_y`=679.7339,`position_z`=201.9775 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1001.198,678.0424,202.4496,0,0,0,100,0),
(@PATH,2,1000.609,677.6369,202.4617,0,0,0,100,0),
(@PATH,3,1002.948,679.2506,201.9884,0,0,0,100,0),
(@PATH,4,1005.432,680.9628,201.9775,0,0,0,100,0),
(@PATH,5,1010.811,683.1892,201.9775,0,0,0,100,0),
(@PATH,6,1012.803,680.9303,201.9775,0,0,0,100,0),
(@PATH,7,1014.796,678.6695,201.9775,0,0,0,100,0),
(@PATH,8,1016.789,676.4094,202.0681,0,0,0,100,0),
(@PATH,9,1017.27,675.8646,202.2087,0,0,0,100,0),
(@PATH,10,1015.357,678.0338,201.9775,0,0,0,100,0),
(@PATH,11,1013.363,680.2949,201.9775,0,0,0,100,0),
(@PATH,12,1008.611,683.1473,201.9775,0,0,0,100,0),
(@PATH,13,1006.133,681.4426,201.9775,0,0,0,100,0),
(@PATH,14,1003.653,679.7339,201.9775,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126690;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1125.967,`position_y`=667.0475,`position_z`=196.235 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1126.472,676.8317,196.235,0,0,0,100,0),
(@PATH,2,1131.925,686.5771,196.235,0,0,0,100,0),
(@PATH,3,1126.472,676.8317,196.235,0,0,0,100,0),
(@PATH,4,1125.968,667.053,196.235,0,0,0,100,0),
(@PATH,5,1125.741,658.6804,196.235,0,0,0,100,0),
(@PATH,6,1130.845,649.0156,196.235,0,0,0,100,0),
(@PATH,7,1125.741,658.6804,196.235,0,0,0,100,0),
(@PATH,8,1125.967,667.0475,196.235,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126696;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1177.753,`position_y`=651.6073,`position_z`=196.235 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1180.727,659.129,196.2331,0,0,0,100,0),
(@PATH,2,1181.298,667.9468,196.2331,0,0,0,100,0),
(@PATH,3,1180.703,675.5833,196.235,0,0,0,100,0),
(@PATH,4,1177.057,683.4843,196.235,0,0,0,100,0),
(@PATH,5,1177.753,651.6073,196.235,0,0,0,100,0);

-- Pathing for Dark Rune Warrior Entry: 27960
SET @NPC := 126687;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1145.315,`position_y`=695.628,`position_z`=196.2341 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1153.682,695.8888,196.2342,0,0,0,100,0),
(@PATH,2,1162.608,695.6946,196.2344,0,0,0,100,0),
(@PATH,3,1170.438,690.9058,196.235,0,0,0,100,0),
(@PATH,4,1162.608,695.6946,196.2344,0,0,0,100,0),
(@PATH,5,1153.682,695.8888,196.2342,0,0,0,100,0),
(@PATH,6,1145.315,695.628,196.2341,0,0,0,100,0),
(@PATH,7,1135.572,689.3916,196.235,0,0,0,100,0),
(@PATH,8,1145.315,695.628,196.2341,0,0,0,100,0);

-- Pathing for Dark Rune Elementalist Entry: 27962
SET @NPC := 126703;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1145.024,`position_y`=642.0187,`position_z`=196.4137 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1150.999,641.2302,196.3704,0,0,0,100,0),
(@PATH,2,1153.455,640.7827,196.235,0,0,0,100,0),
(@PATH,3,1156.446,641.1381,196.3269,0,0,0,100,0),
(@PATH,4,1158.825,640.4028,196.235,0,0,0,100,0),
(@PATH,5,1161.368,642.0229,196.6185,0,0,0,100,0),
(@PATH,6,1163.906,643.6405,196.6111,0,0,0,100,0),
(@PATH,7,1166.443,645.2581,196.6037,0,0,0,100,0),
(@PATH,8,1167.594,645.9916,196.6003,0,0,0,100,0),
(@PATH,9,1165.148,644.4322,196.6075,0,0,0,100,0),
(@PATH,10,1162.606,642.8119,196.6148,0,0,0,100,0),
(@PATH,11,1160.97,641.7167,196.5989,0,0,0,100,0),
(@PATH,12,1157.9,641.3109,196.4085,0,0,0,100,0),
(@PATH,13,1155.433,640.6448,196.235,0,0,0,100,0),
(@PATH,14,1152.448,641.0389,196.2801,0,0,0,100,0),
(@PATH,15,1149.457,641.4337,196.4665,0,0,0,100,0),
(@PATH,16,1147.237,641.1562,196.3355,0,0,0,100,0),
(@PATH,17,1144.726,642.8226,196.6567,0,0,0,100,0),
(@PATH,18,1142.219,644.4866,196.6761,0,0,0,100,0),
(@PATH,19,1141.106,645.2245,196.6847,0,0,0,100,0),
(@PATH,20,1143.517,643.6247,196.666,0,0,0,100,0),
(@PATH,21,1145.024,642.0187,196.4137,0,0,0,100,0);

-- Pathing for Dark Rune Elementalist Entry: 27962
SET @NPC := 126701;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1129.024,`position_y`=657.0057,`position_z`=196.235 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1127.864,658.7399,196.235,0,0,0,100,0),
(@PATH,2,1127.946,661.7473,196.5042,0,0,0,100,0),
(@PATH,3,1128.027,664.7563,196.5429,0,0,0,100,0),
(@PATH,4,1128.126,667.7181,196.5897,0,0,0,100,0),
(@PATH,5,1128.281,670.7305,196.6634,0,0,0,100,0),
(@PATH,6,1128.436,673.7336,196.737,0,0,0,100,0),
(@PATH,7,1128.333,675.8134,196.344,0,0,0,100,0),
(@PATH,8,1129.804,678.4424,196.2552,0,0,0,100,0),
(@PATH,9,1131.276,681.0732,196.235,0,0,0,100,0),
(@PATH,10,1132.74,683.6888,196.235,0,0,0,100,0),
(@PATH,11,1132.74,683.69,196.235,0,0,0,100,0),
(@PATH,12,1131.326,681.163,196.235,0,0,0,100,0),
(@PATH,13,1129.854,678.5325,196.2521,0,0,0,100,0),
(@PATH,14,1128.596,676.8445,196.235,0,0,0,100,0),
(@PATH,15,1128.441,673.8321,196.7393,0,0,0,100,0),
(@PATH,16,1128.286,670.8169,196.6655,0,0,0,100,0),
(@PATH,17,1128.112,667.863,196.5829,0,0,0,100,0),
(@PATH,18,1128.03,664.851,196.5442,0,0,0,100,0),
(@PATH,19,1127.946,661.7473,196.5042,0,0,0,100,0),
(@PATH,20,1128.552,657.9015,196.2763,0,0,0,100,0),
(@PATH,21,1129.957,655.2396,196.235,0,0,0,100,0),
(@PATH,22,1131.364,652.576,196.235,0,0,0,100,0),
(@PATH,23,1131.73,651.8821,196.235,0,0,0,100,0),
(@PATH,24,1130.38,654.4395,196.235,0,0,0,100,0),
(@PATH,25,1129.024,657.0057,196.235,0,0,0,100,0);

-- Pathing for Dark Rune Theurgist Entry: 27963
SET @NPC := 126711;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1015.999,`position_y`=655.0078,`position_z`=201.9775 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1017.901,656.7959,202.3935,0,0,0,100,0),
(@PATH,2,1015.829,654.8475,201.9775,0,0,0,100,0),
(@PATH,3,1013.636,652.786,201.9775,0,0,0,100,0),
(@PATH,4,1008.389,648.621,202.0844,0,0,0,100,0),
(@PATH,5,1006.314,650.805,201.9775,0,0,0,100,0),
(@PATH,6,1004.238,652.9855,201.9775,0,0,0,100,0),
(@PATH,7,1002.176,655.1539,202.1629,0,0,0,100,0),
(@PATH,8,1000.352,657.0724,202.4617,0,0,0,100,0),
(@PATH,9,1002.312,655.0092,202.1233,0,0,0,100,0),
(@PATH,10,1004.39,652.8227,201.9775,0,0,0,100,0),
(@PATH,11,1009.411,648.8157,201.9775,0,0,0,100,0),
(@PATH,12,1011.61,650.8812,201.9775,0,0,0,100,0),
(@PATH,13,1013.805,652.9445,201.9775,0,0,0,100,0),
(@PATH,14,1015.999,655.0078,201.9775,0,0,0,100,0);

-- Pathing for Dark Rune Theurgist Entry: 27963
SET @NPC := 126706;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1000.065,`position_y`=674.6865,`position_z`=202.4617 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1009.652,681.2956,201.9775,0,0,0,100,0),
(@PATH,2,1017.081,672.8705,202.1537,0,0,0,100,0),
(@PATH,3,1009.655,681.2927,201.9776,0,0,0,100,0),
(@PATH,4,1000.065,674.6865,202.4617,0,0,0,100,0);

-- Pathing for Dark Rune Theurgist Entry: 27963
SET @NPC := 126709;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1153.176,`position_y`=763.721,`position_z`=195.9379 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1152.519,749.35,195.3503,0,0,0,100,0),
(@PATH,2,1153.176,763.721,195.9379,0,0,0,100,0),
(@PATH,3,1153.054,777.6341,195.0444,0,0,0,100,0),
(@PATH,4,1153.176,763.721,195.9379,0,0,0,100,0);

-- Pathing for Dark Rune Theurgist Entry: 27963
SET @NPC := 126715;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=986.8647,`position_y`=666.3177,`position_z`=202.871 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1009.195,666.1702,201.9775,0,0,0,100,0),
(@PATH,2,1035.709,665.5925,202.4466,0,0,0,100,0),
(@PATH,3,1009.197,666.1702,201.9775,0,0,0,100,0),
(@PATH,4,986.8647,666.3177,202.871,0,0,0,100,0);

-- Pathing for Dark Rune Theurgist Entry: 27963
SET @NPC := 126710;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1135.301,`position_y`=743.4152,`position_z`=195.3503 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1172.016,743.1987,195.647,0,0,0,100,0),
(@PATH,2,1135.301,743.4152,195.3503,0,0,0,100,0);

-- Pathing for Dark Rune Controller Entry: 27966
SET @NPC := 126732;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=959.431,`position_y`=770.3616,`position_z`=198.8232 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,969.4739,773.4847,199.2813,0,0,0,100,0),
(@PATH,2,967.765,784.1023,197.2568,0,0,0,100,0),
(@PATH,3,961.8073,788.9789,196.0064,0,0,0,100,0),
(@PATH,4,953.1095,795.3681,193.9678,0,0,0,100,0),
(@PATH,5,944.3715,791.49,194.977,0,0,0,100,0),
(@PATH,6,943.6695,784.9597,196.3876,0,0,0,100,0),
(@PATH,7,949.5979,774.4566,198.258,0,0,0,100,0),
(@PATH,8,959.431,770.3616,198.8232,0,0,0,100,0);

-- Pathing for Dark Rune Controller Entry: 27966
SET @NPC := 126728;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=937.8448,`position_y`=816.6932,`position_z`=189.7503 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,956.9082,820.8291,187.6685,0,0,0,100,0),
(@PATH,2,970.3458,829.6348,186.9343,0,0,0,100,0),
(@PATH,3,978.5536,836.1985,186.3881,0,0,0,100,0),
(@PATH,4,970.3458,829.6348,186.9343,0,0,0,100,0),
(@PATH,5,956.9082,820.8291,187.6685,0,0,0,100,0),
(@PATH,6,937.8448,816.6932,189.7503,0,0,0,100,0);

-- Pathing for Dark Rune Giant Entry: 27969
SET @NPC := 126733;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1048.362,`position_y`=627.2144,`position_z`=207.7195 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1048.035,534.076,207.7195,0,0,0,100,0),
(@PATH,2,1048.362,627.2144,207.7195,0,0,0,100,0);

-- Pathing for Dark Rune Giant Entry: 27969
SET @NPC := 126734;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1182.628,`position_y`=642.6927,`position_z`=196.235 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1191.198,663.7195,196.2346,0,0,0,100,0),
(@PATH,2,1182.631,642.6952,196.235,0,0,0,100,0),
(@PATH,3,1169.885,632.327,196.235,0,0,0,100,0),
(@PATH,4,1154.578,627.3207,196.235,0,0,0,100,0),
(@PATH,5,1140.422,631.9984,196.235,0,0,0,100,0),
(@PATH,6,1124.699,645.2076,196.235,0,0,0,100,0),
(@PATH,7,1121.548,657.0721,196.235,0,0,0,100,0),
(@PATH,8,1124.699,645.2076,196.235,0,0,0,100,0),
(@PATH,9,1140.422,631.9984,196.235,0,0,0,100,0),
(@PATH,10,1154.578,627.3207,196.235,0,0,0,100,0),
(@PATH,11,1169.885,632.327,196.235,0,0,0,100,0),
(@PATH,12,1182.628,642.6927,196.235,0,0,0,100,0);

-- Pathing for Dark Rune Giant Entry: 27969
SET @NPC := 126736;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=905.2296,`position_y`=666.2713,`position_z`=196.4107 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,946.57,666.5284,196.1596,0,0,0,100,0),
(@PATH,2,968.8573,666.6479,196.4836,0,0,0,100,0),
(@PATH,3,946.5755,666.5284,196.1597,0,0,0,100,0),
(@PATH,4,905.2296,666.2713,196.4107,0,0,0,100,0);

-- Pathing for Dark Rune Giant Entry: 27969
SET @NPC := 126735;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1124.234,`position_y`=666.6528,`position_z`=196.235 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1122.256,687.0065,196.235,0,0,0,100,0),
(@PATH,2,1133.015,698.6454,196.235,0,0,0,100,0),
(@PATH,3,1148.657,706.8157,196.2355,0,0,0,100,0),
(@PATH,4,1161.399,706.7985,196.2357,0,0,0,100,0),
(@PATH,5,1177.772,696.8011,196.2348,0,0,0,100,0),
(@PATH,6,1186.349,682.7001,196.235,0,0,0,100,0),
(@PATH,7,1177.772,696.8011,196.2348,0,0,0,100,0),
(@PATH,8,1161.399,706.7985,196.2357,0,0,0,100,0),
(@PATH,9,1148.657,706.8157,196.2355,0,0,0,100,0),
(@PATH,10,1133.015,698.6454,196.235,0,0,0,100,0),
(@PATH,11,1122.256,687.0065,196.235,0,0,0,100,0),
(@PATH,12,1124.234,666.6528,196.235,0,0,0,100,0);

-- Pathing for Lightning Construct Entry: 27972
SET @NPC := 126746;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=972.5233,`position_y`=420.2028,`position_z`=205.9943 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,980.9671,415.2457,205.9943,0,0,0,100,0),
(@PATH,2,972.5233,420.2028,205.9943,0,0,0,100,0),
(@PATH,3,961.5862,421.183,205.9943,0,0,0,100,0),
(@PATH,4,952.4949,416.0938,205.9943,0,0,0,100,0),
(@PATH,5,961.5389,421.1565,205.9943,0,0,0,100,0),
(@PATH,6,972.5233,420.2028,205.9943,0,0,0,100,0);

-- Pathing for Lightning Construct Entry: 27972
SET @NPC := 126750;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=967.9682,`position_y`=381.0118,`position_z`=205.9943 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,954.208,382.8831,205.9943,0,0,0,100,0),
(@PATH,2,944.4269,394.0551,205.9943,0,0,0,100,0),
(@PATH,3,946.6729,409.3246,205.9943,0,0,0,100,0),
(@PATH,4,944.4262,394.0558,205.9943,0,0,0,100,0),
(@PATH,5,954.208,382.8831,205.9943,0,0,0,100,0),
(@PATH,6,967.9682,381.0118,205.9943,0,0,0,100,0);

-- Pathing for Lightning Construct Entry: 27972
SET @NPC := 126749;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=983.2661,`position_y`=390.105,`position_z`=205.9943 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,986.5608,402.9213,205.9943,0,0,0,100,0),
(@PATH,2,983.0714,412.1025,205.9943,0,0,0,100,0),
(@PATH,3,986.5522,402.9439,205.9943,0,0,0,100,0),
(@PATH,4,983.2661,390.105,205.9943,0,0,0,100,0),
(@PATH,5,974.4719,382.4703,205.9943,0,0,0,100,0),
(@PATH,6,983.2661,390.105,205.9943,0,0,0,100,0);

-- Pathing for Crystalline Shardling Entry: 27973
SET @NPC := 126787;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=938.4828,`position_y`=813.7618,`position_z`=189.9927 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,942.4637,814.6254,189.3832,0,0,0,100,0),
(@PATH,2,945.379,815.2579,188.9368,0,0,0,100,0),
(@PATH,3,948.2987,815.8914,188.4898,0,0,0,100,0),
(@PATH,4,951.2225,816.5258,188.1479,0,0,0,100,0),
(@PATH,5,954.1625,817.1636,188.069,0,0,0,100,0),
(@PATH,6,957.1072,817.8024,187.99,0,0,0,100,0),
(@PATH,7,960.6969,819.7251,187.7678,0,0,0,100,0),
(@PATH,8,965.7293,823.0229,187.4797,0,0,0,100,0),
(@PATH,9,968.2454,824.6718,187.3356,0,0,0,100,0),
(@PATH,10,970.7648,826.3227,187.1914,0,0,0,100,0),
(@PATH,11,973.4231,828.2544,187.06,0,0,0,100,0),
(@PATH,12,975.7665,830.1284,186.9356,0,0,0,100,0),
(@PATH,13,978.1152,832.0066,186.8109,0,0,0,100,0),
(@PATH,14,980.4257,833.8543,186.6883,0,0,0,100,0),
(@PATH,15,977.209,831.2819,186.8591,0,0,0,100,0),
(@PATH,16,974.8596,829.4031,186.9837,0,0,0,100,0),
(@PATH,17,972.5027,827.5184,187.1088,0,0,0,100,0),
(@PATH,18,969.7669,825.6686,187.2486,0,0,0,100,0),
(@PATH,19,967.2497,824.0191,187.3926,0,0,0,100,0),
(@PATH,20,964.7295,822.3676,187.5369,0,0,0,100,0),
(@PATH,21,962.2039,820.7126,187.6815,0,0,0,100,0),
(@PATH,22,959.684,819.0614,187.8257,0,0,0,100,0),
(@PATH,23,955.9277,817.5466,188.0217,0,0,0,100,0),
(@PATH,24,952.986,816.9084,188.1006,0,0,0,100,0),
(@PATH,25,950.0452,816.2703,188.2224,0,0,0,100,0),
(@PATH,26,947.1313,815.6381,188.6686,0,0,0,100,0),
(@PATH,27,941.3091,814.3749,189.56,0,0,0,100,0),
(@PATH,28,938.4828,813.7618,189.9927,0,0,0,100,0);

-- Pathing for Crystalline Shardling Entry: 27973
SET @NPC := 126788;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=937.2088,`position_y`=819.625,`position_z`=189.5746 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,941.1921,820.4892,188.9586,0,0,0,100,0),
(@PATH,2,944.1083,821.1219,188.5076,0,0,0,100,0),
(@PATH,3,947.0261,821.7549,188.0563,0,0,0,100,0),
(@PATH,4,949.9498,822.3893,187.7245,0,0,0,100,0),
(@PATH,5,952.8904,823.0272,187.5842,0,0,0,100,0),
(@PATH,6,955.8341,823.6659,187.4437,0,0,0,100,0),
(@PATH,7,957.4083,824.7435,187.3226,0,0,0,100,0),
(@PATH,8,962.4407,828.0413,186.9908,0,0,0,100,0),
(@PATH,9,964.958,829.6909,186.8311,0,0,0,100,0),
(@PATH,10,967.4774,831.3419,186.6792,0,0,0,100,0),
(@PATH,11,969.6763,832.9407,186.5558,0,0,0,100,0),
(@PATH,12,972.0192,834.8143,186.4057,0,0,0,100,0),
(@PATH,13,974.3668,836.6917,186.2552,0,0,0,100,0),
(@PATH,14,976.6784,838.5402,186.1071,0,0,0,100,0),
(@PATH,15,973.4617,835.9678,186.3132,0,0,0,100,0),
(@PATH,16,971.1112,834.0882,186.4638,0,0,0,100,0),
(@PATH,17,968.7542,832.2033,186.6149,0,0,0,100,0),
(@PATH,18,966.4784,830.6872,186.7346,0,0,0,100,0),
(@PATH,19,963.961,829.0375,186.8943,0,0,0,100,0),
(@PATH,20,961.4396,827.3853,187.0543,0,0,0,100,0),
(@PATH,21,958.9153,825.7311,187.2144,0,0,0,100,0),
(@PATH,22,956.396,824.0802,187.3987,0,0,0,100,0),
(@PATH,23,954.6556,823.4102,187.5,0,0,0,100,0),
(@PATH,24,951.9318,822.8305,187.6292,0,0,0,100,0),
(@PATH,25,948.8242,822.1456,187.7782,0,0,0,100,0),
(@PATH,26,945.8588,821.5016,188.2368,0,0,0,100,0),
(@PATH,27,940.0389,820.239,189.1369,0,0,0,100,0),
(@PATH,28,937.2088,819.625,189.5746,0,0,0,100,0);
-- Drak'Tharon Keep

-- Pathing for Drakkari Guardian Entry: 26620
SET @NPC := 127582;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-342.092,`position_y`=-597.7366,`position_z`=72.60764 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-348.2738,-595.0352,72.60789,0,0,0,100,0),
(@PATH,2,-351.4645,-591.2532,72.60825,0,0,0,100,0),
(@PATH,3,-348.2738,-595.0352,72.60789,0,0,0,100,0),
(@PATH,4,-342.092,-597.7366,72.60764,0,0,0,100,0),
(@PATH,5,-337.3541,-596.457,72.60776,0,0,0,100,0),
(@PATH,6,-332.8021,-593.3668,72.60805,0,0,0,100,0),
(@PATH,7,-330.1274,-590.215,72.60835,0,0,0,100,0),
(@PATH,8,-332.8021,-593.3668,72.60805,0,0,0,100,0),
(@PATH,9,-337.3541,-596.457,72.60776,0,0,0,100,0),
(@PATH,10,-342.092,-597.7366,72.60764,0,0,0,100,0);

-- Remove Drakkari Guardian overspawn
DELETE FROM `creature` WHERE `guid` IN (127581);
DELETE FROM `creature_addon` WHERE `guid` IN (127581);

-- Pathing for Drakkari Bat Entry: 26622
SET @NPC := 127614;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-392.2272,`position_y`=-677.325,`position_z`=26.64196 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-386.9386,-680.3297,28.5735,0,0,0,100,0),
(@PATH,2,-381.2936,-675.7957,28.5735,0,0,0,100,0),
(@PATH,3,-378.735,-666.9066,28.57349,0,0,0,100,0),
(@PATH,4,-386.3628,-662.0511,28.57349,0,0,0,100,0),
(@PATH,5,-392.4187,-664.8582,26.64148,0,0,0,100,0),
(@PATH,6,-395.6666,-671.3341,26.64142,0,0,0,100,0),
(@PATH,7,-392.2272,-677.325,26.64196,0,0,0,100,0);

-- Pathing for Drakkari Bat Entry: 26622
SET @NPC := 127613;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-420.6025,`position_y`=-665.9139,`position_z`=27.26924 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-409.9266,-669.2863,26.64212,0,0,0,100,0),
(@PATH,2,-404.8366,-663.6207,26.64172,0,0,0,100,0),
(@PATH,3,-404.446,-655.531,26.64191,0,0,0,100,0),
(@PATH,4,-411.499,-652.1765,28.57349,0,0,0,100,0),
(@PATH,5,-416.9508,-653.751,28.5738,0,0,0,100,0),
(@PATH,6,-421.7345,-661.5891,28.57359,0,0,0,100,0),
(@PATH,7,-420.6025,-665.9139,27.26924,0,0,0,100,0);

-- Pathing for Drakkari Bat Entry: 26622
SET @NPC := 127615;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-416.4136,`position_y`=-662.1977,`position_z`=26.64302 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-423.1144,-663.6149,28.57369,0,0,0,100,0),
(@PATH,2,-428.976,-668.0037,28.5738,0,0,0,100,0),
(@PATH,3,-428.1159,-675.8496,28.5735,0,0,0,100,0),
(@PATH,4,-420.3534,-679.633,27.94913,0,0,0,100,0),
(@PATH,5,-412.9664,-675.6168,26.64376,0,0,0,100,0),
(@PATH,6,-412.3599,-668.2842,26.64241,0,0,0,100,0),
(@PATH,7,-416.4136,-662.1977,26.64302,0,0,0,100,0);

-- Pathing for Drakkari Bat Entry: 26622
SET @NPC := 127612;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-406.5539,`position_y`=-695.0261,`position_z`=28.57405 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-399.3579,-694.1252,28.5735,0,0,0,100,0),
(@PATH,2,-392.8559,-687.9329,28.57349,0,0,0,100,0),
(@PATH,3,-395.3493,-679.3206,26.64168,0,0,0,100,0),
(@PATH,4,-404.5995,-676.0878,26.63831,0,0,0,100,0),
(@PATH,5,-411.1477,-682.6027,26.64155,0,0,0,100,0),
(@PATH,6,-410.6699,-690.0704,28.57438,0,0,0,100,0),
(@PATH,7,-406.5539,-695.0261,28.57405,0,0,0,100,0);

-- Pathing for Scourge Reanimator Entry: 26626
SET @NPC := 127412;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-410.9426,`position_y`=-603.3857,`position_z`=1.024866 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-404.537,-602.8129,1.024867,0,0,0,100,0),
(@PATH,2,-398.1429,-604.8417,1.02487,0,0,0,100,0),
(@PATH,3,-404.537,-602.8129,1.024867,0,0,0,100,0),
(@PATH,4,-410.9426,-603.3857,1.024866,0,0,0,100,0),
(@PATH,5,-416.6559,-600.7515,1.024868,0,0,0,100,0),
(@PATH,6,-424.4983,-599.7261,1.024869,0,0,0,100,0),
(@PATH,7,-416.6559,-600.7515,1.024868,0,0,0,100,0),
(@PATH,8,-410.9426,-603.3857,1.024866,0,0,0,100,0);

-- Pathing for Scourge Reanimator Entry: 26626
SET @NPC := 127411;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-494.1194,`position_y`=-603.9778,`position_z`=2.072221 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-486.8281,-601.2296,1.144565,0,0,0,100,0),
(@PATH,2,-481.1871,-599.9684,1.024871,0,0,0,100,0),
(@PATH,3,-475.4717,-602.4325,1.820062,0,0,0,100,0),
(@PATH,4,-469.6367,-604.8362,1.044375,0,0,0,100,0),
(@PATH,5,-462.5545,-605.178,1.018675,0,0,0,100,0),
(@PATH,6,-469.5573,-604.8443,1.042719,0,0,0,100,0),
(@PATH,7,-475.4717,-602.4325,1.820062,0,0,0,100,0),
(@PATH,8,-481.1871,-599.9684,1.024871,0,0,0,100,0),
(@PATH,9,-486.8281,-601.2296,1.144565,0,0,0,100,0),
(@PATH,10,-494.1194,-603.9778,2.072221,0,0,0,100,0);

-- Remove Scourge Reanimator overspawn
DELETE FROM `creature` WHERE `guid` IN (127450);
DELETE FROM `creature_addon` WHERE `guid` IN (127450);

-- Pathing for Drakkari Gutripper Entry: 26641
SET @NPC := 127456;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-483.0405,`position_y`=-649.0012,`position_z`=28.58858 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-486.0568,-648.8849,28.58832,0,0,0,100,0),
(@PATH,2,-483.0405,-649.0012,28.58858,0,0,0,100,0),
(@PATH,3,-480.0255,-649.1176,28.58883,0,0,0,100,0),
(@PATH,4,-477.0105,-649.2339,28.58909,0,0,0,100,0),
(@PATH,5,-474.0007,-649.3502,28.59028,0,0,0,100,0),
(@PATH,6,-470.9918,-649.4663,28.59031,0,0,0,100,0),
(@PATH,7,-467.9779,-649.5826,28.59035,0,0,0,100,0),
(@PATH,8,-464.9656,-649.6989,28.55288,0,0,0,100,0),
(@PATH,9,-461.9586,-649.815,28.50968,0,0,0,100,0),
(@PATH,10,-460.1104,-649.8864,28.4215,0,0,0,100,0),
(@PATH,11,-464.2306,-649.7274,28.54232,0,0,0,100,0),
(@PATH,12,-467.2433,-649.611,28.59036,0,0,0,100,0),
(@PATH,13,-470.2549,-649.4948,28.59032,0,0,0,100,0),
(@PATH,14,-473.2637,-649.3786,28.59029,0,0,0,100,0),
(@PATH,15,-476.2737,-649.2624,28.58915,0,0,0,100,0),
(@PATH,16,-479.2837,-649.1462,28.5889,0,0,0,100,0),
(@PATH,17,-483.0405,-649.0012,28.58858,0,0,0,100,0);

-- Pathing for Drakkari Gutripper Entry: 26641
SET @NPC := 127457;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-483.2729,`position_y`=-654.9966,`position_z`=28.59017 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-486.2876,-654.8802,28.58992,0,0,0,100,0),
(@PATH,2,-483.2729,-654.9966,28.59017,0,0,0,100,0),
(@PATH,3,-480.2569,-655.113,28.59199,0,0,0,100,0),
(@PATH,4,-477.2439,-655.2294,28.59203,0,0,0,100,0),
(@PATH,5,-474.2319,-655.3456,28.59206,0,0,0,100,0),
(@PATH,6,-471.2233,-655.4618,28.5921,0,0,0,100,0),
(@PATH,7,-468.2094,-655.5781,28.59213,0,0,0,100,0),
(@PATH,8,-465.1971,-655.6944,28.55799,0,0,0,100,0),
(@PATH,9,-462.19,-655.8105,28.51479,0,0,0,100,0),
(@PATH,10,-460.3419,-655.8818,28.48824,0,0,0,100,0),
(@PATH,11,-464.463,-655.7228,28.54745,0,0,0,100,0),
(@PATH,12,-467.4753,-655.6064,28.59214,0,0,0,100,0),
(@PATH,13,-470.4877,-655.4902,28.59211,0,0,0,100,0),
(@PATH,14,-473.4938,-655.3741,28.59207,0,0,0,100,0),
(@PATH,15,-476.5032,-655.2579,28.59204,0,0,0,100,0),
(@PATH,16,-479.5138,-655.1417,28.592,0,0,0,100,0),
(@PATH,17,-483.2729,-654.9966,28.59017,0,0,0,100,0);

-- Pathing for Darkweb Hatchling Entry: 26674
SET @NPC := 127472;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-283.7295,`position_y`=-731.8323,`position_z`=27.29189 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-270.1169,-730.9915,27.30806,0,0,0,100,0),
(@PATH,2,-266.1129,-727.931,27.30861,0,0,0,100,0),
(@PATH,3,-265.3598,-715.4077,27.29189,0,0,0,100,0),
(@PATH,4,-274.9025,-707.4509,27.29512,0,0,0,100,0),
(@PATH,5,-282.5379,-706.8624,27.29189,0,0,0,100,0),
(@PATH,6,-287.1734,-717.2089,27.72341,0,0,0,100,0),
(@PATH,7,-290.9054,-722.8333,27.29189,0,0,0,100,0),
(@PATH,8,-283.7295,-731.8323,27.29189,0,0,0,100,0);

-- Pathing for Darkweb Hatchling Entry: 26674
SET @NPC := 127473;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-286.7308,`position_y`=-721.9674,`position_z`=27.29189 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-288.534,-727.5106,27.29189,0,0,0,100,0),
(@PATH,2,-280.5279,-726.8649,27.29189,0,0,0,100,0),
(@PATH,3,-270.6854,-727.6488,27.29941,0,0,0,100,0),
(@PATH,4,-270.441,-721.2595,27.29189,0,0,0,100,0),
(@PATH,5,-270.4362,-712.4268,27.29189,0,0,0,100,0),
(@PATH,6,-278.0521,-710.217,27.29605,0,0,0,100,0),
(@PATH,7,-285.8037,-712.8212,27.29603,0,0,0,100,0),
(@PATH,8,-286.7308,-721.9674,27.29189,0,0,0,100,0);

-- Pathing for Darkweb Hatchling Entry: 26674
SET @NPC := 127474;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-249.4208,`position_y`=-717.0651,`position_z`=27.61007 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-259.6944,-717.1452,26.8645,0,0,0,100,0),
(@PATH,2,-265.6481,-718.8099,27.29189,0,0,0,100,0),
(@PATH,3,-264.446,-725.0237,27.30534,0,0,0,100,0),
(@PATH,4,-256.6581,-724.9134,27.43577,0,0,0,100,0),
(@PATH,5,-246.0695,-725.6784,27.36535,0,0,0,100,0),
(@PATH,6,-245.0813,-719.5449,27.53182,0,0,0,100,0),
(@PATH,7,-249.4208,-717.0651,27.61007,0,0,0,100,0);

-- Pathing for Darkweb Hatchling Entry: 26674
SET @NPC := 127475;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-242.1334,`position_y`=-720.1142,`position_z`=27.43355 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-250.4899,-714.759,27.3011,0,0,0,100,0),
(@PATH,2,-266.1705,-713.7017,27.06336,0,0,0,100,0),
(@PATH,3,-270.4176,-721.0847,27.29189,0,0,0,100,0),
(@PATH,4,-266.1248,-728.0099,27.30877,0,0,0,100,0),
(@PATH,5,-253.1003,-728.3563,27.41331,0,0,0,100,0),
(@PATH,6,-244.1609,-728.7698,27.33719,0,0,0,100,0),
(@PATH,7,-242.1334,-720.1142,27.43355,0,0,0,100,0);

-- Pathing for Risen Drakkari Death Knight Entry: 26830
SET @NPC := 127553;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-390.7345,`position_y`=-608.2701,`position_z`=72.60735 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-402.9046,-608.7485,72.6084,0,0,0,100,0),
(@PATH,2,-414.1785,-608.5219,72.60596,0,0,0,100,0),
(@PATH,3,-423.621,-608.1632,72.60622,0,0,0,100,0),
(@PATH,4,-414.1785,-608.5219,72.60596,0,0,0,100,0),
(@PATH,5,-402.9046,-608.7485,72.6084,0,0,0,100,0),
(@PATH,6,-390.7345,-608.2701,72.60735,0,0,0,100,0);

-- Pathing for Risen Drakkari Death Knight Entry: 26830
SET @NPC := 127552;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-282.7542,`position_y`=-699.7166,`position_z`=101.747 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-280.2459,-720.9793,101.7811,0,0,0,100,0),
(@PATH,2,-279.8599,-737.6229,101.7784,0,0,0,100,0),
(@PATH,3,-280.2459,-720.9793,101.7811,0,0,0,100,0),
(@PATH,4,-282.7542,-699.7166,101.747,0,0,0,100,0);

-- Pathing for Drakkari Commander Entry: 27431
SET @NPC := 127471;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-346.2241,`position_y`=-610.9034,`position_z`=72.60129 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-373.7004,-609.6317,72.61194,0,0,0,100,0),
(@PATH,2,-346.2241,-610.9034,72.60129,0,0,0,100,0);

-- Pathing for Cosmetic Drakkari Bat [PH] Entry: 27490
SET @NPC := 127508;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-407.2545,`position_y`=-677.0726,`position_z`=70.22565 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-413.0328,-671.7674,70.14231,0,0,0,100,0),
(@PATH,2,-413.0139,-668.8679,69.94788,0,0,0,100,0),
(@PATH,3,-407.86,-662.8748,70.08675,0,0,0,100,0),
(@PATH,4,-401.7282,-667.11,70.11458,0,0,0,100,0),
(@PATH,5,-401.2929,-673.1425,69.97565,0,0,0,100,0),
(@PATH,6,-407.2545,-677.0726,70.22565,0,0,0,100,0);

-- Pathing for Cosmetic Drakkari Bat [PH] Entry: 27490
SET @NPC := 127509;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-409.4158,`position_y`=-663.9135,`position_z`=62.39258 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-413.1464,-668.7359,61.44815,0,0,0,100,0),
(@PATH,2,-412.7488,-672.1281,61.80927,0,0,0,100,0),
(@PATH,3,-409.5626,-677.9425,62.44814,0,0,0,100,0),
(@PATH,4,-403.616,-679.6837,62.55925,0,0,0,100,0),
(@PATH,5,-398.3275,-677.5518,62.67037,0,0,0,100,0),
(@PATH,6,-396.8555,-671.9451,62.05924,0,0,0,100,0),
(@PATH,7,-398.5243,-664.6963,62.3092,0,0,0,100,0),
(@PATH,8,-404.1799,-662.1304,62.58703,0,0,0,100,0),
(@PATH,9,-409.4158,-663.9135,62.39258,0,0,0,100,0);

-- Pathing for Cosmetic Drakkari Bat [PH] Entry: 27490
SET @NPC := 127510;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-406.932,`position_y`=-676.9556,`position_z`=66.53109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-411.784,-673.2886,64.19775,0,0,0,100,0),
(@PATH,2,-411.4865,-667.8989,63.86424,0,0,0,100,0),
(@PATH,3,-406.9132,-663.992,65.44756,0,0,0,100,0),
(@PATH,4,-401.3338,-665.2374,64.8922,0,0,0,100,0),
(@PATH,5,-398.546,-669.8902,65.44775,0,0,0,100,0),
(@PATH,6,-400.9965,-675.5491,66.19775,0,0,0,100,0),
(@PATH,7,-406.932,-676.9556,66.53109,0,0,0,100,0);

-- Pathing for Cosmetic Drakkari Bat [PH] Entry: 27490
SET @NPC := 127511;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-410.8573,`position_y`=-673.0195,`position_z`=72.72581 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-405.1031,-679.6655,71.92022,0,0,0,100,0),
(@PATH,2,-398.3365,-677.8955,72.69765,0,0,0,100,0),
(@PATH,3,-396.0217,-670.7278,72.72577,0,0,0,100,0),
(@PATH,4,-401.3752,-666.0843,71.7813,0,0,0,100,0),
(@PATH,5,-409.0014,-667.2194,71.83688,0,0,0,100,0),
(@PATH,6,-410.8573,-673.0195,72.72581,0,0,0,100,0);

-- Pathing for Cosmetic Drakkari Bat [PH] Entry: 27490
SET @NPC := 127512;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-409.2986,`position_y`=-663.4329,`position_z`=58.00312 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-411.9643,-668.5157,58.22538,0,0,0,100,0),
(@PATH,2,-411.5511,-675.1073,57.94757,0,0,0,100,0),
(@PATH,3,-406.8594,-679.2547,57.08646,0,0,0,100,0),
(@PATH,4,-401.6542,-679.5847,58.64199,0,0,0,100,0),
(@PATH,5,-396.0136,-673.5827,59.4198,0,0,0,100,0),
(@PATH,6,-396.2527,-666.631,57.83645,0,0,0,100,0),
(@PATH,7,-400.8469,-661.2967,59.25313,0,0,0,100,0),
(@PATH,8,-409.2986,-663.4329,58.00312,0,0,0,100,0);

-- Pathing for Cosmetic Drakkari Bat [PH] Entry: 27490
SET @NPC := 127513;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-412.7229,`position_y`=-650.8453,`position_z`=38.51792 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-405.5179,-645.0265,36.32347,0,0,0,100,0),
(@PATH,2,-397.6033,-648.0791,36.9068,0,0,0,100,0),
(@PATH,3,-394.8318,-652.9764,38.29573,0,0,0,100,0),
(@PATH,4,-395.8389,-657.9083,37.74015,0,0,0,100,0),
(@PATH,5,-401.2168,-663.5585,39.9346,0,0,0,100,0),
(@PATH,6,-407.9547,-663.297,41.68458,0,0,0,100,0),
(@PATH,7,-413.9172,-658.0521,38.18459,0,0,0,100,0),
(@PATH,8,-412.7229,-650.8453,38.51792,0,0,0,100,0);

-- Remove Cosmetic Drakkari Bat [PH] overspawns
DELETE FROM `creature` WHERE `guid` IN (127514,127515,127516);
DELETE FROM `creature_addon` WHERE `guid` IN (127514,127515,127516);
-- Fix Inhabittype for Cosmetic Drakkari Bat [PH] "No one fixes even the simple shit!"
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=27490;

-- Pathing for Risen Drakkari Handler Entry: 26637
SET @NPC := 127444;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-490.2928,`position_y`=-651.7234,`position_z`=28.58877 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,6469, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-460.2261,-652.8841,28.48568,0,0,0,100,0),
(@PATH,2,-490.2928,-651.7234,28.58877,0,0,0,100,0);
-- Quest 12291 "The Forgotten Tale"
-- SAI for Forgotten Knight, Forgotten Rifleman, Forgotten Peasant, Forgotten Footman, Orik, & Forgotten Soul
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (27224,27225,27226,27229,27220,27347,27465);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (27224,27225,27226,27229,27220,27347,27465);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (27224,27225,27226,27229,27220,27347,27465);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Forgotten Knight
(27224,0,0,1,62,0,100,0,9544,0,0,0,11,48831,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Knight - On gossip option select quest credit'),
(27224,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Knight - Close Gossip'),
(27224,0,2,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Add Forgotten Aura if missing'),
(27224,0,3,4,4,0,100,0,0,0,0,0,11,38556,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Cast Throw on Aggro'),
(27224,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Phase 1 on Aggro'),
(27224,0,5,6,0,1,100,0,5,35,2300,3900,11,38556,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Cast Throw (Phase 1)'),
(27224,0,6,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Ranged Weapon Model (Phase 1)'),
(27224,0,7,8,9,1,100,0,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Start Combat Movement at 25 Yards (Phase 1)'),
(27224,0,8,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Start Melee at 25 Yards (Phase 1)'),
(27224,0,9,10,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Start Combat Movement Below 5 Yards (Phase 1)'),
(27224,0,10,11,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Ranged Weapon Model Below 5 Yards (Phase 1)'),
(27224,0,11,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Start Melee Below 5 Yards (Phase 1)'),
(27224,0,12,13,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Prevent Combat Movement at 15 Yards (Phase 1)'),
(27224,0,13,0,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Prevent Melee at 15 Yards (Phase 1)'),
(27224,0,14,0,7,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Melee Weapon Model on Evade'),
-- Forgotten Rifleman
(27225,0,0,1,62,0,100,0,9543,0,0,0,11,48830,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Rifleman - On gossip option select quest credit'), 
(27225,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Rifleman - Close Gossip'), 
(27225,0,2,3,11,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Combat Movement on Spawn'),
(27225,0,3,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Melee on Spawn'),
(27225,0,4,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Add Forgotten Aura if missing'),
(27225,0,5,6,4,0,100,0,0,0,0,0,11,15547,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Cast Shoot on Aggro'),
(27225,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Phase 1 on Aggro'),
(27225,0,7,8,0,1,100,0,5,30,2300,3900,11,15547,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Cast Shoot (Phase 1)'),
(27225,0,8,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Ranged Weapon Model (Phase 1)'),
(27225,0,9,0,0,1,100,0,9000,12000,9000,14000,11,17174,1,1,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Cast Concussive Shot (Phase 1)'),
(27225,0,10,11,9,1,100,0,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Combat Movement at 25 Yards (Phase 1)'),
(27225,0,11,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Melee at 25 Yards (Phase 1)'),
(27225,0,12,13,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Combat Movement Below 5 Yards (Phase 1)'),
(27225,0,13,14,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Ranged Weapon Model Below 5 Yards (Phase 1)'),
(27225,0,14,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Melee Below 5 Yards (Phase 1)'),
(27225,0,15,16,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Combat Movement at 15 Yards (Phase 1)'),
(27225,0,16,0,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Melee at 15 Yards (Phase 1)'),
(27225,0,17,0,2,1,100,0,0,15,0,0,23,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Phase 2 at 15% HP'),
(27225,0,18,19,2,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Combat Movement at 15% HP (Phase 2)'),
(27225,0,19,20,61,2,100,0,0,0,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Flee at 15% HP (Phase 2)'),
(27225,0,20,21,61,2,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Say text0 at 15% HP (Phase 2)'),
(27225,0,21,0,61,2,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - set phase 1 at 15% HP (Phase 2)'),
(27225,0,22,0,7,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Melee Weapon Model on Evade'),                              
-- Forgotten Peasant
(27226,0,0,1,62,0,100,0,9541,0,0,0,11,48829,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Peasant - On gossip option select quest credit'),
(27226,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Peasant - Close Gossip'),
(27226,0,2,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Peasant - Add Forgotten Aura if missing'),
(27226,0,3,0,0,0,100,0,0,5,7000,10000,11,51601,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Peasant - Cast Bonk'),
-- Forgotten Footman
(27229,0,0,1,62,0,100,0,9545,0,0,0,11,48832,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Footman - On gossip option select quest credit'),
(27229,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Footman - Close Gossip'),
(27229,0,2,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Footman - Add Forgotten Aura if missing'),
(27229,0,3,0,0,0,100,0,3000,7000,9000,12000,11,32587,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Footman - Cast Shield Block'),
-- Forgotten Captain
(27220,0,0,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Captain - Add Forgotten Aura if missing'),
(27220,0,1,0,0,0,100,0,6000,9000,8000,12000,11,51591,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Captain - Cast Stormhammer'),
-- Orik
(27347,0,0,1,62,0,100,0,9542,0,0,0,11,48828,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orik - On gossip option select create Murkweed Elixir'),
(27347,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orik - Close Gossip'),
-- Forgotten Soul
(27465,0,0,0,11,0,100,0,0,0,0,0,11,29266,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Soul - On aura self');

-- Assign Gossip_id's to creatures
UPDATE `creature_template` SET `gossip_menu_id`=9544 WHERE `entry`=27224; -- Forgotten Knight
UPDATE `creature_template` SET `gossip_menu_id`=9543 WHERE `entry`=27225; -- Forgotten Rifleman
UPDATE `creature_template` SET `gossip_menu_id`=9541 WHERE `entry`=27226; -- Forgotten Peasant
UPDATE `creature_template` SET `gossip_menu_id`=9545 WHERE `entry`=27229; -- Forgotten Footman
UPDATE `creature_template` SET `gossip_menu_id`=9542 WHERE `entry`=27347; -- Orik
-- Add gossip menu items
DELETE FROM `gossip_menu` WHERE `entry`=9544  AND `text_id`=12859;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9544,12859);
DELETE FROM `gossip_menu` WHERE `entry`=9543  AND `text_id`=12858;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9543,12858);
DELETE FROM `gossip_menu` WHERE `entry`=9541  AND `text_id`=12856;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9541,12856);
DELETE FROM `gossip_menu` WHERE `entry`=9545  AND `text_id`=12860;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9545,12860);
DELETE FROM `gossip_menu` WHERE `entry`=9542  AND `text_id`=12857;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9542,12857);

-- Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9544,9543,9541,9545,9542);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9544,0,0,'I must be going now, soldier. Stay vigilant!',1,1,0,0,0,0,0,''), -- Forgotten Knight
(9543,0,0,'I''m sure Arthas will be back any day now, soldier. Keep your chin up!',1,1,0,0,0,0,0,''), -- Forgotten Rifleman
(9541,0,0,'Sorry to have bothered you, friend. Carry on!',1,1,0,0,0,0,0,''), -- Forgotten Peasant
(9545,0,0,'I''m sure everything will work out, footman.',1,1,0,0,0,0,0,''), -- Forgotten Footman
(9542,0,0,'Orik, I need another Murkweed Elixir.',1,1,0,0,0,0,0,''); -- Orik

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (9544,9543,9541,9545,9542);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9544,0,0,9,12291,0,0,0,'','Show gossip option 0 if player has Quest 12291 "The Forgotten Tale"'),
(15,9543,0,0,9,12291,0,0,0,'','Show gossip option 0 if player has Quest 12291 "The Forgotten Tale"'),
(15,9541,0,0,9,12291,0,0,0,'','Show gossip option 0 if player has Quest 12291 "The Forgotten Tale"'),
(15,9545,0,0,9,12291,0,0,0,'','Show gossip option 0 if player has Quest 12291 "The Forgotten Tale"'),
(15,9542,0,0,9,12291,0,0,0,'','Show gossip option 0 if player has Quest 12291 "The Forgotten Tale"');

-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (27225);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27225,0,0, '%s attempts to run away in fear!',2,0,100,0,0,0, 'Forgotten Rifleman');

-- Add spell linking
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (48810,-48809,48143,-48143);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(48810,48809,0,'Cast Binding Life when cast Death''s Door'),
(-48809,-48143,0,'Removing Binding Life removes Forgotten Aura'),
(48143,48357,0,'Aura Wintergarde Invisibility Type B when aura Forgotten Aura'),
(-48143,-48357,0,'Removing Binding Forgotten Aura removes Aura Wintergarde Invisibility Type B');

-- Add See Wintergarde Invisibility Type B Spell to areas in Dragonblight
DELETE FROM `spell_area` WHERE `spell`=48358;
INSERT INTO `spell_area` (`spell`,`area`,`racemask`,`gender`,`autocast`) VALUES
(48358,4151,0,2,1),(48358,4152,0,2,1),(48358,4153,0,2,1),(48358,4154,0,2,1),
(48358,4155,0,2,1),(48358,4156,0,2,1),(48358,4157,0,2,1),(48358,4158,0,2,1),
(48358,4160,0,2,1),(48358,4161,0,2,1),(48358,4162,0,2,1),(48358,4163,0,2,1),
(48358,4164,0,2,1),(48358,4165,0,2,1),(48358,4166,0,2,1),(48358,4167,0,2,1),
(48358,4168,0,2,1),(48358,4169,0,2,1),(48358,4170,0,2,1),(48358,4171,0,2,1),
(48358,4172,0,2,1),(48358,4173,0,2,1),(48358,4174,0,2,1),(48358,4175,0,2,1),
(48358,4176,0,2,1),(48358,4177,0,2,1),(48358,4178,0,2,1),(48358,4179,0,2,1),
(48358,4180,0,2,1),(48358,4181,0,2,1),(48358,4182,0,2,1),(48358,4183,0,2,1),
(48358,4184,0,2,1),(48358,4185,0,2,1),(48358,4186,0,2,1),(48358,4187,0,2,1),
(48358,4188,0,2,1),(48358,4189,0,2,1),(48358,4190,0,2,1),(48358,4191,0,2,1),
(48358,4192,0,2,1),(48358,4193,0,2,1),(48358,4194,0,2,1),(48358,4195,0,2,1),
(48358,4198,0,2,1),(48358,4123,0,2,1),(48358,4124,0,2,1),(48358,4125,0,2,1),
(48358,4127,0,2,1),(48358,4130,0,2,1),(48358,4132,0,2,1),(48358,4133,0,2,1),
(48358,4134,0,2,1),(48358,4141,0,2,1),(48358,4143,0,2,1),(48358,4146,0,2,1),
(48358,4396,0,2,1),(48358,4414,0,2,1),(48358,4478,0,2,1);
-- Pathing for Huntress Kima Entry: 18416
SET @NPC := 65808;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2541.65,`position_y`=7323.38,`position_z`=6.99469 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2552.386,7337.846,7.422175,0,0,0,100,0),
(@PATH,2,-2547.391,7352.353,7.047175,0,0,0,100,0),
(@PATH,3,-2544.842,7358.259,7.047175,0,0,0,100,0),
(@PATH,4,-2562.099,7370.443,10.00821,0,0,0,100,0),
(@PATH,5,-2567.579,7369.372,10.27306,0,0,0,100,0),
(@PATH,6,-2566.174,7349.837,9.922175,0,0,0,100,0),
(@PATH,7,-2567.789,7341.593,9.872525,0,0,0,100,0),
(@PATH,8,-2577.995,7329.614,12.45477,0,0,0,100,0),
(@PATH,9,-2585.894,7320.886,13.95477,0,0,0,100,0),
(@PATH,10,-2605.105,7337.934,22.81847,0,0,0,100,0),
(@PATH,11,-2617.94,7333.2,24.0994,0,0,0,100,0),
(@PATH,12,-2619.5,7314.92,24.7855,0,0,0,100,0),
(@PATH,13,-2620.33,7306.87,22.2298,0,0,0,100,0),
(@PATH,14,-2622.22,7295.57,20.8845,0,0,0,100,0),
(@PATH,15,-2634.28,7283.98,22.6251,0,0,0,100,0),
(@PATH,16,-2645.37,7281.6,26.8452,0,0,0,100,0),
(@PATH,17,-2658.313,7277.178,31.34583,0,0,0,100,0),
(@PATH,18,-2656.347,7260.406,27.72301,0,0,0,100,0),
(@PATH,19,-2654.6,7223.491,21.68772,0,0,0,100,0),
(@PATH,20,-2649.212,7219.171,21.31272,0,0,0,100,0),
(@PATH,21,-2639.123,7217.482,21.18772,0,0,0,100,0),
(@PATH,22,-2604.8,7231.363,14.29138,0,0,0,100,0),
(@PATH,23,-2598.992,7233.284,13.06854,0,0,0,100,0),
(@PATH,24,-2589.095,7238.978,13.30505,0,0,0,100,0),
(@PATH,25,-2572.705,7258.197,14.18005,0,0,0,100,0),
(@PATH,26,-2553.04,7268.31,14.8673,0,0,0,100,0),
(@PATH,27,-2549.93,7292.21,13.5737,0,0,0,100,0),
(@PATH,28,-2543.94,7296.78,12.03,0,0,0,100,0),
(@PATH,29,-2528.52,7302.51,7.70912,0,0,0,100,0),
(@PATH,30,-2525.95,7310.64,6.42796,0,0,0,100,0),
(@PATH,31,-2541.65,7323.38,6.99469,0,0,0,100,0);

-- Pathing for Sifreldar Storm Maiden Entry: 29323
SET @NPC := 108767;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=6968.795,`position_y`=-1039.291,`position_z`=804.8483 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6939.001,-1039.968,810.5756,0,0,0,100,0),
(@PATH,2,6929.729,-1038.428,811.8507,0,0,0,100,0),
(@PATH,3,6921.97,-1037.384,813.6382,0,0,0,100,0),
(@PATH,4,6899.672,-1034.548,804.9947,0,0,0,100,0),
(@PATH,5,6887.367,-1040.131,803.7447,0,0,0,100,0),
(@PATH,6,6879.581,-1055.645,802.1197,0,0,0,100,0),
(@PATH,7,6881.092,-1067.551,802.7026,0,0,0,100,0),
(@PATH,8,6891.585,-1073.036,804.8276,0,0,0,100,0),
(@PATH,9,6904.774,-1076.266,808.0779,0,0,0,100,0),
(@PATH,10,6914.952,-1077.399,813.4417,0,0,0,100,0),
(@PATH,11,6931.681,-1078.594,810.6033,0,0,0,100,0),
(@PATH,12,6953.237,-1080.285,804.8708,0,0,0,100,0),
(@PATH,13,6963.347,-1080.42,804.8613,0,0,0,100,0),
(@PATH,14,6967.195,-1070.248,804.8578,0,0,0,100,0),
(@PATH,15,6967.463,-1053.253,804.8583,0,0,0,100,0),
(@PATH,16,6968.795,-1039.291,804.8483,0,0,0,100,0);

-- Pathing for Sifreldar Storm Maiden Entry: 29323
SET @NPC := 108780;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=6849.583,`position_y`=-1122.161,`position_z`=799.7357 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6825.424,-1137.925,795.3445,0,0,0,100,0),
(@PATH,2,6823.116,-1152.258,802.8445,0,0,0,100,0),
(@PATH,3,6804.956,-1162.505,810.9695,0,0,0,100,0),
(@PATH,4,6823.116,-1152.258,802.8445,0,0,0,100,0),
(@PATH,5,6825.424,-1137.925,795.3445,0,0,0,100,0),
(@PATH,6,6849.583,-1122.161,799.7357,0,0,0,100,0),
(@PATH,7,6859.529,-1108.683,802.3607,0,0,0,100,0),
(@PATH,8,6869.339,-1099.14,802.9526,0,0,0,100,0),
(@PATH,9,6888.484,-1113.396,802.4324,0,0,0,100,0),
(@PATH,10,6899.414,-1132.413,801.4324,0,0,0,100,0),
(@PATH,11,6888.484,-1113.396,802.4324,0,0,0,100,0),
(@PATH,12,6869.339,-1099.14,802.9526,0,0,0,100,0),
(@PATH,13,6859.529,-1108.683,802.3607,0,0,0,100,0),
(@PATH,14,6849.583,-1122.161,799.7357,0,0,0,100,0);

-- Pathing for Sifreldar Runekeeper Entry: 29331
SET @NPC := 108779;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=29331,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=6824.564,`position_y`=-1140.901,`position_z`=796.8445 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6819.699,-1158.881,805.9695,0,0,0,100,0),
(@PATH,2,6802.754,-1164.963,811.4695,0,0,0,100,0),
(@PATH,3,6819.699,-1158.881,805.9695,0,0,0,100,0),
(@PATH,4,6824.564,-1140.901,796.8445,0,0,0,100,0),
(@PATH,5,6793.759,-1107.705,773.118,0,0,0,100,0),
(@PATH,6,6824.564,-1140.901,796.8445,0,0,0,100,0);

-- Pathing for Dragonblight Mage Hunter Entry: 26280
SET @NPC := 101640;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3089.834,`position_y`=339.6018,`position_z`=71.35417 WHERE `guid`=@NPC;
DELETE FROM `creature` WHERE `guid`=111762;
DELETE FROM `creature_addon` WHERE `guid`=111762;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3101.223,333.8671,68.35417,0,0,0,100,0),
(@PATH,2,3089.834,339.6018,71.35417,0,0,0,100,0),
(@PATH,3,3074.878,340.6855,74.60417,0,0,0,100,0),
(@PATH,4,3059.406,343.7871,76.1516,0,0,0,100,0),
(@PATH,5,3048.349,347.3151,75.9016,0,0,0,100,0),
(@PATH,6,3059.406,343.7871,76.1516,0,0,0,100,0),
(@PATH,7,3074.878,340.6855,74.60417,0,0,0,100,0),
(@PATH,8,3089.834,339.6018,71.35417,0,0,0,100,0);

-- Pathing for Magnataur Patriarch Entry: 26295
SET @NPC := 113264;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3455.645,`position_y`=450.5741,`position_z`=55.77813 WHERE `guid`=@NPC;
DELETE FROM `creature` WHERE `guid`=131082;
DELETE FROM `creature_addon` WHERE `guid`=131082;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3461.032,458.0605,55.52813,0,0,0,100,0),
(@PATH,2,3459.928,468.002,57.48453,0,0,0,100,0),
(@PATH,3,3461.031,458.0605,55.52813,0,0,0,100,0),
(@PATH,4,3455.645,450.5741,55.77813,0,0,0,100,0),
(@PATH,5,3449.821,447.5877,56.65313,0,0,0,100,0),
(@PATH,6,3444.278,447.4793,57.77813,0,0,0,100,0),
(@PATH,7,3449.821,447.5877,56.65313,0,0,0,100,0),
(@PATH,8,3455.645,450.5741,55.77813,0,0,0,100,0);

-- Pathing for Magnataur Patriarch Entry: 26295
SET @NPC := 113259;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4335.951,`position_y`=-180.1597,`position_z`=80.65488 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4314.526,-194.2564,76.19753,0,0,0,100,0),
(@PATH,2,4310.347,-212.7189,75.1636,0,0,0,100,0),
(@PATH,3,4319.451,-236.1514,78.55873,0,0,0,100,0),
(@PATH,4,4310.347,-212.7189,75.1636,0,0,0,100,0),
(@PATH,5,4314.526,-194.2564,76.19753,0,0,0,100,0),
(@PATH,6,4335.951,-180.1597,80.65488,0,0,0,100,0);

-- Pathing for Anub'ar Cultist Entry: 26319
SET @NPC := 115435;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4063.753,`position_y`=2196.374,`position_z`=151.8217 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4054.478,2188.652,151.9467,0,0,0,100,0),
(@PATH,2,4039.943,2185.158,151.6967,0,0,0,100,0),
(@PATH,3,4054.478,2188.652,151.9467,0,0,0,100,0),
(@PATH,4,4063.753,2196.374,151.8217,0,0,0,100,0),
(@PATH,5,4066.901,2217.657,152.0965,0,0,0,100,0),
(@PATH,6,4060.092,2234.396,151.5342,0,0,0,100,0),
(@PATH,7,4066.901,2217.657,152.0965,0,0,0,100,0),
(@PATH,8,4063.753,2196.374,151.8217,0,0,0,100,0);

-- Pathing for Tempus Wyrm Entry: 32180
SET @NPC := 112957;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4165.901,`position_y`=-407.722,`position_z`=155.0924 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4161.29,-415.327,155.0924,0,0,0,100,0),
(@PATH,2,4157.975,-426.0655,155.0924,0,0,0,100,0),
(@PATH,3,4149.574,-441.3904,155.0924,0,0,0,100,0),
(@PATH,4,4138.248,-453.2982,155.0924,0,0,0,100,0),
(@PATH,5,4125.589,-462.9384,155.0924,0,0,0,100,0),
(@PATH,6,4108.414,-468.0847,155.0925,0,0,0,100,0),
(@PATH,7,4093.35,-469.384,155.0924,0,0,0,100,0),
(@PATH,8,4076.784,-468.8313,155.0924,0,0,0,100,0),
(@PATH,9,4060.223,-464.068,155.0924,0,0,0,100,0),
(@PATH,10,4047.407,-453.0881,155.0924,0,0,0,100,0),
(@PATH,11,4034.705,-434.9922,155.0924,0,0,0,100,0),
(@PATH,12,4028.23,-418.9452,155.0924,0,0,0,100,0),
(@PATH,13,4027.506,-402.0115,155.0925,0,0,0,100,0),
(@PATH,14,4032.801,-387.0902,155.0924,0,0,0,100,0),
(@PATH,15,4040.891,-372.8224,155.0924,0,0,0,100,0),
(@PATH,16,4051.813,-359.7613,155.0924,0,0,0,100,0),
(@PATH,17,4065.439,-349.6774,155.0924,0,0,0,100,0),
(@PATH,18,4080.03,-344.1142,155.0924,0,0,0,100,0),
(@PATH,19,4095.92,-340.0204,155.0924,0,0,0,100,0),
(@PATH,20,4118.203,-337.1474,155.0924,0,0,0,100,0),
(@PATH,21,4146.275,-349.1546,155.0924,0,0,0,100,0),
(@PATH,22,4157.594,-358.4243,155.0924,0,0,0,100,0),
(@PATH,23,4168.311,-372.3049,155.0925,0,0,0,100,0),
(@PATH,24,4170.974,-391.4471,155.0924,0,0,0,100,0),
(@PATH,25,4165.901,-407.722,155.0924,0,0,0,100,0);

-- Pathing for Infinite Eradicator Entry: 32185
SET @NPC := 113438;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4190.591,`position_y`=-350.934,`position_z`=146.6842 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4207.472,-375.1424,146.6842,0,0,0,100,0),
(@PATH,2,4214.245,-404.9322,146.6842,0,0,0,100,0),
(@PATH,3,4209.104,-434.3985,146.6843,0,0,0,100,0),
(@PATH,4,4196.61,-460.4471,146.6842,0,0,0,100,0),
(@PATH,5,4170.492,-477.5867,146.6842,0,0,0,100,0),
(@PATH,6,4139.513,-481.6089,146.6842,0,0,0,100,0),
(@PATH,7,4111.95,-465.5229,146.6842,0,0,0,100,0),
(@PATH,8,4091.976,-440.942,146.6842,0,0,0,100,0),
(@PATH,9,4095.912,-407.7865,146.6842,0,0,0,100,0),
(@PATH,10,4098.527,-380.9193,146.6842,0,0,0,100,0),
(@PATH,11,4091.802,-357.8462,146.6842,0,0,0,100,0),
(@PATH,12,4075.851,-333.6917,146.6842,0,0,0,100,0),
(@PATH,13,4055.005,-351.5806,146.6842,0,0,0,100,0),
(@PATH,14,4051.888,-372.2745,146.6842,0,0,0,100,0),
(@PATH,15,4056.19,-395.6217,146.6842,0,0,0,100,0),
(@PATH,16,4061.398,-417.6198,146.6842,0,0,0,100,0),
(@PATH,17,4062.656,-443.156,146.6842,0,0,0,100,0),
(@PATH,18,4085.277,-457.1473,146.6842,0,0,0,100,0),
(@PATH,19,4107.788,-455.9095,146.6842,0,0,0,100,0),
(@PATH,20,4117.597,-435.8233,146.6842,0,0,0,100,0),
(@PATH,21,4113.671,-413.1419,146.6842,0,0,0,100,0),
(@PATH,22,4105.402,-392.1701,146.6842,0,0,0,100,0),
(@PATH,23,4106.15,-363.3776,146.6842,0,0,0,100,0),
(@PATH,24,4131.285,-341.2223,146.6842,0,0,0,100,0),
(@PATH,25,4162.843,-332.6555,146.6842,0,0,0,100,0),
(@PATH,26,4190.591,-350.934,146.6842,0,0,0,100,0);

-- Pathing for Infinite Eradicator Entry: 32185
SET @NPC := 113436;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4181.173,`position_y`=-369.9417,`position_z`=146.6842 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4191.631,-389.251,146.6842,0,0,0,100,0),
(@PATH,2,4193.926,-411.0253,146.6842,0,0,0,100,0),
(@PATH,3,4187.936,-433.0087,146.6843,0,0,0,100,0),
(@PATH,4,4176.908,-452.5828,146.6842,0,0,0,100,0),
(@PATH,5,4156.808,-461.3777,146.6842,0,0,0,100,0),
(@PATH,6,4135.129,-460.8535,146.6842,0,0,0,100,0),
(@PATH,7,4119.67,-445.7643,146.6842,0,0,0,100,0),
(@PATH,8,4107.466,-426.4492,146.6842,0,0,0,100,0),
(@PATH,9,4117.114,-407.0864,146.6842,0,0,0,100,0),
(@PATH,10,4119.729,-381.6279,146.6842,0,0,0,100,0),
(@PATH,11,4112.734,-354.4067,146.6842,0,0,0,100,0),
(@PATH,12,4093.601,-322.0753,146.6842,0,0,0,100,0),
(@PATH,13,4052.978,-330.4644,146.6842,0,0,0,100,0),
(@PATH,14,4034.263,-360.4702,146.6842,0,0,0,100,0),
(@PATH,15,4035.172,-392.7458,146.6842,0,0,0,100,0),
(@PATH,16,4040.271,-419.5353,146.6842,0,0,0,100,0),
(@PATH,17,4041.469,-444.2213,146.6842,0,0,0,100,0),
(@PATH,18,4071.126,-472.951,146.6842,0,0,0,100,0),
(@PATH,19,4103.979,-476.7779,146.6842,0,0,0,100,0),
(@PATH,20,4129.341,-453.4892,146.6842,0,0,0,100,0),
(@PATH,21,4134.468,-417.3209,146.6842,0,0,0,100,0),
(@PATH,22,4126.431,-389.3766,146.6842,0,0,0,100,0),
(@PATH,23,4127.358,-363.8509,146.6842,0,0,0,100,0),
(@PATH,24,4147.167,-355.2841,146.6842,0,0,0,100,0),
(@PATH,25,4170.109,-352.5856,146.6842,0,0,0,100,0),
(@PATH,26,4181.173,-369.9417,146.6842,0,0,0,100,0);

-- Pathing for Laire Brewgold Entry: 32424
SET @NPC := 111730;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5661.111,`position_y`=726.7043,`position_z`=641.6643 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5656.774,721.9439,641.6959,0,0,0,100,0),
(@PATH,2,5653.122,721.5146,641.6296,0,0,0,100,0),
(@PATH,3,5649.408,722.6322,641.5455,0,0,0,100,0),
(@PATH,4,5645.466,725.3781,641.6395,0,0,0,100,0),
(@PATH,5,5639.154,728.4048,641.61,0,0,0,100,0),
(@PATH,6,5635.932,732.4274,641.7092,5000,0,0,100,0),
(@PATH,7,5639.154,728.4048,641.61,0,0,0,100,0),
(@PATH,8,5645.889,733.0624,641.682,0,0,0,100,0),
(@PATH,9,5655.076,730.4822,641.6819,0,0,0,100,0),
(@PATH,10,5661.111,726.7043,641.6643,0,0,0,100,0);

-- Fixup Injured Soldier Waypoint 01 Set as trigger
UPDATE `creature` SET `modelid`=0 WHERE `id` IN (27792);
UPDATE `creature_template` SET `InhabitType`=3,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (27792);

-- Pathing for Injured Soldier Waypoint 01 Entry: 27792
SET @NPC := 133440;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3687.688,`position_y`=-1131.765,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3694.245,-1132.365,97.6494,0,0,0,100,0),
(@PATH,2,3697.133,-1137.371,97.6494,0,0,0,100,0),
(@PATH,3,3707.083,-1140.569,98.09109,0,0,0,100,0),
(@PATH,4,3697.133,-1137.371,97.6494,0,0,0,100,0),
(@PATH,5,3694.245,-1132.365,97.6494,0,0,0,100,0),
(@PATH,6,3687.688,-1131.765,98.09109,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 01 Entry: 27792
SET @NPC := 133441;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3639.129,`position_y`=-1245.702,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3646.784,-1246.543,98.26001,0,0,0,100,0),
(@PATH,2,3647.515,-1248.791,98.26001,0,0,0,100,0),
(@PATH,3,3655.563,-1252.757,98.09111,0,0,0,100,0),
(@PATH,4,3647.515,-1248.791,98.26001,0,0,0,100,0),
(@PATH,5,3646.784,-1246.543,98.26001,0,0,0,100,0),
(@PATH,6,3639.129,-1245.702,98.09111,0,0,0,100,0),
(@PATH,7,3634.578,-1242.256,98.09111,0,0,0,100,0),
(@PATH,8,3639.129,-1245.702,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 01 Entry: 27792
SET @NPC := 133439;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3656.245,`position_y`=-1252.887,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3634.244,-1242.946,98.09111,0,0,0,100,0),
(@PATH,2,3656.245,-1252.887,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 01 Entry: 27792
SET @NPC := 133438;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3706.577,`position_y`=-1140.745,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3688.351,-1132.398,98.09109,0,0,0,100,0),
(@PATH,2,3706.577,-1140.745,98.09109,0,0,0,100,0);

DELETE FROM `creature` WHERE `guid`=109148;
DELETE FROM `creature_addon` WHERE `guid`=109148;

-- Fixup Injured Soldier Waypoint 02 Set as trigger
UPDATE `creature` SET `modelid`=0 WHERE `id` IN (27793);
UPDATE `creature_template` SET `InhabitType`=3,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (27793);

-- Pathing for Injured Soldier Waypoint 02 Entry: 27793
SET @NPC := 133449;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3662.666,`position_y`=-1239.828,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3641.625,-1230.667,98.09111,0,0,0,100,0),
(@PATH,2,3662.666,-1239.828,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 02 Entry: 27793
SET @NPC := 133450;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3680.119,`position_y`=-1145.329,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3688.248,-1146.153,97.6494,0,0,0,100,0),
(@PATH,2,3691.404,-1149.929,97.6494,0,0,0,100,0),
(@PATH,3,3694.596,-1152.75,97.6494,0,0,0,100,0),
(@PATH,4,3700.401,-1152.819,98.09109,0,0,0,100,0),
(@PATH,5,3701.976,-1154.921,98.09109,0,0,0,100,0),
(@PATH,6,3700.401,-1152.819,98.09109,0,0,0,100,0),
(@PATH,7,3694.596,-1152.75,97.6494,0,0,0,100,0),
(@PATH,8,3691.404,-1149.929,97.6494,0,0,0,100,0),
(@PATH,9,3688.248,-1146.153,97.6494,0,0,0,100,0),
(@PATH,10,3680.119,-1145.329,98.09109,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 02 Entry: 27793
SET @NPC := 109632;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27793,`spawndist`=0,`MovementType`=2,`position_x`=3681.213,`position_y`=-1145.856,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3699.753,-1153.359,98.09109,0,0,0,100,0),
(@PATH,2,3681.213,-1145.856,98.09109,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 02 Entry: 27793
SET @NPC := 109633;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27793,`spawndist`=0,`MovementType`=2,`position_x`=3640.924,`position_y`=-1231.039,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3649.915,-1232.593,98.26001,0,0,0,100,0),
(@PATH,2,3656.266,-1238.324,98.09111,0,0,0,100,0),
(@PATH,3,3660.733,-1237.718,98.09111,0,0,0,100,0),
(@PATH,4,3656.266,-1238.324,98.09111,0,0,0,100,0),
(@PATH,5,3649.915,-1232.593,98.26001,0,0,0,100,0),
(@PATH,6,3640.924,-1231.039,98.09111,0,0,0,100,0);

-- Fixup Injured Soldier Waypoint 03 Set as trigger
UPDATE `creature` SET `modelid`=0 WHERE `id` IN (27794);
UPDATE `creature_template` SET `InhabitType`=3,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (27794);

-- Pathing for Injured Soldier Waypoint 03 Entry: 27794
SET @NPC := 133451;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3661.358,`position_y`=-1221.376,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3665.178,-1225.378,98.09111,0,0,0,100,0),
(@PATH,2,3661.358,-1221.376,98.09111,0,0,0,100,0),
(@PATH,3,3654.384,-1216.99,98.09111,0,0,0,100,0),
(@PATH,4,3647.583,-1216.188,98.09111,0,0,0,100,0),
(@PATH,5,3654.384,-1216.99,98.09111,0,0,0,100,0),
(@PATH,6,3661.358,-1221.376,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 03 Entry: 27794
SET @NPC := 133452;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3668.855,`position_y`=-1225.114,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3647.801,-1216.172,98.09111,0,0,0,100,0),
(@PATH,2,3668.855,-1225.114,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 03 Entry: 27794
SET @NPC := 133453;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3675.706,`position_y`=-1162.181,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3693.215,-1169.852,98.09109,0,0,0,100,0),
(@PATH,2,3675.706,-1162.181,98.09109,0,0,0,100,0);

-- Pathing for Injured Soldier Waypoint 03 Entry: 27794
SET @NPC := 133454;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3685.215,`position_y`=-1162.893,`position_z`=97.6494 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3685.235,-1167.974,98.09109,0,0,0,100,0),
(@PATH,2,3694.442,-1170.397,98.09109,0,0,0,100,0),
(@PATH,3,3685.235,-1167.974,98.09109,0,0,0,100,0),
(@PATH,4,3685.316,-1162.941,97.6494,0,0,0,100,0),
(@PATH,5,3675.632,-1164.499,98.09109,0,0,0,100,0),
(@PATH,6,3674.321,-1160.317,98.09109,0,0,0,100,0),
(@PATH,7,3675.632,-1164.499,98.09109,0,0,0,100,0),
(@PATH,8,3685.215,-1162.893,97.6494,0,0,0,100,0);

-- Fixup Injured Soldier Summon Point Set as trigger
UPDATE `creature` SET `modelid`=0 WHERE `id` IN (27795);
UPDATE `creature_template` SET `InhabitType`=3,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (27795);

-- Pathing for Injured Soldier Summon Point Entry: 27795
SET @NPC := 109737;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3635.371,`position_y`=-1260.123,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3639.637,-1256.701,98.09111,0,0,0,100,0),
(@PATH,2,3641.038,-1263.186,98.09111,0,0,0,100,0),
(@PATH,3,3645.456,-1260.151,98.09111,0,0,0,100,0),
(@PATH,4,3646.584,-1265.838,98.09111,0,0,0,100,0),
(@PATH,5,3649.356,-1262.853,98.09111,0,0,0,100,0),
(@PATH,6,3650.487,-1267.485,98.09111,0,0,0,100,0),
(@PATH,7,3649.356,-1262.853,98.09111,0,0,0,100,0),
(@PATH,8,3646.584,-1265.838,98.09111,0,0,0,100,0),
(@PATH,9,3645.456,-1260.151,98.09111,0,0,0,100,0),
(@PATH,10,3641.148,-1263.11,98.09111,0,0,0,100,0),
(@PATH,11,3639.637,-1256.701,98.09111,0,0,0,100,0),
(@PATH,12,3635.371,-1260.123,98.09111,0,0,0,100,0),
(@PATH,13,3634.036,-1255.147,98.09111,0,0,0,100,0),
(@PATH,14,3628.426,-1256.89,98.09111,0,0,0,100,0),
(@PATH,15,3634.036,-1255.147,98.09111,0,0,0,100,0),
(@PATH,16,3635.371,-1260.123,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Summon Point Entry: 27795
SET @NPC := 133459;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3639.455,`position_y`=-1259.333,`position_z`=98.09111 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3635.177,-1258.972,98.09111,0,0,0,100,0),
(@PATH,2,3628.478,-1255.191,98.09111,0,0,0,100,0),
(@PATH,3,3635.177,-1258.972,98.09111,0,0,0,100,0),
(@PATH,4,3639.455,-1259.333,98.09111,0,0,0,100,0),
(@PATH,5,3649.663,-1265.676,98.09111,0,0,0,100,0),
(@PATH,6,3639.455,-1259.333,98.09111,0,0,0,100,0);

-- Pathing for Injured Soldier Summon Point Entry: 27795
SET @NPC := 133458;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3690.377,`position_y`=-1120.719,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3714.914,-1132.499,98.09109,0,0,0,100,0),
(@PATH,2,3690.377,-1120.719,98.09109,0,0,0,100,0);

-- Pathing for Injured Soldier Summon Point Entry: 27795
SET @NPC := 133456;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3704.953,`position_y`=-1125.08,`position_z`=98.09109 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3695.954,-1125.092,98.09109,0,0,0,100,0),
(@PATH,2,3690.822,-1117.956,98.09109,0,0,0,100,0),
(@PATH,3,3695.954,-1125.092,98.09109,0,0,0,100,0),
(@PATH,4,3704.953,-1125.08,98.09109,0,0,0,100,0),
(@PATH,5,3711.798,-1131.639,98.09109,0,0,0,100,0),
(@PATH,6,3704.953,-1125.08,98.09109,0,0,0,100,0);

-- Pathing for Tattered Abomination Entry: 27797
SET @NPC := 133490;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3596.785,`position_y`=-1234.963,`position_z`=89.07387 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3611.023,-1205.49,89.12477,0,0,0,100,0),
(@PATH,2,3596.785,-1234.963,89.07387,0,0,0,100,0);
-- 0xF130006C9505F3CC .go 3611.023 -1205.49 89.12477

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101925;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3451.899,`position_y`=3774.349,`position_z`=60.27904 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3448.265,3763.589,58.0846,0,0,0,100,0),
(@PATH,2,3436.357,3758.859,60.27904,0,0,0,100,0),
(@PATH,3,3427.118,3761.404,60.27904,0,0,0,100,0),
(@PATH,4,3424.513,3775.218,58.22348,0,0,0,100,0),
(@PATH,5,3436.752,3781.46,63.00128,0,0,0,100,0),
(@PATH,6,3451.899,3774.349,60.27904,0,0,0,100,0);

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101886;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3470.062,`position_y`=3504.777,`position_z`=60.02877 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3489.508,3468.938,55.75098,0,0,0,100,0),
(@PATH,2,3510.609,3460.939,68.02877,0,0,0,100,0),
(@PATH,3,3538.059,3469.108,64.88989,0,0,0,100,0),
(@PATH,4,3555.875,3503.135,68.02877,0,0,0,100,0),
(@PATH,5,3568.626,3532.901,68.02877,0,0,0,100,0),
(@PATH,6,3563.242,3557.899,68.02877,0,0,0,100,0),
(@PATH,7,3527.993,3578.705,68.02877,0,0,0,100,0),
(@PATH,8,3490.05,3549.902,68.02877,0,0,0,100,0),
(@PATH,9,3470.062,3504.777,60.02877,0,0,0,100,0);

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101817;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3499.697,`position_y`=3508.944,`position_z`=62.80863 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3496.299,3531.275,62.80864,0,0,0,100,0),
(@PATH,2,3502.673,3553.807,62.08641,0,0,0,100,0),
(@PATH,3,3522.777,3562.911,64.72532,0,0,0,100,0),
(@PATH,4,3549.392,3558.91,58.39198,0,0,0,100,0),
(@PATH,5,3561,3538.082,64.39198,0,0,0,100,0),
(@PATH,6,3554.785,3496.833,60.16974,0,0,0,100,0),
(@PATH,7,3518.356,3475.909,62.80864,0,0,0,100,0),
(@PATH,8,3499.697,3508.944,62.80863,0,0,0,100,0);

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101887;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3487.025,`position_y`=3801.495,`position_z`=64.28619 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3508.315,3787.482,64.28619,0,0,0,100,0),
(@PATH,2,3525.658,3795.386,64.28619,0,0,0,100,0),
(@PATH,3,3515.372,3818.548,64.28619,0,0,0,100,0),
(@PATH,4,3510.063,3829.02,64.28619,0,0,0,100,0),
(@PATH,5,3500.235,3840.592,64.28619,0,0,0,100,0),
(@PATH,6,3487.377,3829.144,64.28619,0,0,0,100,0),
(@PATH,7,3487.025,3801.495,64.28619,0,0,0,100,0);

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101840;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3525.344,`position_y`=3832.733,`position_z`=69.65799 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3531.916,3820.634,72.24132,0,0,0,100,0),
(@PATH,2,3526.877,3800.81,72.24132,0,0,0,100,0),
(@PATH,3,3515.555,3788.204,72.24132,0,0,0,100,0),
(@PATH,4,3500.742,3787.609,72.24132,0,0,0,100,0),
(@PATH,5,3491.085,3798.095,70.21355,0,0,0,100,0),
(@PATH,6,3493.959,3822.765,75.10243,0,0,0,100,0),
(@PATH,7,3505.338,3836.017,72.24132,0,0,0,100,0),
(@PATH,8,3525.344,3832.733,69.65799,0,0,0,100,0);

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101929;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3512.759,`position_y`=3582.701,`position_z`=53.18045 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3535.782,3562.454,57.09711,0,0,0,100,0),
(@PATH,2,3546.515,3533.243,53.18045,0,0,0,100,0),
(@PATH,3,3551.337,3503.115,53.18045,0,0,0,100,0),
(@PATH,4,3538.455,3471.695,53.18045,0,0,0,100,0),
(@PATH,5,3508.635,3459.773,53.18045,0,0,0,100,0),
(@PATH,6,3482.672,3471.235,53.18045,0,0,0,100,0),
(@PATH,7,3466.057,3507.579,53.18045,0,0,0,100,0),
(@PATH,8,3464.838,3544.961,53.18045,0,0,0,100,0),
(@PATH,9,3486.096,3576.008,53.18045,0,0,0,100,0),
(@PATH,10,3512.759,3582.701,53.18045,0,0,0,100,0);

-- Pathing for Carrion Condor Entry: 26174
SET @NPC := 101855;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3561,`position_y`=3538.082,`position_z`=64.39198 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3554.785,3496.833,60.16974,0,0,0,100,0),
(@PATH,2,3518.356,3475.909,62.80864,0,0,0,100,0),
(@PATH,3,3499.697,3508.944,62.80863,0,0,0,100,0),
(@PATH,4,3496.299,3531.275,62.80864,0,0,0,100,0),
(@PATH,5,3502.673,3553.807,62.08641,0,0,0,100,0),
(@PATH,6,3522.777,3562.911,64.72532,0,0,0,100,0),
(@PATH,7,3549.392,3558.91,58.39198,0,0,0,100,0),
(@PATH,8,3561,3538.082,64.39198,0,0,0,100,0);

-- Pathing for Grove Walker Entry: 31228
SET @NPC := 120259;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5767.086,`position_y`=554.6254,`position_z`=159.9334 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5788.306,541.5344,167.8084,0,0,0,100,0),
(@PATH,2,5811.419,543.5833,174.3569,0,0,0,100,0),
(@PATH,3,5820.507,571.3627,171.8876,0,0,0,100,0),
(@PATH,4,5808.849,592.7281,167.2626,0,0,0,100,0),
(@PATH,5,5794.39,615.308,162.3778,0,0,0,100,0),
(@PATH,6,5782.429,599.8776,160.4631,0,0,0,100,0),
(@PATH,7,5772.276,576.5581,158.2131,0,0,0,100,0),
(@PATH,8,5767.086,554.6254,159.9334,0,0,0,100,0);

-- Pathing for Ancient Watcher Entry: 31229
SET @NPC := 120410;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5790.005,`position_y`=419.9462,`position_z`=177.7312 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5825.215,357.9948,189.9353,0,0,0,100,0),
(@PATH,2,5790.005,419.9462,177.7312,0,0,0,100,0),
(@PATH,3,5799.53,427.6059,180.2312,0,0,0,100,0),
(@PATH,4,5802.141,444.2674,181.5455,0,0,0,100,0),
(@PATH,5,5806.649,507.7448,178.8326,0,0,0,100,0),
(@PATH,6,5814.846,560.8038,170.8569,0,0,0,100,0),
(@PATH,7,5781.772,575.9896,160.5881,0,0,0,100,0),
(@PATH,8,5786.224,593.0746,162.2131,0,0,0,100,0),
(@PATH,9,5816.907,596.3663,169.6376,0,0,0,100,0),
(@PATH,10,5786.224,593.0746,162.2131,0,0,0,100,0),
(@PATH,11,5781.772,575.9896,160.5881,0,0,0,100,0),
(@PATH,12,5814.846,560.8038,170.8569,0,0,0,100,0),
(@PATH,13,5806.649,507.7448,178.8326,0,0,0,100,0),
(@PATH,14,5802.141,444.2674,181.5455,0,0,0,100,0),
(@PATH,15,5799.53,427.6059,180.2312,0,0,0,100,0),
(@PATH,16,5790.005,419.9462,177.7312,0,0,0,100,0);

-- Pathing for Northrend Daily Dungeon Image Bunny Entry: 32265
SET @NPC := 97334;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5704.948,`position_y`=584.5382,`position_z`=653.6223 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5703.734,582.9427,653.631,0,0,0,100,0),
(@PATH,2,5701.61,583.4393,653.6489,0,0,0,100,0),
(@PATH,3,5700.888,585.4722,653.6498,0,0,0,100,0),
(@PATH,4,5702.143,586.9913,653.6417,0,0,0,100,0),
(@PATH,5,5704.137,586.5278,653.6327,0,0,0,100,0),
(@PATH,6,5704.948,584.5382,653.6223,0,0,0,100,0);
-- 0xF130007E090099EB .go 5703.734 582.9427 653.631
-- Fixup Northrend Daily Dungeon Image Bunny Set as trigger
UPDATE `creature` SET `modelid`=0 WHERE `id` IN (32265);
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (32265);

-- Pathing for Vern Entry: 32435 (RARE)
SET @NPC := 112862;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5856.26,`position_y`=589.199,`position_z`=608.38 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5849.843,581.8642,610.2223,0,0,0,100,0),
(@PATH,2,5856.26,589.199,608.38,0,0,0,100,0),
(@PATH,3,5848.6,611.398,605.308,0,0,0,100,0),
(@PATH,4,5861.108,630.3746,601.8403,0,0,0,100,0),
(@PATH,5,5848.6,611.398,605.308,0,0,0,100,0),
(@PATH,6,5856.26,589.199,608.38,0,0,0,100,0);

-- Pathing for Underbelly Croc Entry: 32441
SET @NPC := 113419;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5894.618,`position_y`=654.9387,`position_z`=615.2944 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5881.377,637.9071,615.1934,0,0,0,100,0),
(@PATH,2,5894.618,654.9387,615.2944,0,0,0,100,0);

-- Pathing for Boulderfist Ogre Entry: 2562
SET @NPC := 11694;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1164.584,`position_y`=-2115.625,`position_z`=68.11761 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1156.91,-2120.744,65.86761,0,0,0,100,0),
(@PATH,2,-1151.243,-2126.754,66.36761,0,0,0,100,0),
(@PATH,3,-1147.579,-2132.875,68.11761,0,0,0,100,0),
(@PATH,4,-1154.89,-2124.491,66.11761,0,0,0,100,0),
(@PATH,5,-1161.565,-2118.392,66.36761,0,0,0,100,0),
(@PATH,6,-1170.198,-2117.061,70.99816,0,0,0,100,0),
(@PATH,7,-1164.584,-2115.625,68.11761,0,0,0,100,0);

-- Pathing for Boulderfist Brute Entry: 2566
SET @NPC := 11644;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2039.689,`position_y`=-2809.004,`position_z`=73.84588 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2033.668,-2815.25,74.41247,0,0,0,100,0),
(@PATH,2,-2028.261,-2821.853,74.32455,0,0,0,100,0),
(@PATH,3,-2020.386,-2829.258,74.87946,0,0,0,100,0),
(@PATH,4,-2028.261,-2821.853,74.32455,0,0,0,100,0),
(@PATH,5,-2033.668,-2815.25,74.41247,0,0,0,100,0),
(@PATH,6,-2039.689,-2809.004,73.84588,0,0,0,100,0),
(@PATH,7,-2044.486,-2802.611,72.68762,0,0,0,100,0),
(@PATH,8,-2039.689,-2809.004,73.84588,0,0,0,100,0);

-- Pathing for Boulderfist Mauler Entry: 2569
SET @NPC := 14642;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1642.37,`position_y`=-1744.458,`position_z`=67.69829 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1627.052,-1744.242,67.56577,0,0,0,100,0),
(@PATH,2,-1616.662,-1744.105,67.56577,0,0,0,100,0),
(@PATH,3,-1608.299,-1743.981,67.44077,0,0,0,100,0),
(@PATH,4,-1616.662,-1744.105,67.56577,0,0,0,100,0),
(@PATH,5,-1627.052,-1744.242,67.56577,0,0,0,100,0),
(@PATH,6,-1642.37,-1744.458,67.69829,0,0,0,100,0),
(@PATH,7,-1664.298,-1744.454,67.44829,0,0,0,100,0),
(@PATH,8,-1676.667,-1743.748,65.34362,0,0,0,100,0),
(@PATH,9,-1691.087,-1741.401,59.84362,0,0,0,100,0),
(@PATH,10,-1706.169,-1741.839,54.79599,0,0,0,100,0),
(@PATH,11,-1718.415,-1734.593,52.29599,0,0,0,100,0),
(@PATH,12,-1706.169,-1741.839,54.79599,0,0,0,100,0),
(@PATH,13,-1691.087,-1741.401,59.84362,0,0,0,100,0),
(@PATH,14,-1676.667,-1743.748,65.34362,0,0,0,100,0),
(@PATH,15,-1664.298,-1744.454,67.44829,0,0,0,100,0),
(@PATH,16,-1642.37,-1744.458,67.69829,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 11725;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1000.796,`position_y`=-2923.265,`position_z`=62.16119 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-974.3457,-2905.903,65.16662,0,0,0,100,0),
(@PATH,2,-971.5711,-2893.533,64.60294,0,0,0,100,0),
(@PATH,3,-974.319,-2879.502,64.35294,0,0,0,100,0),
(@PATH,4,-971.5711,-2893.533,64.60294,0,0,0,100,0),
(@PATH,5,-974.3457,-2905.903,65.16662,0,0,0,100,0),
(@PATH,6,-1000.796,-2923.265,62.16119,0,0,0,100,0),
(@PATH,7,-1017.62,-2925.441,56.91119,0,0,0,100,0),
(@PATH,8,-1034.279,-2926.776,52.40142,0,0,0,100,0),
(@PATH,9,-1040.623,-2924.862,49.40142,0,0,0,100,0),
(@PATH,10,-1034.279,-2926.776,52.40142,0,0,0,100,0),
(@PATH,11,-1017.62,-2925.441,56.91119,0,0,0,100,0),
(@PATH,12,-1000.796,-2923.265,62.16119,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 12050;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1110.044,`position_y`=-2911.982,`position_z`=41.67108 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1111.091,-2921.517,42.92108,0,0,0,100,0),
(@PATH,2,-1107.97,-2932.903,44.67108,0,0,0,100,0),
(@PATH,3,-1099.177,-2943.237,45.82201,0,0,0,100,0),
(@PATH,4,-1084.851,-2946.95,46.07201,0,0,0,100,0),
(@PATH,5,-1072.699,-2945.52,46.19701,0,0,0,100,0),
(@PATH,6,-1062.084,-2941.41,46.44701,0,0,0,100,0),
(@PATH,7,-1058.887,-2930.384,42.52642,0,0,0,100,0),
(@PATH,8,-1057.631,-2918.993,42.52642,0,0,0,100,0),
(@PATH,9,-1058.887,-2930.384,42.52642,0,0,0,100,0),
(@PATH,10,-1062.084,-2941.41,46.44701,0,0,0,100,0),
(@PATH,11,-1072.699,-2945.52,46.19701,0,0,0,100,0),
(@PATH,12,-1084.851,-2946.95,46.07201,0,0,0,100,0),
(@PATH,13,-1099.177,-2943.237,45.82201,0,0,0,100,0),
(@PATH,14,-1107.97,-2932.903,44.67108,0,0,0,100,0),
(@PATH,15,-1111.091,-2921.517,42.92108,0,0,0,100,0),
(@PATH,16,-1110.044,-2911.982,41.67108,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 12045;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1101.002,`position_y`=-2927.062,`position_z`=42.29608 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1095.116,-2939.863,44.40173,0,0,0,100,0),
(@PATH,2,-1070.158,-2937.697,43.07201,0,0,0,100,0),
(@PATH,3,-1067.749,-2926.622,42.23072,0,0,0,100,0),
(@PATH,4,-1070.943,-2917.517,42.23072,0,0,0,100,0),
(@PATH,5,-1067.804,-2909.401,42.23072,0,0,0,100,0),
(@PATH,6,-1061.041,-2901.267,42.15142,0,0,0,100,0),
(@PATH,7,-1067.804,-2909.401,42.23072,0,0,0,100,0),
(@PATH,8,-1070.943,-2917.517,42.23072,0,0,0,100,0),
(@PATH,9,-1067.749,-2926.622,42.23072,0,0,0,100,0),
(@PATH,10,-1070.158,-2937.697,43.07201,0,0,0,100,0),
(@PATH,11,-1095.116,-2939.863,44.40173,0,0,0,100,0),
(@PATH,12,-1101.002,-2927.062,42.29608,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 12055;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1113.975,`position_y`=-2819.176,`position_z`=41.96498 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1103.284,-2808.888,41.96498,0,0,0,100,0),
(@PATH,2,-1113.975,-2819.176,41.96498,0,0,0,100,0),
(@PATH,3,-1125.615,-2831.386,42.21498,0,0,0,100,0),
(@PATH,4,-1139.012,-2847.163,42.1853,0,0,0,100,0),
(@PATH,5,-1148.732,-2862.114,43.1853,0,0,0,100,0),
(@PATH,6,-1144.571,-2874.899,43.38471,0,0,0,100,0),
(@PATH,7,-1148.732,-2862.114,43.1853,0,0,0,100,0),
(@PATH,8,-1139.012,-2847.163,42.1853,0,0,0,100,0),
(@PATH,9,-1125.615,-2831.386,42.21498,0,0,0,100,0),
(@PATH,10,-1113.975,-2819.176,41.96498,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 11923;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1036.477,`position_y`=-2794.085,`position_z`=48.5377 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1048.086,-2781.703,44.5377,0,0,0,100,0),
(@PATH,2,-1036.477,-2794.085,48.5377,0,0,0,100,0),
(@PATH,3,-1028.531,-2805.323,50.21591,0,0,0,100,0),
(@PATH,4,-1021.207,-2818.615,49.09091,0,0,0,100,0),
(@PATH,5,-1013.592,-2827.916,50.59091,0,0,0,100,0),
(@PATH,6,-1003.065,-2836.799,53.32201,0,0,0,100,0),
(@PATH,7,-1013.592,-2827.916,50.59091,0,0,0,100,0),
(@PATH,8,-1021.207,-2818.615,49.09091,0,0,0,100,0),
(@PATH,9,-1028.531,-2805.323,50.21591,0,0,0,100,0),
(@PATH,10,-1036.477,-2794.085,48.5377,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 12048;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1046.511,`position_y`=-2789.321,`position_z`=46.4127 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1034.046,-2803.35,49.23941,0,0,0,100,0),
(@PATH,2,-1023.659,-2814.771,49.34091,0,0,0,100,0),
(@PATH,3,-1020.099,-2823.633,48.84091,0,0,0,100,0),
(@PATH,4,-1023.659,-2814.771,49.34091,0,0,0,100,0),
(@PATH,5,-1034.046,-2803.35,49.23941,0,0,0,100,0),
(@PATH,6,-1046.511,-2789.321,46.4127,0,0,0,100,0),
(@PATH,7,-1058.17,-2780.757,42.1627,0,0,0,100,0),
(@PATH,8,-1066.657,-2782.932,41.6627,0,0,0,100,0),
(@PATH,9,-1074.936,-2784.309,41.6549,0,0,0,100,0),
(@PATH,10,-1066.657,-2782.932,41.6627,0,0,0,100,0),
(@PATH,11,-1058.17,-2780.757,42.1627,0,0,0,100,0),
(@PATH,12,-1046.511,-2789.321,46.4127,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 11727;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1037.064,`position_y`=-2861.966,`position_z`=45.77301 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1027.88,-2866.237,50.07201,0,0,0,100,0),
(@PATH,2,-1018.745,-2873.388,56.6381,0,0,0,100,0),
(@PATH,3,-1015.589,-2882.479,62.2631,0,0,0,100,0),
(@PATH,4,-1018.745,-2873.388,56.6381,0,0,0,100,0),
(@PATH,5,-1027.88,-2866.237,50.07201,0,0,0,100,0),
(@PATH,6,-1037.064,-2861.966,45.77301,0,0,0,100,0),
(@PATH,7,-1050.203,-2856.651,42.64801,0,0,0,100,0),
(@PATH,8,-1037.064,-2861.966,45.77301,0,0,0,100,0);

-- Pathing for Dabyrie Militia Entry: 2581
SET @NPC := 11913;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1005.879,`position_y`=-2919.226,`position_z`=62.16119 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1014.416,-2918.99,59.66119,0,0,0,100,0),
(@PATH,2,-1027.294,-2926.176,54.03619,0,0,0,100,0),
(@PATH,3,-1036.633,-2924.023,50.40142,0,0,0,100,0),
(@PATH,4,-1027.294,-2926.176,54.03619,0,0,0,100,0),
(@PATH,5,-1014.416,-2918.99,59.66119,0,0,0,100,0),
(@PATH,6,-1005.879,-2919.226,62.16119,0,0,0,100,0),
(@PATH,7,-992.6738,-2920.178,63.91662,0,0,0,100,0),
(@PATH,8,-978.0767,-2906.091,65.04162,0,0,0,100,0),
(@PATH,9,-973.4244,-2891.938,64.47794,0,0,0,100,0),
(@PATH,10,-980.814,-2881.132,62.97793,0,0,0,100,0),
(@PATH,11,-973.4244,-2891.938,64.47794,0,0,0,100,0),
(@PATH,12,-978.0767,-2906.091,65.04162,0,0,0,100,0),
(@PATH,13,-992.6738,-2920.178,63.91662,0,0,0,100,0),
(@PATH,14,-1005.879,-2919.226,62.16119,0,0,0,100,0);

-- Pathing for Stromgarde Defender Entry: 2584
SET @NPC := 14606;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1633.213,`position_y`=-1708.567,`position_z`=68.46696 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1630.359,-1698.095,67.98904,0,0,0,100,0),
(@PATH,2,-1625.632,-1692.093,67.36404,0,0,0,100,0),
(@PATH,3,-1620.249,-1685.949,66.98904,0,0,0,100,0),
(@PATH,4,-1614.795,-1681.662,66.61404,0,0,0,100,0),
(@PATH,5,-1607.163,-1682.663,66.23904,0,0,0,100,0),
(@PATH,6,-1600.319,-1683.514,66.11404,0,0,0,100,0),
(@PATH,7,-1591.644,-1685.499,66.56465,0,0,0,100,0),
(@PATH,8,-1586.838,-1688.491,66.31465,0,0,0,100,0),
(@PATH,9,-1584.61,-1705.238,66.83134,0,0,0,100,0),
(@PATH,10,-1584.281,-1713.021,67.08134,0,0,0,100,0),
(@PATH,11,-1584.61,-1705.238,66.83134,0,0,0,100,0),
(@PATH,12,-1586.838,-1688.491,66.31465,0,0,0,100,0),
(@PATH,13,-1591.644,-1685.499,66.56465,0,0,0,100,0),
(@PATH,14,-1600.319,-1683.514,66.11404,0,0,0,100,0),
(@PATH,15,-1607.163,-1682.663,66.23904,0,0,0,100,0),
(@PATH,16,-1614.795,-1681.662,66.61404,0,0,0,100,0),
(@PATH,17,-1620.249,-1685.949,66.98904,0,0,0,100,0),
(@PATH,18,-1625.632,-1692.093,67.36404,0,0,0,100,0),
(@PATH,19,-1630.359,-1698.095,67.98904,0,0,0,100,0),
(@PATH,20,-1633.213,-1708.567,68.46696,0,0,0,100,0);

-- Pathing for Stromgarde Defender Entry: 2584
SET @NPC := 14615;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1519.433,`position_y`=-1708.847,`position_z`=67.71825 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1531.711,-1721.789,66.21825,0,0,0,100,0),
(@PATH,2,-1545.423,-1709.557,66.34925,0,0,0,100,0),
(@PATH,3,-1552.171,-1704.832,66.22425,0,0,0,100,0),
(@PATH,4,-1565.341,-1699.044,66.47332,0,0,0,100,0),
(@PATH,5,-1572.903,-1693.114,66.06465,0,0,0,100,0),
(@PATH,6,-1569.563,-1686.402,66.56465,0,0,0,100,0),
(@PATH,7,-1559.232,-1677.78,67.59832,0,0,0,100,0),
(@PATH,8,-1555.363,-1669.783,68.71778,0,0,0,100,0),
(@PATH,9,-1559.232,-1677.78,67.59832,0,0,0,100,0),
(@PATH,10,-1569.563,-1686.402,66.56465,0,0,0,100,0),
(@PATH,11,-1572.903,-1693.114,66.06465,0,0,0,100,0),
(@PATH,12,-1565.341,-1699.044,66.47332,0,0,0,100,0),
(@PATH,13,-1552.171,-1704.832,66.22425,0,0,0,100,0),
(@PATH,14,-1545.423,-1709.557,66.34925,0,0,0,100,0),
(@PATH,15,-1531.711,-1721.789,66.21825,0,0,0,100,0),
(@PATH,16,-1519.433,-1708.847,67.71825,0,0,0,100,0),
(@PATH,17,-1514.467,-1705.977,67.84325,0,0,0,100,0),
(@PATH,18,-1519.433,-1708.847,67.71825,0,0,0,100,0);

-- Pathing for Stromgarde Defender Entry: 2584
SET @NPC := 12007;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1544.397,`position_y`=-1859.491,`position_z`=67.10917 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1537.813,-1856.054,67.48417,0,0,0,100,0),
(@PATH,2,-1529.115,-1852.296,67.62733,0,0,0,100,0),
(@PATH,3,-1528.478,-1844.241,67.87733,0,0,0,100,0),
(@PATH,4,-1528.312,-1836.913,68.00233,0,0,0,100,0),
(@PATH,5,-1528.36,-1830.106,68.05283,0,0,0,100,0),
(@PATH,6,-1528.312,-1836.913,68.00233,0,0,0,100,0),
(@PATH,7,-1528.478,-1844.241,67.87733,0,0,0,100,0),
(@PATH,8,-1529.115,-1852.296,67.62733,0,0,0,100,0),
(@PATH,9,-1537.813,-1856.054,67.48417,0,0,0,100,0),
(@PATH,10,-1544.397,-1859.491,67.10917,0,0,0,100,0),
(@PATH,11,-1548.986,-1865.27,67.48417,0,0,0,100,0),
(@PATH,12,-1549.157,-1871.896,67.49586,0,0,0,100,0),
(@PATH,13,-1549.705,-1878.791,67.74586,0,0,0,100,0),
(@PATH,14,-1549.717,-1887.33,67.74586,0,0,0,100,0),
(@PATH,15,-1549.696,-1894.195,67.74586,0,0,0,100,0),
(@PATH,16,-1549.325,-1901.269,67.93284,0,0,0,100,0),
(@PATH,17,-1549.696,-1894.195,67.74586,0,0,0,100,0),
(@PATH,18,-1549.717,-1887.33,67.74586,0,0,0,100,0),
(@PATH,19,-1549.705,-1878.791,67.74586,0,0,0,100,0),
(@PATH,20,-1549.157,-1871.896,67.49586,0,0,0,100,0),
(@PATH,21,-1548.986,-1865.27,67.48417,0,0,0,100,0),
(@PATH,22,-1544.397,-1859.491,67.10917,0,0,0,100,0);

-- Pathing for Syndicate Thief Entry: 24477
SET @NPC := 14539;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1624.479,`position_y`=-1790.601,`position_z`=80.69153 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1625.772,-1791.6,80.56653,0,0,0,100,0),
(@PATH,2,-1627.317,-1788.699,80.44153,0,0,0,100,0),
(@PATH,3,-1628.756,-1790.13,80.44153,0,0,0,100,0),
(@PATH,4,-1630.531,-1795.319,80.31653,0,0,0,100,0),
(@PATH,5,-1629.169,-1800.798,80.44154,0,0,0,100,0),
(@PATH,6,-1628.847,-1805.854,80.44154,0,0,0,100,0),
(@PATH,7,-1630.837,-1808.302,80.56654,0,0,0,100,0),
(@PATH,8,-1627.526,-1806.178,80.31654,0,0,0,100,0),
(@PATH,9,-1625.446,-1799.11,80.19153,0,0,0,100,0),
(@PATH,10,-1624.479,-1790.601,80.69153,0,0,0,100,0);

-- Pathing for Syndicate Thief Entry: 24477
SET @NPC := 14553;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1644.376,`position_y`=-1822.682,`position_z`=79.18237 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1645.642,-1834.04,79.18812,0,0,0,100,0),
(@PATH,2,-1643.131,-1842.017,79.43812,0,0,0,100,0),
(@PATH,3,-1640.613,-1848.469,80.43812,0,0,0,100,0),
(@PATH,4,-1637.512,-1850.404,81.18812,0,0,0,100,0),
(@PATH,5,-1633.946,-1850.41,81.31312,0,0,0,100,0),
(@PATH,6,-1639.898,-1849.684,80.56312,0,0,0,100,0),
(@PATH,7,-1644.877,-1844.75,79.31312,0,0,0,100,0),
(@PATH,8,-1645.747,-1834.646,79.18812,0,0,0,100,0),
(@PATH,9,-1645.052,-1828.025,79.18237,0,0,0,100,0),
(@PATH,10,-1643.223,-1818.971,79.30737,0,0,0,100,0),
(@PATH,11,-1644.376,-1822.682,79.18237,0,0,0,100,0);

-- Pathing for Moa'ki Turtle Rider Entry: 29953
SET @NPC := 95649;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2868.272,`position_y`=887.7991,`position_z`=21.40061 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2862.907,892.681,20.7901,0,0,0,100,0),
(@PATH,2,2848.469,913.8572,23.00146,0,0,0,100,0),
(@PATH,3,2833.101,934.5399,24.24998,0,0,0,100,0),
(@PATH,4,2816.723,939.347,24.24998,0,0,0,100,0),
(@PATH,5,2811.684,954.9929,25.12498,0,0,0,100,0),
(@PATH,6,2816.165,964.7363,25.74998,0,0,0,100,0),
(@PATH,7,2811.684,954.9929,25.12498,0,0,0,100,0),
(@PATH,8,2816.723,939.347,24.24998,0,0,0,100,0),
(@PATH,9,2833.101,934.5399,24.24998,0,0,0,100,0),
(@PATH,10,2848.469,913.8572,23.00146,0,0,0,100,0),
(@PATH,11,2862.907,892.681,20.7901,0,0,0,100,0),
(@PATH,12,2868.272,887.7991,21.40061,0,0,0,100,0),
(@PATH,13,2884.556,888.7734,24.77561,0,0,0,100,0),
(@PATH,14,2868.272,887.7991,21.40061,0,0,0,100,0);

-- Pathing for Lead Cannoneer Zierhut Entry: 27235
SET @NPC := 86564;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2675.015,`position_y`=-487.5652,`position_z`=51.04063 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2669.011,-499.4489,52.04063,0,0,0,100,0),
(@PATH,2,2675.087,-486.52,50.91563,0,0,0,100,0),
(@PATH,3,2667.463,-474.6441,50.16563,0,0,0,100,0),
(@PATH,4,2659.346,-462.439,50.30303,0,0,0,100,0),
(@PATH,5,2654.616,-463.2926,50.80303,0,0,0,100,0),
(@PATH,6,2659.842,-462.3456,50.30303,0,0,0,100,0),
(@PATH,7,2666.731,-473.5312,50.29063,0,0,0,100,0),
(@PATH,8,2675.015,-487.5652,51.04063,0,0,0,100,0);

-- Pathing for Onslaught Deckhand Entry: 27233
SET @NPC := 85522;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2521.783,`position_y`=-357.7691,`position_z`=1.422231 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2533.675,-353.2017,1.422232,0,0,0,100,0),
(@PATH,2,2527.141,-356.3441,1.422231,0,0,0,100,0),
(@PATH,3,2518.232,-364.3784,1.422231,0,0,0,100,0),
(@PATH,4,2521.783,-357.7691,1.422231,0,0,0,100,0);

-- Pathing for Onslaught Deckhand Entry: 27233
SET @NPC := 86418;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2543.606,`position_y`=-393.4823,`position_z`=1.700949 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2552.594,-394.0088,2.575949,0,0,0,100,0),
(@PATH,2,2559.711,-390.4853,3.325949,0,0,0,100,0),
(@PATH,3,2543.606,-393.4823,1.700949,0,0,0,100,0);

-- Pathing for Onslaught Raven Archon Entry: 27357
SET @NPC := 117137;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4635.632,`position_y`=-532.24,`position_z`=166.6355 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4640.689,-524.028,166.8855,0,0,0,100,0),
(@PATH,2,4649.752,-526.5829,167.0105,0,0,0,100,0),
(@PATH,3,4640.689,-524.028,166.8855,0,0,0,100,0),
(@PATH,4,4635.632,-532.24,166.6355,0,0,0,100,0),
(@PATH,5,4623.326,-542.4513,162.3702,0,0,0,100,0),
(@PATH,6,4635.632,-532.24,166.6355,0,0,0,100,0);

-- Pathing for Onslaught Scout Entry: 27332
SET @NPC := 114378;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3980.014,`position_y`=-1332.863,`position_z`=161.5169 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3990.759,-1351.73,159.0279,0,0,0,100,0),
(@PATH,2,3994.687,-1363.344,153.2065,0,0,0,100,0),
(@PATH,3,4011.793,-1367.36,152.8956,0,0,0,100,0),
(@PATH,4,3994.687,-1363.344,153.2065,0,0,0,100,0),
(@PATH,5,3990.759,-1351.73,159.0279,0,0,0,100,0),
(@PATH,6,3980.014,-1332.863,161.5169,0,0,0,100,0),
(@PATH,7,3974.264,-1324.517,161.7669,0,0,0,100,0),
(@PATH,8,3978.401,-1310.471,160.7669,0,0,0,100,0),
(@PATH,9,3977.106,-1290.647,160.65019,0,0,0,100,0),
(@PATH,10,3966.973,-1274.031,160.47357,0,0,0,100,0),
(@PATH,11,3977.106,-1290.647,160.65019,0,0,0,100,0),
(@PATH,12,3978.401,-1310.471,160.7669,0,0,0,100,0),
(@PATH,13,3974.264,-1324.517,161.7669,0,0,0,100,0),
(@PATH,14,3980.014,-1332.863,161.5169,0,0,0,100,0);

-- Pathing for Onslaught Scout Entry: 27332
SET @NPC := 114421;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4089.484,`position_y`=-1355.243,`position_z`=164.416 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4070.284,-1351.355,160.041,0,0,0,100,0),
(@PATH,2,4055.511,-1349.968,160.5553,0,0,0,100,0),
(@PATH,3,4041.178,-1359.764,161.0553,0,0,0,100,0),
(@PATH,4,4055.511,-1349.968,160.5553,0,0,0,100,0),
(@PATH,5,4070.284,-1351.355,160.041,0,0,0,100,0),
(@PATH,6,4089.484,-1355.243,164.416,0,0,0,100,0),
(@PATH,7,4100.766,-1344.072,166.8451,0,0,0,100,0),
(@PATH,8,4089.484,-1355.243,164.416,0,0,0,100,0);

-- Pathing for Onslaught Infantry Entry: 27330
SET @NPC := 114258;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4125.635,`position_y`=-1190.833,`position_z`=134.1967 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4115.98,-1192.384,132.3217,0,0,0,100,0),
(@PATH,2,4125.635,-1190.833,134.1967,0,0,0,100,0),
(@PATH,3,4130.558,-1193.161,135.4467,0,0,0,100,0),
(@PATH,4,4139.23,-1195.387,137.6378,0,0,0,100,0),
(@PATH,5,4156.964,-1196.051,142.0128,0,0,0,100,0),
(@PATH,6,4161.722,-1192.395,143.3878,0,0,0,100,0),
(@PATH,7,4167.034,-1193.434,144.6433,0,0,0,100,0),
(@PATH,8,4173.272,-1181.968,146.1433,0,0,0,100,0),
(@PATH,9,4180.184,-1177.931,146.7683,0,0,0,100,0),
(@PATH,10,4183.93,-1166.589,147.3667,0,0,0,100,0),
(@PATH,11,4185.767,-1154.182,148.3667,0,0,0,100,0),
(@PATH,12,4183.852,-1147.802,149.3667,0,0,0,100,0),
(@PATH,13,4185.767,-1154.182,148.3667,0,0,0,100,0),
(@PATH,14,4183.93,-1166.589,147.3667,0,0,0,100,0),
(@PATH,15,4180.184,-1177.931,146.7683,0,0,0,100,0),
(@PATH,16,4173.272,-1181.968,146.1433,0,0,0,100,0),
(@PATH,17,4167.034,-1193.434,144.6433,0,0,0,100,0),
(@PATH,18,4161.722,-1192.395,143.3878,0,0,0,100,0),
(@PATH,19,4156.964,-1196.051,142.0128,0,0,0,100,0),
(@PATH,20,4139.23,-1195.387,137.6378,0,0,0,100,0),
(@PATH,21,4130.558,-1193.161,135.4467,0,0,0,100,0),
(@PATH,22,4125.635,-1190.833,134.1967,0,0,0,100,0);

-- Pathing for Onslaught Infantry Entry: 27330
SET @NPC := 114260;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4143.703,`position_y`=-1263.341,`position_z`=165.6449 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4134.463,-1269.558,165.5816,0,0,0,100,0),
(@PATH,2,4130.955,-1277.715,165.5688,0,0,0,100,0),
(@PATH,3,4129.98,-1283.602,165.6149,0,0,0,100,0),
(@PATH,4,4135.784,-1294.637,165.6562,0,0,0,100,0),
(@PATH,5,4148.329,-1300.336,165.6449,0,0,0,100,0),
(@PATH,6,4162.814,-1289.61,165.6205,0,0,0,100,0),
(@PATH,7,4165.03,-1281.913,165.5997,0,0,0,100,0),
(@PATH,8,4162.265,-1272.911,165.5582,0,0,0,100,0),
(@PATH,9,4155.306,-1266.831,165.5407,0,0,0,100,0),
(@PATH,10,4143.703,-1263.341,165.6449,0,0,0,100,0);

-- Pathing for Onslaught Infantry Entry: 27330
SET @NPC := 114255;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4212.084,`position_y`=-1224.978,`position_z`=148.6749 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4201.98,-1211.429,148.0499,0,0,0,100,0),
(@PATH,2,4212.084,-1224.978,148.6749,0,0,0,100,0),
(@PATH,3,4213.772,-1244.515,149.1375,0,0,0,100,0),
(@PATH,4,4211.135,-1253.016,149.6375,0,0,0,100,0),
(@PATH,5,4217.994,-1271.88,150.8474,0,0,0,100,0),
(@PATH,6,4211.135,-1253.016,149.6375,0,0,0,100,0),
(@PATH,7,4213.772,-1244.515,149.1375,0,0,0,100,0),
(@PATH,8,4212.084,-1224.978,148.6749,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114155;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4004.03,`position_y`=-1318.242,`position_z`=136.0096 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4009.201,-1294.716,134.5134,0,0,0,100,0),
(@PATH,2,4009.412,-1263,133.4096,0,0,0,100,0),
(@PATH,3,4009.201,-1294.716,134.5134,0,0,0,100,0),
(@PATH,4,4004.03,-1318.242,136.0096,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114152;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4203.102,`position_y`=-1174.582,`position_z`=150.138 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4197.586,-1148.387,151.2417,0,0,0,100,0),
(@PATH,2,4203.102,-1174.582,150.138,0,0,0,100,0),
(@PATH,3,4209.215,-1197.404,149.513,0,0,0,100,0),
(@PATH,4,4225.328,-1218.085,148.7999,0,0,0,100,0),
(@PATH,5,4209.215,-1197.404,149.513,0,0,0,100,0),
(@PATH,6,4203.102,-1174.582,150.138,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114147;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4088.284,`position_y`=-1154.735,`position_z`=131.2158 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4080.528,-1173.253,131.2181,0,0,0,100,0),
(@PATH,2,4124.581,-1178.971,134.3217,0,0,0,100,0),
(@PATH,3,4080.528,-1173.253,131.2181,0,0,0,100,0),
(@PATH,4,4088.284,-1154.735,131.2158,0,0,0,100,0),
(@PATH,5,4101.193,-1137.309,132.9601,0,0,0,100,0),
(@PATH,6,4088.284,-1154.735,131.2158,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114145;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4120.572,`position_y`=-1305.189,`position_z`=167.5825 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4114.463,-1321.061,170.5825,0,0,0,100,0),
(@PATH,2,4123.832,-1345.334,163.4701,0,0,0,100,0),
(@PATH,3,4114.428,-1321.131,170.5825,0,0,0,100,0),
(@PATH,4,4120.572,-1305.189,167.5825,0,0,0,100,0),
(@PATH,5,4147.363,-1322.658,163.5784,0,0,0,100,0),
(@PATH,6,4120.572,-1305.189,167.5825,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114146;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4180.144,`position_y`=-1285.187,`position_z`=163.3783 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4184.505,-1291.101,163.2533,0,0,0,100,0),
(@PATH,2,4180.144,-1285.187,163.3783,0,0,0,100,0),
(@PATH,3,4180.722,-1266.006,162.8794,0,0,0,100,0),
(@PATH,4,4177.455,-1244.869,162.6294,0,0,0,100,0),
(@PATH,5,4158.622,-1249.703,162.3087,0,0,0,100,0),
(@PATH,6,4177.455,-1244.869,162.6294,0,0,0,100,0),
(@PATH,7,4180.722,-1266.006,162.8794,0,0,0,100,0),
(@PATH,8,4180.144,-1285.187,163.3783,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114151;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4035.906,`position_y`=-1141.726,`position_z`=131.4514 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4050.707,-1135.682,131.7014,0,0,0,100,0),
(@PATH,2,4062.477,-1131.132,132.621,0,0,0,100,0),
(@PATH,3,4050.707,-1135.682,131.7014,0,0,0,100,0),
(@PATH,4,4035.906,-1141.726,131.4514,0,0,0,100,0),
(@PATH,5,4030.492,-1128.27,134.7465,0,0,0,100,0),
(@PATH,6,4028.401,-1118.301,136.3715,0,0,0,100,0),
(@PATH,7,4030.492,-1128.27,134.7465,0,0,0,100,0),
(@PATH,8,4035.906,-1141.726,131.4514,0,0,0,100,0);

-- Pathing for Onslaught Bloodhound Entry: 27329
SET @NPC := 114150;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4037.262,`position_y`=-1222.826,`position_z`=133.6355 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4039.188,-1202.071,132.2605,0,0,0,100,0),
(@PATH,2,4039.754,-1179.579,131.7407,0,0,0,100,0),
(@PATH,3,4039.977,-1167.872,131.8657,0,0,0,100,0),
(@PATH,4,4039.754,-1179.579,131.7407,0,0,0,100,0),
(@PATH,5,4039.188,-1202.071,132.2605,0,0,0,100,0),
(@PATH,6,4037.262,-1222.826,133.6355,0,0,0,100,0);

-- Pathing for Deathbringer Revenant Entry: 27382
SET @NPC := 119071;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4824.659,`position_y`=-580.9394,`position_z`=165.2337 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4814.773,-582.5805,163.8048,0,0,0,100,0),
(@PATH,2,4824.659,-580.9394,165.2337,0,0,0,100,0),
(@PATH,3,4831.233,-586.6505,164.223,0,0,0,100,0),
(@PATH,4,4830.003,-600.0768,163.3118,0,0,0,100,0),
(@PATH,5,4813.818,-592.593,163.793,0,0,0,100,0),
(@PATH,6,4830.003,-600.0768,163.3118,0,0,0,100,0),
(@PATH,7,4831.233,-586.6505,164.223,0,0,0,100,0),
(@PATH,8,4824.659,-580.9394,165.2337,0,0,0,100,0);

-- Pathing for Deathbringer Revenant Entry: 27382
SET @NPC := 119072;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4720.807,`position_y`=-557.7733,`position_z`=167.2897 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4742.271,-559.9733,167.2543,0,0,0,100,0),
(@PATH,2,4720.807,-557.7733,167.2897,0,0,0,100,0),
(@PATH,3,4700.919,-556.6257,166.9408,0,0,0,100,0),
(@PATH,4,4720.807,-557.7733,167.2897,0,0,0,100,0);

-- Pathing for Deathbringer Revenant Entry: 27382
SET @NPC := 119068;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4844.053,`position_y`=-584.225,`position_z`=160.64 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4838.941,-567.2607,162.6483,0,0,0,100,0),
(@PATH,2,4813.387,-553.0447,163.3354,0,0,0,100,0),
(@PATH,3,4794.94,-559.1481,163.3595,0,0,0,100,0),
(@PATH,4,4784.595,-577.4869,162.5643,0,0,0,100,0),
(@PATH,5,4786.519,-598.1761,162.0602,0,0,0,100,0),
(@PATH,6,4803.322,-615.4664,160.5656,0,0,0,100,0),
(@PATH,7,4818.432,-629.1903,159.2296,0,0,0,100,0),
(@PATH,8,4839.938,-628.5002,158.5843,0,0,0,100,0),
(@PATH,9,4850.498,-601.7881,158.2996,0,0,0,100,0),
(@PATH,10,4844.053,-584.225,160.64,0,0,0,100,0);

-- Pathing for Fordragon Medic Entry: 27543
SET @NPC := 133503;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4579.435,`position_y`=1424.634,`position_z`=189.2658 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4579.879,1428.706,189.2658,0,0,0,100,0),
(@PATH,2,4579.435,1424.634,189.2658,0,0,0,100,0),
(@PATH,3,4579.449,1423.632,189.2658,0,0,0,100,0),
(@PATH,4,4579.435,1424.634,189.2658,0,0,0,100,0),
(@PATH,5,4574.768,1424.38,189.2658,0,0,0,100,0),
(@PATH,6,4571.274,1424.491,189.2658,0,0,0,100,0),
(@PATH,7,4564.26,1424.634,189.3568,0,0,0,100,0),
(@PATH,8,4571.274,1424.491,189.2658,0,0,0,100,0),
(@PATH,9,4574.768,1424.38,189.2658,0,0,0,100,0),
(@PATH,10,4579.435,1424.634,189.2658,0,0,0,100,0);

-- Wounded Fordragon Soldier should not have random movement
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=27517;
-- Remove random movement from some creatures
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `guid` IN (133427,133428,133429,133165,133166,133167,133168,133169);
-- Fix some flying creatures
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (26575,26577,26578,31269);

-- Pathing for Wastes Taskmaster Entry: 26493
SET @NPC := 88212;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4377.677,`position_y`=748.6854,`position_z`=57.76371 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4352.628,751.0374,64.04988,0,0,0,100,0),
(@PATH,2,4377.531,748.6934,57.76371,0,0,0,100,0),
(@PATH,3,4400.995,733.3605,54.01371,0,0,0,100,0),
(@PATH,4,4419.966,710.4111,54.01371,0,0,0,100,0),
(@PATH,5,4429.461,692.8457,57.15271,0,0,0,100,0),
(@PATH,6,4433.255,674.6249,64.52771,0,0,0,100,0),
(@PATH,7,4429.461,692.8457,57.15271,0,0,0,100,0),
(@PATH,8,4419.966,710.4111,54.01371,0,0,0,100,0),
(@PATH,9,4400.995,733.3605,54.01371,0,0,0,100,0),
(@PATH,10,4377.677,748.6854,57.76371,0,0,0,100,0);
-- Remove dup spawns
DELETE FROM `creature` WHERE `guid` IN (88206,88209);
DELETE FROM `creature_addon` WHERE `guid` IN (88206,88209);

-- Pathing for Wastes Taskmaster Entry: 26493
SET @NPC := 88207;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4359.022,`position_y`=312.2534,`position_z`=46.33416 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4342.439,323.4258,54.45916,0,0,0,100,0),
(@PATH,2,4326.469,330.6508,59.02667,0,0,0,100,0),
(@PATH,3,4342.379,323.4586,54.45916,0,0,0,100,0),
(@PATH,4,4359.022,312.2534,46.33416,0,0,0,100,0),
(@PATH,5,4381.802,307.3024,45.51707,0,0,0,100,0),
(@PATH,6,4404.153,309.183,44.67593,0,0,0,100,0),
(@PATH,7,4424.143,326.160,43.69754,0,0,0,100,0),
(@PATH,8,4437.828,371.522,50.92235,0,0,0,100,0),
(@PATH,9,4424.143,326.160,43.69754,0,0,0,100,0),
(@PATH,10,4404.153,309.183,44.67593,0,0,0,100,0),
(@PATH,11,4381.802,307.3024,45.51707,0,0,0,100,0),
(@PATH,12,4359.022,312.2534,46.33416,0,0,0,100,0);

-- Pathing for Wastes Taskmaster Entry: 26493
SET @NPC := 107422;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4583.09,`position_y`=449.509,`position_z`=85.0521 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4597.782,464.2024,87.99337,0,0,0,100,0),
(@PATH,2,4598.326,484.3582,89.57731,0,0,0,100,0),
(@PATH,3,4576.441,508.5522,86.93581,0,0,0,100,0),
(@PATH,4,4552.492,508.0537,83.60313,0,0,0,100,0),
(@PATH,5,4530.917,495.7092,75.07985,0,0,0,100,0),
(@PATH,6,4516.025,475.0746,66.82504,0,0,0,100,0),
(@PATH,7,4531.256,470.2323,65.82985,0,0,0,100,0),
(@PATH,8,4548.098,470.0200,65.83256,0,0,0,100,0),
(@PATH,9,4563.167,479.6988,65.98953,0,0,0,100,0),
(@PATH,10,4573.489,472.9183,65.94758,0,0,0,100,0),
(@PATH,11,4562.96,464.848,65.7068,0,0,0,100,0),
(@PATH,12,4542.92,458.159,65.6769,0,0,0,100,0),
(@PATH,13,4518.58,445.425,66.5737,0,0,0,100,0),
(@PATH,14,4525.28,425.042,71.7196,0,0,0,100,0),
(@PATH,15,4543.76,430.092,77.0235,0,0,0,100,0),
(@PATH,16,4566.25,441.529,81.8306,0,0,0,100,0),
(@PATH,17,4583.09,449.509,85.0521,0,0,0,100,0);
-- Remove dup spawns
DELETE FROM `creature` WHERE `guid` IN (107423);
DELETE FROM `creature_addon` WHERE `guid` IN (107423);

-- Xink's Shreeder should not be spawned
DELETE FROM `creature` WHERE `guid` IN (113110);
DELETE FROM `creature_addon` WHERE `guid` IN (113110);

-- Pathing for Jormungar Tunneler Entry: 26467
SET @NPC := 104791;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4612.315,`position_y`=636.7607,`position_z`=100.5706 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4640.815,634.1915,106.7286,0,0,0,100,0),
(@PATH,2,4612.315,636.7607,100.5706,0,0,0,100,0),
(@PATH,3,4593.722,640.6462,98.23782,0,0,0,100,0),
(@PATH,4,4580.929,641.9921,96.11282,0,0,0,100,0),
(@PATH,5,4573.083,641.0912,94.36282,0,0,0,100,0),
(@PATH,6,4580.929,641.9921,96.11282,0,0,0,100,0),
(@PATH,7,4593.722,640.6462,98.23782,0,0,0,100,0),
(@PATH,8,4612.315,636.7607,100.5706,0,0,0,100,0);

-- Pathing for Jormungar Tunneler Entry: 26467
SET @NPC := 104769;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4769.156,`position_y`=901.4236,`position_z`=125.8586 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4771.51,911.3878,128.7336,0,0,0,100,0),
(@PATH,2,4769.156,901.4236,125.8586,0,0,0,100,0),
(@PATH,3,4767.545,890.4188,126.1252,0,0,0,100,0),
(@PATH,4,4756.109,884.761,122.0654,0,0,0,100,0),
(@PATH,5,4746.342,886.1551,121.5654,0,0,0,100,0),
(@PATH,6,4740.95,894.7586,123.6904,0,0,0,100,0),
(@PATH,7,4736.5,900.9068,126.8635,0,0,0,100,0),
(@PATH,8,4729.145,903.9944,131.2424,0,0,0,100,0),
(@PATH,9,4722.184,906.6729,133.8674,0,0,0,100,0),
(@PATH,10,4712.984,911.3162,133.2424,0,0,0,100,0),
(@PATH,11,4705.177,917.8481,131.6174,0,0,0,100,0),
(@PATH,12,4712.984,911.3162,133.2424,0,0,0,100,0),
(@PATH,13,4722.184,906.6729,133.8674,0,0,0,100,0),
(@PATH,14,4729.145,903.9944,131.2424,0,0,0,100,0),
(@PATH,15,4736.5,900.9068,126.8635,0,0,0,100,0),
(@PATH,16,4740.95,894.7586,123.6904,0,0,0,100,0),
(@PATH,17,4746.262,886.2822,121.5654,0,0,0,100,0),
(@PATH,18,4756.109,884.761,122.0654,0,0,0,100,0),
(@PATH,19,4767.545,890.4188,126.1252,0,0,0,100,0),
(@PATH,20,4769.156,901.4236,125.8586,0,0,0,100,0);

-- Pathing for Jormungar Tunneler Entry: 26467
SET @NPC := 104790;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4619.419,`position_y`=679.2484,`position_z`=99.87684 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4624.186,669.2997,101.106,0,0,0,100,0),
(@PATH,2,4609.159,667.6816,98.85598,0,0,0,100,0),
(@PATH,3,4592.208,667.7223,96.80053,0,0,0,100,0),
(@PATH,4,4577.215,663.3645,95.11282,0,0,0,100,0),
(@PATH,5,4592.208,667.7223,96.80053,0,0,0,100,0),
(@PATH,6,4609.159,667.6816,98.85598,0,0,0,100,0),
(@PATH,7,4624.186,669.2997,101.106,0,0,0,100,0),
(@PATH,8,4619.419,679.2484,99.87684,0,0,0,100,0),
(@PATH,9,4627.18,691.6667,101.8855,0,0,0,100,0),
(@PATH,10,4619.419,679.2484,99.87684,0,0,0,100,0);

-- Pathing for Ice Heart Jormungar Spawn Entry: 26359
SET @NPC := 119285;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4823.363,`position_y`=740.2496,`position_z`=115.1009 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4828.03,734.9659,116.659,0,0,0,100,0),
(@PATH,2,4828.03,734.9659,116.659,0,0,0,100,0), -- turn to 1.134464
(@PATH,3,4823.363,740.2496,115.1009,0,0,0,100,0);

-- Pathing for Ice Heart Jormungar Spawn Entry: 26359
SET @NPC := 119366;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4917.949,`position_y`=648.9772,`position_z`=135.0675 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4912.365,652.8351,133.7414,0,0,0,100,0),
(@PATH,2,4917.949,648.9772,135.0675,2000,0,0,100,0);

-- Pathing for Ice Heart Jormungar Spawn Entry: 26359
SET @NPC := 119311;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4913.726,`position_y`=658.164,`position_z`=133.4067 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4921.075,667.6257,134.4295,0,0,0,100,0),
(@PATH,2,4910.775,675.0512,132.6329,2000,0,0,100,0),
(@PATH,3,4915.398,658.9547,133.7801,0,0,0,100,0),
(@PATH,4,4913.726,658.164,133.4067,0,0,0,100,0);

-- Pathing for Ice Heart Jormungar Feeder Entry: 26358
SET @NPC := 119094;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4948.506,`position_y`=690.6748,`position_z`=136.1326 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4948.392,691.1043,136.0691,0,0,0,100,0),
(@PATH,2,4946.161,690.3124,136.0534,0,0,0,100,0),
(@PATH,3,4944.864,687.5475,136.2153,0,0,0,100,0),
(@PATH,4,4946.129,685.3868,136.4649,0,0,0,100,0),
(@PATH,5,4948.506,690.6748,136.1326,0,0,0,100,0);

-- Pathing for Ice Heart Jormungar Feeder Entry: 26358
SET @NPC := 119086;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4801.301,`position_y`=529.4807,`position_z`=120.2881 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4828.505,492.8211,117.4465,0,0,0,100,0),
(@PATH,2,4801.301,529.4807,120.2881,0,0,0,100,0);

-- Pathing for Crystalline Ice Elemental Entry: 26316
SET @NPC := 115063;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4781.875,`position_y`=634.5107,`position_z`=167.1951 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4794.498,643.2051,165.9451,0,0,0,100,0),
(@PATH,2,4803.139,643.8461,164.8874,0,0,0,100,0),
(@PATH,3,4811.448,646.0357,163.7624,0,0,0,100,0),
(@PATH,4,4823.744,650.6309,162.2624,0,0,0,100,0),
(@PATH,5,4835.242,658.0538,161.2733,0,0,0,100,0),
(@PATH,6,4823.744,650.6309,162.2624,0,0,0,100,0),
(@PATH,7,4811.569,646.0859,163.6374,0,0,0,100,0),
(@PATH,8,4803.139,643.8461,164.8874,0,0,0,100,0),
(@PATH,9,4794.498,643.2051,165.9451,0,0,0,100,0),
(@PATH,10,4781.875,634.5107,167.1951,0,0,0,100,0),
(@PATH,11,4785.588,644.8525,166.9451,0,0,0,100,0),
(@PATH,12,4791.44,654.8226,166.3201,0,0,0,100,0),
(@PATH,13,4797.857,660.5208,165.0701,0,0,0,100,0),
(@PATH,14,4799.611,674.8367,164.5891,0,0,0,100,0),
(@PATH,15,4813.303,674.3536,163.0113,0,0,0,100,0),
(@PATH,16,4799.611,674.8367,164.5891,0,0,0,100,0),
(@PATH,17,4797.857,660.5208,165.0701,0,0,0,100,0),
(@PATH,18,4791.44,654.8226,166.3201,0,0,0,100,0),
(@PATH,19,4785.588,644.8525,166.9451,0,0,0,100,0),
(@PATH,20,4781.875,634.5107,167.1951,0,0,0,100,0);

-- Pathing for Crystalline Ice Elemental Entry: 26316
SET @NPC := 115075;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4854.134,`position_y`=748.6946,`position_z`=163.425 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4861.722,749.3528,162.425,0,0,0,100,0),
(@PATH,2,4854.134,748.6946,163.425,0,0,0,100,0),
(@PATH,3,4844.537,755.6428,164.675,0,0,0,100,0),
(@PATH,4,4841.066,750.5629,164.55,0,0,0,100,0),
(@PATH,5,4835.392,745.4681,165.175,0,0,0,100,0),
(@PATH,6,4833.364,738.6474,164.925,0,0,0,100,0),
(@PATH,7,4826.768,735.8594,165.7997,0,0,0,100,0),
(@PATH,8,4823.78,731.0496,166.0925,0,0,0,100,0),
(@PATH,9,4830.218,721.9979,164.4675,0,0,0,100,0),
(@PATH,10,4832.163,711.6559,163.8425,0,0,0,100,0),
(@PATH,11,4830.218,721.9979,164.4675,0,0,0,100,0),
(@PATH,12,4823.78,731.0496,166.0925,0,0,0,100,0),
(@PATH,13,4826.768,735.8594,165.7997,0,0,0,100,0),
(@PATH,14,4833.364,738.6474,164.925,0,0,0,100,0),
(@PATH,15,4835.392,745.4681,165.175,0,0,0,100,0),
(@PATH,16,4841.066,750.5629,164.55,0,0,0,100,0),
(@PATH,17,4844.537,755.6428,164.675,0,0,0,100,0),
(@PATH,18,4854.134,748.6946,163.425,0,0,0,100,0);

-- Pathing for Copperpot Goon Entry: 32476
SET @NPC := 88134;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=8872.63,`position_y`=-1333.161,`position_z`=1031.999 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,8871.958,-1327.431,1031.499,0,0,0,100,0),
(@PATH,2,8872.63,-1333.161,1031.999,0,0,0,100,0),
(@PATH,3,8879.247,-1338.27,1032.157,0,0,0,100,0),
(@PATH,4,8889.885,-1346.926,1032.782,0,0,0,100,0),
(@PATH,5,8891.149,-1356.145,1033.532,0,0,0,100,0),
(@PATH,6,8887.743,-1365.031,1033.782,0,0,0,100,0),
(@PATH,7,8892.104,-1370.989,1034.088,0,0,0,100,0),
(@PATH,8,8887.743,-1365.031,1033.782,0,0,0,100,0),
(@PATH,9,8891.149,-1356.145,1033.532,0,0,0,100,0),
(@PATH,10,8889.885,-1346.926,1032.782,0,0,0,100,0),
(@PATH,11,8879.247,-1338.27,1032.157,0,0,0,100,0),
(@PATH,12,8872.63,-1333.161,1031.999,0,0,0,100,0);

-- Pathing for Ice Steppe Bull Entry: 30445
SET @NPC := 118284;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7376.002,`position_y`=-1355.971,`position_z`=909.9191 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7352.206,-1351.045,906.9864,0,0,0,100,0),
(@PATH,2,7340.969,-1338.953,905.1114,0,0,0,100,0),
(@PATH,3,7351.564,-1328.227,905.5369,0,0,0,100,0),
(@PATH,4,7340.969,-1338.953,905.1114,0,0,0,100,0),
(@PATH,5,7352.206,-1351.045,906.9864,0,0,0,100,0),
(@PATH,6,7376.002,-1355.971,909.9191,0,0,0,100,0),
(@PATH,7,7382.768,-1386.229,913.2452,0,0,0,100,0),
(@PATH,8,7372.836,-1405.384,912.6314,0,0,0,100,0),
(@PATH,9,7352.176,-1410.842,913.0703,0,0,0,100,0),
(@PATH,10,7326.558,-1392.288,910.4369,0,0,0,100,0),
(@PATH,11,7352.176,-1410.842,913.0703,0,0,0,100,0),
(@PATH,12,7372.836,-1405.384,912.6314,0,0,0,100,0),
(@PATH,13,7382.768,-1386.229,913.2452,0,0,0,100,0),
(@PATH,14,7376.002,-1355.971,909.9191,0,0,0,100,0);

-- Pathing for Ice Steppe Bull Entry: 30445
SET @NPC := 98793;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7260.412,`position_y`=-1475.838,`position_z`=916.7933 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7286.341,-1473.51,915.4174,0,0,0,100,0),
(@PATH,2,7336.023,-1439.56,914.6334,0,0,0,100,0),
(@PATH,3,7343.61,-1416.112,912.5703,0,0,0,100,0),
(@PATH,4,7341.59,-1382.241,910.0731,0,0,0,100,0),
(@PATH,5,7338.099,-1366.292,908.6114,0,0,0,100,0),
(@PATH,6,7303.811,-1338.705,905.0057,0,0,0,100,0),
(@PATH,7,7292.695,-1337.109,907.5106,0,0,0,100,0),
(@PATH,8,7276.847,-1343.511,910.2606,0,0,0,100,0),
(@PATH,9,7260.892,-1356.204,911.0975,0,0,0,100,0),
(@PATH,10,7240.93,-1370.671,914.7305,0,0,0,100,0),
(@PATH,11,7213.619,-1399.302,914.2002,0,0,0,100,0),
(@PATH,12,7189.655,-1425.595,918.1469,0,0,0,100,0),
(@PATH,13,7191.982,-1465.112,919.457,0,0,0,100,0),
(@PATH,14,7198.586,-1486.591,921.3929,0,0,0,100,0),
(@PATH,15,7218.635,-1503.999,920.0897,0,0,0,100,0),
(@PATH,16,7260.412,-1475.838,916.7933,0,0,0,100,0);

-- Pathing for Son of Hodir Entry: 30262
SET @NPC := 29809;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7416.563,`position_y`=-2664.562,`position_z`=809.4573 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7403.721,-2655.579,811.2039,0,0,0,100,0),
(@PATH,2,7386.667,-2636.872,814.9755,0,0,0,100,0),
(@PATH,3,7354.603,-2629.654,814.959,0,0,0,100,0),
(@PATH,4,7316.168,-2635.257,814.9688,0,0,0,100,0),
(@PATH,5,7280.421,-2633.477,814.9333,0,0,0,100,0),
(@PATH,6,7239.193,-2639.471,814.0367,0,0,0,100,0),
(@PATH,7,7237.307,-2637.684,814.1631,3000,0,0,100,0),
(@PATH,8,7263.692,-2629.174,814.8972,0,0,0,100,0),
(@PATH,9,7303.066,-2634.208,814.9536,0,0,0,100,0),
(@PATH,10,7351.103,-2626.177,814.9425,0,0,0,100,0),
(@PATH,11,7397.674,-2644.868,813.0914,0,0,0,100,0),
(@PATH,12,7416.563,-2664.562,809.4573,3000,0,0,100,0);

-- Pathing for Son of Hodir Entry: 30262
SET @NPC := 106336;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7273.659,`position_y`=-2895.491,`position_z`=824.0071 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7234.047,-2884.384,824.7147,4000,0,0,100,0),
(@PATH,2,7345.53,-2901.831,821.7584,0,0,0,100,0),
(@PATH,3,7353.463,-2889.021,816.0681,0,0,0,100,0),
(@PATH,4,7352.824,-2881.323,812.3181,4000,0,0,100,0),
(@PATH,5,7349.912,-2903.916,821.2584,0,0,0,100,0),
(@PATH,6,7322.363,-2904.707,823.4943,0,0,0,100,0),
(@PATH,7,7273.659,-2895.491,824.0071,0,0,0,100,0);

-- Pathing for Son of Hodir Entry: 30262
SET @NPC := 106501;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7266.733,`position_y`=-2802.21,`position_z`=777.0706 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7234.09,-2801.132,778.1149,0,0,0,100,0),
(@PATH,2,7213.235,-2780.434,777.3621,0,0,0,100,0),
(@PATH,3,7201.17,-2765.837,777.0167,0,0,0,100,0),
(@PATH,4,7200.926,-2751.148,777.5167,4000,0,0,100,0),
(@PATH,5,7201.17,-2765.837,777.0167,0,0,0,100,0),
(@PATH,6,7213.235,-2780.434,777.3621,0,0,0,100,0),
(@PATH,7,7234.09,-2801.132,778.1149,0,0,0,100,0),
(@PATH,8,7266.733,-2802.21,777.0706,0,0,0,100,0),
(@PATH,9,7300.729,-2792.09,775.1332,0,0,0,100,0),
(@PATH,10,7335.957,-2783.621,771.6161,0,0,0,100,0),
(@PATH,11,7344.21,-2777.575,769.3661,0,0,0,100,0),
(@PATH,12,7345.448,-2762.184,762.9899,4000,0,0,100,0),
(@PATH,13,7344.21,-2777.575,769.3661,0,0,0,100,0),
(@PATH,14,7335.957,-2783.621,771.6161,0,0,0,100,0),
(@PATH,15,7300.729,-2792.09,775.1332,0,0,0,100,0),
(@PATH,16,7266.733,-2802.21,777.0706,0,0,0,100,0);

-- Pathing for Son of Hodir Entry: 30262
SET @NPC := 111687;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7278.651,`position_y`=-2512.9,`position_z`=753.4233 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7275.243,-2493.013,753.7523,0,0,0,100,0),
(@PATH,2,7282.448,-2460.509,755.7845,0,0,0,100,0),
(@PATH,3,7295.972,-2445.3,755.5345,0,0,0,100,0),
(@PATH,4,7311.224,-2441.711,753.3485,0,0,0,100,0),
(@PATH,5,7331.502,-2463.935,750.0985,0,0,0,100,0),
(@PATH,6,7331.37,-2495.4,749.5884,0,0,0,100,0),
(@PATH,7,7322.564,-2524.512,748.8254,0,0,0,100,0),
(@PATH,8,7278.651,-2512.9,753.4233,0,0,0,100,0);

-- Pathing for Ice Steppe Rhino Entry: 29469
SET @NPC := 98744;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7336.483,`position_y`=-1382.206,`position_z`=910.1981 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7328.273,-1361.54,908.5057,0,0,0,100,0),
(@PATH,2,7288.939,-1354.943,907.3856,0,0,0,100,0),
(@PATH,3,7275.758,-1365.668,908.6356,0,0,0,100,0),
(@PATH,4,7261.542,-1402.325,908.8148,0,0,0,100,0),
(@PATH,5,7263.854,-1436.428,908.1765,0,0,0,100,0),
(@PATH,6,7317.999,-1436.262,913.4809,0,0,0,100,0),
(@PATH,7,7328.042,-1416.983,912.5723,0,0,0,100,0),
(@PATH,8,7336.483,-1382.206,910.1981,0,0,0,100,0);

-- Pathing for Lightning Sentry Entry: 26407
SET @NPC := 99648;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3591.459,`position_y`=-5050.063,`position_z`=194.8281 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3585.034,-5056.352,197.2041,0,0,0,100,0),
(@PATH,2,3580.897,-5060.692,199.5894,0,0,0,100,0),
(@PATH,3,3576.53,-5065.725,201.8281,0,0,0,100,0),
(@PATH,4,3572.318,-5073.984,206.2946,0,0,0,100,0),
(@PATH,5,3565.477,-5083.276,213,0,0,0,100,0),
(@PATH,6,3557.625,-5093.315,221.125,0,0,0,100,0),
(@PATH,7,3548.768,-5098.572,226.25,0,0,0,100,0),
(@PATH,8,3540.006,-5105.695,231.7135,0,0,0,100,0),
(@PATH,9,3548.768,-5098.572,226.25,0,0,0,100,0),
(@PATH,10,3557.371,-5093.475,221.125,0,0,0,100,0),
(@PATH,11,3565.477,-5083.276,213,0,0,0,100,0),
(@PATH,12,3572.318,-5073.984,206.2946,0,0,0,100,0),
(@PATH,13,3576.404,-5065.969,201.8281,0,0,0,100,0),
(@PATH,14,3580.897,-5060.692,199.5894,0,0,0,100,0),
(@PATH,15,3585.034,-5056.352,197.2041,0,0,0,100,0),
(@PATH,16,3591.459,-5050.063,194.8281,0,0,0,100,0),
(@PATH,17,3600.07,-5043.59,191.0811,0,0,0,100,0),
(@PATH,18,3606.279,-5038.049,188.7061,0,0,0,100,0),
(@PATH,19,3600.07,-5043.59,191.0811,0,0,0,100,0),
(@PATH,20,3591.459,-5050.063,194.8281,0,0,0,100,0);

-- Pathing for Lightning Sentry Entry: 26407
SET @NPC := 99651;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3637.915,`position_y`=-5093.193,`position_z`=164.6507 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3643.601,-5084.117,165.9007,0,0,0,100,0),
(@PATH,2,3645.005,-5066.616,169.8634,0,0,0,100,0),
(@PATH,3,3643.956,-5055.742,171.2384,0,0,0,100,0),
(@PATH,4,3643.148,-5049.692,173.2223,0,0,0,100,0),
(@PATH,5,3641.873,-5041.596,176.0178,0,0,0,100,0),
(@PATH,6,3640.804,-5034.935,177.3634,0,0,0,100,0),
(@PATH,7,3641.873,-5041.596,176.0178,0,0,0,100,0),
(@PATH,8,3643.148,-5049.692,173.2223,0,0,0,100,0),
(@PATH,9,3643.956,-5055.742,171.2384,0,0,0,100,0),
(@PATH,10,3644.994,-5066.334,169.8634,0,0,0,100,0),
(@PATH,11,3643.601,-5084.117,165.9007,0,0,0,100,0),
(@PATH,12,3637.915,-5093.193,164.6507,0,0,0,100,0),
(@PATH,13,3629.779,-5100.097,164.2347,0,0,0,100,0),
(@PATH,14,3637.915,-5093.193,164.6507,0,0,0,100,0);

-- Pathing for Lightning Sentry Entry: 26407
SET @NPC := 99650;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3395.451,`position_y`=-4982.203,`position_z`=297.409 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3383.966,-4977.569,299.784,0,0,0,100,0),
(@PATH,2,3369.488,-4976.631,303.159,0,0,0,100,0),
(@PATH,3,3362.556,-4977.602,305.1951,0,0,0,100,0),
(@PATH,4,3369.488,-4976.631,303.159,0,0,0,100,0),
(@PATH,5,3383.966,-4977.569,299.784,0,0,0,100,0),
(@PATH,6,3395.451,-4982.203,297.409,0,0,0,100,0),
(@PATH,7,3403.15,-4986.861,293.829,0,0,0,100,0),
(@PATH,8,3411.484,-4994.711,287.954,0,0,0,100,0),
(@PATH,9,3418.514,-5001.556,284.4171,0,0,0,100,0),
(@PATH,10,3411.484,-4994.711,287.954,0,0,0,100,0),
(@PATH,11,3403.156,-4986.87,293.829,0,0,0,100,0),
(@PATH,12,3395.451,-4982.203,297.409,0,0,0,100,0);

-- Pathing for Lightning Sentry Entry: 26407
SET @NPC := 99647;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3420.094,`position_y`=-5029.398,`position_z`=274.1862 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3421.023,-5019.445,278.1671,0,0,0,100,0),
(@PATH,2,3420.552,-5009.417,281.4171,0,0,0,100,0),
(@PATH,3,3421.138,-5019.164,278.1671,0,0,0,100,0),
(@PATH,4,3420.094,-5029.398,274.1862,0,0,0,100,0),
(@PATH,5,3420.084,-5037.778,270.3445,0,0,0,100,0),
(@PATH,6,3419.255,-5044.619,266.5906,0,0,0,100,0),
(@PATH,7,3420.822,-5054.514,261.6499,0,0,0,100,0),
(@PATH,8,3428.125,-5062.5,255.7156,0,0,0,100,0),
(@PATH,9,3434.531,-5067.101,251.4685,0,0,0,100,0),
(@PATH,10,3439.543,-5070.784,248.7806,0,0,0,100,0),
(@PATH,11,3444.791,-5075,244.9685,0,0,0,100,0),
(@PATH,12,3439.543,-5070.784,248.7806,0,0,0,100,0),
(@PATH,13,3434.531,-5067.101,251.4685,0,0,0,100,0),
(@PATH,14,3428.488,-5062.811,255.3406,0,0,0,100,0),
(@PATH,15,3420.822,-5054.514,261.6499,0,0,0,100,0),
(@PATH,16,3419.23,-5044.755,266.5906,0,0,0,100,0),
(@PATH,17,3420.288,-5038.148,270.1729,0,0,0,100,0),
(@PATH,18,3420.094,-5029.398,274.1862,0,0,0,100,0);

-- Pathing for Lightning Sentry Entry: 26407
SET @NPC := 99646;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3473.127,`position_y`=-5198.451,`position_z`=259.2329 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3482.563,-5200.125,254.2606,0,0,0,100,0),
(@PATH,2,3493.555,-5203.917,248.3856,0,0,0,100,0),
(@PATH,3,3502.439,-5207.417,245.2693,0,0,0,100,0),
(@PATH,4,3508.02,-5201.552,243.3943,0,0,0,100,0),
(@PATH,5,3512.727,-5193.701,240.5535,0,0,0,100,0),
(@PATH,6,3514.849,-5184.214,238.6785,0,0,0,100,0),
(@PATH,7,3515.547,-5176.61,237.4285,0,0,0,100,0),
(@PATH,8,3517.042,-5166.507,235.8108,0,0,0,100,0),
(@PATH,9,3518.691,-5155.448,235.0608,0,0,0,100,0),
(@PATH,10,3517.042,-5166.507,235.8108,0,0,0,100,0),
(@PATH,11,3515.547,-5176.61,237.4285,0,0,0,100,0),
(@PATH,12,3514.849,-5184.214,238.6785,0,0,0,100,0),
(@PATH,13,3512.727,-5193.701,240.5535,0,0,0,100,0),
(@PATH,14,3508.095,-5201.418,243.3943,0,0,0,100,0),
(@PATH,15,3502.439,-5207.417,245.2693,0,0,0,100,0),
(@PATH,16,3493.555,-5203.917,248.3856,0,0,0,100,0),
(@PATH,17,3482.563,-5200.125,254.2606,0,0,0,100,0),
(@PATH,18,3473.304,-5198.499,259.2329,0,0,0,100,0),
(@PATH,19,3460.635,-5194.872,265.9657,0,0,0,100,0),
(@PATH,20,3473.127,-5198.451,259.2329,0,0,0,100,0);

-- Pathing for Lightning Sentry Entry: 26407
SET @NPC := 99641;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3387.242,`position_y`=-5145.025,`position_z`=325.077 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3389.308,-5129.32,326.8031,0,0,0,100,0),
(@PATH,2,3386.938,-5121.034,326.8031,0,0,0,100,0),
(@PATH,3,3392.412,-5115.183,326.4281,0,0,0,100,0),
(@PATH,4,3396.002,-5105.536,325.4281,0,0,0,100,0),
(@PATH,5,3392.412,-5115.183,326.4281,0,0,0,100,0),
(@PATH,6,3386.938,-5121.034,326.8031,0,0,0,100,0),
(@PATH,7,3389.308,-5129.32,326.8031,0,0,0,100,0),
(@PATH,8,3387.242,-5145.025,325.077,0,0,0,100,0),
(@PATH,9,3386.143,-5164.068,324.577,0,0,0,100,0),
(@PATH,10,3380.827,-5178.86,326.6648,0,0,0,100,0),
(@PATH,11,3372.493,-5186.028,328.6648,0,0,0,100,0),
(@PATH,12,3380.827,-5178.86,326.6648,0,0,0,100,0),
(@PATH,13,3386.143,-5164.068,324.577,0,0,0,100,0),
(@PATH,14,3387.242,-5145.025,325.077,0,0,0,100,0);

-- Pathing for Runic War Golem Entry: 26347
SET @NPC := 118166;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3320.65,`position_y`=-5113.277,`position_z`=322.6168 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3322.563,-5122.774,322.6173,0,0,0,100,0),
(@PATH,2,3320.975,-5130.612,322.6162,0,0,0,100,0),
(@PATH,3,3314.87,-5139.458,322.6167,0,0,0,100,0),
(@PATH,4,3301.187,-5142.882,322.617,0,0,0,100,0),
(@PATH,5,3293.289,-5139.383,322.6163,0,0,0,100,0),
(@PATH,6,3287.069,-5133.253,322.6165,0,0,0,100,0),
(@PATH,7,3284.455,-5126.468,322.617,0,0,0,100,0),
(@PATH,8,3284.432,-5120.679,322.6172,0,0,0,100,0),
(@PATH,9,3288.142,-5115.017,322.6172,0,0,0,100,0),
(@PATH,10,3293.354,-5109.261,322.6165,0,0,0,100,0),
(@PATH,11,3301.061,-5106.675,322.6162,0,0,0,100,0),
(@PATH,12,3311.905,-5106.819,322.6147,0,0,0,100,0),
(@PATH,13,3320.65,-5113.277,322.6168,0,0,0,100,0);

-- Pathing for Runic War Golem Entry: 26347
SET @NPC := 118164;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3646.954,`position_y`=-5101.169,`position_z`=165.0127 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3645.989,-5127.884,165.5127,0,0,0,100,0),
(@PATH,2,3636.442,-5141.369,163.8923,0,0,0,100,0),
(@PATH,3,3627.73,-5146.558,164.2464,0,0,0,100,0),
(@PATH,4,3636.442,-5141.369,163.8923,0,0,0,100,0),
(@PATH,5,3645.989,-5127.884,165.5127,0,0,0,100,0),
(@PATH,6,3646.954,-5101.169,165.0127,0,0,0,100,0),
(@PATH,7,3645.203,-5068.576,169.4007,0,0,0,100,0),
(@PATH,8,3640.716,-5039.022,176.9444,0,0,0,100,0),
(@PATH,9,3645.203,-5068.576,169.4007,0,0,0,100,0),
(@PATH,10,3646.954,-5101.169,165.0127,0,0,0,100,0);

-- Pathing for Runic War Golem Entry: 26347
SET @NPC := 118157;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3359.965,`position_y`=-5051.063,`position_z`=324.4915 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3357.555,-5029.944,319.8653,0,0,0,100,0),
(@PATH,2,3356.47,-5017.849,316.0019,0,0,0,100,0),
(@PATH,3,3357.187,-5010.518,314.4818,0,0,0,100,0),
(@PATH,4,3357.542,-5001.491,312.6571,0,0,0,100,0),
(@PATH,5,3358.298,-4992.609,309.518,0,0,0,100,0),
(@PATH,6,3359.164,-4979.575,306.3201,0,0,0,100,0),
(@PATH,7,3358.098,-4968.287,305.3201,0,0,0,100,0),
(@PATH,8,3359.164,-4979.575,306.3201,0,0,0,100,0),
(@PATH,9,3358.298,-4992.609,309.518,0,0,0,100,0),
(@PATH,10,3357.542,-5001.491,312.6571,0,0,0,100,0),
(@PATH,11,3357.187,-5010.518,314.4818,0,0,0,100,0),
(@PATH,12,3356.47,-5017.849,316.0019,0,0,0,100,0),
(@PATH,13,3357.555,-5029.944,319.8653,0,0,0,100,0),
(@PATH,14,3357.853,-5040.213,321.8856,0,0,0,100,0),
(@PATH,15,3359.965,-5051.063,324.4915,0,0,0,100,0);

-- Pathing for Runic War Golem Entry: 26347
SET @NPC := 109948;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=26347,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=3332.511,`position_y`=-5175.127,`position_z`=331.7538 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3327.189,-5173.438,331.7485,0,0,0,100,0),
(@PATH,2,3332.511,-5175.127,331.7538,0,0,0,100,0),
(@PATH,3,3335.935,-5171.569,336.5016,0,0,0,100,0),
(@PATH,4,3339.744,-5168.044,340.9769,0,0,0,100,0),
(@PATH,5,3343.647,-5163.103,340.9769,0,0,0,100,0),
(@PATH,6,3339.817,-5158.081,340.9769,0,0,0,100,0),
(@PATH,7,3332.336,-5149.312,340.9769,0,0,0,100,0),
(@PATH,8,3339.817,-5158.081,340.9769,0,0,0,100,0),
(@PATH,9,3343.647,-5163.103,340.9769,0,0,0,100,0),
(@PATH,10,3339.744,-5168.044,340.9769,0,0,0,100,0),
(@PATH,11,3335.935,-5171.569,336.5016,0,0,0,100,0),
(@PATH,12,3332.511,-5175.127,331.7538,0,0,0,100,0);

-- Pathing for Runic War Golem Entry: 26347
SET @NPC := 109945;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=26347,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=3268.374,`position_y`=-5079.969,`position_z`=340.9769 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3280.72,-5085.368,340.9769,0,0,0,100,0),
(@PATH,2,3285.413,-5090.898,340.9769,0,0,0,100,0),
(@PATH,3,3280.72,-5085.368,340.9769,0,0,0,100,0),
(@PATH,4,3274.152,-5077.005,340.9769,0,0,0,100,0),
(@PATH,5,3268.374,-5079.969,340.9769,0,0,0,100,0);

-- Pathing for Rune Reaver Entry: 26268
SET @NPC := 110571;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4943.383,`position_y`=-4628.32,`position_z`=219.8363 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4953.392,-4639.618,219.5298,0,0,0,100,0),
(@PATH,2,4943.383,-4628.32,219.8363,0,0,0,100,0),
(@PATH,3,4937.893,-4627.585,220.6231,0,0,0,100,0),
(@PATH,4,4930.792,-4625.509,220.5757,0,0,0,100,0),
(@PATH,5,4918.872,-4620.807,219.5784,0,0,0,100,0),
(@PATH,6,4911.864,-4618.355,219.4935,0,0,0,100,0),
(@PATH,7,4904.523,-4611.126,219.5222,0,0,0,100,0),
(@PATH,8,4905.18,-4599.718,219.6071,0,0,0,100,0),
(@PATH,9,4908.717,-4580.935,219.6839,0,0,0,100,0),
(@PATH,10,4913.14,-4560.027,219.5673,0,0,0,100,0),
(@PATH,11,4908.717,-4580.935,219.6839,0,0,0,100,0),
(@PATH,12,4905.18,-4599.718,219.6071,0,0,0,100,0),
(@PATH,13,4904.523,-4611.126,219.5222,0,0,0,100,0),
(@PATH,14,4911.864,-4618.355,219.4935,0,0,0,100,0),
(@PATH,15,4918.872,-4620.807,219.5784,0,0,0,100,0),
(@PATH,16,4930.792,-4625.509,220.5757,0,0,0,100,0),
(@PATH,17,4937.893,-4627.585,220.6231,0,0,0,100,0),
(@PATH,18,4943.383,-4628.32,219.8363,0,0,0,100,0);

-- Pathing for Rune Reaver Entry: 26268
SET @NPC := 110573;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4855.043,`position_y`=-4537.645,`position_z`=204.8494 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4849.041,-4535.425,204.8447,0,0,0,100,0),
(@PATH,2,4855.043,-4537.645,204.8494,0,0,0,100,0),
(@PATH,3,4866.675,-4541.856,204.8586,0,0,0,100,0),
(@PATH,4,4874.014,-4544.58,204.8644,0,0,0,100,0),
(@PATH,5,4884.994,-4548.653,208.6604,0,0,0,100,0),
(@PATH,6,4894.294,-4552.636,215.3105,0,0,0,100,0),
(@PATH,7,4899.979,-4554.877,219.4517,0,0,0,100,0),
(@PATH,8,4894.294,-4552.636,215.3105,0,0,0,100,0),
(@PATH,9,4884.994,-4548.653,208.6604,0,0,0,100,0),
(@PATH,10,4874.014,-4544.58,204.8644,0,0,0,100,0),
(@PATH,11,4866.675,-4541.856,204.8586,0,0,0,100,0),
(@PATH,12,4855.043,-4537.645,204.8494,0,0,0,100,0);

-- Pathing for Rune Reaver Entry: 26268
SET @NPC := 110572;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4937.893,`position_y`=-4627.585,`position_z`=220.6231 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4943.383,-4628.32,219.8363,0,0,0,100,0),
(@PATH,2,4937.893,-4627.585,220.6231,0,0,0,100,0),
(@PATH,3,4930.792,-4625.509,220.5757,0,0,0,100,0),
(@PATH,4,4918.872,-4620.807,219.5784,0,0,0,100,0),
(@PATH,5,4911.864,-4618.355,219.4935,0,0,0,100,0),
(@PATH,6,4904.523,-4611.126,219.5222,0,0,0,100,0),
(@PATH,7,4905.18,-4599.718,219.6071,0,0,0,100,0),
(@PATH,8,4908.717,-4580.935,219.6839,0,0,0,100,0),
(@PATH,9,4913.14,-4560.027,219.5673,0,0,0,100,0),
(@PATH,10,4908.717,-4580.935,219.6839,0,0,0,100,0),
(@PATH,11,4905.18,-4599.718,219.6071,0,0,0,100,0),
(@PATH,12,4904.523,-4611.126,219.5222,0,0,0,100,0),
(@PATH,13,4911.864,-4618.355,219.4935,0,0,0,100,0),
(@PATH,14,4918.872,-4620.807,219.5784,0,0,0,100,0),
(@PATH,15,4930.792,-4625.509,220.5757,0,0,0,100,0),
(@PATH,16,4937.893,-4627.585,220.6231,0,0,0,100,0);

-- Pathing for Niffelem Forefather Entry: 29974
SET @NPC := 203040;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7709.27,`position_y`=-3164.7,`position_z`=868.8315 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7693.262,-3168.185,868.2753,0,0,0,100,0),
(@PATH,2,7709.27,-3164.7,868.8315,0,0,0,100,0),
(@PATH,3,7727.441,-3152.349,867.8315,0,0,0,100,0),
(@PATH,4,7757.799,-3144.588,868.1001,0,0,0,100,0),
(@PATH,5,7783.903,-3146.267,868.2236,0,0,0,100,0),
(@PATH,6,7757.799,-3144.588,868.1001,0,0,0,100,0),
(@PATH,7,7727.441,-3152.349,867.8315,0,0,0,100,0),
(@PATH,8,7709.27,-3164.7,868.8315,0,0,0,100,0);

-- Pathing for Niffelem Forefather Entry: 29974
SET @NPC := 203041;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7742.933,`position_y`=-3233.286,`position_z`=862.2076 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7727.288,-3235.9,861.9932,0,0,0,100,0),
(@PATH,2,7713.503,-3235.01,863.4932,0,0,0,100,0),
(@PATH,3,7727.288,-3235.9,861.9932,0,0,0,100,0),
(@PATH,4,7742.933,-3233.286,862.2076,0,0,0,100,0),
(@PATH,5,7752.816,-3221.191,862.9576,0,0,0,100,0),
(@PATH,6,7762.07,-3204.258,863.3326,0,0,0,100,0),
(@PATH,7,7764.636,-3193.307,863.6109,0,0,0,100,0),
(@PATH,8,7762.07,-3204.258,863.3326,0,0,0,100,0),
(@PATH,9,7752.816,-3221.191,862.9576,0,0,0,100,0),
(@PATH,10,7742.933,-3233.286,862.2076,0,0,0,100,0);

-- Pathing for Niffelem Forefather Entry: 29974
SET @NPC := 203042;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7785.011,`position_y`=-3298.777,`position_z`=864.6912 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7802.621,-3290.984,860.9608,0,0,0,100,0),
(@PATH,2,7823.592,-3295.113,860.8358,0,0,0,100,0),
(@PATH,3,7838.511,-3308.602,860.8699,0,0,0,100,0),
(@PATH,4,7850.641,-3319.998,859.9949,0,0,0,100,0),
(@PATH,5,7838.511,-3308.602,860.8699,0,0,0,100,0),
(@PATH,6,7823.592,-3295.113,860.8358,0,0,0,100,0),
(@PATH,7,7802.621,-3290.984,860.9608,0,0,0,100,0),
(@PATH,8,7785.011,-3298.777,864.6912,0,0,0,100,0);

-- Pathing for Niffelem Forefather Entry: 29974
SET @NPC := 203043;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7812.378,`position_y`=-3226.627,`position_z`=858.0397 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7824.979,-3215.046,858.6647,0,0,0,100,0),
(@PATH,2,7831.885,-3203.466,858.1647,0,0,0,100,0),
(@PATH,3,7824.135,-3194.195,859.362,0,0,0,100,0),
(@PATH,4,7814.883,-3180.783,861.112,0,0,0,100,0),
(@PATH,5,7824.135,-3194.195,859.362,0,0,0,100,0),
(@PATH,6,7831.885,-3203.466,858.1647,0,0,0,100,0),
(@PATH,7,7824.979,-3215.046,858.6647,0,0,0,100,0),
(@PATH,8,7812.378,-3226.627,858.0397,0,0,0,100,0),
(@PATH,9,7800.624,-3238.984,859.4147,0,0,0,100,0),
(@PATH,10,7804.482,-3266.558,859.9147,0,0,0,100,0),
(@PATH,11,7800.624,-3238.984,859.4147,0,0,0,100,0),
(@PATH,12,7812.378,-3226.627,858.0397,0,0,0,100,0);

-- Pathing for Niffelem Forefather Entry: 29974
SET @NPC := 203045;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7751.154,`position_y`=-3282.728,`position_z`=864.8948 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7753.893,-3290.935,865.2698,0,0,0,100,0),
(@PATH,2,7753.763,-3301.661,864.6334,0,0,0,100,0),
(@PATH,3,7749.471,-3308.78,865.0084,0,0,0,100,0),
(@PATH,4,7733.761,-3302.855,864.6334,0,0,0,100,0),
(@PATH,5,7724.081,-3302.346,865.238,0,0,0,100,0),
(@PATH,6,7733.761,-3302.855,864.6334,0,0,0,100,0),
(@PATH,7,7749.471,-3308.78,865.0084,0,0,0,100,0),
(@PATH,8,7753.763,-3301.661,864.6334,0,0,0,100,0),
(@PATH,9,7753.893,-3290.935,865.2698,0,0,0,100,0),
(@PATH,10,7751.154,-3282.728,864.8948,0,0,0,100,0),
(@PATH,11,7740.746,-3275.625,863.0198,0,0,0,100,0),
(@PATH,12,7751.154,-3282.728,864.8948,0,0,0,100,0);

-- Add random movement to other 6 Niffelem Forefathers
UPDATE `creature` SET `spawndist`=25,`MovementType`=1 WHERE `id`=29974 AND `MovementType`=0;

-- Add random movement to Frostborn Ghost & Frostborn Warriors 
UPDATE `creature` SET `spawndist`=25,`MovementType`=1 WHERE `id` IN (30144,30135);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 116656;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27229,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=2717.958,`position_y`=-852.0486,`position_z`=-17.81084 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2698.013,-840.5762,-18.87237,0,0,0,100,0),
(@PATH,2,2717.958,-852.0486,-17.81084,0,0,0,100,0),
(@PATH,3,2747.685,-835.9616,-18.52517,0,0,0,100,0),
(@PATH,4,2736.963,-824.5544,-18.11758,0,0,0,100,0),
(@PATH,5,2747.685,-835.9616,-18.52517,0,0,0,100,0),
(@PATH,6,2717.958,-852.0486,-17.81084,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104255;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2804.868,`position_y`=-1251.195,`position_z`=1.766804 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2791.833,-1244.833,1.159086,0,0,0,100,0),
(@PATH,2,2776.921,-1251.052,1.034086,0,0,0,100,0),
(@PATH,3,2750.998,-1267.749,1.621623,0,0,0,100,0),
(@PATH,4,2747.293,-1287.059,3.621623,0,0,0,100,0),
(@PATH,5,2776.598,-1286.028,2.856715,0,0,0,100,0),
(@PATH,6,2790.336,-1281.491,2.856715,0,0,0,100,0),
(@PATH,7,2806.178,-1269.708,1.748952,0,0,0,100,0),
(@PATH,8,2810.145,-1259.655,1.391804,0,0,0,100,0),
(@PATH,9,2804.868,-1251.195,1.766804,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104300;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2905.596,`position_y`=-951.8702,`position_z`=3.332973 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2899.221,-961.7573,0.6871157,0,0,0,100,0),
(@PATH,2,2905.652,-975.7508,0.5727639,0,0,0,100,0),
(@PATH,3,2911.825,-995.7515,0.5727639,0,0,0,100,0),
(@PATH,4,2919.04,-996.2648,2.072764,0,0,0,100,0),
(@PATH,5,2936.101,-978.8578,5.70028,0,0,0,100,0),
(@PATH,6,2935.195,-972.1996,5.70028,0,0,0,100,0),
(@PATH,7,2937.132,-963.5467,6.505372,0,0,0,100,0),
(@PATH,8,2942.209,-959.0795,7.380372,0,0,0,100,0),
(@PATH,9,2936.745,-951.6036,7.255372,0,0,0,100,0),
(@PATH,10,2925.32,-946.2381,5.957973,0,0,0,100,0),
(@PATH,11,2914.287,-943.9521,4.832973,0,0,0,100,0),
(@PATH,12,2905.596,-951.8702,3.332973,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104302;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2821.752,`position_y`=-874.8417,`position_z`=-14.74422 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2847.016,-880.9863,-1.761606,0,0,0,100,0),
(@PATH,2,2859.862,-879.0374,3.863394,0,0,0,100,0),
(@PATH,3,2872.061,-881.687,7.820289,0,0,0,100,0),
(@PATH,4,2859.862,-879.0374,3.863394,0,0,0,100,0),
(@PATH,5,2847.285,-881.0474,-1.761606,0,0,0,100,0),
(@PATH,6,2821.752,-874.8417,-14.74422,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104312;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2943.969,`position_y`=-1048.965,`position_z`=5.101302 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2941.843,-1039.475,5.726302,0,0,0,100,0),
(@PATH,2,2949.843,-1030.536,7.24691,0,0,0,100,0),
(@PATH,3,2956.156,-1021.9,6.74691,0,0,0,100,0),
(@PATH,4,2953.461,-1003.218,5.12191,0,0,0,100,0),
(@PATH,5,2948.249,-991.8906,6.32528,0,0,0,100,0),
(@PATH,6,2938.315,-992.0608,5.45028,0,0,0,100,0),
(@PATH,7,2923.623,-998.5035,2.697764,0,0,0,100,0),
(@PATH,8,2917.823,-1008.725,1.368839,0,0,0,100,0),
(@PATH,9,2924.897,-1030.634,1.368839,0,0,0,100,0),
(@PATH,10,2927.607,-1053.356,1.400305,0,0,0,100,0),
(@PATH,11,2932.153,-1063.109,2.775305,0,0,0,100,0),
(@PATH,12,2947.777,-1060.567,5.476302,0,0,0,100,0),
(@PATH,13,2943.969,-1048.965,5.101302,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104299;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2878.691,`position_y`=-918.3934,`position_z`=3.037135 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2881.817,-906.0959,6.162135,0,0,0,100,0),
(@PATH,2,2877.402,-902.8173,6.162135,0,0,0,100,0),
(@PATH,3,2869.271,-905.7285,3.787135,0,0,0,100,0),
(@PATH,4,2860.845,-913.6956,0.9171581,0,0,0,100,0),
(@PATH,5,2855.832,-904.1615,1.042158,0,0,0,100,0),
(@PATH,6,2855.849,-900.3548,1.167158,0,0,0,100,0),
(@PATH,7,2866.709,-902.1387,3.787135,0,0,0,100,0),
(@PATH,8,2874.706,-897.7801,6.570289,0,0,0,100,0),
(@PATH,9,2882.54,-901.2561,7.287135,0,0,0,100,0),
(@PATH,10,2886.823,-908.6275,6.412135,0,0,0,100,0),
(@PATH,11,2892.139,-921.2299,4.412135,0,0,0,100,0),
(@PATH,12,2894.74,-929.5193,3.412135,0,0,0,100,0),
(@PATH,13,2889.814,-938.6491,1.062116,0,0,0,100,0),
(@PATH,14,2883.413,-931.7945,0.9121351,0,0,0,100,0),
(@PATH,15,2874.375,-924.762,0.7871351,0,0,0,100,0),
(@PATH,16,2878.691,-918.3934,3.037135,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104303;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2862.517,`position_y`=-849.3773,`position_z`=16.0366 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2850.917,-839.008,16.6616,0,0,0,100,0),
(@PATH,2,2834.721,-821.3724,16.35888,0,0,0,100,0),
(@PATH,3,2829.143,-812.616,16.75702,0,0,0,100,0),
(@PATH,4,2833.205,-809.7637,16.75702,0,0,0,100,0),
(@PATH,5,2849.156,-826.3764,17.10888,0,0,0,100,0),
(@PATH,6,2867.899,-845.172,13.44489,0,0,0,100,0),
(@PATH,7,2874.827,-850.2648,8.319893,0,0,0,100,0),
(@PATH,8,2881.642,-855.6507,7.069893,0,0,0,100,0),
(@PATH,9,2876.659,-862.6102,6.069893,0,0,0,100,0),
(@PATH,10,2870.918,-857.8684,8.819893,0,0,0,100,0),
(@PATH,11,2862.517,-849.3773,16.0366,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104289;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2859.201,`position_y`=-1110.844,`position_z`=-7.820363 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2838.448,-1100.916,-10.32036,0,0,0,100,0),
(@PATH,2,2821.981,-1100.407,-10.52881,0,0,0,100,0),
(@PATH,3,2859.201,-1110.844,-7.820363,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104288;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2961.971,`position_y`=-1206.705,`position_z`=5.116786 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2960.254,-1191.745,5.178555,0,0,0,100,0),
(@PATH,2,2944.208,-1185.239,6.678555,0,0,0,100,0),
(@PATH,3,2936.293,-1195.067,7.053555,0,0,0,100,0),
(@PATH,4,2914.819,-1193.023,6.254488,0,0,0,100,0),
(@PATH,5,2904.133,-1179.803,4.629488,0,0,0,100,0),
(@PATH,6,2895.289,-1198.563,4.908248,0,0,0,100,0),
(@PATH,7,2895.378,-1223.209,3.29712,0,0,0,100,0),
(@PATH,8,2910.218,-1232.834,1.698269,0,0,0,100,0),
(@PATH,9,2923.046,-1223.271,1.823269,0,0,0,100,0),
(@PATH,10,2935.214,-1209.845,3.866786,0,0,0,100,0),
(@PATH,11,2940.961,-1203.404,5.241786,0,0,0,100,0),
(@PATH,12,2961.971,-1206.705,5.116786,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104282;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2873.173,`position_y`=-1172.022,`position_z`=1.283248 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2855.471,-1183.277,0.8133984,0,0,0,100,0),
(@PATH,2,2840.394,-1190.353,0.5633984,0,0,0,100,0),
(@PATH,3,2828.198,-1197.965,0.545311,0,0,0,100,0),
(@PATH,4,2823.18,-1207.752,0.5932741,0,0,0,100,0),
(@PATH,5,2826.128,-1215.542,0.5932741,0,0,0,100,0),
(@PATH,6,2850.605,-1227.658,1.475805,0,0,0,100,0),
(@PATH,7,2885.619,-1237.069,1.082685,0,0,0,100,0),
(@PATH,8,2896.538,-1218.785,3.92212,0,0,0,100,0),
(@PATH,9,2894.448,-1191.228,4.408248,0,0,0,100,0),
(@PATH,10,2881.56,-1176.025,2.783248,0,0,0,100,0),
(@PATH,11,2873.173,-1172.022,1.283248,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104313;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2866.15,`position_y`=-1042.753,`position_z`=-4.842813 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2892.274,-1021.913,-4.426641,0,0,0,100,0),
(@PATH,2,2908.712,-1010.955,-0.7561612,0,0,0,100,0),
(@PATH,3,2916.6,-1006.593,0.9938388,0,0,0,100,0),
(@PATH,4,2931.316,-999.233,3.697764,0,0,0,100,0),
(@PATH,5,2916.6,-1006.593,0.9938388,0,0,0,100,0),
(@PATH,6,2908.712,-1010.955,-0.7561612,0,0,0,100,0),
(@PATH,7,2892.274,-1021.913,-4.426641,0,0,0,100,0),
(@PATH,8,2866.15,-1042.753,-4.842813,0,0,0,100,0),
(@PATH,9,2843.705,-1044.362,-10.84281,0,0,0,100,0),
(@PATH,10,2866.15,-1042.753,-4.842813,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104285;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2826.858,`position_y`=-1187.9,`position_z`=-0.829689 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2807.957,-1196.852,-0.829689,0,0,0,100,0),
(@PATH,2,2790.929,-1196.677,-4.436954,0,0,0,100,0),
(@PATH,3,2859.056,-1191.648,4.188398,0,0,0,100,0),
(@PATH,4,2826.858,-1187.9,-0.829689,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104294;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2837.888,`position_y`=-1022.804,`position_z`=-15.48377 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2825.521,-1027.604,-17.81549,0,0,0,100,0),
(@PATH,2,2822.49,-1036.64,-14.97614,0,0,0,100,0),
(@PATH,3,2842.205,-1029.125,-10.13129,0,0,0,100,0),
(@PATH,4,2849.388,-1021.512,-4.991766,0,0,0,100,0),
(@PATH,5,2842.463,-1029.043,-9.916177,0,0,0,100,0),
(@PATH,6,2834.086,-1032.984,-12.02614,0,0,0,100,0),
(@PATH,7,2822.49,-1036.64,-14.97614,0,0,0,100,0),
(@PATH,8,2850.019,-1019.803,-5.240389,0,0,0,100,0),
(@PATH,9,2837.888,-1022.804,-15.48377,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104291;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2912.86,`position_y`=-1084.628,`position_z`=1.902801 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2919.425,-1075.065,2.277801,0,0,0,100,0),
(@PATH,2,2945.871,-1074.501,6.231542,0,0,0,100,0),
(@PATH,3,2962.812,-1101.852,5.404822,0,0,0,100,0),
(@PATH,4,2971.769,-1111.746,5.353806,0,0,0,100,0),
(@PATH,5,2958.454,-1131.615,6.279822,0,0,0,100,0),
(@PATH,6,2923.928,-1129.304,3.166746,0,0,0,100,0),
(@PATH,7,2905.813,-1109.318,1.916746,0,0,0,100,0),
(@PATH,8,2911.473,-1096.334,2.527801,0,0,0,100,0),
(@PATH,9,2912.86,-1084.628,1.902801,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104292;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2962.194,`position_y`=-904.453,`position_z`=8.116007 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2956.887,-874.8527,7.38236,0,0,0,100,0),
(@PATH,2,2935.122,-866.2645,8.769132,0,0,0,100,0),
(@PATH,3,2914.541,-880.2153,10.14801,0,0,0,100,0),
(@PATH,4,2925.265,-901.0575,10.33249,0,0,0,100,0),
(@PATH,5,2922.499,-912.9219,9.332486,0,0,0,100,0),
(@PATH,6,2924.213,-921.9735,8.207486,0,0,0,100,0),
(@PATH,7,2929.018,-929.4181,7.832486,0,0,0,100,0),
(@PATH,8,2957.894,-937.6589,8.130371,0,0,0,100,0),
(@PATH,9,2962.194,-904.453,8.116007,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104293;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2895.921,`position_y`=-1134.2,`position_z`=1.798322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2930.059,-1134.693,3.973824,0,0,0,100,0),
(@PATH,2,2951.594,-1140.05,5.859762,0,0,0,100,0),
(@PATH,3,2961.647,-1161.825,5.359762,0,0,0,100,0),
(@PATH,4,2927.842,-1163.731,4.348824,0,0,0,100,0),
(@PATH,5,2914.999,-1156.421,3.098824,0,0,0,100,0),
(@PATH,6,2907.036,-1165.437,3.848824,0,0,0,100,0),
(@PATH,7,2896.543,-1157.753,2.423322,0,0,0,100,0),
(@PATH,8,2892.274,-1152.018,1.798322,0,0,0,100,0),
(@PATH,9,2898.064,-1144.837,2.673322,0,0,0,100,0),
(@PATH,10,2895.921,-1134.2,1.798322,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104298;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2805.589,`position_y`=-1081.377,`position_z`=-17.2577 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2855.113,-1079.183,-10.86029,0,0,0,100,0),
(@PATH,2,2843.607,-1076.875,-12.48529,0,0,0,100,0),
(@PATH,3,2825.508,-1075.496,-12.2577,0,0,0,100,0),
(@PATH,4,2805.589,-1081.377,-17.2577,0,0,0,100,0),
(@PATH,5,2825.508,-1075.496,-12.2577,0,0,0,100,0),
(@PATH,6,2843.607,-1076.875,-12.48529,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104315;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3110.401,`position_y`=-1253.015,`position_z`=13.46371 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3113.668,-1263.064,16.11616,0,0,0,100,0),
(@PATH,2,3110.401,-1253.015,13.46371,0,0,0,100,0),
(@PATH,3,3111.429,-1236.31,11.58871,0,0,0,100,0),
(@PATH,4,3122.498,-1227.572,15.46371,0,0,0,100,0),
(@PATH,5,3133.695,-1219.953,19.40269,0,0,0,100,0),
(@PATH,6,3144.987,-1217.686,21.77769,0,0,0,100,0),
(@PATH,7,3156.936,-1210.385,25.65269,0,0,0,100,0),
(@PATH,8,3144.987,-1217.686,21.77769,0,0,0,100,0),
(@PATH,9,3133.695,-1219.953,19.40269,0,0,0,100,0),
(@PATH,10,3122.498,-1227.572,15.46371,0,0,0,100,0),
(@PATH,11,3111.429,-1236.31,11.58871,0,0,0,100,0),
(@PATH,12,3110.401,-1253.015,13.46371,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104315;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3113.668,`position_y`=-1263.064,`position_z`=16.11616 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3110.401,-1253.015,13.46371,0,0,0,100,0),
(@PATH,2,3111.429,-1236.31,11.58871,0,0,0,100,0),
(@PATH,3,3122.498,-1227.572,15.46371,0,0,0,100,0),
(@PATH,4,3133.695,-1219.953,19.40269,0,0,0,100,0),
(@PATH,5,3144.987,-1217.686,21.77769,0,0,0,100,0),
(@PATH,6,3156.936,-1210.385,25.65269,0,0,0,100,0),
(@PATH,7,3144.987,-1217.686,21.77769,0,0,0,100,0),
(@PATH,8,3133.695,-1219.953,19.40269,0,0,0,100,0),
(@PATH,9,3122.498,-1227.572,15.46371,0,0,0,100,0),
(@PATH,10,3111.429,-1236.31,11.58871,0,0,0,100,0),
(@PATH,11,3110.401,-1253.015,13.46371,0,0,0,100,0),
(@PATH,12,3113.668,-1263.064,16.11616,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104286;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3088.583,`position_y`=-1156.126,`position_z`=17.39679 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3083.364,-1145.739,19.27179,0,0,0,100,0),
(@PATH,2,3082.374,-1140.374,20.52179,0,0,0,100,0),
(@PATH,3,3076.677,-1139.317,20.14679,0,0,0,100,0),
(@PATH,4,3077.877,-1133.612,21.02179,0,0,0,100,0),
(@PATH,5,3088.356,-1118.187,23.05031,0,0,0,100,0),
(@PATH,6,3072.231,-1108.131,21.80031,0,0,0,100,0),
(@PATH,7,3076.281,-1100.623,21.92531,0,0,0,100,0),
(@PATH,8,3086.297,-1103.101,25.05031,0,0,0,100,0),
(@PATH,9,3094.429,-1104.709,24.55031,0,0,0,100,0),
(@PATH,10,3106.847,-1117.23,23.42531,0,0,0,100,0),
(@PATH,11,3115.25,-1125.531,23.92531,0,0,0,100,0),
(@PATH,12,3100.21,-1153.944,20.14997,0,0,0,100,0),
(@PATH,13,3087.017,-1178.354,13.93423,0,0,0,100,0),
(@PATH,14,3082.906,-1175.015,14.30923,0,0,0,100,0),
(@PATH,15,3088.583,-1156.126,17.39679,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104290;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2989.215,`position_y`=-1127.607,`position_z`=6.228806 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3004.259,-1106.531,3.603805,0,0,0,100,0),
(@PATH,2,3033.57,-1102.447,4.356295,0,0,0,100,0),
(@PATH,3,3037.122,-1119.411,5.481295,0,0,0,100,0),
(@PATH,4,3033.48,-1148.527,6.284178,0,0,0,100,0),
(@PATH,5,3009.911,-1156.986,7.97834,0,0,0,100,0),
(@PATH,6,2993.419,-1149.693,7.562151,0,0,0,100,0),
(@PATH,7,2989.215,-1127.607,6.228806,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104287;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3024.798,`position_y`=-1230.706,`position_z`=4.43573 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3025.203,-1243.132,6.22729,0,0,0,100,0),
(@PATH,2,3005.912,-1240.063,2.10229,0,0,0,100,0),
(@PATH,3,2993.987,-1228.242,1.67068,0,0,0,100,0),
(@PATH,4,2985.902,-1209.867,5.42068,0,0,0,100,0),
(@PATH,5,3001.862,-1184.164,6.22842,0,0,0,100,0),
(@PATH,6,3014.546,-1170.865,6.85342,0,0,0,100,0),
(@PATH,7,3032.88,-1172.902,4.72842,0,0,0,100,0),
(@PATH,8,3029.85,-1187.033,4.10342,0,0,0,100,0),
(@PATH,9,3018.071,-1205.466,4.68573,0,0,0,100,0),
(@PATH,10,3024.798,-1230.706,4.43573,0,0,0,100,0);

-- Pathing for Forgotten Footman Entry: 27229
SET @NPC := 104295;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3071.868,`position_y`=-1268.397,`position_z`=12.20938 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3069.674,-1259.386,10.85567,0,0,0,100,0),
(@PATH,2,3068.374,-1255.473,10.73067,0,0,0,100,0),
(@PATH,3,3066.066,-1244.444,11.2446,0,0,0,100,0),
(@PATH,4,3058.969,-1244.361,11.6196,0,0,0,100,0),
(@PATH,5,3052.487,-1247.199,11.4946,0,0,0,100,0),
(@PATH,6,3052.536,-1241.779,11.2446,0,0,0,100,0),
(@PATH,7,3061.56,-1234.533,12.3696,0,0,0,100,0),
(@PATH,8,3083.357,-1235.259,11.98067,0,0,0,100,0),
(@PATH,9,3075.396,-1236.323,12.60567,0,0,0,100,0),
(@PATH,10,3072.659,-1248.836,10.35567,0,0,0,100,0),
(@PATH,11,3077.105,-1272.881,13.58438,0,0,0,100,0),
(@PATH,12,3073.281,-1273.411,13.95938,0,0,0,100,0),
(@PATH,13,3071.868,-1268.397,12.20938,0,0,0,100,0);

-- Pathing for Onslaught Footman Entry: 27203
SET @NPC := 102197;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2959.326,`position_y`=-395.5391,`position_z`=125.0946 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2962.84,-391.6742,126.4696,0,0,0,100,0),
(@PATH,2,2962.84,-387.4278,126.2249,0,0,0,100,0),
(@PATH,3,2962.838,-383.4186,126.0946,6000,0,0,100,0),
(@PATH,4,2964.144,-389.1896,126.4696,0,0,0,100,0),
(@PATH,5,2961.882,-397.0358,125.9696,0,0,0,100,0),
(@PATH,6,2954.763,-397.5117,122.8446,0,0,0,100,0),
(@PATH,7,2948.593,-393.6725,119.4696,0,0,0,100,0),
(@PATH,8,2940.545,-388.0684,115.3446,0,0,0,100,0),
(@PATH,9,2933.778,-384.1037,114.2196,6000,0,0,100,0),
(@PATH,10,2944.897,-392.185,117.8446,0,0,0,100,0),
(@PATH,11,2952.504,-395.6488,121.8446,0,0,0,100,0),
(@PATH,12,2959.326,-395.5391,125.0946,0,0,0,100,0);

-- Pathing for Onslaught Footman Entry: 27203
SET @NPC := 102179;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2758.622,`position_y`=-257.9032,`position_z`=134.5928 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2759.127,-266.1774,133.4678,0,0,0,100,0),
(@PATH,2,2751.539,-271.3302,132.9024,0,0,0,100,0),
(@PATH,3,2760.595,-265.1753,133.4678,0,0,0,100,0),
(@PATH,4,2758.622,-257.9032,134.5928,10000,0,0,100,0);

-- Pathing for Onslaught Footman Entry: 27203
SET @NPC := 102213;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2821.844,`position_y`=-398.2182,`position_z`=118.2002 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2836.377,-413.6715,118.2116,0,0,0,100,0),
(@PATH,2,2847.824,-428.9374,118.2116,0,0,0,100,0),
(@PATH,3,2846.472,-430.4803,118.2116,10000,0,0,100,0),
(@PATH,4,2837.281,-414.4826,118.2116,0,0,0,100,0),
(@PATH,5,2821.844,-398.2182,118.2002,0,0,0,100,0);

-- Pathing for Onslaught Footman Entry: 27203
SET @NPC := 105782;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27203,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=2525.812,`position_y`=-295.1712,`position_z`=2.23228 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2522.335,-293.472,1.60728,0,0,0,100,0),
(@PATH,2,2534.573,-286.8467,1.299124,0,0,0,100,0),
(@PATH,3,2543.025,-290.9288,2.299124,0,0,0,100,0),
(@PATH,4,2541.112,-300.2495,5.017283,0,0,0,100,0),
(@PATH,5,2535.901,-297.6197,5.924125,0,0,0,100,0),
(@PATH,6,2533.984,-309.6661,5.892283,0,0,0,100,0),
(@PATH,7,2529.919,-310.2605,5.837389,0,0,0,100,0),
(@PATH,8,2525.812,-295.1712,2.23228,0,0,0,100,0);

-- Pathing for Onslaught Footman Entry: 27203
SET @NPC := 105756;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27203,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=2586.93,`position_y`=-264.7181,`position_z`=0.8478023 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2583.299,-258.9597,0.8478023,0,0,0,100,0),
(@PATH,2,2586.605,-253.2055,0.9728023,0,0,0,100,0),
(@PATH,3,2588.085,-261.3564,0.8478023,0,0,0,100,0),
(@PATH,4,2594.641,-270.8868,1.282966,0,0,0,100,0),
(@PATH,5,2593.293,-277.7047,3.532966,0,0,0,100,0),
(@PATH,6,2587.672,-279.4316,5.157966,0,0,0,100,0),
(@PATH,7,2583.551,-276.3489,6.657966,4000,0,0,100,0),
(@PATH,8,2589.375,-278.8446,5.032966,0,0,0,100,0),
(@PATH,9,2595.676,-274.804,2.282966,0,0,0,100,0),
(@PATH,10,2594.056,-268.2732,0.6579659,0,0,0,100,0),
(@PATH,11,2586.93,-264.7181,0.8478023,0,0,0,100,0);

-- Pathing for Onslaught Footman Entry: 27203
SET @NPC := 105783;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27203,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=2594.2,`position_y`=-475.536,`position_z`=0.9160237 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2596.819,-478.6579,0.9160237,0,0,0,100,0),
(@PATH,2,2594.2,-475.536,0.9160237,10000,0,0,100,0);

-- Pathing for Onslaught Raven Priest Entry: 27202
SET @NPC := 102075;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2802.188,`position_y`=-345.2823,`position_z`=130.7945 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2796.222,-324.6151,130.5517,0,0,0,100,0),
(@PATH,2,2801.31,-334.3385,131.2945,0,0,0,100,0),
(@PATH,3,2802.188,-345.2823,130.7945,0,0,0,100,0),
(@PATH,4,2800.293,-358.0259,131.0445,0,0,0,100,0),
(@PATH,5,2802.188,-345.2823,130.7945,0,0,0,100,0);

-- Pathing for Onslaught Raven Priest Entry: 27202
SET @NPC := 102083;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2836.686,`position_y`=-327.3926,`position_z`=113.7116 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2803.109,-293.2266,128.4419,0,0,0,100,0),
(@PATH,2,2786.735,-273.9067,131.9504,0,0,0,100,0),
(@PATH,3,2803.03,-293.1732,128.4419,0,0,0,100,0),
(@PATH,4,2836.686,-327.3926,113.7116,0,0,0,100,0),
(@PATH,5,2870.484,-362.9376,112.5865,0,0,0,100,0),
(@PATH,6,2836.686,-327.3926,113.7116,0,0,0,100,0);

-- Pathing for Onslaught Raven Priest Entry: 27202
SET @NPC := 105717;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=27202,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=2624.781,`position_y`=-436.3073,`position_z`=40.43311 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2644.508,-439.5879,50.05303,0,0,0,100,0),
(@PATH,2,2677.022,-464.0624,50.80053,2000,0,0,100,0),
(@PATH,3,2667.324,-457.1105,50.42553,0,0,0,100,0),
(@PATH,4,2656.113,-447.4913,50.42803,0,0,0,100,0),
(@PATH,5,2645.126,-440.9579,50.42803,0,0,0,100,0),
(@PATH,6,2626.017,-437.9755,40.80811,0,0,0,100,0),
(@PATH,7,2613.63,-428.6914,36.95987,5000,0,0,100,0),
(@PATH,8,2624.781,-436.3073,40.43311,0,0,0,100,0);

-- Pathing for Onslaught Raven Priest Entry: 27202
SET @NPC := 102097;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2773.949,`position_y`=-310.9596,`position_z`=130.5517 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2758.812,-292.1544,130.6524,0,0,0,100,0),
(@PATH,2,2777.84,-271.9499,131.9504,0,0,0,100,0),
(@PATH,3,2758.812,-292.1544,130.6524,0,0,0,100,0),
(@PATH,4,2773.949,-310.9596,130.5517,0,0,0,100,0),
(@PATH,5,2783.265,-326.0737,130.5517,0,0,0,100,0),
(@PATH,6,2788.654,-341.5617,130.6524,0,0,0,100,0),
(@PATH,7,2787.105,-356.4442,130.6524,0,0,0,100,0),
(@PATH,8,2782.601,-375.6832,130.7486,0,0,0,100,0),
(@PATH,9,2787.105,-356.4442,130.6524,0,0,0,100,0),
(@PATH,10,2788.654,-341.5617,130.6524,0,0,0,100,0),
(@PATH,11,2783.265,-326.0737,130.5517,0,0,0,100,0),
(@PATH,12,2773.949,-310.9596,130.5517,0,0,0,100,0);

-- Pathing for Onslaught Raven Priest Entry: 27202
SET @NPC := 102084;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2801.698,`position_y`=-493.4148,`position_z`=126.8458 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2808.238,-485.9173,126.843,0,0,0,100,0),
(@PATH,2,2817.109,-477.4015,126.8421,0,0,0,100,0),
(@PATH,3,2808.546,-469.1276,126.842,0,0,0,100,0),
(@PATH,4,2802.375,-475.2724,126.8427,0,0,0,100,0),
(@PATH,5,2802.811,-475.7075,126.8424,10000,0,0,100,0),
(@PATH,6,2790.29,-487.0023,126.8426,0,0,0,100,0),
(@PATH,7,2798.458,-496.3188,126.8494,0,0,0,100,0),
(@PATH,8,2801.698,-493.4148,126.8458,0,0,0,100,0),
(@PATH,9,2800.922,-492.7095,126.8448,10000,0,0,100,0);

-- Remove movement from Bjorn Halgurdsson
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid`=112513;

-- Pathing for Hungering Dead Entry: 27335
SET @NPC := 97722;
SET @PATH := @NPC * 10;
UPDATE `creature_template` SET `faction_A`=1975,`faction_H`=1975 WHERE `entry`=27335;
UPDATE `creature` SET `id`=27335,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=3721.162,`position_y`=-1150.444,`position_z`=119.7043 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3722.571,-1154.455,119.7043,0,0,0,100,0),
(@PATH,2,3728.104,-1159.745,119.734,0,0,0,100,0),
(@PATH,3,3733.444,-1158.61,119.8249,0,0,0,100,0),
(@PATH,4,3738.681,-1154.988,119.9222,0,0,0,100,0),
(@PATH,5,3744.156,-1148.198,119.9499,0,0,0,100,0),
(@PATH,6,3747.033,-1139.943,119.8567,0,0,0,100,0),
(@PATH,7,3744.29,-1135.643,119.879,0,0,0,100,0),
(@PATH,8,3738.536,-1129.126,120.0035,0,0,0,100,0),
(@PATH,9,3731.969,-1131.176,119.8338,0,0,0,100,0),
(@PATH,10,3722.916,-1134.044,119.8925,0,0,0,100,0),
(@PATH,11,3720.009,-1142.116,119.7043,0,0,0,100,0),
(@PATH,12,3721.162,-1150.444,119.7043,0,0,0,100,0);

-- Pathing for Illusia Lune Entry: 27042
SET @NPC := 66177;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3647.948,`position_y`=-717.1948,`position_z`=215.0342 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3648.265,-715.3195,215.0314,0,0,0,100,0),
(@PATH,2,3644.507,-714.7984,214.2407,0,0,0,100,0),
(@PATH,3,3635.043,-713.5746,214.2407,0,0,0,100,0),
(@PATH,4,3644.625,-714.8554,214.2407,0,0,0,100,0),
(@PATH,5,3648.25,-715.2807,215.0314,0,0,0,100,0),
(@PATH,6,3647.977,-717.1859,215.0342,0,0,0,100,0),
(@PATH,7,3655.216,-718.0604,215.0296,0,0,0,100,0),
(@PATH,8,3647.948,-717.1948,215.0342,0,0,0,100,0);

-- Pathing for Mindless Wight Entry: 27287
SET @NPC := 133509;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3765.615,`position_y`=-1098.793,`position_z`=121.8268 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3762.084,-1109.439,121.806,0,0,0,100,0),
(@PATH,2,3752.516,-1126.449,119.7554,0,0,0,100,0),
(@PATH,3,3741.471,-1125.161,119.7554,0,0,0,100,0),
(@PATH,4,3738.396,-1108.291,120.8804,0,0,0,100,0),
(@PATH,5,3740.972,-1086.738,120.0845,0,0,0,100,0),
(@PATH,6,3738.396,-1108.291,120.8804,0,0,0,100,0),
(@PATH,7,3741.471,-1125.161,119.7554,0,0,0,100,0),
(@PATH,8,3752.516,-1126.449,119.7554,0,0,0,100,0),
(@PATH,9,3762.084,-1109.439,121.806,0,0,0,100,0),
(@PATH,10,3765.615,-1098.793,121.8268,0,0,0,100,0);

-- Pathing for Mindless Wight Entry: 27287
SET @NPC := 133513;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3786.24,`position_y`=-1020.522,`position_z`=118.2757 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3808.903,-1015.707,117.5769,0,0,0,100,0),
(@PATH,2,3786.24,-1020.522,118.2757,0,0,0,100,0),
(@PATH,3,3769.53,-1029.906,118.9007,0,0,0,100,0),
(@PATH,4,3749.827,-1045.751,119.9136,0,0,0,100,0),
(@PATH,5,3766.045,-1074.355,119.5845,0,0,0,100,0),
(@PATH,6,3749.827,-1045.751,119.9136,0,0,0,100,0),
(@PATH,7,3769.53,-1029.906,118.9007,0,0,0,100,0),
(@PATH,8,3786.24,-1020.522,118.2757,0,0,0,100,0);

-- Pathing for Mindless Wight Entry: 27287
SET @NPC := 133514;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3827.871,`position_y`=-1008.744,`position_z`=116.4519 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3843.853,-1000.803,114.3508,0,0,0,100,0),
(@PATH,2,3866.5,-975.2255,111.9066,0,0,0,100,0),
(@PATH,3,3880.219,-956.9473,113.0615,0,0,0,100,0),
(@PATH,4,3891.781,-929.4788,115.7108,0,0,0,100,0),
(@PATH,5,3896.316,-906.512,116.0858,0,0,0,100,0),
(@PATH,6,3891.781,-929.4788,115.7108,0,0,0,100,0),
(@PATH,7,3880.219,-956.9473,113.0615,0,0,0,100,0),
(@PATH,8,3866.5,-975.2255,111.9066,0,0,0,100,0),
(@PATH,9,3843.955,-1000.658,114.3508,0,0,0,100,0),
(@PATH,10,3827.871,-1008.744,116.4519,0,0,0,100,0);

-- Pathing for 7th Legion Cavalier Entry: 27161
SET @NPC := 133199;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3612.651,`position_y`=-726.0625,`position_z`=213.935 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,14346, '18950');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3587.445,-722.4232,213.935,0,0,0,100,0),
(@PATH,2,3555.9,-731.1179,214.44,0,0,0,100,0),
(@PATH,3,3539.474,-754.7745,215.9302,0,0,0,100,0),
(@PATH,4,3523.979,-780.5864,222.9033,0,0,0,100,0),
(@PATH,5,3539.474,-754.7745,215.9302,0,0,0,100,0),
(@PATH,6,3555.9,-731.1179,214.44,0,0,0,100,0),
(@PATH,7,3587.445,-722.4232,213.935,0,0,0,100,0),
(@PATH,8,3612.651,-726.0625,213.935,0,0,0,100,0);

-- Pathing for 7th Legion Infantryman Entry: 27160
SET @NPC := 133172;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3641.115,`position_y`=-696.2817,`position_z`=213.935 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3617.231,-699.88,213.935,0,0,0,100,0),
(@PATH,2,3600.052,-707.2169,213.935,0,0,0,100,0),
(@PATH,3,3587.962,-712.2491,213.935,0,0,0,100,0),
(@PATH,4,3557.36,-723.9453,214.94,0,0,0,100,0),
(@PATH,5,3540.534,-745.3442,214.6802,0,0,0,100,0),
(@PATH,6,3531.584,-759.6609,218.7618,0,0,0,100,0),
(@PATH,7,3540.534,-745.3442,214.6802,0,0,0,100,0),
(@PATH,8,3557.36,-723.9453,214.94,0,0,0,100,0),
(@PATH,9,3587.962,-712.2491,213.935,0,0,0,100,0),
(@PATH,10,3600.052,-707.2169,213.935,0,0,0,100,0),
(@PATH,11,3617.231,-699.88,213.935,0,0,0,100,0),
(@PATH,12,3641.115,-696.2817,213.935,0,0,0,100,0);

-- Pathing for Arctic Ram Entry: 26426
SET @NPC := 133249;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3557.356,`position_y`=-885.1018,`position_z`=213.8623 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3555.743,-872.7176,226.2373,0,0,0,100,0),
(@PATH,2,3547.863,-855.0227,241.3424,0,0,0,100,0),
(@PATH,3,3555.743,-872.7176,226.2373,0,0,0,100,0),
(@PATH,4,3557.356,-885.1018,213.8623,0,0,0,100,0);

-- Pathing for Foreman Mortuus Entry: 25280
SET @NPC := 125576;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2738.548,`position_y`=6141.264,`position_z`=77.54229 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2740.601,6148.542,77.54229,0,0,0,100,0),
(@PATH,2,2738.548,6141.264,77.54229,0,0,0,100,0),
(@PATH,3,2738.882,6136.919,77.54229,0,0,0,100,0),
(@PATH,4,2738.548,6141.264,77.54229,0,0,0,100,0);

-- Pathing for Warsong Aberration Entry: 25611
SET @NPC := 97487;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2867.919,`position_y`=6443.667,`position_z`=82.88259 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2863.174,6439.854,83.75759,0,0,0,100,0),
(@PATH,2,2848.968,6437.575,83.50759,0,0,0,100,0),
(@PATH,3,2834.608,6443.772,81.13259,0,0,0,100,0),
(@PATH,4,2828.932,6454.542,79.6442,0,0,0,100,0),
(@PATH,5,2828.173,6467.712,78.6414,0,0,0,100,0),
(@PATH,6,2830.424,6479.771,78.0164,0,0,0,100,0),
(@PATH,7,2834.636,6490.322,78.14274,0,0,0,100,0),
(@PATH,8,2842.753,6498.431,78.26774,0,0,0,100,0),
(@PATH,9,2854.071,6499.945,77.01774,0,0,0,100,0),
(@PATH,10,2863.978,6493.317,79.14274,0,0,0,100,0),
(@PATH,11,2867.187,6478.214,79.15935,0,0,0,100,0),
(@PATH,12,2867.226,6461.002,79.25759,0,0,0,100,0),
(@PATH,13,2867.919,6443.667,82.88259,0,0,0,100,0);

-- Pathing for Foreman Miles McMoody Entry: 23738
SET @NPC := 113477;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=638.4495,`position_y`=-4973.4,`position_z`=5.458665 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,638.6205,-4980.014,5.833665,0,0,0,100,0),
(@PATH,2,639.2449,-4985.371,5.708665,0,0,0,100,0),
(@PATH,3,638.6205,-4980.014,5.833665,0,0,0,100,0),
(@PATH,4,638.4495,-4973.4,5.458665,0,0,0,100,0),
(@PATH,5,643.2342,-4964.211,5.381555,0,0,0,100,0),
(@PATH,6,649.8732,-4960.353,5.881555,0,0,0,100,0),
(@PATH,7,643.2342,-4964.211,5.381555,0,0,0,100,0),
(@PATH,8,638.4495,-4973.4,5.458665,0,0,0,100,0);

-- Pathing for Dragonflayer Rune-Seer Entry: 23656
SET @NPC := 105279;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=815.9536,`position_y`=-5480.104,`position_z`=212.1486 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,807.327,-5474.987,212.2354,0,0,0,100,0),
(@PATH,2,815.9536,-5480.104,212.1486,0,0,0,100,0),
(@PATH,3,820.9525,-5473.124,212.1178,0,0,0,100,0),
(@PATH,4,815.9536,-5480.104,212.1486,0,0,0,100,0);

-- Pathing for Dragonflayer Rune-Seer Entry: 23656
SET @NPC := 105278;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1017.9,`position_y`=-5466.781,`position_z`=187.2601 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1028.798,-5462.303,187.0009,0,0,0,100,0),
(@PATH,2,1025.045,-5453.278,187.0592,0,0,0,100,0),
(@PATH,3,1013.774,-5457.924,187.2601,0,0,0,100,0),
(@PATH,4,1017.9,-5466.781,187.2601,0,0,0,100,0);

-- Pathing for Winterskorn Bonegrinder Entry: 23655
SET @NPC := 105184;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1535.755,`position_y`=-5407.994,`position_z`=190.2667 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1564.637,-5388.042,189.2125,0,0,0,100,0),
(@PATH,2,1535.755,-5407.994,190.2667,0,0,0,100,0),
(@PATH,3,1502.654,-5425.741,192.4055,0,0,0,100,0),
(@PATH,4,1477.713,-5432.612,190.0745,0,0,0,100,0),
(@PATH,5,1451.592,-5422.258,188.7154,0,0,0,100,0),
(@PATH,6,1451.592,-5422.258,188.7154,0,0,0,100,0),
(@PATH,7,1477.624,-5432.594,190.0745,0,0,0,100,0),
(@PATH,8,1502.654,-5425.741,192.4055,0,0,0,100,0),
(@PATH,9,1535.755,-5407.994,190.2667,0,0,0,100,0);

-- Pathing for Winterskorn Bonegrinder Entry: 23655
SET @NPC := 105187;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1530.729,`position_y`=-5260.938,`position_z`=202.2724 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1513.021,-5237.5,207.5224,0,0,0,100,0),
(@PATH,2,1514.139,-5242.362,207.5224,0,0,0,100,0),
(@PATH,3,1528.464,-5262.211,202.7724,0,0,0,100,0),
(@PATH,4,1549.229,-5268.947,199.7077,0,0,0,100,0),
(@PATH,5,1565.182,-5272.908,202.6034,0,0,0,100,0),
(@PATH,6,1564.366,-5290.121,202.8534,0,0,0,100,0),
(@PATH,7,1554.61,-5266.971,200.4784,0,0,0,100,0),
(@PATH,8,1530.729,-5260.938,202.2724,0,0,0,100,0);

-- Pathing for Winterskorn Bonegrinder Entry: 23655
SET @NPC := 105186;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1433.288,`position_y`=-5288.5,`position_z`=195.2126 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1416.921,-5279.619,195.8376,0,0,0,100,0),
(@PATH,2,1415.622,-5254.748,190.7362,0,0,0,100,0),
(@PATH,3,1410.65,-5237.281,191.9862,0,0,0,100,0),
(@PATH,4,1422.645,-5223.072,195.145,0,0,0,100,0),
(@PATH,5,1431.248,-5201.435,190.395,0,0,0,100,0),
(@PATH,6,1422.645,-5223.072,195.145,0,0,0,100,0),
(@PATH,7,1410.65,-5237.281,191.9862,0,0,0,100,0),
(@PATH,8,1415.622,-5254.748,190.7362,0,0,0,100,0),
(@PATH,9,1416.921,-5279.619,195.8376,0,0,0,100,0),
(@PATH,10,1432.959,-5288.929,195.0876,0,0,0,100,0),
(@PATH,11,1464.944,-5300.757,195.4252,0,0,0,100,0),
(@PATH,12,1433.288,-5288.5,195.2126,0,0,0,100,0),
(@PATH,13,1406.18,-5300.791,192.9474,0,0,0,100,0),
(@PATH,14,1399.665,-5334.053,195.1207,0,0,0,100,0),
(@PATH,15,1405.759,-5369.869,193.5165,0,0,0,100,0),
(@PATH,16,1399.665,-5334.053,195.1207,0,0,0,100,0),
(@PATH,17,1406.18,-5300.791,192.9474,0,0,0,100,0),
(@PATH,18,1433.288,-5288.5,195.2126,0,0,0,100,0),
(@PATH,19,1464.944,-5300.757,195.4252,0,0,0,100,0),
(@PATH,20,1433.288,-5288.5,195.2126,0,0,0,100,0);

-- Pathing for Dragonflayer Warrior Entry: 23654
SET @NPC := 105141;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1062.211,`position_y`=-5497.463,`position_z`=198.7661 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1064.687,-5467.441,197.8911,0,0,0,100,0),
(@PATH,2,1062.211,-5497.463,198.7661,0,0,0,100,0),
(@PATH,3,1063.853,-5533.536,205.1816,0,0,0,100,0),
(@PATH,4,1058.663,-5566.771,204.7646,0,0,0,100,0),
(@PATH,5,1038.08,-5606.434,219.5592,0,0,0,100,0),
(@PATH,6,1058.663,-5566.771,204.7646,0,0,0,100,0),
(@PATH,7,1063.853,-5533.536,205.1816,0,0,0,100,0),
(@PATH,8,1062.211,-5497.463,198.7661,0,0,0,100,0);

-- Pathing for Dragonflayer Warrior Entry: 23654
SET @NPC := 105149;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=846.3604,`position_y`=-5491.41,`position_z`=213.345 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,838.926,-5532.913,208.3766,0,0,0,100,0),
(@PATH,2,845.0897,-5552.385,201.9454,0,0,0,100,0),
(@PATH,3,866.5723,-5552.206,196.6954,0,0,0,100,0),
(@PATH,4,895.5579,-5541.471,193.3276,0,0,0,100,0),
(@PATH,5,925.5731,-5545.784,187.5047,0,0,0,100,0),
(@PATH,6,948.0293,-5558.479,184.8204,0,0,0,100,0),
(@PATH,7,954.0419,-5554.6,184.8204,0,0,0,100,0),
(@PATH,8,957.7758,-5533.202,185.6618,0,0,0,100,0),
(@PATH,9,954.9789,-5518.392,185.7868,0,0,0,100,0),
(@PATH,10,944.8699,-5507.618,185.8557,0,0,0,100,0),
(@PATH,11,944.6381,-5494.633,186.1347,0,0,0,100,0),
(@PATH,12,950.1157,-5482.309,185.6347,0,0,0,100,0),
(@PATH,13,933.2178,-5467.473,189.7347,0,0,0,100,0),
(@PATH,14,914.2697,-5456.049,197.4529,0,0,0,100,0),
(@PATH,15,899.4795,-5450.521,202.8457,0,0,0,100,0),
(@PATH,16,878.1829,-5448.128,206.4707,0,0,0,100,0),
(@PATH,17,866.7573,-5455.153,209.5957,0,0,0,100,0),
(@PATH,18,857.5803,-5467.02,211.97,0,0,0,100,0),
(@PATH,19,846.3604,-5491.41,213.345,0,0,0,100,0);

-- Pathing for Dragonflayer Warrior Entry: 23654
SET @NPC := 105143;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=885.737,`position_y`=-5543.066,`position_z`=192.4526 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,844.7711,-5555.04,202.0704,0,0,0,100,0),
(@PATH,2,839.8002,-5532.987,208.3766,0,0,0,100,0),
(@PATH,3,838.3271,-5510.918,212.7516,0,0,0,100,0),
(@PATH,4,801.8599,-5490.351,216.0982,0,0,0,100,0),
(@PATH,5,801.8599,-5490.351,216.0982,0,0,0,100,0),
(@PATH,6,808.6978,-5479.681,212.3443,0,0,0,100,0),
(@PATH,7,820.7059,-5477.396,212.4484,0,0,0,100,0),
(@PATH,8,845.6509,-5491.736,213.345,0,0,0,100,0),
(@PATH,9,860.5975,-5457.135,210.6873,0,0,0,100,0),
(@PATH,10,886.1946,-5446.879,205.8457,0,0,0,100,0),
(@PATH,11,910.978,-5453.937,198.7072,0,0,0,100,0),
(@PATH,12,933.2483,-5466.113,189.993,0,0,0,100,0),
(@PATH,13,949.5988,-5487.087,185.7597,0,0,0,100,0),
(@PATH,14,943.2539,-5502.491,185.9165,0,0,0,100,0),
(@PATH,15,955.7552,-5521.782,185.6618,0,0,0,100,0),
(@PATH,16,959.2084,-5538.987,185.4454,0,0,0,100,0),
(@PATH,17,968.0063,-5546.821,185.5182,0,0,0,100,0),
(@PATH,18,975.9687,-5552.027,188.5839,0,0,0,100,0),
(@PATH,19,971.4639,-5549.163,187.1199,0,0,0,100,0),
(@PATH,20,958.3904,-5540.358,185.3204,0,0,0,100,0),
(@PATH,21,911.1376,-5540.936,191.2547,0,0,0,100,0),
(@PATH,22,885.737,-5543.066,192.4526,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103874;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2809.228,`position_y`=-786.0521,`position_z`=11.39639 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2833.675,-780.9371,18.37446,0,0,0,100,0),
(@PATH,2,2833.15,-758.6363,19.07858,0,0,0,100,0),
(@PATH,3,2825.889,-749.9357,21.07858,0,0,0,100,0),
(@PATH,4,2812.55,-737.4151,22.82858,0,0,0,100,0),
(@PATH,5,2783.542,-729.0773,21.05932,0,0,0,100,0),
(@PATH,6,2765.659,-727.304,17.58513,0,0,0,100,0),
(@PATH,7,2751.434,-737.9138,16.07381,0,0,0,100,0),
(@PATH,8,2751.944,-750.9055,16.69881,0,0,0,100,0),
(@PATH,9,2768.903,-761.2964,20.00057,0,0,0,100,0),
(@PATH,10,2781.985,-771.0247,22.92394,0,0,0,100,0),
(@PATH,11,2796.257,-771.977,21.92394,0,0,0,100,0),
(@PATH,12,2808.716,-776.6991,17.77139,0,0,0,100,0),
(@PATH,13,2809.228,-786.0521,11.39639,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103873;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2894.109,`position_y`=-745.8281,`position_z`=34.1621 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2880.134,-747.5494,35.0371,0,0,0,100,0),
(@PATH,2,2891.083,-756.9952,33.4121,0,0,0,100,0),
(@PATH,3,2895.175,-770.9067,32.19512,0,0,0,100,0),
(@PATH,4,2903.07,-781.6721,33.27403,0,0,0,100,0),
(@PATH,5,2914.176,-784.565,31.89903,0,0,0,100,0),
(@PATH,6,2925.826,-785.0627,29.64903,0,0,0,100,0),
(@PATH,7,2930.271,-775.0516,28.64903,0,0,0,100,0),
(@PATH,8,2939.729,-744.412,32.40165,0,0,0,100,0),
(@PATH,9,2943.021,-729.0511,35.20413,0,0,0,100,0),
(@PATH,10,2929.653,-730.5426,33.5611,0,0,0,100,0),
(@PATH,11,2918.323,-739.3417,32.8055,0,0,0,100,0),
(@PATH,12,2912.092,-746.812,31.55551,0,0,0,100,0),
(@PATH,13,2894.109,-745.8281,34.1621,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103872;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2932.506,`position_y`=-837.5522,`position_z`=22.2049 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2918.318,-831.2017,22.15971,0,0,0,100,0),
(@PATH,2,2900.803,-830.7356,20.28471,0,0,0,100,0),
(@PATH,3,2887.271,-836.7582,15.19489,0,0,0,100,0),
(@PATH,4,2875.123,-829.6106,16.41558,0,0,0,100,0),
(@PATH,5,2871.546,-815.7471,17.91558,0,0,0,100,0),
(@PATH,6,2883.228,-809.2447,19.41558,0,0,0,100,0),
(@PATH,7,2895.306,-811.4878,20.66558,0,0,0,100,0),
(@PATH,8,2907.782,-811.962,22.65971,0,0,0,100,0),
(@PATH,9,2923.734,-803.7195,25.15971,0,0,0,100,0),
(@PATH,10,2937.375,-803.5854,23.12252,0,0,0,100,0),
(@PATH,11,2948.706,-813.3407,16.74752,0,0,0,100,0),
(@PATH,12,2955.43,-827.8005,14.24752,0,0,0,100,0),
(@PATH,13,2943.766,-832.0939,19.74752,0,0,0,100,0),
(@PATH,14,2932.506,-837.5522,22.2049,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103867;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3031.883,`position_y`=-1193.945,`position_z`=4.10342 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3021.991,-1208.472,4.68573,0,0,0,100,0),
(@PATH,2,3022.048,-1220.27,4.56073,0,0,0,100,0),
(@PATH,3,3029.59,-1226.407,4.93573,0,0,0,100,0),
(@PATH,4,3024.812,-1243.493,5.85229,0,0,0,100,0),
(@PATH,5,3023.703,-1255.095,6.72729,0,0,0,100,0),
(@PATH,6,3025.416,-1263.592,8.60229,0,0,0,100,0),
(@PATH,7,3021.044,-1271.828,9.719284,0,0,0,100,0),
(@PATH,8,3007.416,-1266.712,4.844284,0,0,0,100,0),
(@PATH,9,3008.505,-1253.591,2.85229,0,0,0,100,0),
(@PATH,10,3004.32,-1236.712,2.35229,0,0,0,100,0),
(@PATH,11,2993.636,-1229.865,1.17068,0,0,0,100,0),
(@PATH,12,2979.269,-1223.784,1.42068,0,0,0,100,0),
(@PATH,13,2965.932,-1206.177,5.491786,0,0,0,100,0),
(@PATH,14,2971.155,-1190.604,5.994758,0,0,0,100,0),
(@PATH,15,2980.288,-1174.813,7.619758,0,0,0,100,0),
(@PATH,16,2995.088,-1166.42,7.937151,0,0,0,100,0),
(@PATH,17,3020.431,-1167.15,6.85342,0,0,0,100,0),
(@PATH,18,3037.439,-1165.075,5.909178,0,0,0,100,0),
(@PATH,19,3047.86,-1172.553,4.58005,0,0,0,100,0),
(@PATH,20,3045.929,-1185.756,3.83005,0,0,0,100,0),
(@PATH,21,3031.883,-1193.945,4.10342,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103871;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3010.807,`position_y`=-773.1741,`position_z`=16.34228 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2963.664,-755.7372,26.02665,0,0,0,100,0),
(@PATH,2,2945.664,-765.416,24.52665,0,0,0,100,0),
(@PATH,3,2945.375,-776.2206,23.87442,0,0,0,100,0),
(@PATH,4,2955.946,-778.843,24.99942,0,0,0,100,0),
(@PATH,5,2971.849,-763.856,25.20815,0,0,0,100,0),
(@PATH,6,2980.967,-761.5911,26.20815,0,0,0,100,0),
(@PATH,7,2990.548,-766.0126,24.95815,0,0,0,100,0),
(@PATH,8,3010.807,-773.1741,16.34228,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103923;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3117.313,`position_y`=-1116.784,`position_z`=24.42531 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3123.031,-1098.988,26.37428,0,0,0,100,0),
(@PATH,2,3138.207,-1080.818,26.98225,0,0,0,100,0),
(@PATH,3,3155.389,-1070.809,32.23225,0,0,0,100,0),
(@PATH,4,3162.057,-1052.932,38.1851,0,0,0,100,0),
(@PATH,5,3175.884,-1045.580,45.10823,0,0,0,100,0),
(@PATH,6,3153.743,-1034.797,36.6851,0,0,0,100,0),
(@PATH,7,3136.181,-1035.721,31.6851,0,0,0,100,0),
(@PATH,8,3103.2,-1051.08,26.4764,0,0,0,100,0),
(@PATH,9,3095.24,-1065.545,25.98299,0,0,0,100,0),
(@PATH,10,3089.212,-1078.389,27.70211,0,0,0,100,0),
(@PATH,11,3089.404,-1089.843,26.82711,0,0,0,100,0),
(@PATH,12,3094.688,-1096.337,27.20211,0,0,0,100,0),
(@PATH,13,3105.258,-1114.044,24.05031,0,0,0,100,0),
(@PATH,14,3117.313,-1116.784,24.42531,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103876;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3137.919,`position_y`=-992.722,`position_z`=34.28274 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3148.599,-963.2103,38.63452,0,0,0,100,0),
(@PATH,2,3142.211,-958.303,38.3529,0,0,0,100,0),
(@PATH,3,3142.709,-950,39.00952,0,0,0,100,0),
(@PATH,4,3137.357,-938.687,38.18606,0,0,0,100,0),
(@PATH,5,3121.781,-935.5909,34.90998,0,0,0,100,0),
(@PATH,6,3100.802,-936.2891,30.90998,0,0,0,100,0),
(@PATH,7,3087.178,-941.303,27.50731,0,0,0,100,0),
(@PATH,8,3071.092,-968.1406,25.55985,0,0,0,100,0),
(@PATH,9,3073.849,-986.3673,24.68485,0,0,0,100,0),
(@PATH,10,3081.633,-1004.435,22.36223,0,0,0,100,0),
(@PATH,11,3100.318,-1012.79,21.16171,0,0,0,100,0),
(@PATH,12,3118.169,-1009.429,22.8615,0,0,0,100,0),
(@PATH,13,3137.919,-992.722,34.28274,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103870;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2994.183,`position_y`=-917.3297,`position_z`=15.79732 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2991.063,-923.8657,16.29732,0,0,0,100,0),
(@PATH,2,2988.507,-934.7225,15.49086,0,0,0,100,0),
(@PATH,3,2991.473,-947.5349,13.86586,0,0,0,100,0),
(@PATH,4,2986.829,-959.4357,14.36586,0,0,0,100,0),
(@PATH,5,2982.086,-973.1686,14.91845,0,0,0,100,0),
(@PATH,6,2986.519,-992.0975,15.04345,0,0,0,100,0),
(@PATH,7,3000.431,-997.9194,13.52108,0,0,0,100,0),
(@PATH,8,3008.087,-1011.985,10.77139,0,0,0,100,0),
(@PATH,9,3017.707,-1028.244,11.64639,0,0,0,100,0),
(@PATH,10,3031.724,-1030.211,11.89639,0,0,0,100,0),
(@PATH,11,3041.782,-1051.163,12.00821,0,0,0,100,0),
(@PATH,12,3035.676,-1067.425,12.25596,0,0,0,100,0),
(@PATH,13,3041.782,-1051.163,12.00821,0,0,0,100,0),
(@PATH,14,3064.94,-1033.926,9.38321,0,0,0,100,0),
(@PATH,15,3049.375,-1016.077,11.23723,0,0,0,100,0),
(@PATH,16,3042.356,-991.0371,13.35068,0,0,0,100,0),
(@PATH,17,3044.027,-973.3226,13.35068,0,0,0,100,0),
(@PATH,18,3035.297,-959.0609,14.15011,0,0,0,100,0),
(@PATH,19,3039.989,-937.3704,14.52511,0,0,0,100,0),
(@PATH,20,3041.8,-923.7596,15.40918,0,0,0,100,0),
(@PATH,21,3026.872,-915.1911,16.42643,0,0,0,100,0),
(@PATH,22,3012.979,-918.055,15.67643,0,0,0,100,0),
(@PATH,23,2994.183,-917.3297,15.79732,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103868;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3075.944,`position_y`=-811.9883,`position_z`=20.80827 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3080.952,-824.3328,23.05827,0,0,0,100,0),
(@PATH,2,3075.61,-839.4752,22.73697,0,0,0,100,0),
(@PATH,3,3060.65,-845.2489,19.05826,0,0,0,100,0),
(@PATH,4,3046.751,-844.7985,16.93326,0,0,0,100,0),
(@PATH,5,3037.941,-836.3997,14.55826,0,0,0,100,0),
(@PATH,6,3030.868,-826.7025,14.97029,0,0,0,100,0),
(@PATH,7,3025.803,-806.0645,12.84529,0,0,0,100,0),
(@PATH,8,3029.52,-794.0267,10.84228,0,0,0,100,0),
(@PATH,9,3038.712,-775.0134,13.51348,0,0,0,100,0),
(@PATH,10,3053.475,-795.7884,14.88848,0,0,0,100,0),
(@PATH,11,3060.79,-809.8187,17.99917,0,0,0,100,0),
(@PATH,12,3075.944,-811.9883,20.80827,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103910;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3149.75,`position_y`=-869.2438,`position_z`=36.21198 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3146.117,-888.8926,30.46198,0,0,0,100,0),
(@PATH,2,3124.167,-897.0647,26.10263,0,0,0,100,0),
(@PATH,3,3109.003,-894.5141,23.35263,0,0,0,100,0),
(@PATH,4,3102.094,-881.6088,24.10263,0,0,0,100,0),
(@PATH,5,3095.041,-871.0077,23.56842,0,0,0,100,0),
(@PATH,6,3085.051,-870.8863,20.19342,0,0,0,100,0),
(@PATH,7,3068.079,-868.6927,15.19342,0,0,0,100,0),
(@PATH,8,3055.256,-851.1473,16.93326,0,0,0,100,0),
(@PATH,9,3057.439,-832.538,19.24917,0,0,0,100,0),
(@PATH,10,3071.083,-814.3071,20.30827,0,0,0,100,0),
(@PATH,11,3088.409,-817.8911,23.93327,0,0,0,100,0),
(@PATH,12,3096.284,-822.4347,28.05827,0,0,0,100,0),
(@PATH,13,3119.771,-833.5566,35.02748,0,0,0,100,0),
(@PATH,14,3138.177,-848.7571,40.79415,0,0,0,100,0),
(@PATH,15,3149.75,-869.2438,36.21198,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103875;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2978.204,`position_y`=-643.6324,`position_z`=49.32085 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2965.427,-625.391,63.11521,0,0,0,100,0),
(@PATH,2,2978.204,-643.6324,49.32085,0,0,0,100,0),
(@PATH,3,2995.292,-669.0926,42.25421,0,0,0,100,0),
(@PATH,4,2976.448,-683.0107,43.00421,0,0,0,100,0),
(@PATH,5,2960.967,-700.3996,41.82913,0,0,0,100,0),
(@PATH,6,2968.173,-720.5273,41.47844,0,0,0,100,0),
(@PATH,7,2951.983,-727.3806,36.82913,0,0,0,100,0),
(@PATH,8,2936.89,-718.2084,37.32913,0,0,0,100,0),
(@PATH,9,2960.967,-700.3996,41.82913,0,0,0,100,0),
(@PATH,10,2976.448,-683.0107,43.00421,0,0,0,100,0),
(@PATH,11,2995.292,-669.0926,42.25421,0,0,0,100,0),
(@PATH,12,2978.204,-643.6324,49.32085,0,0,0,100,0);

-- Pathing for Forgotten Knight Entry: 27224
SET @NPC := 103854;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2801.809,`position_y`=-1351.609,`position_z`=30.75213 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,2410, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2817.353,-1349.674,28.00213,0,0,0,100,0),
(@PATH,2,2838.433,-1344.79,23.96613,0,0,0,100,0),
(@PATH,3,2848.939,-1335.581,21.34113,0,0,0,100,0),
(@PATH,4,2866.034,-1321.116,15.20641,0,0,0,100,0),
(@PATH,5,2870.609,-1310.2,11.10666,0,0,0,100,0),
(@PATH,6,2885.081,-1298.237,3.82512,0,0,0,100,0),
(@PATH,7,2896.063,-1302.303,5.106659,0,0,0,100,0),
(@PATH,8,2893.534,-1316.084,11.48166,0,0,0,100,0),
(@PATH,9,2881.322,-1331.398,15.85666,0,0,0,100,0),
(@PATH,10,2870.855,-1347.522,19.17392,0,0,0,100,0),
(@PATH,11,2848.049,-1357.54,25.46613,0,0,0,100,0),
(@PATH,12,2826.136,-1374.455,33.06441,0,0,0,100,0),
(@PATH,13,2807.342,-1380.172,35.56441,0,0,0,100,0),
(@PATH,14,2798.427,-1374.941,35.90455,0,0,0,100,0),
(@PATH,15,2791.729,-1366.846,35.77955,0,0,0,100,0),
(@PATH,16,2794.926,-1355.688,33.31061,0,0,0,100,0),
(@PATH,17,2801.809,-1351.609,30.75213,0,0,0,100,0);

-- Remove dup spawns
DELETE FROM `creature` WHERE `guid`=103909;
DELETE FROM `creature_addon` WHERE `guid`=103909;

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105773;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2829.573,`position_y`=77.83496,`position_z`=23.05415 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2834.644,66.5554,23.05415,0,0,0,100,0),
(@PATH,2,2832.327,47.98145,23.05415,0,0,0,100,0),
(@PATH,3,2824.19,33.55273,23.05415,0,0,0,100,0),
(@PATH,4,2813.263,27.89535,23.05415,0,0,0,100,0),
(@PATH,5,2799.154,28.69884,23.05415,0,0,0,100,0),
(@PATH,6,2792.593,37.23269,23.05415,0,0,0,100,0),
(@PATH,7,2787.989,49.96674,23.05415,0,0,0,100,0),
(@PATH,8,2790.986,62.9579,23.05415,0,0,0,100,0),
(@PATH,9,2799.894,77.16607,23.05415,0,0,0,100,0),
(@PATH,10,2811.617,81.51264,23.05415,0,0,0,100,0),
(@PATH,11,2829.573,77.83496,23.05415,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105776;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2768.484,`position_y`=170.2238,`position_z`=22.38341 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2795.626,178.1085,19.93896,0,0,0,100,0),
(@PATH,2,2807.406,164.8766,17.6334,0,0,0,100,0),
(@PATH,3,2802.16,140.2939,17.6334,0,0,0,100,0),
(@PATH,4,2811.732,110.9432,17.6334,0,0,0,100,0),
(@PATH,5,2820.829,97.51039,17.6334,0,0,0,100,0),
(@PATH,6,2826.558,81.62894,17.6334,0,0,0,100,0),
(@PATH,7,2809.651,77.49517,17.6334,0,0,0,100,0),
(@PATH,8,2788.568,80.96075,17.6334,0,0,0,100,0),
(@PATH,9,2774.997,95.94735,20.41118,0,0,0,100,0),
(@PATH,10,2774.55,112.1218,22.38341,0,0,0,100,0),
(@PATH,11,2760.725,140.132,22.38341,0,0,0,100,0),
(@PATH,12,2758.094,158.0518,22.38341,0,0,0,100,0),
(@PATH,13,2768.484,170.2238,22.38341,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105790;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2690.665,`position_y`=105.8982,`position_z`=21.48963 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2705.308,102.4151,21.48963,0,0,0,100,0),
(@PATH,2,2703.798,84.28983,21.67711,0,0,0,100,0),
(@PATH,3,2705.529,52.25309,4.98267,0,0,0,100,0),
(@PATH,4,2705.258,36.26714,0.510448,0,0,0,100,0),
(@PATH,5,2705.416,24.20399,4.038228,0,0,0,100,0),
(@PATH,6,2691.849,-11.67057,19.26741,0,0,0,100,0),
(@PATH,7,2695.837,-31.84223,22.57297,0,0,0,100,0),
(@PATH,8,2721.802,-37.03499,22.57297,0,0,0,100,0),
(@PATH,9,2733.044,-22.9873,20.85075,0,0,0,100,0),
(@PATH,10,2740.016,-0.903429,20.85075,0,0,0,100,0),
(@PATH,11,2720.839,32.38059,20.85075,0,0,0,100,0),
(@PATH,12,2687.212,64.41743,21.48963,0,0,0,100,0),
(@PATH,13,2690.665,105.8982,21.48963,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105751;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2818.96,`position_y`=19.08247,`position_z`=18.30093 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2825.987,33.99419,18.30093,0,0,0,100,0),
(@PATH,2,2828.41,56.17736,18.30093,0,0,0,100,0),
(@PATH,3,2822.678,71.10498,18.30093,0,0,0,100,0),
(@PATH,4,2807.275,74.22374,18.30093,0,0,0,100,0),
(@PATH,5,2796.926,65.10563,18.30093,0,0,0,100,0),
(@PATH,6,2791.43,53.62164,18.30093,0,0,0,100,0),
(@PATH,7,2789.82,40.9783,18.30093,0,0,0,100,0),
(@PATH,8,2797.13,30.63395,18.30093,0,0,0,100,0),
(@PATH,9,2806.262,18.99745,18.30093,0,0,0,100,0),
(@PATH,10,2818.96,19.08247,18.30093,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105771;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2822.304,`position_y`=25.58095,`position_z`=28.66101 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2838.793,39.95627,28.66101,0,0,0,100,0),
(@PATH,2,2836.108,57.5306,28.66101,0,0,0,100,0),
(@PATH,3,2825.485,74.04839,28.66101,0,0,0,100,0),
(@PATH,4,2805.867,74.06527,28.66101,0,0,0,100,0),
(@PATH,5,2792.58,59.60639,28.66101,0,0,0,100,0),
(@PATH,6,2792.146,41.0931,28.66101,0,0,0,100,0),
(@PATH,7,2806.482,27.81955,28.66101,0,0,0,100,0),
(@PATH,8,2822.304,25.58095,28.66101,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105793;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2885.995,`position_y`=86.84375,`position_z`=25.08892 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2877.463,71.04628,26.72781,0,0,0,100,0),
(@PATH,2,2862.192,67.89458,24.06114,0,0,0,100,0),
(@PATH,3,2846.071,81.27257,23.17225,0,0,0,100,0),
(@PATH,4,2835.402,100.0479,22.14447,0,0,0,100,0),
(@PATH,5,2844.852,113.7791,23.17225,0,0,0,100,0),
(@PATH,6,2858.143,119.3263,21.75558,0,0,0,100,0),
(@PATH,7,2876.194,105.5451,24.2278,0,0,0,100,0),
(@PATH,8,2885.995,86.84375,25.08892,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105792;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2870.061,`position_y`=48.39068,`position_z`=24.00088 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2887.51,42.04189,24.00088,0,0,0,100,0),
(@PATH,2,2890.971,26.92735,24.00088,0,0,0,100,0),
(@PATH,3,2888.869,7.343913,24.00088,0,0,0,100,0),
(@PATH,4,2875.525,-13.28494,24.00088,0,0,0,100,0),
(@PATH,5,2856.301,-22.60704,24.00088,0,0,0,100,0),
(@PATH,6,2843.07,-12.60786,24.00088,0,0,0,100,0),
(@PATH,7,2838.096,10.55545,24.00088,0,0,0,100,0),
(@PATH,8,2852.048,33.66027,24.00088,0,0,0,100,0),
(@PATH,9,2870.061,48.39068,24.00088,0,0,0,100,0);

-- Pathing for Emerald Skytalon Entry: 27244
SET @NPC := 105743;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2791.267,`position_y`=-5.982639,`position_z`=23.38554 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2800.101,-11.76535,19.27443,0,0,0,100,0),
(@PATH,2,2804.809,-27.09413,19.27443,0,0,0,100,0),
(@PATH,3,2795.457,-39.61523,19.27443,0,0,0,100,0),
(@PATH,4,2772.509,-53.71186,24.91332,0,0,0,100,0),
(@PATH,5,2752.826,-48.53326,19.27443,0,0,0,100,0),
(@PATH,6,2744.481,-35.89621,23.6911,0,0,0,100,0),
(@PATH,7,2750.413,-22.42415,19.27443,0,0,0,100,0),
(@PATH,8,2762.693,-11.72667,24.38554,0,0,0,100,0),
(@PATH,9,2778.425,-5.4662,19.27443,0,0,0,100,0),
(@PATH,10,2791.267,-5.982639,23.38554,0,0,0,100,0);

-- Fix Inhabittype for Emerald Skytalon
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=27244;
-- Some Emerald Skytalons should not be moving (Should be landed but......well you know...)
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=27244 AND `MovementType`=1;

-- Pathing for Wild Wyrm Entry: 30275
SET @NPC := 202972;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7066.043,`position_y`=-1968.466,`position_z`=824.2749 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7126.909,-2006.859,838.8026,0,0,0,100,0),
(@PATH,2,7128.004,-2079.435,824.9972,0,0,0,100,0),
(@PATH,3,7123.410,-2161.681,837.6913,0,0,0,100,0),
(@PATH,4,7032.643,-2110.862,816.2751,0,0,0,100,0),
(@PATH,5,7066.043,-1968.466,824.2749,0,0,0,100,0);

-- Pathing for Wild Wyrm Entry: 30275
SET @NPC := 202973;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7115.650,`position_y`=-2059.480,`position_z`=818.3268 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7033.949,-2100.414,836.1047,0,0,0,100,0),
(@PATH,2,7059.351,-2161.099,826.7712,0,0,0,100,0),
(@PATH,3,7092.921,-2188.170,811.4102,0,0,0,100,0),
(@PATH,4,7133.742,-2166.362,794.6603,0,0,0,100,0),
(@PATH,5,7151.966,-2105.456,792.9937,0,0,0,100,0),
(@PATH,6,7115.650,-2059.480,818.3268,0,0,0,100,0);

-- Pathing for Wild Wyrm Entry: 30275
SET @NPC := 202974;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7213.711,`position_y`=-2226.125,`position_z`=806.5094 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7167.105,-2184.223,820.4260,0,0,0,100,0),
(@PATH,2,7125.120,-2255.990,806.5094,0,0,0,100,0),
(@PATH,3,7173.554,-2300.135,806.5094,0,0,0,100,0),
(@PATH,4,7251.454,-2287.427,789.5095,0,0,0,100,0),
(@PATH,5,7213.711,-2226.125,806.5094,0,0,0,100,0);

-- Pathing for Wild Wyrm Entry: 30275
SET @NPC := 202975;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7109.281,`position_y`=-2100.445,`position_z`=817.4706 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7072.179,-2111.299,817.4706,0,0,0,100,0),
(@PATH,2,7064.227,-2116.913,817.4706,0,0,0,100,0),
(@PATH,3,7050.559,-2152.228,817.4706,0,0,0,100,0),
(@PATH,4,7062.942,-2203.969,813.1094,0,0,0,100,0),
(@PATH,5,7103.487,-2255.553,806.3886,0,0,0,100,0),
(@PATH,6,7177.481,-2288.611,796.1102,0,0,0,100,0),
(@PATH,7,7275.345,-2308.585,793.6097,0,0,0,100,0),
(@PATH,8,7372.846,-2327.065,798.7206,0,0,0,100,0),
(@PATH,9,7427.968,-2391.033,804.1375,0,0,0,100,0),
(@PATH,10,7423.436,-2447.741,807.2206,0,0,0,100,0),
(@PATH,11,7355.370,-2486.082,804.4431,0,0,0,100,0),
(@PATH,12,7304.908,-2475.450,803.7766,0,0,0,100,0),
(@PATH,13,7279.233,-2422.631,808.0823,0,0,0,100,0),
(@PATH,14,7257.583,-2362.908,817.4706,0,0,0,100,0),
(@PATH,15,7227.192,-2262.001,817.4706,0,0,0,100,0),
(@PATH,16,7168.813,-2158.760,817.4706,0,0,0,100,0),
(@PATH,17,7143.784,-2112.828,817.4706,0,0,0,100,0),
(@PATH,18,7109.281,-2100.445,817.4706,0,0,0,100,0);

-- Pathing for Wild Wyrm Entry: 30275
SET @NPC := 202976;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7327.672,`position_y`=-2396.082,`position_z`=794.1380 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7369.227,-2353.661,800.3325,0,0,0,100,0),
(@PATH,2,7356.053,-2268.009,817.5546,0,0,0,100,0),
(@PATH,3,7278.459,-2252.020,801.5268,0,0,0,100,0),
(@PATH,4,7239.885,-2275.736,811.6657,0,0,0,100,0),
(@PATH,5,7239.562,-2376.111,797.7770,0,0,0,100,0),
(@PATH,6,7327.672,-2396.082,794.1380,0,0,0,100,0);

-- Pathing for Wild Wyrm Entry: 30275
SET @NPC := 202977;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7424.327,`position_y`=-2393.728,`position_z`=797.1465 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7334.587,-2389.095,818.5355,0,0,0,100,0),
(@PATH,2,7282.970,-2459.180,819.0909,0,0,0,100,0),
(@PATH,3,7309.571,-2509.064,792.0912,0,0,0,100,0),
(@PATH,4,7420.728,-2505.169,815.1464,0,0,0,100,0),
(@PATH,5,7424.327,-2393.728,797.1465,0,0,0,100,0);

UPDATE `creature_template` SET `speed_run`=3.571429,`speed_walk`=3.6,`InhabitType`=5 WHERE `entry`=30275;
-- Insert npc_text from sniff
DELETE FROM `npc_text` WHERE `ID` IN (16726,8336,16540);
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(16726,1,'I care far too deeply about redeeming Eldre''thalas to deal with any other matter. War, strife, allegiances, none of it matters until this city is safe.','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(8336,1,'What now?  Can''t you see I''m rather busy?','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16540,1,'I train only warriors, $c. You''ll have to look elsewhere.','I train only warriors, $c. You''ll have to look elsewhere.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1);
UPDATE `item_template` SET `DisenchantID` = 43 WHERE `DisenchantID` = 34 AND `ItemLevel` = 35;
