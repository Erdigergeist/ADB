
UPDATE `gameobject` SET `id`=202275 WHERE `id`=300149; 
DELETE FROM `gameobject_template` WHERE `entry`=300149;

DELETE FROM `game_event_arena_seasons` WHERE `eventEntry`=53 AND `season`=1; 
DELETE FROM `game_event_arena_seasons` WHERE `eventEntry`=54 AND `season`=2; 

DELETE FROM `conditions` WHERE `SourceEntry`=43151 AND `SourceTypeOrReferenceId`=13; 
UPDATE `pool_creature` SET `chance`=0 WHERE `pool_entry`=1079; 

UPDATE `creature_template` SET `equipment_id`=2431 WHERE `entry`=18697;
DELETE FROM `creature_equip_template` WHERE `entry` IN (1807,2431);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(1807,50757,0,0),
(2431,31301,0,0);

SET @ENTRY := 26600;

UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4136.725,`position_y`=5316.553,`position_z`=28.726,`orientation`=0.3286853 WHERE `guid`=117890;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 1 - STATE_WORK_MINING'),
(@ENTRY,0,3,4,40,0,100,0,7,@ENTRY,0,0,54,9000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 7 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 7 - STATE_WORK_MINING'),
(@ENTRY,0,5,6,40,0,100,0,15,@ENTRY,0,0,54,14000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 15 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chief Engineer Galpen Rolltie - Reach wp 15 - STATE_WORK_MINING');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4138.141,5318.302,28.81850, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,2,4140.475,5319.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,3,4141.725,5323.979,29.04604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,4,4139.975,5327.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,5,4136.975,5328.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,6,4134.975,5327.229,29.29604, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,7,4135.308,5325.655,28.77358, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,8,4135.063,5327.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,9,4140.063,5327.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,10,4143.313,5325.319,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,11,4141.313,5317.819,29.77233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,12,4137.063,5314.819,29.02233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,13,4132.313,5316.569,29.02233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,14,4130.313,5319.819,29.27233, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,15,4131.816,5320.484,28.77108, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,16,4130.521,5321.019,29.24854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,17,4131.021,5317.769,29.24854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,18,4133.771,5315.769,28.99854, 'Chief Engineer Galpen Rolltie'),
(@ENTRY,19,4136.725,5316.553,28.72600, 'Chief Engineer Galpen Rolltie');


SET @ENTRY := 26599;

UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4135.779,`position_y`=5282.234,`position_z`=25.11416,`orientation`=1.19467 WHERE `guid`=117866;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - STATE_WORK_MINING'),
(@ENTRY,0,3,4,40,0,100,0,3,@ENTRY,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 3 - pause path'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.288348, 'Willis Wobblewheel - Reach wp 3 - turn to'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Willis Wobblewheel - Reach wp 1 - STATE_USESTANDING');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4137.04,5285.097,25.23916, 'Willis Wobblewheel'),
(@ENTRY,2,4135.779,5282.234,25.11416, 'Willis Wobblewheel'),
(@ENTRY,3,4135.004,5281.168,25.11416, 'Willis Wobblewheel'),
(@ENTRY,4,4135.779,5282.234,25.11416, 'Willis Wobblewheel');


SET @ENTRY := 26634;

UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4183.354,`position_y`=5318.837,`position_z`=58.1593 WHERE `guid`=97336;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,2,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 2 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,6,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 6 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.8901179, 'Fizzcrank Watcher Rupert Keeneye - Reach wp 6 - turn to');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4186.929,5321.105,58.13441, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,2,4185.132,5318.713,58.1639, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,3,4186.515,5316.936,58.15049, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,4,4186.929,5321.105,58.13441, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,5,4191.268,5319.607,58.12418, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,6,4189.929,5324.715,58.08976, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,7,4184.381,5325.549,58.05596, 'Fizzcrank Watcher Rupert Keeneye'),
(@ENTRY,8,4183.354,5318.837,58.1593, 'Fizzcrank Watcher Rupert Keeneye');

DELETE FROM `creature` WHERE `guid`=97346;
DELETE FROM `creature_addon` WHERE `guid`=97346;


SET @ENTRY := 26645;
SET @PATH  := @ENTRY*100;
SET @PATH2 := @ENTRY*100+1;

UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4153.918,`position_y`=5347.379,`position_z`=29.03030 WHERE `guid`=98042;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4145.670,`position_y`=5329.370,`position_z`=28.68240 WHERE `guid`=98043;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-98042,-98043);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-98042,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - On spawn - Start WP movement'),
(-98042,0,1,2,40,0,100,0,1,@PATH,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 1 - pause path'),
(-98042,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 1 - STATE_USESTANDING'),
(-98042,0,3,4,40,0,100,0,6,@PATH,0,0,54,19000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 6 - pause path'),
(-98042,0,4,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 6 - STATE_USESTANDING'),
(-98042,0,5,6,40,0,100,0,10,@PATH,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - pause path'),
(-98042,0,6,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_USESTANDING'),
(-98042,0,7,8,40,0,100,0,14,@PATH,0,0,54,24000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 14 - pause path'),
(-98042,0,8,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 14 - STATE_USESTANDING'),
(-98043,0,0,0,11,0,100,0,0,0,0,0,53,0,@PATH2,1,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - On spawn - Start WP movement'),
(-98043,0,1,2,40,0,100,0,5,@PATH2,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 5 - pause path'),
(-98043,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 5 - STATE_USESTANDING'),
(-98043,0,3,4,40,0,100,0,10,@PATH2,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - pause path'),
(-98043,0,4,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_WORK_MINING'),
(-98043,0,5,6,40,0,100,0,18,@PATH2,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 18 - pause path'),
(-98043,0,6,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 18 - STATE_WORK_MINING'),
(-98043,0,7,8,40,0,100,0,24,@PATH2,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 24 - pause path'),
(-98043,0,8,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Engineering Crew - Reach wp 24 - STATE_USESTANDING');

DELETE FROM `waypoints` WHERE `entry` IN (@PATH,@PATH2);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1,4153.728,5344.668,29.34072, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,2,4152.786,5345.597,29.62969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,3,4157.786,5346.597,29.62969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,4,4160.786,5343.097,30.37969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,5,4158.286,5341.347,29.62969, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,6,4156.344,5341.525,29.41866, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,7,4158.535,5340.623,29.56693, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,8,4159.285,5338.123,29.06693, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,9,4157.035,5336.123,29.06693, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,10,4152.727,5336.721,28.71519, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,11,4152.224,5335.373,29.05804, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,12,4150.224,5335.873,29.05804, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,13,4148.974,5337.873,29.30804, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,14,4149.720,5343.525,28.90088, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,15,4148.819,5340.952,29.46559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,16,4149.319,5336.702,29.21559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,17,4154.319,5334.202,29.21559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,18,4158.569,5336.702,28.96559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,19,4160.819,5343.202,30.21559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,20,4158.069,5347.202,29.71559, 'Fizzcrank Engineering Crew wp 1'),
(@PATH,21,4153.918,5347.379,29.03030, 'Fizzcrank Engineering Crew wp 1'),
(@PATH2,1,4147.00,5327.734,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,2,4149.25,5326.734,29.07715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,3,4151.50,5329.484,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,4,4150.25,5330.734,29.32715, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,5,4148.829,5329.599,28.9719, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,6,4150.054,5331.477,29.32324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,7,4152.054,5333.477,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,8,4150.804,5335.727,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,9,4147.554,5336.477,29.07324, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,10,4143.779,5335.355,28.67457, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,11,4146.732,5336.823,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,12,4150.982,5335.573,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,13,4153.232,5331.323,28.95758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,14,4150.482,5326.823,28.70758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,15,4144.732,5324.573,29.45758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,16,4141.482,5326.823,29.20758, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,17,4139.686,5329.791,28.74058, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,18,4141.878,5331.735,28.69350, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,19,4141.274,5330.552,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,20,4141.774,5328.302,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,21,4142.774,5326.052,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,22,4145.524,5326.052,29.43795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,23,4146.774,5328.052,29.18795, 'Fizzcrank Engineering Crew wp 2'),
(@PATH2,24,4145.670,5329.370,28.68240, 'Fizzcrank Engineering Crew wp 2');

DELETE FROM `creature` WHERE `guid`=98029;
DELETE FROM `creature_addon` WHERE `guid`=98029;


SET @NPC := 111360;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4235.847,`position_y`=5353.55,`position_z`=81.03476 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4222.374,5370.328,72.03476,0,1,0,100,0),
(@PATH,2,4193.999,5364.787,66.81252,0,1,0,100,0),
(@PATH,3,4161.166,5319.937,66.81252,0,1,0,100,0),
(@PATH,4,4149.038,5289.545,66.81252,0,1,0,100,0),
(@PATH,5,4158.851,5255.303,66.81252,0,1,0,100,0),
(@PATH,6,4193.628,5230.504,79.17356,0,1,0,100,0),
(@PATH,7,4259.787,5211.473,79.20131,0,1,0,100,0),
(@PATH,8,4293.693,5221.593,80.20133,0,1,0,100,0),
(@PATH,9,4296.654,5282.716,82.20137,0,1,0,100,0),
(@PATH,10,4261.68,5314.814,89.8682,0,1,0,100,0),
(@PATH,11,4224.254,5366.333,98.86811,0,1,0,100,0),
(@PATH,12,4174.309,5345.78,98.86811,0,1,0,100,0),
(@PATH,13,4150.472,5287.501,98.86811,0,1,0,100,0),
(@PATH,14,4188.47,5251.628,102.757,0,1,0,100,0),
(@PATH,15,4241.055,5236.796,102.757,0,1,0,100,0),
(@PATH,16,4280.259,5260.132,105.6182,0,1,0,100,0),
(@PATH,17,4271.736,5301.975,105.6182,0,1,0,100,0),
(@PATH,18,4235.847,5353.55,81.03476,0,1,0,100,0);

DELETE FROM `creature` WHERE `guid` IN (111361,111426);
DELETE FROM `creature_addon` WHERE `guid` IN (111361,111426);


SET @ENTRY := 25766;
UPDATE `creature` SET `position_x`=4170.335,`position_y`=5359.113,`position_z`=30.06447,`orientation`=2.740167 WHERE `guid`=111472;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,10000,210000,210000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - OOC 3.5 min - start script 1'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,45,0,1,0,0,0,0,11,25765,20,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 1 - dataset 0 1 nearest Fizzcrank Bomber'),
(@ENTRY,0,2,3,40,0,100,0,5,@ENTRY,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 5 - pause wp'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,92,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 5 - INTERRUPT_SPELL'),
(@ENTRY,0,4,0,40,0,100,0,6,@ENTRY,0,0,45,0,1,0,0,0,0,10,106069,15214,0,0,0,0,0, 'Rig Hauler AC-9 - Reach wp 6 - dataset 0 1 Invisable Stalker'),
(@ENTRY,0,5,0,40,0,100,0,25,@ENTRY,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.740167, 'Rig Hauler AC-9 - Reach wp 25 - turn to'),

(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,12,25765,3,360000,0,0,0,8,0,0,0,4165.76,5354.39,30.1116,2.35619, 'Rig Hauler AC-9 - script - summon 25765'),
(@ENTRY*100,9,1,0,0,0,100,0,6000,6000,0,0,11,45967,0,0,0,0,0,11,25765,10,0,0,0,0,0, 'Rig Hauler AC-9 - script - cast 45967'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Rig Hauler AC-9 - script - Start WP movement');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4149.316,5357.732,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,2,4136.816,5345.482,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,3,4125.566,5333.982,29.11953, 'Rig Hauler AC-9'),
(@ENTRY,4,4115.297,5323.852,28.67458, 'Rig Hauler AC-9'),
(@ENTRY,5,4108.158,5316.849,28.75930, 'Rig Hauler AC-9'),
(@ENTRY,6,4111.660,5313.279,28.75930, 'Rig Hauler AC-9'),
(@ENTRY,7,4112.747,5314.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,8,4116.997,5314.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,9,4118.997,5316.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,10,4125.247,5323.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,11,4127.247,5325.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,12,4129.497,5326.696,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,13,4131.497,5328.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,14,4133.497,5328.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,15,4134.747,5329.446,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,16,4135.747,5333.696,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,17,4141.997,5337.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,18,4143.997,5341.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,19,4145.997,5344.946,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,20,4147.247,5346.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,21,4150.247,5348.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,22,4152.247,5350.196,29.16189, 'Rig Hauler AC-9'),
(@ENTRY,23,4162.747,5356.196,29.66189, 'Rig Hauler AC-9'),
(@ENTRY,24,4166.997,5358.696,30.41189, 'Rig Hauler AC-9'),
(@ENTRY,25,4170.335,5359.113,30.06447, 'Rig Hauler AC-9');

DELETE FROM `creature` WHERE `guid`=111501;
DELETE FROM `creature_addon` WHERE `guid`=111501;


SET @ENTRY := 25765;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - on dataset 0 1 - dataset 0 0'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - on dataset 0 1 - Start WP movement'),
(@ENTRY,0,2,3,40,0,100,0,22,@ENTRY,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 22 - pause wp'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 22 - Set Speed run'),
(@ENTRY,0,4,5,40,0,100,0,74,@ENTRY,0,0,11,47460,3,0,0,0,0,11,26817,5,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 74 - cast 47460 on Fizzcrank fighter'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Bomber - Reach wp 74 - despawn');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4164.758,5354.723,30.19215, 'Fizzcrank Bomber wp 1'),
(@ENTRY,2,4162.034,5355.368,30.09748, 'Fizzcrank Bomber wp 1'),
(@ENTRY,3,4159.190,5355.827,30.01153, 'Fizzcrank Bomber wp 1'),
(@ENTRY,4,4156.273,5356.132,29.94405, 'Fizzcrank Bomber wp 1'),
(@ENTRY,5,4154.659,5355.736,29.91132, 'Fizzcrank Bomber wp 1'),
(@ENTRY,6,4152.153,5354.786,29.86976, 'Fizzcrank Bomber wp 1'),
(@ENTRY,7,4149.633,5353.545,29.83581, 'Fizzcrank Bomber wp 1'),
(@ENTRY,8,4147.138,5352.081,29.80874, 'Fizzcrank Bomber wp 1'),
(@ENTRY,9,4144.689,5350.449,29.78749, 'Fizzcrank Bomber wp 1'),
(@ENTRY,10,4142.290,5348.694,29.77098, 'Fizzcrank Bomber wp 1'),
(@ENTRY,11,4139.963,5346.840,29.76581, 'Fizzcrank Bomber wp 1'),
(@ENTRY,12,4137.673,5344.909,29.76182, 'Fizzcrank Bomber wp 1'),
(@ENTRY,13,4135.418,5342.924,29.75874, 'Fizzcrank Bomber wp 1'),
(@ENTRY,14,4133.194,5340.901,29.75638, 'Fizzcrank Bomber wp 1'),
(@ENTRY,15,4130.993,5338.848,29.75706, 'Fizzcrank Bomber wp 1'),
(@ENTRY,16,4128.794,5336.785,29.75758, 'Fizzcrank Bomber wp 1'),
(@ENTRY,17,4126.612,5334.716,29.75798, 'Fizzcrank Bomber wp 1'),
(@ENTRY,18,4124.430,5332.629,29.75829, 'Fizzcrank Bomber wp 1'),
(@ENTRY,19,4121.542,5329.849,29.75858, 'Fizzcrank Bomber wp 1'),
(@ENTRY,20,4118.184,5326.597,29.75881, 'Fizzcrank Bomber wp 1'),
(@ENTRY,21,4116.024,5324.498,29.75892, 'Fizzcrank Bomber wp 1'),
(@ENTRY,22,4113.869,5322.398,29.75901, 'Fizzcrank Bomber wp 1'),
(@ENTRY,23,4090.109,5298.56,29.70082, 'Fizzcrank Bomber wp 1'),
(@ENTRY,24,4079.459,5287.617,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,25,4066.779,5274.603,31.53571, 'Fizzcrank Bomber wp 1'),
(@ENTRY,26,4041.215,5249.248,31.45236, 'Fizzcrank Bomber wp 1'),
(@ENTRY,27,4020.432,5218.824,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,28,4002.392,5190.421,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,29,4000.105,5146.331,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,30,3993.002,5119.754,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,31,3976.405,5093.208,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,32,3983.637,5055.651,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,33,3990.106,5011.049,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,34,3992.433,4984.051,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,35,3988.744,4946.948,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,36,3975.796,4912.274,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,37,3958.111,4895.366,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,38,3928.622,4858.76,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,39,3921.781,4825.03,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,40,3935.435,4790.436,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,41,3966.323,4756.983,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,42,3987.75,4763.042,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,43,4025.366,4755.083,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,44,4050.189,4787.045,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,45,4082.41,4825.174,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,46,4084.739,4845.887,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,47,4082.781,4879.066,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,48,4075.255,4897.705,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,49,4063.763,4936.532,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,50,4066.78,4968.409,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,51,4082.993,4997.696,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,52,4110.507,5030.572,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,53,4141.148,5060.043,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,54,4164.455,5087.176,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,55,4189.664,5124.69,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,56,4214.33,5154.247,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,57,4237.962,5194.166,29.8968, 'Fizzcrank Bomber wp 1'),
(@ENTRY,58,4228.307,5238.578,42.11903, 'Fizzcrank Bomber wp 1'),
(@ENTRY,59,4200.375,5271.218,46.75792, 'Fizzcrank Bomber wp 1'),
(@ENTRY,60,4211.719,5318.444,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,61,4229.69,5356.218,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,62,4229.779,5396.165,53.08044, 'Fizzcrank Bomber wp 1'),
(@ENTRY,63,4231.299,5419.959,53.71933, 'Fizzcrank Bomber wp 1'),
(@ENTRY,64,4228.378,5466.135,57.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,65,4249.183,5490.759,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,66,4282.767,5500.858,48.85822, 'Fizzcrank Bomber wp 1'),
(@ENTRY,67,4300.521,5486.341,48.386, 'Fizzcrank Bomber wp 1'),
(@ENTRY,68,4291.369,5470.349,48.91378, 'Fizzcrank Bomber wp 1'),
(@ENTRY,69,4277.046,5454.25,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,70,4253.641,5434.851,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,71,4227.768,5423.928,47.13599, 'Fizzcrank Bomber wp 1'),
(@ENTRY,72,4204.012,5411.217,37.52486, 'Fizzcrank Bomber wp 1'),
(@ENTRY,73,4194.847,5402.538,32.41374, 'Fizzcrank Bomber wp 1'),
(@ENTRY,74,4178.285,5386.063,30.94151, 'Fizzcrank Bomber wp 1');

DELETE FROM `creature` WHERE `guid`=111452;
DELETE FROM `creature_addon` WHERE `guid`=111452;


SET @ENTRY := 15214;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=-106069;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-106069,0,0,1,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Invisable Stalker - on dataset 0 1 - dataset 0 0'),
(-106069,0,1,0,61,0,100,0,0,0,0,0,11,47453,3,0,0,0,0,11,25766,200,0,0,0,0,0, 'Invisable Stalker - on dataset 0 1 - Cast 47453 on Rig Hauler AC-9');


SET @ENTRY := 26817;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Fighter - on spawn - start wp'),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Fighter - on spawn - say text 0'),
(@ENTRY,0,2,0,40,0,100,0,15,@ENTRY,0,0,11,43671,3,0,0,0,0,11,25765,20,0,0,0,0,0, 'Fizzcrank Fighter - Reach wp 15 - cast 43671 on Fizzcrank Bomber');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I''ll blast those gnomish wannabes back to the scrap heap!',0,7,100,0,0,0, 'Fizzcrank Fighter'),
(@ENTRY,0,1, 'You''re sending me back there?!',0,7,100,0,0,0, 'Fizzcrank Fighter');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4176.501,5280.566,27.17445, 'Fizzcrank Fighter'),
(@ENTRY,2,4167.001,5282.066,27.17445, 'Fizzcrank Fighter'),
(@ENTRY,3,4164.751,5282.566,26.92445, 'Fizzcrank Fighter'),
(@ENTRY,4,4162.655,5282.681,26.48916, 'Fizzcrank Fighter'),
(@ENTRY,5,4158.462,5280.628,26.26419, 'Fizzcrank Fighter'),
(@ENTRY,6,4155.712,5279.378,25.76419, 'Fizzcrank Fighter'),
(@ENTRY,7,4154.958,5278.939,24.86416, 'Fizzcrank Fighter'),
(@ENTRY,8,4147.710,5281.817,24.86416, 'Fizzcrank Fighter'),
(@ENTRY,9,4144.757,5295.502,25.61416, 'Fizzcrank Fighter'),
(@ENTRY,10,4142.652,5300.067,26.94346, 'Fizzcrank Fighter'),
(@ENTRY,11,4137.876,5308.749,27.94350, 'Fizzcrank Fighter'),
(@ENTRY,12,4135.610,5310.586,28.93834, 'Fizzcrank Fighter'),
(@ENTRY,13,4131.433,5312.564,28.75930, 'Fizzcrank Fighter'),
(@ENTRY,14,4123.820,5317.622,28.75930, 'Fizzcrank Fighter'),
(@ENTRY,15,4115.430,5321.649,28.75930, 'Fizzcrank Fighter');

DELETE FROM `creature` WHERE `guid` IN (114142,114143,114165);
DELETE FROM `creature_addon` WHERE `guid` IN (114142,114143,114165);


SET @ENTRY := 25477;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=4172.788,`position_y`=5254.925,`position_z`=26.12851 WHERE `guid`=108021;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 1 - STATE_USESTANDING'),
(@ENTRY,0,3,4,40,0,100,0,6,@ENTRY,0,0,54,35000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.4712389, 'Crafty Wobblesprocket - Reach wp 6 - turn to'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crafty Wobblesprocket - Reach wp 6 - STATE_WORK_MINING');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4179.099,5251.51,26.37851, 'Crafty Wobblesprocket'),
(@ENTRY,2,4177.94,5250.202,26.87851, 'Crafty Wobblesprocket'),
(@ENTRY,3,4181.048,5243.429,24.87851, 'Crafty Wobblesprocket'),
(@ENTRY,4,4182.067,5222.448,25.00868, 'Crafty Wobblesprocket'),
(@ENTRY,5,4193.037,5217.233,25.13368, 'Crafty Wobblesprocket'),
(@ENTRY,6,4193.037,5217.233,25.13368, 'Crafty Wobblesprocket'),
(@ENTRY,7,4190.718,5217.938,25.25868, 'Crafty Wobblesprocket'),
(@ENTRY,8,4176.049,5229.444,24.50868, 'Crafty Wobblesprocket'),
(@ENTRY,9,4166.732,5248.798,24.75351, 'Crafty Wobblesprocket'),
(@ENTRY,10,4172.788,5254.925,26.12851, 'Crafty Wobblesprocket');

DELETE FROM `creature` WHERE `guid`=108025;
DELETE FROM `creature_addon` WHERE `guid`=108025;

DELETE FROM `creature_addon` WHERE `guid`=108021;
DELETE FROM `creature_template_addon` WHERE `entry`=25477;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`) VALUES (25477,257);


SET @ENTRY := 23837;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-98575,-98576);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-98575,0,0,0,1,0,100,0,10000,20000,90000,105000,11,45931,3,0,0,0,0,10,98576,23837,0,0,0,0,0, 'ELM General Purpose Bunny - OOC timed - cast 45931 on target'),
(-98576,0,0,0,8,0,100,0,45931,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'ELM General Purpose Bunny - On spellhit - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,4000,4000,0,0,12,25783,3,60000,0,0,0,8,0,0,0,4181.491,5258.655,27.19127,3.857178, 'ELM General Purpose Bunny - script - summon 25783'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,5,5,0,0,0,0,0,11,25747,10,0,0,0,0,0, 'ELM General Purpose Bunny - script - send emote to 25747'),
(@ENTRY*100,9,2,0,0,0,100,0,4000,4000,0,0,45,0,1,0,0,0,0,11,25783,10,0,0,0,0,0, 'ELM General Purpose Bunny - script - set data 0 1 on 25783');


SET @ENTRY := 25783;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,34427,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on spawn - cast 34427 on self'),
(@ENTRY,0,1,0,1,0,100,1,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on spawn - say text 0'),
(@ENTRY,0,2,3,38,0,100,0,0,1,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on dataset 0 1 - dataset 0 0'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - on dataset 0 1 - Start WP movement'),
(@ENTRY,0,4,0,40,0,100,0,6,@ENTRY,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Airstrip Survivor - Reach wp 6 - despawn');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4168.529,5251.933,24.87851, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,2,4156.656,5256.007,24.62325, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,3,4151.527,5268.997,25.36416, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,4,4159.549,5281.078,26.23916, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,5,4173.898,5280.844,26.69306, 'Fizzcrank Airstrip Survivor'),
(@ENTRY,6,4179.473,5282.701,26.69306, 'Fizzcrank Airstrip Survivor');

DELETE FROM `creature` WHERE `guid` IN (88109);
DELETE FROM `creature_addon` WHERE `guid` IN (88109);

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I''m flesh and blood again. That''s all that matters!',0,7,100,5,0,0, 'Fizzcrank Survivor');


UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23967; 
UPDATE `creature_model_info` SET `bounding_radius`=0.3694949,`combat_reach`=1.81125,`gender`=1 WHERE `modelid`=23220; 

DELETE FROM `creature_template_addon` WHERE `entry` IN (26600,26599,26634,26645,25766,15214,26817,23837,25783);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26600,0,0,257,0, NULL), 
(26599,0,0,257,0, NULL), 
(26634,0,0,257,0, NULL), 
(26645,0,0,257,0, NULL), 
(25766,0,0,1,0, NULL), 
(15214,0,0,1,0, NULL), 
(26817,0,0,257,0, NULL), 
(23837,0,0,1,0, NULL), 
(25783,0,0,257,0, NULL); 
DELETE FROM `conditions` WHERE `SourceEntry` IN (63317,62505,63524,63657,63658,63659);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(13,0,63317,0,18,1,33453,0,0,'','Flame Breath - Dark Rune Watcher'),
(13,0,63317,0,18,1,33846,0,0,'','Flame Breath - Dark Rune Sentinel'),
(13,0,63317,0,18,1,33388,0,0,'','Flame Breath - Dark Rune Guardian'),
(13,0,62505,0,18,1,33186,0,0,'','Harpoon Trigger - Razorscale'),
(13,0,63524,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63657,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63658,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale'),
(13,0,63659,0,18,1,33233,0,0,'','Harpoon Shot - Razorscale');
SET @GUID :=48304;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+6;
INSERT INTO `creature` (`guid`, `id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)
VALUES
(@GUID,33233,603,1,1,0,0,560.1334,-143.035431,393.822632,0,120,0,0,1,0,0,0),
(@GUID+1,33233,603,1,1,0,0,572.410645,-138.656357,393.904419,0,120,0,0,1,0,0,0),
(@GUID+2,33233,603,1,1,0,0,585.9284,-146.587509,391.6004,0,120,0,0,1,0,0,0),
(@GUID+3,33233,603,1,1,0,0,589.7287,-137.1148,393.9011,0,120,0,0,1,0,0,0),
(@GUID+4,33233,603,1,1,0,0,605.9284,-140.108887,393.7972,0,120,0,0,1,0,0,0),
(@GUID+5,33233,603,1,1,0,0,630.2436,-276.259064,392.3122,0,120,0,0,1,0,0,0),
(@GUID+6,33233,603,1,1,0,0,638.241638,-272.1735,392.135132,0,120,0,0,1,0,0,0);
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale_controller' WHERE `entry` = 33233;
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale' WHERE `entry` = 33186;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_watcher' WHERE `entry` = 33453;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_sentinel' WHERE `entry` = 33846;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_guardian' WHERE `entry` = 33388;
UPDATE `creature_template` SET `ScriptName` = 'npc_devouring_flame' WHERE `entry` = 34188;
UPDATE `creature_template` SET `ScriptName` = 'npc_expedition_commander' WHERE `entry` = 33210;
UPDATE `creature_template` SET `ScriptName` = 'npc_mole_machine_trigger' WHERE `entry` IN (33282, 33245);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (33210,33287,33259,33233);
UPDATE `gameobject_template` SET `ScriptName`='go_razorscale_harpoon' WHERE `entry` IN (194519,194541,194542,194543);
DELETE FROM `spell_script_names` WHERE `spell_id`=63308;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(63308,'spell_razorscale_devouring_flame');
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=10404;  
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=34606; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36724; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36725; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36805; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36807; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36808; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36811; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36829; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36839; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36844; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36998; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37003; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37004; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37007; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37011; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37012; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37016; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37017; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37021; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37027; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37030; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37031; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37032; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37033; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37035; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37144; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37146; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37148; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37149; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37230; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37544; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37545; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37546; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36880; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36897; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36899; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37022; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37023; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37025; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37038; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37098; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37217; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37571; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37595; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37662; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37663; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37664; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37665; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37666; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37782; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37901; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38104; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38410; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37034; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37501; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37502; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38184; 
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37232; 
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36990; 
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37068; 
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37107; 
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37920; 
UPDATE `creature_template` SET `difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38456; 


DELETE FROM `creature_template` WHERE `entry` BETWEEN 3460602 AND 3845601 OR `entry` IN (1040402,1040403);
DELETE FROM `creature_loot_template` WHERE `entry` IN (3672402,3672403,3672502,3672503,3680502,3680503,3680702,3680703,3680802,3680803,3681102,3681103,3682902,3682903,3688002,3688003,3699802,3699803,3700302,3700303,3700402,3700403,3700702,3700703,3701102,3701103,3701202,3701203,3701602,3701603,3701702,3701703,3702102,3702103,3702202,3702203,3702302,3702303,3702502,3702503,3702702,3702703,3703002,3703003,3703102,3703103,3703202,3703203,3703302,3703303,3703402,3703403,3703502,3703503,3703802,3703803,3709802,3709803,3714402,3714403,3714602,3714603,3714802,3714803,3714902,3714903,3721702,3721703,3723002,3723003,3750102,3750103,3750202,3750203,3754402,3754403,3754502,3754503,3754602,3754603,3757102,3757103,3759502,3759503,3766202,3766203,3766302,3766303,3766402,3766403,3766502,3766503,3766602,3766603);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` BETWEEN 3460602 AND 3845601 OR `creature_id` IN (1040402,1040403);


SET @ICC_TrashGenericGrey := 35063; 
SET @ICC_TrashGenericWhite := @ICC_TrashGenericGrey+1;
SET @ICC_TrashGenericScroll := @ICC_TrashGenericGrey+2;
SET @ICC_TrashGenericGreen := @ICC_TrashGenericGrey+3;
SET @ICC_TrashGenericBlue := @ICC_TrashGenericGrey+4;
SET @ICC_TrashGenericPurpleICC := @ICC_TrashGenericGrey+5;
SET @ICC_TrashCitadelFinal := @ICC_TrashGenericGrey+6;
SET @ICC_TrashGenericPurpleDUNN := @ICC_TrashGenericGrey+7;
SET @ICC_TrashDungeonNFinal := @ICC_TrashGenericGrey+8;
SET @ICC_TrashGenericPurpleDUNH := @ICC_TrashGenericGrey+9;
SET @ICC_TrashDungeonHFinal := @ICC_TrashGenericGrey+10;
SET @ICC_TrashGenericPurple := @ICC_TrashGenericGrey+11;

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @ICC_TrashGenericGrey AND @ICC_TrashGenericGrey+11; 
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 35063 AND 35076; 
INSERT INTO reference_loot_template (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES

(@ICC_TrashGenericGrey,33430,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33426,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33424,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33428,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33397,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33398,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33399,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33400,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33433,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33401,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33402,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33403,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33427,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33365,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33366,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33367,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33368,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33346,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33369,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33370,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33371,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33412,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33413,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33414,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33415,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33416,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33435,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33417,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33419,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33379,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33380,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33381,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33382,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33383,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33434,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33384,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33385,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33429,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33425,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33431,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33423,0,1,1,1,1), 
(@ICC_TrashGenericGrey,33422,0,1,1,1,1), 
(@ICC_TrashGenericGrey,43852,70,1,1,1,1), 

(@ICC_TrashGenericWhite,33470,0,1,1,2,7), 
(@ICC_TrashGenericWhite,33445,0,1,1,1,1), 
(@ICC_TrashGenericWhite,33454,0,1,1,1,1), 
(@ICC_TrashGenericWhite,35947,0,1,1,1,1), 
(@ICC_TrashGenericWhite,33447,0,1,1,1,1), 
(@ICC_TrashGenericWhite,33448,0,1,1,1,1), 

(@ICC_TrashGenericScroll,43463,0,1,1,1,1), 
(@ICC_TrashGenericScroll,37091,0,1,1,1,1), 
(@ICC_TrashGenericScroll,37093,0,1,1,1,1), 
(@ICC_TrashGenericScroll,43465,0,1,1,1,1), 
(@ICC_TrashGenericScroll,37097,0,1,1,1,1), 
(@ICC_TrashGenericScroll,43464,0,1,1,1,1), 
(@ICC_TrashGenericScroll,37092,0,1,1,1,1), 
(@ICC_TrashGenericScroll,37094,0,1,1,1,1), 
(@ICC_TrashGenericScroll,43466,0,1,1,1,1), 
(@ICC_TrashGenericScroll,37098,0,1,1,1,1), 

(@ICC_TrashGenericGreen,36609,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36497,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36511,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36694,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36527,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36611,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36638,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36428,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36639,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36707,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36539,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36723,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36035,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36042,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36038,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36039,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36040,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36037,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36036,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36041,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36266,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36261,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36260,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36262,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36263,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36264,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36265,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36259,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36525,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36709,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36050,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36047,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36046,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36048,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36049,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36045,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36043,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36044,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36554,0,1,1,1,1), 
(@ICC_TrashGenericGreen,43297,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36553,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36695,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36721,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36413,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36427,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36484,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36499,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36470,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36381,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36382,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36379,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36383,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36384,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36385,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36380,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36386,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36623,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36568,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36637,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36471,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36582,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36597,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36456,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36457,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36373,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36377,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36374,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36371,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36372,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36375,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36376,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36378,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36469,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36513,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36414,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36483,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36625,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36555,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36651,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36680,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36498,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36512,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36441,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36540,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36610,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36595,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36455,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36443,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36666,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36653,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36147,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36154,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36148,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36150,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36151,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36152,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36153,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36149,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36722,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36389,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36387,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36394,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36393,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36390,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36388,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36391,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36392,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36596,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36569,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36693,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36624,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36442,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36679,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36485,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36567,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36583,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36526,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36708,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36667,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36275,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36276,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36282,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36277,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36278,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36279,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36280,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36281,0,1,1,1,1), 
(@ICC_TrashGenericGreen,36429,0,1,1,1,1), -- Spur Ring
(@ICC_TrashGenericGreen,36652,0,1,1,1,1), -- Stocky Shotgun
(@ICC_TrashGenericGreen,36274,0,1,1,1,1), -- Ulduar Bracers
(@ICC_TrashGenericGreen,36269,0,1,1,1,1), -- Ulduar Breastplate
(@ICC_TrashGenericGreen,36270,0,1,1,1,1), -- Ulduar Gauntlets
(@ICC_TrashGenericGreen,36267,0,1,1,1,1), -- Ulduar Girdle
(@ICC_TrashGenericGreen,36268,0,1,1,1,1), -- Ulduar Greaves
(@ICC_TrashGenericGreen,36271,0,1,1,1,1), -- Ulduar Helm
(@ICC_TrashGenericGreen,36272,0,1,1,1,1), -- Ulduar Legguards
(@ICC_TrashGenericGreen,36273,0,1,1,1,1), -- Ulduar Shoulderguards
(@ICC_TrashGenericGreen,36415,0,1,1,1,1), -- Vintage Satin Cloak
(@ICC_TrashGenericGreen,36058,0,1,1,1,1), -- Vizier Bracelets
(@ICC_TrashGenericGreen,36054,0,1,1,1,1), -- Vizier Gloves
(@ICC_TrashGenericGreen,36055,0,1,1,1,1), -- Vizier Hood
(@ICC_TrashGenericGreen,36056,0,1,1,1,1), -- Vizier Leggings
(@ICC_TrashGenericGreen,36057,0,1,1,1,1), -- Vizier Mantle
(@ICC_TrashGenericGreen,36053,0,1,1,1,1), -- Vizier Robe
(@ICC_TrashGenericGreen,36051,0,1,1,1,1), -- Vizier Sash
(@ICC_TrashGenericGreen,36052,0,1,1,1,1), -- Vizier SLippers
(@ICC_TrashGenericGreen,36665,0,1,1,1,1), -- Wasteland Wand
(@ICC_TrashGenericGreen,36170,0,1,1,1,1), -- Webspinner Bindings
(@ICC_TrashGenericGreen,36164,0,1,1,1,1), -- Webspinner Boots
(@ICC_TrashGenericGreen,36163,0,1,1,1,1), -- Webspinner Cord
(@ICC_TrashGenericGreen,36166,0,1,1,1,1), -- Webspinner Gloves
(@ICC_TrashGenericGreen,36167,0,1,1,1,1), -- Webspinner Hood
(@ICC_TrashGenericGreen,36168,0,1,1,1,1), -- Webspinner Leggings
(@ICC_TrashGenericGreen,36169,0,1,1,1,1), -- Webspinner Shoulderguards
(@ICC_TrashGenericGreen,36165,0,1,1,1,1), -- Webspinner Vest
(@ICC_TrashGenericGreen,36162,0,1,1,1,1), -- Wendigo Bands
(@ICC_TrashGenericGreen,36156,0,1,1,1,1), -- Wendigo Boots
(@ICC_TrashGenericGreen,36157,0,1,1,1,1), -- Wendigo Chestpiece
(@ICC_TrashGenericGreen,36155,0,1,1,1,1), -- Wendigo Girdle
(@ICC_TrashGenericGreen,36158,0,1,1,1,1), -- Wendigo Gloves
(@ICC_TrashGenericGreen,36159,0,1,1,1,1), -- Wendigo Hood
(@ICC_TrashGenericGreen,36160,0,1,1,1,1), -- Wendigo Legguards
(@ICC_TrashGenericGreen,36161,0,1,1,1,1), -- Wendigo Pauldrons
(@ICC_TrashGenericGreen,36541,0,1,1,1,1), -- Wintry Claymore
(@ICC_TrashGenericGreen,36681,0,1,1,1,1), -- Wisdom Carver
(@ICC_TrashGenericGreen,36581,0,1,1,1,1), -- Wolvar Handaxe

(@ICC_TrashGenericBlue,37792,0,1,1,1,1), -- Agin's Crushing Carapace
(@ICC_TrashGenericBlue,37770,0,1,1,1,1), -- Bulge-Concealing Breastplate
(@ICC_TrashGenericBlue,37780,0,1,1,1,1), -- Condor-Bone Chestguard
(@ICC_TrashGenericBlue,37760,0,1,1,1,1), -- Cracklefire Wristguards
(@ICC_TrashGenericBlue,37781,0,1,1,1,1), -- Grips of the Warming Heart
(@ICC_TrashGenericBlue,37824,0,1,1,1,1), -- Gwyneth's Runed Dragonwand
(@ICC_TrashGenericBlue,37761,0,1,1,1,1), -- Shimmerthread Girdle
(@ICC_TrashGenericBlue,37793,0,1,1,1,1), -- Skullcage of Eternal Terror
(@ICC_TrashGenericBlue,37794,0,1,1,1,1), -- Torta's Oversized Choker
(@ICC_TrashGenericBlue,37822,0,1,1,1,1), -- Twisted Puzzle-Ring
(@ICC_TrashGenericBlue,37771,0,1,1,1,1), -- Wristguard of Verdant Recovery

(@ICC_TrashGenericBlue,41788,0,1,1,1,1), -- Design: Beaming Earthsiege Diamond
(@ICC_TrashGenericBlue,41780,0,1,1,1,1), -- Design: Champion's Monarch Topaz
(@ICC_TrashGenericBlue,41786,0,1,1,1,1), -- Design: Destructive Skyflare Diamond
(@ICC_TrashGenericBlue,41777,0,1,1,1,1), -- Design: Etched Monarch Topaz
(@ICC_TrashGenericBlue,41789,0,1,1,1,1), -- Design: Inscribed Monarch Topaz
(@ICC_TrashGenericBlue,41781,0,1,1,1,1), -- Design: Misty Forest Emerald
(@ICC_TrashGenericBlue,41783,0,1,1,1,1), -- Design: Purified Twilight Opal
(@ICC_TrashGenericBlue,41778,0,1,1,1,1), -- Design: Resolute MOnarch Topaz
(@ICC_TrashGenericBlue,41782,0,1,1,1,1), -- Design: Shining Forest Emerald
(@ICC_TrashGenericBlue,41784,0,1,1,1,1), -- Design: Sovereign Twilight Opal
(@ICC_TrashGenericBlue,41779,0,1,1,1,1), -- Design: Stalwart Monarch Topaz
(@ICC_TrashGenericBlue,41785,0,1,1,1,1), -- Design: Tenuous Twilight Opal
(@ICC_TrashGenericBlue,41787,0,1,1,1,1), -- Design: Thundering Skyflare Diamond

(@ICC_TrashGenericBlue,43876,0,1,1,1,1), -- A Guide to Northern Cloth Scavenging

(@ICC_TrashGenericPurpleICC,50444,0,1,1,1,1), -- Rowan's Rifle of Silver Bullets
(@ICC_TrashGenericPurpleICC,50451,0,1,1,1,1), -- Belt of the Lonely Noble
(@ICC_TrashGenericPurpleICC,50450,0,1,1,1,1), -- Leggings of Dubious Charms
(@ICC_TrashGenericPurpleICC,50449,0,1,1,1,1), -- Stiffened Corpse Shoulderpads
(@ICC_TrashGenericPurpleICC,50453,0,1,1,1,1), -- Ring of Rotting Sinew
(@ICC_TrashGenericPurpleICC,50447,0,1,1,1,1), -- Harbinger's Bone Band
(@ICC_TrashGenericPurpleICC,50452,0,1,1,1,1), -- Wodin's Lucky Necklace

(@ICC_TrashGenericPurple,44311,0,1,1,1,1), -- Avool's Sword of Jin
(@ICC_TrashGenericPurple,37835,0,1,1,1,1), -- Je'Tze's Bell
(@ICC_TrashGenericPurple,44310,0,1,1,1,1), -- Namlak's Supernumerary Sticker
(@ICC_TrashGenericPurple,44309,0,1,1,1,1), -- Sash of Jordan
(@ICC_TrashGenericPurple,44308,0,1,1,1,1), -- Signet of Edward the Odd
(@ICC_TrashGenericPurple,37254,0,1,1,1,1), -- Super Simian Sphere
(@ICC_TrashGenericPurple,44312,0,1,1,1,1), -- Wapach's Spaulders of Solidarity
(@ICC_TrashGenericPurple,44313,0,1,1,1,1), -- Zom's Crackling Bulwark

(@ICC_TrashGenericPurpleDUNN,49852,0,1,1,1,1), -- Coffin Nail
(@ICC_TrashGenericPurpleDUNN,49855,0,1,1,1,1), -- Plated Grips of Korth'azz
(@ICC_TrashGenericPurpleDUNN,49853,0,1,1,1,1), -- Titanium Links of Lore
(@ICC_TrashGenericPurpleDUNN,49854,0,1,1,1,1), -- Mantle of Tattered Feathers

(@ICC_TrashGenericPurpleDUNH,50319,0,1,1,1,1), -- Unsharpened Ice Razor
(@ICC_TrashGenericPurpleDUNH,50315,0,1,1,1,1), -- Seven-Fingered Claws
(@ICC_TrashGenericPurpleDUNH,50318,0,1,1,1,1), -- Ghostly Wristwraps

(@ICC_TrashCitadelFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashCitadelFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashCitadelFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashCitadelFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashCitadelFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashCitadelFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashCitadelFinal,7,2,1,0,-@ICC_TrashGenericPurpleICC,1), -- 1 purple icc loot (2%)
(@ICC_TrashCitadelFinal,8,1,1,0,-@ICC_TrashGenericPurple,1), -- 1 purple world loot (1%)

(@ICC_TrashDungeonNFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonNFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonNFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashDungeonNFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashDungeonNFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashDungeonNFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashDungeonNFinal,7,2,1,0,-@ICC_TrashGenericPurpleDUNN,1), -- 1 purple dungeon loot (2%)
(@ICC_TrashDungeonNFinal,8,1,1,0,-@ICC_TrashGenericPurple,1), -- 1 purple world loot (1%)

(@ICC_TrashDungeonHFinal,1,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonHFinal,2,40,1,0,-@ICC_TrashGenericGrey,1), -- 1 grey loot (40%)
(@ICC_TrashDungeonHFinal,3,20,1,0,-@ICC_TrashGenericWhite,1), -- 1 white loot (20%)
(@ICC_TrashDungeonHFinal,4,7,1,0,-@ICC_TrashGenericScroll,1), -- 1 scroll loot (7%)
(@ICC_TrashDungeonHFinal,5,10,1,0,-@ICC_TrashGenericGreen,1), -- 1 green loot (10%)
(@ICC_TrashDungeonHFinal,6,3,1,0,-@ICC_TrashGenericBlue,1), -- 1 blue loot (3%)
(@ICC_TrashDungeonHFinal,7,2,1,0,-@ICC_TrashGenericPurpleDUNH,1), -- 1 purple heroicdungeon loot (1%)
(@ICC_TrashDungeonHFinal,8,1,1,0,-@ICC_TrashGenericPurple,1); -- 1 purple world loot (1%)


SET @LootDUNGEON_N := 100000; -- needs official entry designated
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_N WHERE `entry` IN (36522,36620,36516,36564,36499,36478,36666); -- FoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_N WHERE `entry` IN (36896,36842,36830,36879,37711,36788,37712,37713); -- PoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_N WHERE `entry` IN (38176,38177,38173,38172,38175,36723); -- HoR
DELETE FROM `creature_loot_template` WHERE `entry` IN (36522,36620,36516,36564,36499,36478,36666,36896,36842,36830,36879,37711,36788,37712,37713,38176,38177,38173,38172,38175,36723,@LootDUNGEON_N);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@LootDUNGEON_N,1,100,1,0,-@ICC_TrashDungeonNFinal,2); -- 2 selection from reference

SET @LootDUNGEON_H := 100001; -- needs official entry designated
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_H WHERE `entry` IN (37569,37568,37567,37565,38193,37566,37563); -- FoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_H WHERE `entry` IN (37609,37638,37637,37635,37636,38249,38025,38026); -- PoS
UPDATE `creature_template` SET `lootid`=@LootDUNGEON_H WHERE `entry` IN (37720,38524,38525,38563,38544,38564); -- HoR
DELETE FROM `creature_loot_template` WHERE `entry` IN (37569,37568,37567,37565,38193,37566,37563,37609,37638,37637,37635,37636,38249,38025,38026,37720,38524,38525,38563,38544,38564,@LootDUNGEON_H);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@LootDUNGEON_H,1,100,1,0,-@ICC_TrashDungeonHFinal,2); -- 2 selection from reference

SET @LootRAID := 100002; -- needs official entry designated
UPDATE `creature_template` SET `lootid`=@LootRAID WHERE `entry` IN(37012,37022,37571,37664,37595,37662,37665,37663,37666,37007,36811,36807,36829,36805,36808,36880,37546,37531,37229,37228,36725,37501,37502,37023,10404,38494,38490,36724,37126,37544,37545,37098,37038);
DELETE FROM `creature_loot_template` WHERE `entry` IN(37012,37022,37571,37664,37595,37662,37665,37663,37666,37007,36811,36807,36829,36805,36808,36880,37546,37531,37229,37228,36725,37501,37502,37023,10404,38494,38490,36724,37126,37544,37545,37098,37038,@LootRAID);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@LootRAID,1,100,1,0,-@ICC_TrashCitadelFinal,2); -- 2 selection from reference

CALL `sp_set_npc_lootid_bylist` ('37217,37025,37230,37532,36891',NULL);
DELETE FROM `creature_loot_template` WHERE `entry` IN (37217,37025,37230,37532,36891);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(37217,1,100,1,0,-@ICC_TrashCitadelFinal,2), -- 2 selection from reference
(37217,52019,30,1,0,1,1), -- Precious Ribbon
(37025,1,100,1,0,-@ICC_TrashCitadelFinal,2), -- 2 selection from reference
(37230,1,100,1,0,-@ICC_TrashCitadelFinal,2), -- 2 selection from reference
(37230,33631,65,1,1,2,3), -- Frosted Claw
(37230,33632,35,1,1,2,3), -- Icicle Fang
(37532,33631,65,1,1,2,3), -- Frosted Claw
(37532,33632,35,1,1,2,3), -- Icicle Fang
(36891,33631,65,1,1,2,3), -- Frosted Claw
(36891,33632,35,1,1,2,3); -- Icicle Fang
SET @ENTRY  := 34244;
SET @GOSSIP := 10478;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,64795,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Jean Pierre Poulain - On gossip option select - cast spell');
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (1047800);

SET @ENTRY  := 25590;
SET @GOSSIP := 9182;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,15,11708,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Fullthrottle - On gossip option select - quest complete'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Fullthrottle - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (918200);


SET @ENTRY  := 11832;
SET @GOSSIP := 10215;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - cast spell'),
(@ENTRY,0,1,2,62,0,100,0,@GOSSIP,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - cast spell'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (1021500,1021501);


SET @ENTRY  := 25841;
SET @GOSSIP := 21248;
SET @SCRIPT := 212481;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,46362,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On gossip option select - close gossip'),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spawn - set gossip flag'),
(@ENTRY,0,3,4,8,0,100,0,46362,0,0,0,11,46362,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spellhit - cast spell on envoker'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - On spellhit - set phase 1'),
(@ENTRY,0,5,0,1,1,100,0,3000,3000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Recon Pilot - OOC - wait 3 sec despawn (Phase 1)');

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;


SET @ENTRY  := 24657;
SET @GOSSIP := 10603;
SET @SCRIPT := 1060400;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,66592,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Glodrak Huntsniper - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Glodrak Huntsniper - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;

SET @ENTRY  := 23486;
SET @GOSSIP := 10604;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,66592,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Goldark Snipehunter - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Goldark Snipehunter - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;


SET @ENTRY   := 24468;
SET @ENTRY1  := 24510;
SET @GOSSIP  := 8958;
SET @GOSSIP1 := 8960;
SET @SCRIPT  := 895800;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@ENTRY,@ENTRY1);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,6,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - close gossip'),
(@ENTRY,0,2,3,62,0,100,0,@GOSSIP1,0,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - cast spell'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Pol Amberstill - On gossip option select - close gossip'),
(@ENTRY1,0,0,1,62,0,100,0,@GOSSIP,6,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - cast spell'),
(@ENTRY1,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - close gossip'),
(@ENTRY1,0,2,3,62,0,100,0,@GOSSIP1,0,0,0,11,44262,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - cast spell'),
(@ENTRY1,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Driz Tumblequick - On gossip option select - close gossip');
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=6;
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP1 AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;


SET @ENTRY  := 24399;
SET @GOSSIP := 8953;
SET @SCRIPT := 895300;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,43533,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Steel Gate Chief Archaeologist - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@SCRIPT;


SET @ENTRY := 26423;
SET @GOSSIP := 21249;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,33,27921,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Drakuru - On gossip option select - killcredit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Drakuru - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=@GOSSIP;


SET @ENTRY := 28048;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9647,0,0,0,11,50517,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Dread Captain DeMeza - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Dread Captain DeMeza - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=9647 AND `id`=0;
DELETE FROM `gossip_scripts` WHERE `id`=9647;
 
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=27615;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=27615;
DELETE FROM `smart_scripts` WHERE `entryorguid`=27615;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27615,0,0,1,1,0,100,1,1000,1000,1000,1000,11,49119,2,0,0,0,0,10,101497,27452,0,0,0,0,0,'Scourge Deathspeaker - Spawn & reset - channel Fire Beam'),
(27615,0,1,0,61,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - Spawn & reset - Prevent Combat Movement'),
(27615,0,2,3,4,0,100,1,0,0,0,0,11,52282,2,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - On aggro - Cast Fireball'),
(27615,0,3,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - On aggro - Set phase 1'),
(27615,0,4,0,9,1,100,0,3000,3000,3400,4800,11,52282,1,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - in combat - Cast Fireball (phase 1)'),
(27615,0,5,0,9,1,100,0,35,80,1000,1000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 35 Yards - Start Combat Movement (phase 1)'),
(27615,0,6,0,9,1,100,0,5,15,1000,1000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15 Yards - Prevent Combat Movement (phase 1)'),
(27615,0,7,0,9,1,100,0,0,5,1000,1000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Deathspeaker - Below 5 Yards - Start Combat Movement (phase 1)'),
(27615,0,8,0,3,1,100,1,0,7,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - Mana at 7% - Set Phase 2 (phase 1)'),
(27615,0,9,0,0,2,100,1,0,0,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - In combat - Allow Combat Movement (phase 2)'),
(27615,0,10,0,3,2,100,1,15,100,100,100,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - Mana above 15% - Set Phase 1 (phase 2)'),
(27615,0,11,0,2,0,100,1,0,30,120000,130000,11,52281,0,0,0,0,0,2,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Cast Flame of the Seer'),
(27615,0,12,0,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Set Phase 3'),
(27615,0,13,0,2,4,100,1,0,15,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Allow Combat Movement (phase 3)'),
(27615,0,14,15,2,4,100,1,0,15,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scourge Deathspeaker - At 15% HP - Flee (phase 3)'),
(27615,0,15,0,61,4,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scourge Deathspeaker - At 15% HP - Say text0 (Phase 3)');


DELETE FROM `creature_text` WHERE `entry` IN (27615);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27615,0,0, '%s attempts to run away in fear!',2,0,100,0,0,0, 'Scourge Deathspeaker');


UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=27452;


SET @ENTRY := 22138;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,38469,0,0,0,0,0,19,22139,0,0,0,0,0,0,'Dark Conclave Ritualist - OOC - Dark Conclave Ritualist Channel');

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=24938;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-65694,-65695,-65696,-65697,-65698,-65699,-65700,-65702);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-65694,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,62844,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65695,0,0,0,1,0,100,0,2000,2000,5000,7000,11,45223,0,0,0,0,0,10,62844,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65696,0,0,0,1,0,100,0,3000,3000,5000,7000,11,45223,0,0,0,0,0,10,62843,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65697,0,0,0,1,0,100,0,6000,6000,5000,7000,11,45223,0,0,0,0,0,10,62843,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65698,0,0,0,1,0,100,0,2000,2000,5000,7000,11,45223,0,0,0,0,0,10,59515,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65699,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,62841,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65700,0,0,0,1,0,100,0,1000,1000,5000,7000,11,45223,0,0,0,0,0,10,62842,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger'),
(-65702,0,0,0,1,0,100,0,5000,5000,5000,7000,11,45223,0,0,0,0,0,10,59473,25192,0,0,0,0,0,'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
DELETE FROM `waypoint_data` WHERE `id` IN (656940,656950,656960,656970,656980,656990,657000,657020);
DELETE FROM `waypoint_scripts` WHERE `id` BETWEEN 80 AND 111;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid` IN (65694,65695,65696,65697,65698,65699,65700,65702);
UPDATE `creature_addon` SET `path_id`=0 WHERE `guid` IN (65694,65695,65696,65697,65698,65699,65700,65702);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45223;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,45223,0,18,1,25192,0,0,'','Spell 45223 targets Bridge Marksman Target Dummy');
DELETE FROM `gameobject` WHERE `guid` IN (32141,32142,32143,24683,24684,24685,24686);
DELETE FROM `creature` WHERE `guid` IN (78738,78739,78740,78741);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (21173,21170,22404,22405,22406);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|2048 WHERE `entry` IN (21170,22404,22405,22406);

INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(78738,21173,530,1,1,0,0,-1162.911377,2248.195313,152.24733,4.815845,120,0,0,1,0,0,0);

DELETE FROM `gameobject_template` WHERE `entry`=183929;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`ScriptName`,`WDBVerified`) VALUES 
(183929,6,0, '', '', '',35,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '',1);

SET @ENTRY := 184661;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,1,0,100,0,0,0,1000,1000,93,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'GameObject Smoke Beacon - On Spawn - Do Custom Animation');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=36325;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,36325,0,18,1,21182,0,0,'','Spell 36325 target creature 21182'),
(13,0,36325,0,18,1,22401,0,0,'','Spell 36325 target creature 22401'),
(13,0,36325,0,18,1,22402,0,0,'','Spell 36325 target creature 22402'),
(13,0,36325,0,18,1,22403,0,0,'','Spell 36325 target creature 22403');

SET @ENTRY := 21182;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,1,0,0,0,0,10,78738,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Spawn fire');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-1156.975,2109.627,83.51005,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 1'),
(@ENTRY,2,-1152.303,2112.098,90.67654,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 2'),
(@ENTRY,3,-1150.817,2103.74,89.81573,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 3'),
(@ENTRY,4,-1153.965,2107.031,97.06559,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 4'),
(@ENTRY,5,-1156.105,2107.421,93.06557,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 5'),
(@ENTRY,6,-1152.167,2107.406,83.17665,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 6'),
(@ENTRY,7,-1150.145,2102.392,75.23684,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 7'),
(@ENTRY,8,-1158.784,2102.993,76.98234,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 8'),
(@ENTRY,9,-1158.344,2112.019,79.20454,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 9'),
(@ENTRY,10,-1148.166,2113.343,77.0103,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 10'),
(@ENTRY,11,-1148.897,2102.624,69.67694,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 11'),
(@ENTRY,12,-1157.054,2104.975,82.9548,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South WP 12');
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-1157.054,`position_y`=2104.975,`position_z`=82.9548,`orientation`=1.186824 WHERE `guid`=74299;

SET @ENTRY := 22401;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,2,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Spawn fire');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-821.9919,2034.883,55.01843,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 1'),
(@ENTRY,2,-820.9771,2027.591,63.68367,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 2'),
(@ENTRY,3,-825.2185,2034.113,65.86314,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 3'),
(@ENTRY,4,-816.8493,2028.659,49.75199,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 4'),
(@ENTRY,5,-825.249,2026.351,46.58422,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North WP 5');
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-825.249,`position_y`=2026.351,`position_z`=46.58422,`orientation`=1.186824 WHERE `guid`=78735;

SET @ENTRY := 22402;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,3,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Spawn fire');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-897.1001,1917.556,93.73737,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 1'),
(@ENTRY,2,-903.386,1919.14,76.0997,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 2'),
(@ENTRY,3,-898.1819,1920.161,82.67819,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 3'),
(@ENTRY,4,-901.2836,1920.168,92.57269,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 4'),
(@ENTRY,5,-894.9478,1924.78,75.48938,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 5'),
(@ENTRY,6,-894.4704,1919.866,93.71019,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge WP 6');
UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-894.4704,`position_y`=1919.866,`position_z`=93.71019,`orientation`=1.186824 WHERE `guid`=78736;


SET @ENTRY := 22403;
UPDATE `creature_template` SET `minlevel`=1,`maxlevel`=1,`flags_extra`=`flags_extra`&~2,`flags_extra`=`flags_extra`|128,`InhabitType`=4,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On Spawn - Start WP movement'),
(@ENTRY,0,1,2,8,0,100,0,36374,0,0,0,45,0,4,0,0,0,0,10,74239,21173,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Call Griphonriders'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,34386,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Spawn fire');


DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-978.3713,1883.556,104.3167,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 1'),
(@ENTRY,2,-974.3038,1878.926,109.6782,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 2'),
(@ENTRY,3,-974.1463,1874.819,121.9402,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 3'),
(@ENTRY,4,-982.4401,1875.441,100.4122,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 4'),
(@ENTRY,5,-975.1263,1882.178,118.0354,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 5'),
(@ENTRY,6,-979.3693,1876.667,121.5866,'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill WP 6');

UPDATE `creature` SET `curhealth`=1,`spawndist`=0,`MovementType`=0,`position_x`=-979.3693,`position_y`=1876.667,`position_z`=121.5866,`orientation`=1.186824 WHERE `guid`=78737;


SET @ENTRY  := 21173; -- Zeth'Gor Quest Credit Marker, They Must Burn
SET @ENTRY1 := 21170; -- Honor Hold Gryphon Brigadier, South
SET @ENTRY2 := 22404; -- Honor Hold Gryphon Brigadier, North
SET @ENTRY3 := 22405; -- Honor Hold Gryphon Brigadier, Forge
SET @ENTRY4 := 22406; -- Honor Hold Gryphon Brigadier, Foothills
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100, (@ENTRY*100)+1, (@ENTRY*100)+2, (@ENTRY*100)+3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,(@ENTRY*100)+0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On dataset - load script'),
(@ENTRY,0,1,0,38,0,100,0,0,2,0,0,80,(@ENTRY*100)+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower North - On dataset - load script'),
(@ENTRY,0,2,0,38,0,100,0,0,3,0,0,80,(@ENTRY*100)+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Forge - On dataset - load script'),
(@ENTRY,0,3,0,38,0,100,0,0,4,0,0,80,(@ENTRY*100)+3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower Foothill - On dataset - load script'),

(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset data 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,7,0,0,0,100,0,0,0,0,0,11,36302,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,45,0,4,0,0,0,0,19,@ENTRY1,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, South'),

((@ENTRY*100)+1,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+1,9,1,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,3,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,5,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,7,0,0,0,100,0,0,0,0,0,11,39106,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),
((@ENTRY*100)+1,9,8,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, North'),

((@ENTRY*100)+2,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+2,9,1,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,3,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,5,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,7,0,0,0,100,0,0,0,0,0,11,39107,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),
((@ENTRY*100)+2,9,8,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY3,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Forge'),

((@ENTRY*100)+3,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset data 0'),
((@ENTRY*100)+3,9,1,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,2,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,3,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,4,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,5,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,6,0,0,0,100,0,3000,3000,0,0,45,0,3,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,7,0,0,0,100,0,0,0,0,0,11,39108,0,0,0,0,0,1,0,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill'),
((@ENTRY*100)+3,9,8,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,@ENTRY4,0,0,0,0,0,0, ' Summon Honor Hold Gryphon Brigadier, Foothill');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY1;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY1,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY1,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY1*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY1*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY1*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY1*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY1,0,5,0,40,0,100,0,10,@ENTRY1*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,6,0,40,0,100,0,10,(@ENTRY1*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,7,0,40,0,100,0,11,(@ENTRY1*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY1,0,8,0,40,0,100,0,11,(@ENTRY1*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY2;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY2,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY2,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY2*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY2*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY2*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY2*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY2,0,5,0,40,0,100,0,12,@ENTRY2*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,6,0,40,0,100,0,11,(@ENTRY2*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,7,0,40,0,100,0,12,(@ENTRY2*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY2,0,8,0,40,0,100,0,12,(@ENTRY2*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY3;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY3,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY3,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY3*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY3*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY3*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,4,0,38,0,100,0,0,4,0,0,53,1,(@ENTRY3*100)+3,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY3,0,5,0,40,0,100,0,13,@ENTRY3*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,6,0,40,0,100,0,13,(@ENTRY3*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,7,0,40,0,100,0,12,(@ENTRY3*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY3,0,8,0,40,0,100,0,14,(@ENTRY3*100)+3,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY4;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY4,0,0,0,11,0,100,0,0,0,0,0,11,36350,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Spawn - Add aura'),
(@ENTRY4,0,1,0,38,0,100,0,0,1,0,0,53,1,@ENTRY4*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,2,0,38,0,100,0,0,2,0,0,53,1,(@ENTRY4*100)+1,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,3,0,38,0,100,0,0,3,0,0,53,1,(@ENTRY4*100)+2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On data set - Start WP movement'),
(@ENTRY4,0,4,0,40,0,100,0,15,@ENTRY4*100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY4,0,5,0,40,0,100,0,15,(@ENTRY4*100)+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn'),
(@ENTRY4,0,6,0,40,0,100,0,15,(@ENTRY4*100)+2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeth''Gor Quest Credit Marker, They Must Burn, Tower South - On Reach WP - Despawn');


DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY1*100, (@ENTRY1*100)+1, (@ENTRY1*100)+2, (@ENTRY1*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES

(@ENTRY1*100,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 1 WP 1'),
(@ENTRY1*100,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 1 WP 2'),
(@ENTRY1*100,3,-1162.907,2207.568,140.9076,'Honor Hold Gryphon Brigadier, South Path 1 WP 3'),
(@ENTRY1*100,4,-1165.149,2160.382,126.1298,'Honor Hold Gryphon Brigadier, South Path 1 WP 4'),
(@ENTRY1*100,5,-1171.198,2119.914,110.0741,'Honor Hold Gryphon Brigadier, South Path 1 WP 5'),
(@ENTRY1*100,6,-1152.598,2108.961,101.9074,'Honor Hold Gryphon Brigadier, South Path 1 WP 6'),
(@ENTRY1*100,7,-1126.18,2129.599,118.6573,'Honor Hold Gryphon Brigadier, South Path 1 WP 7'),
(@ENTRY1*100,8,-1113.314,2146.836,135.1296,'Honor Hold Gryphon Brigadier, South Path 1 WP 8'),
(@ENTRY1*100,9,-1105.45,2173.646,171.0185,'Honor Hold Gryphon Brigadier, South Path 1 WP 9'),
(@ENTRY1*100,10,-1107.9,2202.193,195.935,'Honor Hold Gryphon Brigadier, South Path 1 WP 10'),

((@ENTRY1*100)+1,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 2 WP 1'),
((@ENTRY1*100)+1,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 2 WP 2'),
((@ENTRY1*100)+1,3,-1182.963,2208.794,125.3797,'Honor Hold Gryphon Brigadier, South Path 2 WP 3'),
((@ENTRY1*100)+1,4,-1182.292,2161.906,114.2409,'Honor Hold Gryphon Brigadier, South Path 2 WP 4'),
((@ENTRY1*100)+1,5,-1175.9,2113.828,105.1853,'Honor Hold Gryphon Brigadier, South Path 2 WP 5'),
((@ENTRY1*100)+1,6,-1152.598,2108.961,104.5463,'Honor Hold Gryphon Brigadier, South Path 2 WP 6'),
((@ENTRY1*100)+1,7,-1126.18,2129.599,117.0184,'Honor Hold Gryphon Brigadier, South Path 2 WP 7'),
((@ENTRY1*100)+1,8,-1097.298,2159.928,136.074,'Honor Hold Gryphon Brigadier, South Path 2 WP 8'),
((@ENTRY1*100)+1,9,-1084.76,2185.17,157.8796,'Honor Hold Gryphon Brigadier, South Path 2 WP 9'),
((@ENTRY1*100)+1,10,-1074.359,2208.386,178.1295,'Honor Hold Gryphon Brigadier, South Path 2 WP 10'),

((@ENTRY1*100)+2,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 3 WP 1'),
((@ENTRY1*100)+2,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 3 WP 2'),
((@ENTRY1*100)+2,3,-1150.548,2194.858,120.9303,'Honor Hold Gryphon Brigadier, South Path 3 WP 3'),
((@ENTRY1*100)+2,4,-1151.814,2161.048,110.9858,'Honor Hold Gryphon Brigadier, South Path 3 WP 4'),
((@ENTRY1*100)+2,5,-1152.937,2131.728,105.9581,'Honor Hold Gryphon Brigadier, South Path 3 WP 5'),
((@ENTRY1*100)+2,6,-1151.148,2107.598,99.458,'Honor Hold Gryphon Brigadier, South Path 3 WP 6'),
((@ENTRY1*100)+2,7,-1165.406,2089.037,115.6802,'Honor Hold Gryphon Brigadier, South Path 3 WP 7'),
((@ENTRY1*100)+2,8,-1174.068,2083.782,125.0691,'Honor Hold Gryphon Brigadier, South Path 3 WP 8'),
((@ENTRY1*100)+2,9,-1205.327,2083.083,164.097,'Honor Hold Gryphon Brigadier, South Path 3 WP 9'),
((@ENTRY1*100)+2,10,-1232.793,2084.872,183.4025,'Honor Hold Gryphon Brigadier, South Path 3 WP 10'),
((@ENTRY1*100)+2,11,-1264.571,2093.127,197.5136,'Honor Hold Gryphon Brigadier, South Path 3 WP 11'),

((@ENTRY1*100)+3,1,-1166.146,2232.443,154.4811,'Honor Hold Gryphon Brigadier, South Path 4 WP 1'),
((@ENTRY1*100)+3,2,-1166.439,2233.399,154.4811,'Honor Hold Gryphon Brigadier, South Path 4 WP 2'),
((@ENTRY1*100)+3,3,-1152.79,2211.288,120.9303,'Honor Hold Gryphon Brigadier, South Path 4 WP 3'),
((@ENTRY1*100)+3,4,-1146.584,2178.448,110.9858,'Honor Hold Gryphon Brigadier, South Path 4 WP 4'),
((@ENTRY1*100)+3,5,-1155.939,2146.783,105.9581,'Honor Hold Gryphon Brigadier, South Path 4 WP 5'),
((@ENTRY1*100)+3,6,-1151.148,2107.598,99.68026,'Honor Hold Gryphon Brigadier, South Path 4 WP 6'),
((@ENTRY1*100)+3,7,-1142.785,2094.159,103.5414,'Honor Hold Gryphon Brigadier, South Path 4 WP 7'),
((@ENTRY1*100)+3,8,-1136.896,2085.377,109.1246,'Honor Hold Gryphon Brigadier, South Path 4 WP 8'),
((@ENTRY1*100)+3,9,-1119.036,2071.976,118.8748,'Honor Hold Gryphon Brigadier, South Path 4 WP 9'),
((@ENTRY1*100)+3,10,-1103.594,2050.397,128.2081,'Honor Hold Gryphon Brigadier, South Path 4 WP 10'),
((@ENTRY1*100)+3,11,-1080.568,2022.377,137.5138,'Honor Hold Gryphon Brigadier, South Path 4 WP 11');


DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY2*100, (@ENTRY2*100)+1, (@ENTRY2*100)+2, (@ENTRY2*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES

(@ENTRY2*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,4,-774.873,1952.79,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,5,-786.8572,1972.59,99.47905,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,6,-799.9429,2000.454,78.95126,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,7,-806.1043,2017.675,73.36794,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,8,-819.2725,2032.523,73.17354,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,9,-831.7571,2046.865,80.61793,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,10,-844.0977,2058.49,83.64579,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,11,-859.0389,2080.072,95.78463,'Honor Hold Gryphon Brigadier, North Path 1 WP'),
(@ENTRY2*100,12,-883.3383,2095.611,107.5624,'Honor Hold Gryphon Brigadier, North Path 1 WP'),

((@ENTRY2*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,5,-792.3573,1953.981,99.47905,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,6,-812.7388,1993.078,78.95126,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,7,-823.2512,2008.549,73.36794,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,9,-812.5039,2051.152,80.61793,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,10,-775.5078,2066.004,83.64579,'Honor Hold Gryphon Brigadier, North Path 2 WP'),
((@ENTRY2*100)+1,11,-728.4387,2072.975,87.72904,'Honor Hold Gryphon Brigadier, North Path 2 WP'),

((@ENTRY2*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,5,-798.551,1950.061,99.47905,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,6,-822.979,1966.302,78.95126,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,7,-829.1212,1999.823,73.36794,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,9,-822.0243,2049.509,80.61793,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,10,-838.6264,2088.113,83.64579,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,11,-857.7249,2123.352,87.72904,'Honor Hold Gryphon Brigadier, North Path 3 WP'),
((@ENTRY2*100)+2,12,-856.7349,2157.759,99.95123,'Honor Hold Gryphon Brigadier, North Path 3 WP'),

((@ENTRY2*100)+3,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,5,-792.3573,1953.981,99.47905,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,6,-812.7388,1993.078,78.95126,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,7,-823.2512,2008.549,73.36794,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,8,-823.4645,2030.833,73.17354,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,9,-812.5039,2051.152,80.61793,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,10,-838.6264,2088.113,83.64579,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,11,-857.7249,2123.352,87.72904,'Honor Hold Gryphon Brigadier, North Path 4 WP'),
((@ENTRY2*100)+3,12,-891.1043,2149.23,87.72904,'Honor Hold Gryphon Brigadier, North Path 4 WP');


DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY3*100, (@ENTRY3*100)+1, (@ENTRY3*100)+2, (@ENTRY3*100)+3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES

(@ENTRY3*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,4,-779.0291,1934.054,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,5,-805.9227,1932.241,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,6,-837.3495,1926.666,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,7,-862.7343,1923.357,97.618,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,8,-897.9168,1921.757,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,9,-914.8586,1930.438,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,10,-932.5103,1940.806,109.0624,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,11,-945.1282,1950.602,122.7846,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,12,-966.2561,1954.868,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),
(@ENTRY3*100,13,-993.241,1956.073,157.4512,'Honor Hold Gryphon Brigadier, Forge Path 1 WP'),

((@ENTRY3*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,4,-780.6625,1927.177,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,5,-811.2864,1921.429,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,6,-834.9781,1920.712,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,7,-866.0516,1916.696,97.618,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,8,-895.7596,1922.273,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,9,-923.1928,1916.771,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,10,-948.4045,1901.38,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,11,-966.732,1893.369,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,12,-989.9695,1893.078,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),
((@ENTRY3*100)+1,13,-1025.913,1875.034,164.979,'Honor Hold Gryphon Brigadier, Forge Path 2 WP'),

((@ENTRY3*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,5,-799.0213,1938.265,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,6,-821.9453,1929.91,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,7,-847.0975,1925.127,97.618,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,8,-884.1627,1919.391,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,9,-910.0975,1918.052,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,10,-931.7395,1901.312,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,11,-938.8629,1883.565,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),
((@ENTRY3*100)+2,12,-948.2704,1857.24,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 3 WP'),

((@ENTRY3*100)+3,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,3,-750.1168,1929.094,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,4,-773.3017,1941.179,99.47905,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,5,-799.0213,1938.265,104.2291,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,6,-821.9453,1929.91,101.0902,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,7,-847.0975,1925.127,97.618,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,8,-884.1627,1919.391,99.59021,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,9,-898.5378,1920.82,97.67357,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,10,-909.0667,1943.895,98.9791,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,11,-882.7237,1983.156,110.0068,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,12,-857.6995,1997.67,135.8124,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,13,-834.7382,1999.236,151.1734,'Honor Hold Gryphon Brigadier, Forge Path 4 WP'),
((@ENTRY3*100)+3,14,-797.808,1990.238,154.7012,'Honor Hold Gryphon Brigadier, Forge Path 4 WP');


DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY4*100, (@ENTRY4*100)+1, (@ENTRY4*100)+2);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES

(@ENTRY4*100,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 1'),
(@ENTRY4*100,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 2'),
(@ENTRY4*100,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 3'),
(@ENTRY4*100,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 4'),
(@ENTRY4*100,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 5'),
(@ENTRY4*100,6,-844.3373,1894.094,121.1179,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 6'),
(@ENTRY4*100,7,-875.8698,1888.307,134.0069,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 7'),
(@ENTRY4*100,8,-908.7481,1889.962,139.368,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 8'),
(@ENTRY4*100,9,-936.4296,1891.453,135.5625,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 9'),
(@ENTRY4*100,10,-956.9449,1888.206,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 10'),
(@ENTRY4*100,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 11'),
(@ENTRY4*100,12,-999.7429,1861.678,156.9511,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 12'),
(@ENTRY4*100,13,-1019.369,1838.22,181.4233,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 13'),
(@ENTRY4*100,14,-1015.93,1818.592,198.4232,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 14'),
(@ENTRY4*100,15,-1003.392,1791.963,211.84,'Honor Hold Gryphon Brigadier, Foothill Path 1 WP 15'),

((@ENTRY4*100)+1,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 1'),
((@ENTRY4*100)+1,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 2'),
((@ENTRY4*100)+1,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 3'),
((@ENTRY4*100)+1,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 4'),
((@ENTRY4*100)+1,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 5'),
((@ENTRY4*100)+1,6,-844.3373,1894.094,121.1179,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 6'),
((@ENTRY4*100)+1,7,-875.8698,1888.307,134.0069,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 7'),
((@ENTRY4*100)+1,8,-905.6191,1885.849,139.368,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 8'),
((@ENTRY4*100)+1,9,-933.7491,1881.107,135.5625,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 9'),
((@ENTRY4*100)+1,10,-957.0587,1876.275,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 10'),
((@ENTRY4*100)+1,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 11'),
((@ENTRY4*100)+1,12,-1001.597,1896.851,136.0901,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 12'),
((@ENTRY4*100)+1,13,-1026.942,1912.217,153.8956,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 13'),
((@ENTRY4*100)+1,14,-1046.058,1925.075,168.2844,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 14'),
((@ENTRY4*100)+1,15,-1065.902,1940.892,183.0622,'Honor Hold Gryphon Brigadier, Foothill Path 2 WP 15'),

((@ENTRY4*100)+2,1,-739.3298,1922.589,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 1'),
((@ENTRY4*100)+2,2,-738.3353,1922.693,100.9578,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 2'),
((@ENTRY4*100)+2,3,-750.1168,1929.094,115.7846,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 3'),
((@ENTRY4*100)+2,4,-780.6038,1912.869,111.4513,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 4'),
((@ENTRY4*100)+2,5,-812.3557,1903.761,119.8957,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 5'),
((@ENTRY4*100)+2,6,-852.6487,1887.492,134.7291,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 6'),
((@ENTRY4*100)+2,7,-885.8631,1878.916,144.8403,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 7'),
((@ENTRY4*100)+2,8,-910.2131,1876.215,149.118,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 8'),
((@ENTRY4*100)+2,9,-933.7659,1874.894,145.9792,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 9'),
((@ENTRY4*100)+2,10,-957.0587,1876.275,129.8402,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 10'),
((@ENTRY4*100)+2,11,-976.4232,1879.735,128.3126,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 11'),
((@ENTRY4*100)+2,12,-1003.331,1901.21,136.0901,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 12'),
((@ENTRY4*100)+2,13,-1019.146,1920.588,153.8956,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 13'),
((@ENTRY4*100)+2,14,-1035.73,1937.606,168.2844,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 14'),
((@ENTRY4*100)+2,15,-1055.794,1959.019,183.0622,'Honor Hold Gryphon Brigadier, Foothill Path 3 WP 15');
UPDATE `creature_template` SET `InhabitType`=7 WHERE `flags_extra` & 128; -- Triggers floating
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|16|8388608 WHERE `type`=6; -- Mobs undeads should be immune to fear and horror

SET @GUID = 151790; -- Set by TDB team (need 1)
UPDATE `gameobject` SET `spawnMask`=1 WHERE `guid`=65564; -- Tribunal Chest non heroic
DELETE FROM `gameobject` WHERE `id`=193996;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)VALUES
(@GUID,193996,599,2,1,880.406,345.164,203.706,0,0,0,0,1,180,0,1); -- Tribunal Chest heroic
UPDATE `gameobject_template` SET `faction`=94, `flags`=4 /* should be 4 and nothing else (temp) */ WHERE `entry` IN (193996,190586);

UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid`=96298;

UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=21757;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=21757;

DELETE FROM `creature` WHERE `guid` IN (117923);
DELETE FROM `creature_addon` WHERE `guid` IN (117923);

UPDATE `creature` SET `modelid`=0 WHERE `id` IN (25664,25665,25666);
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (25664,25665,25666);

SET @NPC := 8877;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5679.014160,`position_y`=-3185.046875,`position_z`=319.508057 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-5716.181152,-3110.810791,316.686523,0,0,0,100,0),
(@PATH,2,-5716.187012,-3093.080078,325.600677,0,0,0,100,0),
(@PATH,3,-5712.214355,-3090.297607,327.738647,0,0,0,100,0),
(@PATH,4,-5705.484375,-3092.523438,329.362366,0,0,0,100,0),
(@PATH,5,-5681.826660,-3110.568848,338.121887,0,0,0,100,0),
(@PATH,6,-5659.498535,-3122.215576,344.336151,0,0,0,100,0),
(@PATH,7,-5639.585938,-3124.536133,348.404938,0,0,0,100,0),
(@PATH,8,-5618.112793,-3110.905762,360.618225,0,0,0,100,0),
(@PATH,9,-5621.486816,-3096.315918,368.247772,0,0,0,100,0),
(@PATH,10,-5632.212891,-3078.608398,374.990936,0,0,0,100,0),
(@PATH,11,-5629.793457,-3056.124023,384.465576,0,0,0,100,0),
(@PATH,12,-5642.278809,-3036.872314,385.471649,0,0,0,100,0),
(@PATH,13,-5609.369141,-3006.883301,386.288177,0,0,0,100,0),
(@PATH,14,-5643.634277,-3036.388672,385.531891,0,0,0,100,0),
(@PATH,15,-5630.174805,-3057.015869,384.385712,0,0,0,100,0),
(@PATH,16,-5629.840332,-3065.496338,381.129578,0,0,0,100,0),
(@PATH,17,-5634.866211,-3078.448975,374.489044,0,0,0,100,0),
(@PATH,18,-5620.416504,-3101.081543,364.819855,0,0,0,100,0),
(@PATH,19,-5624.629395,-3117.040527,354.493805,0,0,0,100,0),
(@PATH,20,-5644.949707,-3125.081787,347.271362,0,0,0,100,0),
(@PATH,21,-5660.741699,-3121.580566,343.975922,0,0,0,100,0),
(@PATH,22,-5676.210938,-3111.586914,340.021484,0,0,0,100,0),
(@PATH,23,-5691.895508,-3102.994385,333.646698,0,0,0,100,0),
(@PATH,24,-5711.662109,-3088.433594,328.761566,0,0,0,100,0),
(@PATH,25,-5717.663574,-3099.033691,321.686920,0,0,0,100,0),
(@PATH,26,-5705.214844,-3132.324219,315.837585,0,0,0,100,0),
(@PATH,27,-5679.014160,-3185.046875,319.508057,0,0,0,100,0);


SET @ENTRY  := 29154;
SET @GOSSIP := 9776;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,53335,1,0,0,0,0,7,0,0,0,0,0,0,0, 'Thargold Ironwing - On gossip option select - cast spell'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thargold Ironwing - On gossip option select - close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id` IN (977600);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10062,12,0,0, 'achievement_quick_shave'),
(10063,12,1,0, 'achievement_quick_shave'),
(10044,12,0,0, 'achievement_unbroken'),
(10045,12,1,0, 'achievement_unbroken'),
(10054,12,0,0, 'achievement_shutout'),
(10055,12,1,0, 'achievement_shutout'),
(10046,12,0,0, 'achievement_three_car_garage_chopper'),
(10047,12,0,0, 'achievement_three_car_garage_siege'),
(10048,12,0,0, 'achievement_three_car_garage_demolisher'),
(10049,12,1,0, 'achievement_three_car_garage_chopper'),
(10050,12,1,0, 'achievement_three_car_garage_siege'),
(10051,12,1,0, 'achievement_three_car_garage_demolisher'),
(10062,11,0,0, 'achievement_quick_shave'),
(10063,11,0,0, 'achievement_quick_shave'),
(10044,11,0,0, 'achievement_unbroken'),
(10045,11,0,0, 'achievement_unbroken'),
(10054,11,0,0, 'achievement_shutout'),
(10055,11,0,0, 'achievement_shutout'),
(10046,11,0,0, 'achievement_three_car_garage_chopper'),
(10047,11,0,0, 'achievement_three_car_garage_siege'),
(10048,11,0,0, 'achievement_three_car_garage_demolisher'),
(10049,11,0,0, 'achievement_three_car_garage_chopper'),
(10050,11,0,0, 'achievement_three_car_garage_siege'),
(10051,11,0,0, 'achievement_three_car_garage_demolisher');


DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10044,10045,10046,10047,10048,10049,10050,10051,10054,10055,10062,10063);

DELETE FROM `conditions` WHERE `SourceGroup`=0 AND `SourceEntry` IN (56263,55853,56505,56429,56152) AND `ConditionTypeOrReference`=18;
INSERT INTO `conditions` (SourceTypeOrReferenceId,ConditionTypeOrReference,SourceGroup,SourceEntry,ConditionValue1,ConditionValue2) VALUES 
(13,18,0,55853,1,30090),
(13,18,0,56263,1,30090),
(13,18,0,56505,1,30334),
(13,18,0,56429,1,30334),
(13,18,0,56152,1,28859);
DELETE FROM `creature_template_addon` WHERE `entry`=30592;
INSERT INTO `creature_template_addon` (entry,auras) VALUES (30592,'57428 0');-- vortex trigger
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=169,`InhabitType`=5,`unit_flags`=0x02000000,`VehicleId`=214,`flags_extra`=130 WHERE `entry`=30090;
UPDATE `creature` SET `modelid`=0 WHERE `id`=30090;


UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30118;
UPDATE `creature_template` SET `speed_walk`=2.4,`speed_run`=0.857142857 WHERE `entry`=30084;


UPDATE `creature_template` SET `VehicleId`=224,`faction_A`=35,`faction_H`=35,`InhabitType`=5 WHERE `entry` IN (30234,30248);


UPDATE `creature_template` SET flags_extra=130 WHERE entry=30334;


UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=30161;


UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=32295;


UPDATE `creature_template` SET `flags_extra`=130,`InhabitType`=5 WHERE `entry`=30592;

UPDATE `creature_template` SET `VehicleId`=220,`spell1`=56091,`spell2`=56092,`spell3`=57090,`spell4`=57143,`spell5`=57108,`spell6`=57092,`spell7`=60534 WHERE `entry`=30161;
DELETE FROM `creature_text` WHERE `entry` IN (32295,28859);
INSERT INTO `creature_text` (entry,groupid,id,text,type,language,sound,comment) VALUE
(28859,0,0,'My patience has reached its limit, I will be rid of you!',1,0,14517,'Malygos - Aggro (Phase 1)'),
(28859,1,0,'Your stupidity has finally caught up to you',1,0,14519,'Malygos - Killed Player (1) (Phase 1)'),
(28859,1,1,'More artifacts to confiscate...',1,0,14520,'Malygos - Killed Player (2) (Phase 1)'),
(28859,1,2,'<Laughs> How very... naive...',1,0,14521,'Malygos - Killed Player (3) (Phase 1)'),
(28859,2,0,'I had hoped to end your lives quickly, but you have proven more... resilient then I had anticipated. Nonetheless, your efforts are in vain, it is you reckless, careless mortals who are to blame for this war! I do what I must... And if it means your... extinction... THEN SO BE IT',1,0,14522,'Malygos - End Phase One'),
(28859,3,0,'Few have experienced the pain I will now inflict upon you!',1,0,14523,'Malygos - Aggro (Phase 2)'),
(28859,4,0,'I will teach you IGNORANT children just how little you know of magic...',1,0,14524,'Malygos - Anti-Magic Shell'),
(28859,5,0,'Watch helplessly as your hopes are swept away...',1,0,14525,'Malygos - Magic Blast'),
(28859,6,0,'Your energy will be put to good use!',1,0,14526,'Malygos - Killed Player 1 (Phase 2)'),
(28859,6,1,'I am the spell-weaver! My power is infinite!',1,0,14527,'Malygos - Killed Player 2 (Phase 2)'),
(28859,6,2,'Your spirit will linger here forever!',1,0,14528,'Malygos - Killed Player 3 (Phase 2)'),
(28859,7,0,'ENOUGH! If you intend to reclaim Azeroth''s magic, then you shall have it...',1,0,14529,'Malygos - End Phase 2'),
(28859,8,0,'Now your benefactors make their appearance... But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?',1,0,14530,'Intro Phase 3'),
(28859,9,0,'SUBMIT!',1,0,14531,'Malygos - Aggro (Phase 3)'),
(28859,10,0,'The powers at work here exceed anything you could possibly imagine!',1,0,14532,'Malygos - Surge of Power'),
(28859,11,0,'I AM UNSTOPPABLE!',1,0,14533,'Malygos - Buffed by a spark'),
(28859,12,0,'Alexstrasza! Another of your brood falls!',1,0,14534,'Malygos - Killed Player 1 (Phase 3)'),
(28859,12,1,'Little more then gnats!',1,0,14535,'Malygos - Killed Player 2 (Phase 3)'),
(28859,12,2,'Your red allies will share your fate...',1,0,14536,'Malygos - Killed Player 3 (Phase 3)'),
(28859,13,0,'Still standing? Not for long...',1,0,14537,'Malygos - Spell Casting 1(Phase 3)'),
(28859,13,1,'Your cause is lost',1,0,14538,'Malygos - Spell Casting 2 (Phase 3)'),
(28859,13,2,'Your fragile mind will be shattered!',1,0,14539,'Malygos - Spell Casting 3 (Phase 3)'),
(28859,14,0,'Unthinkable! The mortals will destroy... everything... my sister... what have you...',1,0,0,'Malygos - Death'),
(32295,0,0,'I did what I had to, brother. You gave me no alternative.',1,0,0,'Alexstrasza - Yell One'),
(32295,1,0,'And so ends the Nexus War.',1,0,0,'Alexstrasza - Yell Two'),
(32295,2,0,'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos'' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',1,0,0,'Alexstrasza - Yell Three'),
(32295,3,0,'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life... goes on.',1,0,0,'Alexstrasza - Yell Four');

DELETE FROM `gameobject` WHERE `id`=193958;
INSERT INTO `gameobject` (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES 
(151791,193958,616,1,1,754.2546,1301.71973,266.170319,-1.60570168,0,0,0,0,120,0,1);

DELETE FROM `gameobject` WHERE `id` IN (193967,193905);
INSERT INTO `gameobject` (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,animprogress,state) VALUES
(151792,193905,616,1,1,764.56,1284.63,269,1.82,-604800,100,1), 
(151793,193967,616,2,1,764.56,1284.63,269,1.82,-604800,100,1);-- Hover Disk
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30248,30234);
INSERT INTO `npc_spellclick_spells` (npc_entry,spell_id,quest_start,quest_end,cast_flags) VALUES 
(30234,61421,0,0,0),
(30248,61421,0,0,0);
DELETE FROM `instance_template` WHERE `map`=616;
INSERT INTO `instance_template` (map,parent,script) VALUES (616,571,'instance_eye_of_eternity');

UPDATE `creature_template` SET `ScriptName`='boss_malygos' WHERE `entry`=28859;
UPDATE `creature_template` SET `ScriptName`='npc_power_spark' WHERE `entry`=30084;
UPDATE `creature_template` SET `ScriptName`='npc_portal_eoe' WHERE `entry`=30118;
UPDATE `creature_template` SET `ScriptName`='npc_hover_disk' WHERE `entry` IN (30234,30248);
UPDATE `creature_template` SET `ScriptName`='npc_arcane_overload' WHERE `entry`=30282;
UPDATE `creature_template` SET `ScriptName`='npc_wyrmrest_skytalon' WHERE `entry`=30161;
UPDATE `creature_template` SET `ScriptName`='npc_alexstrasza_eoe' WHERE `entry`=32295;

DELETE FROM `spell_script_names` WHERE `spell_id`=56105;
INSERT INTO `spell_script_names` VALUES (56105,'spell_malygos_vortex_dummy');
DELETE FROM `spell_script_names` WHERE `spell_id`=55873;
INSERT INTO `spell_script_names` VALUES (55873,'spell_malygos_vortex_visual');-- Scripts for Nexus Lord and Scion of Eternity
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (30249,30245);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30249 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30249, 0, 0, 0, 0, 0, 100, 6, 3000, 5000, 4000, 6000, 11, 56397, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Scion of Eternity - Cast Arcane Barrage (Random)'),
(30249, 0, 1, 0, 7, 0, 100, 6, 1, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scion of Eternity - Despawn in EvadeMode');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30245 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30245, 0, 0, 0, 0, 0, 100, 6, 7000, 10000, 10000, 15000, 11, 57060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Cast Haste (Self)'),
(30245, 0, 1, 0, 0, 0, 100, 6, 5000, 8000, 9000, 12000, 11, 57058, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Cast Arcane Shock (Random)'),
(30245, 0, 2, 0, 7, 0, 100, 6, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nexus Lord - Despawn in EvadeMode');

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (30234,30248);
INSERT INTO `vehicle_template_accessory` (entry,accessory_entry,seat_id,minion,description) VALUES 
(30234,30245,0,0,'Hover Disk - Nexus Lord'),
(30248,30249,0,0,'Hover Disk - Scion of Eternity');DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10062,10063,10054,10055,10046,10047,10048,10049,10050,10051,10044,10045) AND `type`!=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10062,12,0,0, ''),
(10063,12,1,0, ''),
(10044,12,0,0, ''),
(10045,12,1,0, ''),
(10054,12,0,0, ''),
(10055,12,1,0, ''),
(10046,12,0,0, ''),
(10047,12,0,0, ''),
(10048,12,0,0, ''),
(10049,12,1,0, ''),
(10050,12,1,0, ''),
(10051,12,1,0, '');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-57350 AND `spell_effect`=60242 ;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-57350,60242,0, 'Darkmoon Card: Illusion');
-- Set Correct Requirements for quest: Once More Unto The Breach, Hero (13104/13105)
UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry`= 13105; -- Death Knight only
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry`= 13105; -- Other Classes

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397;
INSERT INTO `spell_linked_spell` (spell_trigger,spell_effect,type,comment) VALUES (56397,63934,1,'Arcane Barrage - Arcane Barrage');

UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry`= 13105; -- Death Knight only
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry`= 13104; -- Other Classes
/* Dalaran Books */
SET @Gossip = 21255; -- Set by TDB Team (gossip_menu.entry - need 2)
SET @Guid = 151794; -- Set by TDB Team (gameobject.guid - need 35)
SET @Pool = 5691; -- Set by TDB Team (pool_template.entry - need 8)
SET @GoDespawnTime = 10800; -- Three hours


DELETE FROM `gameobject` WHERE `id` IN (192708,192706,192871,192905,192710,192886,192869,192880,192895,192713,192889,192890,192894,192884,192866,192891,192872,192881,192709,192883,192651,192888,192711,192653,192887,192652,192865,192874,192868,192870,192885,192867,192882,192707,192896);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES

(@Guid+0,192708,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Introduction
(@Guid+1,192706,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Worst Mage in Dalaran: A Children's Book
(@Guid+2,192871,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Archmage Antonidas - Part II
(@Guid+3,192905,571,1,1,5814.522,582.1118,652.7509,0.244345576,0,0,0,0,@GoDespawnTime,0,1), -- The Old Wizard's Almanac

(@Guid+4,192710,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Conjuration
(@Guid+5,192886,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- In Time, the Arcane Corrupts All!
(@Guid+6,192869,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- LAVA BLAST - by Pyroco
(@Guid+7,192880,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- Journal of Archmage Antonidas
(@Guid+8,192895,571,1,1,5812.64,797.223,662.57,-2.86234,0,0,0,0,@GoDespawnTime,0,1), -- Kirin Tor Monthly (March Issue)

(@Guid+9,192713,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Enchantment
(@Guid+10,192889,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- Kirin Tor Monthly (November Issue)
(@Guid+11,192890,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- STAY OUT!!!
(@Guid+12,192894,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- Remedial Magic 101: Tips from the Pros
(@Guid+13,192884,571,1,1,5808.22,691.076,658.715,2.179470,0,0,0,0,@GoDespawnTime,0,1), -- Portals are NOT Garbage Bins!

(@Guid+14,192866,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Necromancy
(@Guid+15,192891,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- To Do Today
(@Guid+16,192872,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- The Archmage Antonidas - Part III
(@Guid+17,192881,571,1,1,5850.57,664.754,659.569,-1.93732,0,0,0,0,@GoDespawnTime,0,1), -- Thinking with Portals - A Memorandum on Proper Portal Usage

(@Guid+18,192709,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Abjuration
(@Guid+19,192883,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- Blinking Rules & Regulations
(@Guid+20,192651,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- Damaged Apprentice Journal
(@Guid+21,192888,571,1,1,5763.5,618.08,650.092,3.49199,0,0,0,0,@GoDespawnTime,0,1), -- Bundle of Romantic Correspondences

(@Guid+22,192711,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Divination
(@Guid+23,192653,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- On the Virtues of Magic
(@Guid+24,192887,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- Losses of the Third War
(@Guid+25,192652,571,1,1,5778.18,832.302,680.268,0.0283899,0,0,0,0,@GoDespawnTime,0,1), -- Kirin Tor Monthly (May Issue)

(@Guid+26,192865,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Illusion
(@Guid+27,192874,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Fluffy Bunny
(@Guid+28,192868,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Dangers of Magic Abuse
(@Guid+29,192870,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Archmage Antonidas - Part I
(@Guid+30,192885,571,1,1,5776.88,517.79,653.911,0.401425,0,0,0,0,@GoDespawnTime,0,1), -- The Fate of Apprentice Argoly

(@Guid+31,192867,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1), -- The Schools of Arcane Magic - Transmutation
(@Guid+32,192882,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1), -- Polymorphic Rules & Regulations
(@Guid+33,192707,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1), -- Weathered Diary - Dates from the Third War
(@Guid+34,192896,571,1,1,5844.61328,664.541,649.3733,-0.3316107,0,0,0,0,@GoDespawnTime,0,1); -- Excerpts from the Journal of Archmage Vargoth


DELETE FROM `pool_template` WHERE `entry` BETWEEN @Pool+0 AND @Pool+7;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@Pool+0,1, 'Dalaran Books: Violet Gate'),
(@Pool+1,1, 'Dalaran Books: Violet Citadel Lower'),
(@Pool+2,1, 'Dalaran Books: Threads of Fate'),
(@Pool+3,1, 'Dalaran Books: Ledgerdemain Lounge Upstairs'),
(@Pool+4,1, 'Dalaran Books: Visitor’s Center'),
(@Pool+5,1, 'Dalaran Books: Violet Citadel Upstairs'),
(@Pool+6,1, 'Dalaran Books: Violet Hold'),
(@Pool+7,1, 'Dalaran Books: Ledgerdemain Lounge Lower');

DELETE FROM `pool_gameobject` WHERE `pool_entry` BETWEEN @Pool+0 AND @Pool+7;
INSERT INTO `pool_gameobject` (`guid`,`pool_entry`,`chance`,`description`) VALUES

(@Guid+0,@Pool+0,0, 'The Schools of Arcane Magic - Introduction'),
(@Guid+1,@Pool+0,0, 'The Worst Mage in Dalaran: A Children''s Book'),
(@Guid+2,@Pool+0,0, 'The Archmage Antonidas - Part II'),
(@Guid+3,@Pool+0,0, 'The Old Wizard''s Almanac'),

(@Guid+4,@Pool+1,0, 'The Schools of Arcane Magic - Conjuration'),
(@Guid+5,@Pool+1,0, 'In Time, the Arcane Corrupts All!'),
(@Guid+6,@Pool+1,0, 'LAVA BLAST - by Pyroco'),
(@Guid+7,@Pool+1,0, 'Journal of Archmage Antonidas'),
(@Guid+8,@Pool+1,0, 'Kirin Tor Monthly (March Issue)'),

(@Guid+9,@Pool+2,0, 'The Schools of Arcane Magic - Enchantment'),
(@Guid+10,@Pool+2,0, 'Kirin Tor Monthly (November Issue)'),
(@Guid+11,@Pool+2,0, 'STAY OUT!!!'),
(@Guid+12,@Pool+2,0, 'Remedial Magic 101: Tips from the Pros'),
(@Guid+13,@Pool+2,0, 'Portals are NOT Garbage Bins!'),

(@Guid+14,@Pool+3,0, 'The Schools of Arcane Magic - Necromancy'),
(@Guid+15,@Pool+3,0, 'To Do Today'),
(@Guid+16,@Pool+3,0, 'The Archmage Antonidas - Part III'),
(@Guid+17,@Pool+3,0, 'Thinking with Portals - A Memorandum on Proper Portal Usage'),

(@Guid+18,@Pool+4,0, 'The Schools of Arcane Magic - Abjuration'),
(@Guid+19,@Pool+4,0, 'Blinking Rules & Regulations'),
(@Guid+20,@Pool+4,0, 'Damaged Apprentice Journal'),
(@Guid+21,@Pool+4,0, 'Bundle of Romantic Correspondences'),

(@Guid+22,@Pool+5,0, 'The Schools of Arcane Magic - Divination'),
(@Guid+23,@Pool+5,0, 'On the Virtues of Magic'),
(@Guid+24,@Pool+5,0, 'Losses of the Third War'),
(@Guid+25,@Pool+5,0, 'Kirin Tor Monthly (May Issue)'),

(@Guid+26,@Pool+6,0, 'The Schools of Arcane Magic - Illusion'),
(@Guid+27,@Pool+6,0, 'The Fluffy Bunny'),
(@Guid+28,@Pool+6,0, 'The Dangers of Magic Abuse'),
(@Guid+29,@Pool+6,0, 'The Archmage Antonidas - Part I'),
(@Guid+30,@Pool+6,0, 'The Fate of Apprentice Argoly'),

(@Guid+31,@Pool+7,0, 'The Schools of Arcane Magic - Transmutation'),
(@Guid+32,@Pool+7,0, 'Polymorphic Rules & Regulations'),
(@Guid+33,@Pool+7,0, 'Weathered Diary - Dates from the Third War'),
(@Guid+34,@Pool+7,0, 'Excerpts from the Journal of Archmage Vargoth');

UPDATE `creature_template` SET `gossip_menu_id`=@Gossip+0,`AIName`='SmartAI' WHERE `entry`=19481; -- Archmage Vargoth
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=19284; -- Archmage Vargoth
UPDATE `creature` SET `npcflag`=1 WHERE `guid`=98174; -- Archmage Vargoth
DELETE FROM `creature_template_addon` WHERE `entry`=19481;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(19481,0,0,1,0, NULL); -- Archmage Vargoth

DELETE FROM `gossip_menu` WHERE `text_id` IN (14192,14194);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(@Gossip+0,14192),
(@Gossip+1,14194);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@Gossip+0,@Gossip+1) AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@Gossip+0,0,0, 'I have a book that might interest you. Would you like to take a look?',1,1,@Gossip+1,0,0,0,0,NULL),
(@Gossip+1,0,0, 'Thank you! I''ll be sure to notify you if I find anything else.',1,1,0,0,0,0,0,NULL); -- SAI script
DELETE FROM `creature_template_addon` WHERE `entry`=32643;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32643,0,0,0,3,0,'61478 0'); -- companion pet aura (arcane explosions)

DELETE FROM `smart_scripts` WHERE `entryorguid`=-98174 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-98174,0,0,0,62,0,100,0,@Gossip+1,0,0,0,11,61457,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Archmage Vargoth (Dalaran) - On gossip select cast Kirin Tor Familiar on invoker');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=@Gossip+0 AND `SourceEntry`=14192;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@Gossip+0 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@Gossip+0,14192,0,4,4395,0,0,0, '', 'Archmage Vargoth - Gossip: zone restriction to Dalaran'),
(15,@Gossip+0,0,0,4,4395,0,0,0, '', 'Archmage Vargoth - Gossip option: zone restriction to Dalaran'),
(15,@Gossip+0,0,0,26,44738,1,0,0, '', 'Archmage Vargoth - Gossip option: player should not have item 44738'),
(15,@Gossip+0,0,0,17,1956,0,0,0, '', 'Archmage Vargoth - Gossip option: player should have achiev 1956');
SET @CGuid = 208901; -- (Set by TDB team - creature.guid - need X)
SET @GGuid = 151829; -- (Set by TDB team - gameobject.guid - need X)
SET @EquiEntry = 2433; -- (Set by TDB team - creature_equip_template.entry - need X)
SET @Gossip = 21257; -- (Set by TDB team - gossip_menu.entry - need 1)
SET @Event = 61; -- (Set by TDB team - game_event.entry - need 1)

SET @N_Vanira = 40184; -- Vanira
SET @N_VaniraTotem = 40187; -- Vanira's Sentry Totem
SET @N_Frog = 40176; -- Sen'jin Frog
SET @N_AtunnedFrog = 40188; -- Atunned Frog
SET @N_Voljin = 40391; -- Vol'jin
SET @N_Uruzin = 40253; -- Champion Uru'zin
SET @N_VoljinBoss = 39654; -- Vol'jin (on the island, starts fight)
SET @N_BatHandler = 40204; -- Handler Marnlek
SET @N_Bat = 40222; -- Scout Bat
SET @N_SpyFrogCredit = 40218; -- Spy Frog Credit
SET @N_TigerCredit = 40301; -- Tiger Matriarch Credit
SET @N_TigerSpirit = 40305; -- Spirit of the Tiger
SET @N_Matriarch = 40312; -- Tiger Matriarch (casts 75163 (Vicious Bite), 61184 (Pounce), 75159 (Claw))
SET @N_Zentabra = 40329; -- Zen'tabra
SET @N_DWarrior = 40392; -- Darkspear Warrior
SET @N_DScout = 40416; -- Darkspear Scout
SET @N_Citizien1 = 40256; -- Troll Citizien (1)
SET @N_Citizien2 = 40257; -- Troll Citizien (2)
SET @N_Volunteer1 = 40260; -- Troll Volunteer
SET @N_Volunteer2 = 40264; -- Troll Volunteer
SET @N_RDancer = 40356; -- Ritual Dancer
SET @N_TDanceleader = 40361; -- Troll Dance Leader
SET @N_DancePart = 40363; -- Dance Participant
SET @N_RDrummer = 40373; -- Ritual Drummer
SET @N_Omen = 40387; -- Omen Event Credit
SET @N_DAncestor = 40388; -- Darkspear Ancestor
SET @N_Voice = 40374; -- Voice of the Spirits
SET @N_Doctor = 40352; -- Witch Doctor Hez'tok

SET @G_BatTotem = 202833; -- Sen'jin Bat Totem
SET @G_BatStraw = 202834; -- Sen'jin Bat Roost Straw
SET @G_BatFence = 202835; -- Sen'jin Bat Roost Fence
SET @G_BatPost = 202839; -- Sen'jin Bat Roost Fence Post
SET @G_RDrum = 202879; -- Ritual Drum
SET @G_RGong = 202880; -- Ritual Gong
SET @G_RBrazier = 202881; -- Ritual Brazier
SET @G_SRDrum = 202882; -- Small Ritual Drum
SET @G_SRDrum2 = 202883; -- Small Ritual Drum 2
SET @G_Banner = 202885; -- Sen'jin Banner
SET @G_Tent = 202886; -- Sen'jin Tent
SET @G_Table = 202888; -- Sen'jin Table
SET @G_Book1 = 202889; -- Troll Book 1
SET @G_Book2 = 202890; -- Troll Book 2
SET @G_CCrate = 202891; -- Closed Weapon Crate
SET @G_OCrate = 202892; -- Open Weapon Crate
SET @G_SPennant = 202893; -- Sen'jin Pennant

SET @Q_DaPerfectSpies = 25444; -- Da Perfect Spies
SET @Q_FrogsAway = 25446; -- Frogs Away!
SET @Q_LadyOfDaTigers = 25470; -- Lady Of Da Tigers
SET @Q_DanceOfDeSpirits = 25480; -- Dance Of De Spirits
SET @Q_TrollinForVolunteers = 25461; -- Trollin' For Volunteers
SET @Q_PreparinForBattle = 25495; -- Preparin For Battle
SET @Q_ZalazanesFall = 25445; -- Zalazane's Fall

SET @S_Pickup = 74904; -- Pickup Sen'jin Frog [player -> creature]
SET @S_Pickup2 = 74905; -- Pickup Sen'jin Frog [creature -> player]
SET @S_InvsAura = 75433; -- Spawn Invisibility Aura (QZS 2)
SET @S_FrogsAway = 74977; -- Frogs Away!
SET @S_SeeSenjinFrogInvs = 75434; -- See Sen'jin Frog Invis
SET @S_SeeSpyFrogInvs =74982; -- See Spy Frog Invisibility
SET @S_Taxi_Frog = 74978; -- Echo Isles: Unlearned Spy Frog Taxi
SET @S_Taxi_Troll = 75421; -- Echo Isles: Unlearned Troll Recruit Taxi
SET @S_Taxi_Battle = 75422; -- Echo Isles: Unlearned Troll Battle Taxi
SET @S_SpyFrogInvs = 74980; -- Spy Frog Invisibility
SET @S_SmokeFlare = 74971; -- Red Flare State
SET @S_VisualSpawn = 31517; -- Bind Visual Spawn In DND
SET @S_SpyFrogState = 74917; -- Spy Frog State
SET @S_RideVehicle = 46598; -- Ride Vehicle Hardcoded
SET @S_Tiger = 75147; -- Spirit of the Tiger
SET @S_ForceTiger = 75186; -- Force Cast Spirit of the Tiger
SET @S_NatVisual = 60957; -- Cosmetic Nature Cast
SET @S_TigerAura = 75165; -- Spirit of the Tiger Aura
SET @S_TigerSeeInvs = 75180; -- Detect QZS 3
SET @S_TigerGhost = 22650; -- Ghost Visual
SET @S_BossEmotePAura =75213; -- Boss Emote & No Summon Aura
SET @S_TigerCredit = 40301; -- OCW TOTE On Quest Check (what?)
SET @S_MatriarchShroud = 75179; -- Matriarch's Shroud
SET @S_TigerQuestCredit = 75197; -- Zen'tabra Credit
SET @S_MatriarchSummonF = 75188; -- Force Cast Summon Tiger Matriarch
SET @S_MatriarchSummon = 75187; -- Summon Tiger Matriarch
SET @S_ZentabraSummon = 75181; -- Summon Zen'tabra
SET @S_ZentabraController = 75212; -- Controller Summon Zen'tabra Trigger
SET @S_ZentrabaSmoke = 36747; -- Spawn Smoke (Druid)
SET @S_ZentrabaTransform = 74931; -- [DND] Tiger Transform
SET @S_VolunterSummon1 = 75088; -- Motivate
SET @S_VolunterSummon2 = 75086; -- Motivate


SET @I_VoljinDrums = 54215; -- Voljin Drums Questitem

UPDATE `creature_template` SET `gossip_menu_id`=11341,`faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`npcflag`=`npcflag`|3,`unit_flags`=`unit_flags`|33024,`equipment_id`=@EquiEntry+0,`unit_class`=2,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_Vanira; -- Vanira
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`speed_run`=1.1428571428571 WHERE `entry`=@N_VaniraTotem; -- Vanira's Sentry Totem
UPDATE `creature_template` SET `AIName`='SmartAI',`baseattacktime`=2000,/*`npcflag`=`npcflag`|16777216,*/`speed_run`=1.1428571428571 WHERE `entry`=@N_Frog; -- Sen'jin Frog
UPDATE `creature_template` SET `faction_A`=190,`faction_H`=190,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`speed_run`=1.1428571428571,`AIName`='SmartAI',`MovementType`=1 WHERE `entry`=@N_AtunnedFrog; -- Atunned Frog
UPDATE `creature_template` SET `gossip_menu_id`=11345,`faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=78,`maxlevel`=78,`baseattacktime`=2000,`npcflag`=`npcflag`|1,`unit_flags`=`unit_flags`|33024,`equipment_id`=191,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_BatHandler; -- Handler Marnlek
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`speed_run`=4.2857142857143 WHERE `entry`=@N_Bat; -- Scout Bat
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571 WHERE `entry`=@N_SpyFrogCredit; -- Spy Frog Credit
UPDATE `creature_template` SET `spell1`=75159,`spell2`=75160,`spell3`=75161,`faction_A`=35,`faction_H`=35,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2500,`unit_flags`=`unit_flags`|16777224,`unit_class`=4,`speed_walk`=2.8,`speed_run`=1.5714285714286,`vehicleid`=736,`attackpower`=1167 WHERE `entry`=@N_TigerSpirit; -- Spirit of the Tiger CHECKME: speed_run and speed_walk
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_TigerCredit; -- Tiger Matriarch Credit
UPDATE `creature_template` SET `faction_A`=2102,`faction_H`=2102,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=1625,`mindmg`=117,`maxdmg`=322,`attackpower`=143,`dmg_multiplier`=1.2,`unit_flags`=`unit_flags`|526336,`dynamicflags`=`dynamicflags`|4,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Matriarch; -- Tiger Matriarch
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|32776,`equipment_id`=1669,`unit_class`=2,`speed_run`=1.1428571428571,`flags_extra`=`flags_extra`|2,`AIName`='SmartAI' WHERE `entry`=@N_Zentabra; -- Zen'tabra
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`npcflag`=`npcflag`|2,`unit_flags`=`unit_flags`|33024,`equipment_id`=@EquiEntry+1,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Uruzin; -- Champion Uru'zin
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33024,`equipment_id`=@EquiEntry+2,`speed_run`=1.1428571428571 WHERE `entry`=@N_DWarrior; -- Darkspear Warrior
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|32768,`equipment_id`=@EquiEntry+3,`speed_run`=1.1428571428571,`InhabitType`=1,`AIName`='SmartAI' WHERE `entry`=@N_DScout; -- Darkspear Scout
UPDATE `creature_template` SET `gossip_menu_id`=11391,`faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=83,`maxlevel`=83,`baseattacktime`=2000,`mindmg`=496,`maxdmg`=674,`attackpower`=783,`dmg_multiplier`=7.5,`npcflag`=`npcflag`|3,`unit_flags`=`unit_flags`|256,`equipment_id`=@EquiEntry+4,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Voljin; -- Vol'jin
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=70,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|256,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_RDancer; -- Ritual Dancer
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33280,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_Citizien1; -- Troll Citizien (1)
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33280,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_Citizien2; -- Troll Citizien (2)
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571 WHERE `entry`=@N_TDanceleader; -- Troll Dance Leader
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_walk`=1.6,`speed_run`=2,`InhabitType`=5,`MovementType`=1,`AIName`='SmartAI' WHERE `entry`=@N_DancePart; -- Dance Participant
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=70,`maxlevel`=80,`baseattacktime`=2000,`equipment_id`=36,`unit_class`=2,`speed_run`=1.1428571428571,`AIName`='SmartAI' WHERE `entry`=@N_RDrummer; -- Ritual Drummer
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|33555200,`speed_run`=1.1428571428571 WHERE `entry`=@N_Omen; -- Omen Event Credit
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=70,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=@N_DAncestor; -- Darkspear Ancestor
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|0x00008308 WHERE `entry` IN (@N_Volunteer1,@N_Volunteer2); -- Troll Volunteer
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33536,`equipment_id`=@EquiEntry+5,`unit_class`=2,`speed_run`=1.1428571428571 WHERE `entry`=@N_Voice; -- Voice of the Spirits
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126,`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|33536,`equipment_id`=@EquiEntry+5,`unit_class`=2,`speed_run`=1.1428571428571,`gossip_menu_id`=@Gossip,`npcflag`=`npcflag`|1,`AIName`='SmartAI' WHERE `entry`=@N_Doctor; -- Witch Doctor Hez'tok
UPDATE `creature_template` SET `npcflag`=`npcflag`|3 WHERE `entry`=@N_VoljinBoss;


UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31719; -- Vanira
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=0,`gender`=2 WHERE `modelid`=31720; -- Vanira's Sentry Totem
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=1,`gender`=2 WHERE `modelid`=31727; -- Sen'jin Frog
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=2 WHERE `modelid`=22469; -- Atunned Frog
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=31726; -- Handler Marnlek
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=2 WHERE `modelid`=31725; -- Scout Bat
UPDATE `creature_model_info` SET `bounding_radius`=0.4,`combat_reach`=0,`gender`=2 WHERE `modelid`=19595; -- Spy Frog Credit
UPDATE `creature_model_info` SET `bounding_radius`=1.15,`combat_reach`=1,`gender`=0 WHERE `modelid`=31788; -- Spirit of the Tiger
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Tiger Matriarch Credit
UPDATE `creature_model_info` SET `bounding_radius`=1.272,`combat_reach`=2,`gender`=1 WHERE `modelid`=31765; -- Tiger Matriarch
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31734; -- Zen'tabra
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=31762; -- Champion Uru'zin
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31841; -- Darkspear Warrior
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=31738; -- Darkspear Scout
UPDATE `creature_model_info` SET `bounding_radius`=0.3672,`combat_reach`=1,`gender`=0 WHERE `modelid`=31736; -- Vol'jin
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=9768; -- Ritual Dancer
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=2589; -- Troll Citizien (1)
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=0 WHERE `modelid`=2588; -- Troll Citizien (2)
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Troll Dance Leader
UPDATE `creature_model_info` SET `bounding_radius`=0.175,`combat_reach`=0,`gender`=2 WHERE `modelid`=22769; -- Dance Participant
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=2589; -- Ritual Drummer
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0,`gender`=2 WHERE `modelid`=17188; -- Omen Event Credit
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1,`gender`=1 WHERE `modelid`=4033; -- Darkspear Ancestor
UPDATE `creature_model_info` SET `bounding_radius`=0.5355,`combat_reach`=2,`gender`=0 WHERE `modelid`=31819; -- Voice of the Spirits


DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN @EquiEntry+0 AND @EquiEntry+5;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EquiEntry+0,19903,13319,0), -- Vanira
(@EquiEntry+1,33982,33980,49022), -- Champion Uru'zin
(@EquiEntry+2,53924,53933,5870), -- Darkspear Warrior
(@EquiEntry+3,42873,0,5870), -- Darkspear Scout
(@EquiEntry+4,53835,0,14118), -- Vol'jin
(@EquiEntry+5,19909,0,0); -- Voice of the Spirits

DELETE FROM `creature_template_addon` WHERE `entry` IN (@N_VaniraTotem,@N_Frog,@N_AtunnedFrog,@N_BatHandler,@N_Bat,@N_SpyFrogCredit,@N_TigerSpirit,@N_TigerCredit,@N_Matriarch,@N_Zentabra,@N_Uruzin,@N_DWarrior,@N_DScout,@N_Voljin,@N_RDancer,@N_Citizien1,@N_Citizien2,@N_TDanceleader,@N_DancePart,@N_RDrummer,@N_Omen,@N_DAncestor);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@N_VaniraTotem,0,0,1,0,NULL), -- Vanira's Sentry Totem
(@N_Frog,0,65536,1,0, '75433 0'), -- Sen'jin Frog, bytes1=65536 (@S_InvsAura)
(@N_AtunnedFrog,0,0,1,0, '74917 0'), -- Atunned Frog (@S_SpyFrogState)
(@N_BatHandler,0,0,1,0,NULL), -- Handler Marnlek
(@N_Bat,0,33554432,1,0, NULL), -- Scout Bat
(@N_SpyFrogCredit,0,65536,1,0, '74980 0 74971 0'), -- Spy Frog Credit @S_SpyFrogInvs and @S_SmokeFlare
(@N_TigerSpirit,0,65536,1,0, '75180 0 22650 0'), -- Spirit of the Tiger CHECKME: remove auras? @S_TigerSeeInvs and @S_TigerGhost
(@N_TigerCredit,0,0,1,0,NULL), -- Tiger Matriarch Credit
(@N_Matriarch,0,65536,1,0, '75179 0 75179 1'), -- Tiger Matriarch @S_MatriarchShroud
(@N_Zentabra,0,0,0,0,NULL), -- Zentabra
(@N_Uruzin,0,0,2,0, '75075 0 18950 0 18950 1'), -- Champion Uru'zin
(@N_DWarrior,0,0,1,0,NULL), -- Darkspear Warrior
(@N_DScout,31725,0,1,0,NULL), -- Darkspear Scout (mounted)
(@N_Voljin,29261,0,1,0, NULL), -- Vol'jin (mounted)
(@N_RDancer,0,0,1,10, NULL), -- Ritual Dancer
(@N_Citizien1,0,0,1,0, '73940 0'), -- Troll Citizien (1)
(@N_Citizien2,0,0,1,0, '73939 0'), -- Troll Citizien (2)
(@N_TDanceleader,0,0,1,10, NULL), -- Troll Dance Leader
(@N_DancePart,0,0,1,0, '35709 0'), -- Dance Participant
(@N_RDrummer,0,0,1,173, '73940 0'), -- Ritual Drummer
(@N_Omen,0,0,1,0, NULL), -- Omen Event Credit
(@N_DAncestor,0,0,257,10, '73813 0 22650 0'); -- Darkspear Ancestor
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGuid+85 AND @CGuid+92;
INSERT INTO `creature_addon` (`guid`,`emote`,`bytes2`,`auras`) VALUES
(@CGuid+85,10,1, '75228 0'), -- Ritual Dancer
(@CGuid+86,10,1, '75229 0'), -- Ritual Dancer
(@CGuid+87,10,1, '75228 0'), -- Ritual Dancer
(@CGuid+88,10,1, '75230 0'), -- Ritual Dancer
(@CGuid+89,10,1, '75230 0'), -- Ritual Dancer
(@CGuid+90,10,1, '75230 0'), -- Ritual Dancer
(@CGuid+91,10,1, '75228 0'), -- Ritual Dancer
(@CGuid+92,10,1, '75229 0'); -- Ritual Dancer

DELETE FROM `gossip_menu` WHERE `entry` IN (11341,11345,11391,@Gossip);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(11341,15796), -- Vanira
(11345,15806), -- Handler Marnlek
(11391,15865), -- Vol'jin
(@Gossip,15846); -- Witch Doctor Hez'tok

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (11345,@Gossip);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(11345,0,0, 'Vanira told me to speak to you about borrowing a bat.' ,1,1,0,0,11345*100,0,0,NULL), -- Handler Marnlek (Frogs Away quest)
(11345,1,0, 'I need to get to Razor Hill to reqruit on behalf of Vol''jin. May i borrow a bat?' ,1,1,0,0,11345*100+1,0,0,NULL), -- Handler Marnlek (Trollin' For Volunteers quest)
(11345,2,0, 'I am ready to take back the Echo Isles. Take me to the staging area!' ,1,1,0,0,11345*100+2,0,0,NULL), -- Handler Marnlek (Preparin' For Battle quest)
(@Gossip,0,0, 'Let us consult the omens.' ,1,1,0,0,0,0,0,NULL); -- Witch Doctor Hez'tok (quest Dance of De Spirits)
DELETE FROM `gossip_scripts` WHERE `id` IN (11345*100,11345*100+1,11345*100+2);
INSERT INTO `gossip_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(11345*100+0,0,15,@S_Taxi_Frog,1,0,0,0,0,0), -- Handler Marnlek (Frogs Away quest)
(11345*100+1,0,15,@S_Taxi_Troll,1,0,0,0,0,0),-- Handler Marnlek (Trollin' For Volunteers quest)
(11345*100+2,0,15,@S_Taxi_Battle,1,0,0,0,0,0);-- Handler Marnlek (Prepari' For Battle quest)


DELETE FROM `creature` WHERE `id` IN (@N_Vanira,@N_VaniraTotem,@N_Frog,@N_BatHandler,@N_Bat,@N_SpyFrogCredit,@N_TigerCredit,@N_Uruzin,@N_DWarrior,@N_DScout,@N_Voljin,@N_RDancer,@N_Citizien1,@N_Citizien2,@N_Doctor);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@CGuid+0,@N_Vanira,1,1,1,0,0,-747.175354,-5003.974,19.505209,3.769911,120,0,0,1,0,0,0), -- Vanira
(@CGuid+1,@N_VaniraTotem,1,1,1,0,0,-747.7049,-5007.78125,18.8993073,3.38593864,120,0,0,1,0,0,0), -- Vanira's Sentry Totem
(@CGuid+2,@N_Frog,1,1,1,0,0,-702.0243,-4936.85938,24.78558,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+3,@N_Frog,1,1,1,0,0,-706.8733,-5089.25342,10.1877956,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+4,@N_Frog,1,1,1,0,0,-717.1079,-5030.84961,16.7545834,0.588063061,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+5,@N_Frog,1,1,1,0,0,-721.449646,-5060.799,14.6723547,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+6,@N_Frog,1,1,1,0,0,-721.4549,-5041.06934,15.9652061,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+7,@N_Frog,1,1,1,0,0,-738.0006,-5049.516,14.9542475,5.759314,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+8,@N_Frog,1,1,1,0,0,-752.2173,-4959.93359,22.16427,1.52473652,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+9,@N_Frog,1,1,1,0,0,-754.166,-4912.5,21.3002,0.8383126,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+10,@N_Frog,1,1,1,0,0,-754.8121,-4931.80273,21.6752,1.62117982,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+11,@N_Frog,1,1,1,0,0,-764.584,-4972.916,20.9381447,1.66710317,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+12,@N_Frog,1,1,1,0,0,-790.7708,-5014.889,15.7722931,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+13,@N_Frog,1,1,1,0,0,-802.0174,-5037.51025,10.57736,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+14,@N_Frog,1,1,1,0,0,-814.3917,-5010.16064,15.0449858,4.40670633,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+15,@N_Frog,1,1,1,0,0,-817.2394,-4942.282,21.2968235,5.06702662,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+16,@N_Frog,1,1,1,0,0,-858.816,-5039.144,3.00985622,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+17,@N_Frog,1,1,1,0,0,-879.258667,-4998.14063,11.6243248,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+18,@N_Frog,1,1,1,0,0,-899.050354,-4994.48633,11.61574,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+19,@N_Frog,1,1,1,0,0,-924.550354,-4933.639,15.4050817,0,45,10,0,1,0,0,1), -- Sen'jin Frog
(@CGuid+20,@N_BatHandler,1,1,1,0,0,-840.052063,-4982.163,14.42927,4.86946869,120,0,0,1,0,0,0), -- Handler Marnlek
(@CGuid+21,@N_Bat,1,1,1,0,0,-833.529541,-4980.7207,17.1929779,4.29351,120,0,0,1,0,0,0), -- Scout Bat
(@CGuid+22,@N_SpyFrogCredit,1,1,1,19595,0,-1020.20831,-5152.76758,0.7509203,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+23,@N_SpyFrogCredit,1,1,1,19595,0,-1040.78821,-5585.186,3.46228218,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+24,@N_SpyFrogCredit,1,1,1,19595,0,-1049.91846,-5542.507,7.80553341,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+25,@N_SpyFrogCredit,1,1,1,19595,0,-1060.92017,-5459.61963,8.204561,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+26,@N_SpyFrogCredit,1,1,1,19595,0,-1061.52954,-5631.46338,4.56439066,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+27,@N_SpyFrogCredit,1,1,1,19595,0,-1066.36108,-5374.9165,6.87270164,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+28,@N_SpyFrogCredit,1,1,1,19595,0,-1088.9635,-5173.884,0.8336973,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+29,@N_SpyFrogCredit,1,1,1,19595,0,-1102.04858,-5435.264,10.6309662,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+30,@N_SpyFrogCredit,1,1,1,19595,0,-1123.28821,-5619.78125,5.64494038,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+31,@N_SpyFrogCredit,1,1,1,19595,0,-1127.76917,-5131.19971,2.93869424,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+32,@N_SpyFrogCredit,1,1,1,19595,0,-1129.83167,-5481.14941,7.60199165,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+33,@N_SpyFrogCredit,1,1,1,19595,0,-1148.42542,-5413.82275,9.589724,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+34,@N_SpyFrogCredit,1,1,1,19595,0,-1188.81775,-5342.51758,4.28526449,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+35,@N_SpyFrogCredit,1,1,1,19595,0,-1194.816,-5617.877,6.84516954,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+36,@N_SpyFrogCredit,1,1,1,19595,0,-1201.60413,-5379.16846,8.589357,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+37,@N_SpyFrogCredit,1,1,1,19595,0,-1240.37854,-5594.7085,8.538581,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+38,@N_SpyFrogCredit,1,1,1,19595,0,-1269.05212,-5386.241,4.37299967,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+39,@N_SpyFrogCredit,1,1,1,19595,0,-1288.60242,-5571.11475,7.43579245,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+40,@N_SpyFrogCredit,1,1,1,19595,0,-1290.526,-5122.43066,1.76108432,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+41,@N_SpyFrogCredit,1,1,1,19595,0,-1304.35938,-5169.80029,0.8500093,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+42,@N_SpyFrogCredit,1,1,1,19595,0,-1319.65625,-5477.335,5.18921232,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+43,@N_SpyFrogCredit,1,1,1,19595,0,-1321.61108,-5527.35938,4.55899572,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+44,@N_SpyFrogCredit,1,1,1,19595,0,-1423.26221,-5171.405,3.53906035,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+45,@N_SpyFrogCredit,1,1,1,19595,0,-1502.29688,-5262.67725,4.59295273,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+46,@N_SpyFrogCredit,1,1,1,19595,0,-1532.30725,-5340.738,7.00164938,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+47,@N_SpyFrogCredit,1,1,1,19595,0,-1589.217,-5340.08154,7.06946659,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+48,@N_SpyFrogCredit,1,1,1,19595,0,-1611.14233,-5275.979,7.61691332,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+49,@N_SpyFrogCredit,1,1,1,19595,0,-654.15625,-5626.69971,7.23921061,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+50,@N_SpyFrogCredit,1,1,1,19595,0,-688.0955,-5517.6875,6.0036335,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+51,@N_SpyFrogCredit,1,1,1,19595,0,-729.5972,-5655.9707,20.0036564,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+52,@N_SpyFrogCredit,1,1,1,19595,0,-732.177063,-5498.76758,5.77328968,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+53,@N_SpyFrogCredit,1,1,1,19595,0,-794.5955,-5544.462,5.39234161,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+54,@N_SpyFrogCredit,1,1,1,19595,0,-794.699646,-5350.50537,2.74348927,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+55,@N_SpyFrogCredit,1,1,1,19595,0,-805.8073,-5674.384,6.65550661,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+56,@N_SpyFrogCredit,1,1,1,19595,0,-835.071167,-5606.038,4.20461655,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+57,@N_SpyFrogCredit,1,1,1,19595,0,-853.2448,-5335.12842,2.75194836,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+58,@N_SpyFrogCredit,1,1,1,19595,0,-954.821167,-5186.238,1.09095335,0,120,0,0,1,0,0,0), -- Spy Frog Credit
(@CGuid+59,@N_TigerCredit,1,1,1,0,0,-1122.29346,-5126.54346,2.91218519,0.7679449,120,0,0,1,0,0,0), -- Tiger Matriarch Credit
(@CGuid+60,@N_Uruzin,1,1,1,0,0,-765.4323,-5018.39746,17.1423054,3.73500466,120,0,0,1,0,0,0), -- Champion Uru'zin
(@CGuid+61,@N_DWarrior,1,1,1,0,0,-732.241333,-5022.276,16.84526,3.89208412,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+62,@N_DWarrior,1,1,1,0,0,-735.364563,-5027.39941,16.4661217,2.00712872,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+63,@N_DWarrior,1,1,1,0,0,-738.178833,-4955.24854,22.872057,4.276057,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+64,@N_DWarrior,1,1,1,0,0,-738.25,-4962.1665,22.7414722,2.09439516,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+65,@N_DWarrior,1,1,1,0,0,-741.2917,-4956.875,22.88887,5.88175964,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+66,@N_DWarrior,1,1,1,0,0,-749.0781,-5000.17041,20.16327,3.89208412,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+67,@N_DWarrior,1,1,1,0,0,-757.1233,-4992.118,21.0182743,3.96189737,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+68,@N_DWarrior,1,1,1,0,0,-763.309,-5027.79541,16.8784733,0.7330383,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+69,@N_DWarrior,1,1,1,0,0,-765.3125,-5030.11133,16.3195953,0.715585,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+70,@N_DWarrior,1,1,1,0,0,-765.8906,-5025.62158,16.8368073,0.715585,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+71,@N_DWarrior,1,1,1,0,0,-767.1684,-5032.358,16.15991,0.7330383,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+72,@N_DWarrior,1,1,1,0,0,-767.9028,-5027.934,16.3112679,0.7679449,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+73,@N_DWarrior,1,1,1,0,0,-768.635437,-5023.29541,16.7641678,0.75049156,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+74,@N_DWarrior,1,1,1,0,0,-769.75,-5030.163,16.0145359,0.715585,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+75,@N_DWarrior,1,1,1,0,0,-770.6458,-5025.61475,16.2830353,0.6981317,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+76,@N_DWarrior,1,1,1,0,0,-771.302063,-5021.15967,16.708334,0.75049156,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+77,@N_DWarrior,1,1,1,0,0,-772.487854,-5027.84375,16.176178,0.5934119,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+78,@N_DWarrior,1,1,1,0,0,-773.3264,-5023.50342,16.5206375,0.7330383,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+79,@N_DWarrior,1,1,1,0,0,-773.822937,-5019.007,16.52002,0.610865235,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+80,@N_DWarrior,1,1,1,0,0,-775.158,-5025.7085,16.1457977,0.75049156,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+81,@N_DWarrior,1,1,1,0,0,-775.8455,-5021.35059,16.11615,0.558505356,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+82,@N_DWarrior,1,1,1,0,0,-777.677063,-5023.559,15.9583549,0.610865235,120,0,0,1,0,0,0), -- Darkspear Warrior
(@CGuid+83,@N_DScout,1,1,1,0,0,-860.102844,-5113.565,47.2615623,1.28633785,600,0,0,1,0,0,0), -- Darkspear Scout
(@CGuid+84,@N_Voljin,1,1,1,0,0,-755.1476,-4998.04,20.3369122,4.03171062,120,0,0,1,0,0,0), -- Vol'jin
(@CGuid+85,@N_RDancer,1,1,1,0,0,-794.6799,-4988.15674,17.72195,3.49065852,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+86,@N_RDancer,1,1,1,0,0,-794.896362,-4997.275,17.1909542,3.21140575,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+87,@N_RDancer,1,1,1,0,0,-800.975769,-4981.555,17.78231,4.276057,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+88,@N_RDancer,1,1,1,0,0,-801.497,-5003.56934,16.5553436,2.21656823,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+89,@N_RDancer,1,1,1,0,0,-810.093933,-4981.34033,17.4377289,5.148721,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+90,@N_RDancer,1,1,1,0,0,-810.6152,-5003.353,16.2423363,0.994837642,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+91,@N_RDancer,1,1,1,0,0,-816.6938,-4987.63574,16.7508545,5.846853,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+92,@N_RDancer,1,1,1,0,0,-816.9091,-4996.754,16.6877289,0.34906584,120,0,0,1,0,0,0), -- Ritual Dancer
(@CGuid+93,@N_Citizien1,1,1,1,0,0,246.170135,-4714.729,15.371768,5.6548667,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+94,@N_Citizien1,1,1,1,0,0,247.421875,-4675.27246,16.1996269,0.296705961,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+95,@N_Citizien1,1,1,1,0,0,248.00174,-4672.84033,16.0127563,5.41052055,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+96,@N_Citizien1,1,1,1,0,0,271.295135,-4739.4585,9.89915,5.794493,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+97,@N_Citizien1,1,1,1,0,0,273.3559,-4774.604,12.1704369,0.9599311,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+98,@N_Citizien1,1,1,1,0,0,273.432281,-4738.96338,9.832179,3.73500466,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+99,@N_Citizien1,1,1,1,0,0,343.7361,-4791.71533,11.36291,0.9599311,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+100,@N_Citizien1,1,1,1,0,0,351.678833,-4693.84033,16.5411034,2.25147462,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+101,@N_Citizien1,1,1,1,0,0,369.43576,-4690.94971,15.8566027,5.39306736,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+102,@N_Citizien1,1,1,1,0,0,375.81424,-4775.57666,12.5081263,5.75958633,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+103,@N_Citizien1,1,1,1,0,0,408.949646,-4703.797,9.698563,4.60766935,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+104,@N_Citizien1,1,1,1,0,0,411.1059,-4704.4585,9.560572,3.822271,120,0,0,1,0,0,0), -- Troll Citizien (1)
(@CGuid+105,@N_Citizien2,1,1,1,0,0,246.520828,-4717.009,15.2929316,1.53588974,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+106,@N_Citizien2,1,1,1,0,0,254.949661,-4698.413,14.71032,2.72271371,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+107,@N_Citizien2,1,1,1,0,0,266.074646,-4829.903,10.9051781,0.331612557,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+108,@N_Citizien2,1,1,1,0,0,289.449646,-4820.14258,10.6073713,0.9599311,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+109,@N_Citizien2,1,1,1,0,0,293.4236,-4798.14063,10.0895939,2.25147462,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+110,@N_Citizien2,1,1,1,0,0,333.5087,-4815.271,10.6071978,2.82743335,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+111,@N_Citizien2,1,1,1,0,0,338.1736,-4669.69434,16.5411034,4.712389,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+112,@N_Citizien2,1,1,1,0,0,343.204865,-4831.057,10.1974783,0.2443461,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+113,@N_Citizien2,1,1,1,0,0,343.3646,-4789.488,11.7296114,6.091199,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+114,@N_Citizien2,1,1,1,0,0,345.03125,-4831.41162,10.3018608,2.60054064,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+115,@N_Citizien2,1,1,1,0,0,349.482635,-4724.882,10.3245821,3.12413931,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+116,@N_Citizien2,1,1,1,0,0,375.765625,-4777.94629,12.5297422,0.7679449,120,0,0,1,0,0,0), -- Troll Citizien (2)
(@CGuid+117,@N_Doctor,1,1,1,0,0,-805.0104,-4975.75,17.75085,4.655138,120,0,0,1,0,0,0); -- Witch Doctor Hez'tok

UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatTotem; -- Sen'jin Bat Totem
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatStraw; -- Sen'jin Bat Roost Straw
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatFence; -- Sen'jin Bat Roost Fence
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_BatPost; -- Sen'jin Bat Roost Fence Post
UPDATE `gameobject_template` SET `faction`=114 WHERE `entry`=@G_RDrum; -- Ritual Drum
UPDATE `gameobject_template` SET `faction`=114 WHERE `entry`=@G_RGong; -- Ritual Gong
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_Banner; -- Sen'jin Banner
UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@G_Tent; -- Sen'jin Tent

DELETE FROM `gameobject` WHERE `id` IN (@G_BatTotem,@G_BatStraw,@G_BatFence,@G_BatPost,@G_RDrum,@G_RGong,@G_RBrazier,@G_SRDrum,@G_SRDrum2,@G_Banner,@G_Tent,@G_Table,@G_Book1,@G_Book2,@G_CCrate,@G_OCrate,@G_SPennant);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GGuid+0,@G_BatTotem,1,1,1,-839.1424,-4978.337,14.5841064,-2.94959545,0,0,0,0,120,0,1), -- Sen'jin Bat Totem
(@GGuid+1,@G_BatStraw,1,1,1,-833.6285,-4980.71338,14.823576,-2.70525527,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Straw
(@GGuid+2,@G_BatFence,1,1,1,-827.066,-4983.64063,15.518714,-3.07176614,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Fence
(@GGuid+3,@G_BatFence,1,1,1,-829.5955,-4978.009,15.6437654,-2.44346023,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Fence
(@GGuid+4,@G_BatPost,1,1,1,-831.7917,-4975.60938,15.85345,-2.40855432,0,0,0,0,120,0,1), -- Sen'jin Bat Roost Fence Post
(@GGuid+5,@G_RDrum,1,1,1,-797.4774,-4972.70166,17.8050346,-2.12930059,0,0,0,0,120,0,1), -- Ritual Drum                            
(@GGuid+6,@G_RGong,1,1,1,-789.6094,-4979.12842,18.0358353,-2.54817939,0,0,0,0,120,0,1), -- Ritual Gong
(@GGuid+7,@G_RBrazier,1,1,1,-806.4583,-4993.28125,16.5453663,0,0,0,0,0,120,0,1), -- Ritual Brazier
(@GGuid+8,@G_SRDrum,1,1,1,-799.1007,-4987.36475,17.63783,0.2792516,0,0,0,0,120,0,1), -- Small Ritual Drum
(@GGuid+9,@G_SRDrum,1,1,1,-811.529541,-4988.205,17.119791,-1.08210289,0,0,0,0,120,0,1), -- Small Ritual Drum
(@GGuid+10,@G_SRDrum2,1,1,1,-799.7882,-4986.07275,17.487505,0.2792516,0,0,0,0,120,0,1), -- Small Ritual Drum 2
(@GGuid+11,@G_SRDrum2,1,1,1,-810.487854,-4987.1665,17.1008987,-1.08210289,0,0,0,0,120,0,1), -- Small Ritual Drum 2
(@GGuid+12,@G_Banner,1,1,1,-747.2708,-4998.53467,20.1927032,-2.373644,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+13,@G_Banner,1,1,1,-755.0156,-4990.882,20.33256,-2.321287,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+14,@G_Banner,1,1,1,-763.5799,-4919.818,20.1778774,-0.122172989,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+15,@G_Banner,1,1,1,-764.842041,-4936.15967,21.0983143,-0.209439442,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+16,@G_Banner,1,1,1,-775.4427,-4895.79541,19.8775959,0.733038247,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+17,@G_Banner,1,1,1,-789.1441,-4880.585,19.14895,0.7504908,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+18,@G_Banner,1,1,1,-834.1094,-4873.14746,20.0067558,1.16936862,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+19,@G_Banner,1,1,1,-857.8316,-4945.30566,20.62204,2.70525527,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+20,@G_Banner,1,1,1,-863.6007,-4916.259,19.7371979,-2.28637886,0,0,0,0,120,0,1), -- Sen'jin Banner
(@GGuid+21,@G_Tent,1,1,1,-736.0573,-5025.12842,16.7929783,2.75761318,0,0,0,0,120,0,1), -- Sen'jin Tent
(@GGuid+22,@G_Tent,1,1,1,-738.6719,-4956.72754,22.8236065,2.75761318,0,0,0,0,120,0,1), -- Sen'jin Tent
(@GGuid+23,@G_Table,1,1,1,-736.4427,-5024.759,16.54466,0,0,0,0,0,120,0,1), -- Sen'jin Table
(@GGuid+24,@G_Table,1,1,1,-739.4375,-4957.403,22.8180714,0,0,0,0,0,120,0,1), -- Sen'jin Table
(@GGuid+25,@G_Book1,1,1,1,-735.8073,-5024.637,17.6406937,-0.6632232,0,0,0,0,120,0,1), -- Troll Book 1
(@GGuid+26,@G_Book1,1,1,1,-737.0833,-5024.98438,17.5850124,-3.10665226,0,0,0,0,120,0,1), -- Troll Book 1
(@GGuid+27,@G_Book1,1,1,1,-739.1528,-4958.62158,23.8722477,-1.23918331,0,0,0,0,120,0,1), -- Troll Book 1
(@GGuid+28,@G_Book2,1,1,1,-736.213562,-5025.762,17.5919647,-1.2566359,0,0,0,0,120,0,1), -- Troll Book 2
(@GGuid+29,@G_Book2,1,1,1,-739.194458,-4957.163,23.8564358,0.994837165,0,0,0,0,120,0,1), -- Troll Book 2
(@GGuid+30,@G_Book2,1,1,1,-740.059,-4958.033,23.8347683,-2.84488273,0,0,0,0,120,0,1), -- Troll Book 2
(@GGuid+31,@G_CCrate,1,1,1,-740.7344,-5022.94775,16.8128815,1.3264482,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+32,@G_CCrate,1,1,1,-740.8455,-5023.08154,17.3481083,1.79768872,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+33,@G_CCrate,1,1,1,-742.066,-4997.028,20.3147964,-0.0523588844,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+34,@G_CCrate,1,1,1,-742.098938,-4997.07129,20.8562927,-0.733038247,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+35,@G_CCrate,1,1,1,-743.295166,-4954.14258,22.7840157,1.3264482,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+36,@G_CCrate,1,1,1,-743.3125,-4954.191,23.3492069,2.86233544,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+37,@G_CCrate,1,1,1,-806.2153,-4925.30225,19.9984951,1.3264482,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+38,@G_CCrate,1,1,1,-806.2483,-4925.19775,19.4074268,-2.23401761,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+39,@G_CCrate,1,1,1,-819.258667,-4934.972,21.0808868,-1.04719758,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+40,@G_CCrate,1,1,1,-819.3316,-4935,20.471838,-1.58824873,0,0,0,0,120,0,1), -- Closed Weapon Crate
(@GGuid+41,@G_OCrate,1,1,1,-740.9323,-5023.299,17.89152,-2.513274,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+42,@G_OCrate,1,1,1,-742.0833,-4997.009,21.4263363,-2.513274,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+43,@G_OCrate,1,1,1,-743.2639,-4954.288,23.9839115,2.30383062,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+44,@G_OCrate,1,1,1,-819.381958,-4934.98438,21.6449852,-0.366517574,0,0,0,0,120,0,1), -- Open Weapon Crate
(@GGuid+45,@G_SPennant,1,1,1,-729.473938,-5019.743,27.5368786,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+46,@G_SPennant,1,1,1,-732.1042,-4951.34033,33.59528,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+47,@G_SPennant,1,1,1,-735.2778,-5033.16162,27.6115456,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+48,@G_SPennant,1,1,1,-736.4948,-5024.741,32.8763771,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+49,@G_SPennant,1,1,1,-737.885437,-4964.80371,33.6575661,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+50,@G_SPennant,1,1,1,-739.0625,-4956.28662,39.0746231,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+51,@G_SPennant,1,1,1,-744.319458,-5021.384,27.2134647,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+52,@G_SPennant,1,1,1,-746.8889,-4953.03,33.6572571,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+53,@G_SPennant,1,1,1,-775.2899,-4910.69434,32.3446465,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+54,@G_SPennant,1,1,1,-784.7708,-4942.91846,55.81524,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+55,@G_SPennant,1,1,1,-802.7708,-4915.73633,29.8921642,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+56,@G_SPennant,1,1,1,-802.798645,-4896.53662,30.4030666,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+57,@G_SPennant,1,1,1,-835.0399,-4898.42725,30.9498634,2.40855432,0,0,0,0,120,0,1), -- Sen'jin Pennant
(@GGuid+58,@G_SPennant,1,1,1,-842.7656,-4939.89941,33.59177,2.40855432,0,0,0,0,120,0,1); -- Sen'jin Pennant



DELETE FROM `disables` WHERE `entry` IN (@Q_DaPerfectSpies,@Q_FrogsAway,@Q_LadyOfDaTigers,@Q_DanceOfDeSpirits,@Q_TrollinForVolunteers,@Q_PreparinForBattle,@Q_ZalazanesFall); -- WTF.

UPDATE `quest_template` SET `PrevQuestId`=@Q_DaPerfectSpies WHERE `entry`=@Q_FrogsAway;
UPDATE `quest_template` SET `PrevQuestId`=@Q_FrogsAway WHERE `entry`=@Q_TrollinForVolunteers;
UPDATE `quest_template` SET `PrevQuestId`=@Q_TrollinForVolunteers WHERE `entry`=@Q_LadyOfDaTigers;
UPDATE `quest_template` SET `PrevQuestId`=@Q_LadyOfDaTigers WHERE `entry`=@Q_DanceOfDeSpirits;
UPDATE `quest_template` SET `PrevQuestId`=@Q_DanceOfDeSpirits WHERE `entry`=@Q_PreparinForBattle;
UPDATE `quest_template` SET `PrevQuestId`=@Q_PreparinForBattle WHERE `entry`=@Q_ZalazanesFall;
UPDATE `quest_template` SET `OfferRewardText` = 'These be enough for me purposes. Now comes de hard part.' WHERE `entry`=@Q_DaPerfectSpies;
UPDATE `quest_template` SET `OfferRewardText` = 'I''m already beginnin'' to see what de frogs are seein''. Ya done it perfectly, $N. Now Vol''jin and I will see what Zalazane be plannin''.' WHERE `entry`=@Q_FrogsAway;
UPDATE `quest_template` SET `OfferRewardText` = 'Vanira''s frog be tellin'' de truth, den? Dis tiger be a druid and an ally? We couldn''t be hopin'' for a better outcome. Dis be a good omen for de coming battle.' WHERE `entry`=@Q_LadyOfDaTigers;
UPDATE `quest_template` SET `OfferRewardText` = 'Ya found some good ones. I be trainin'' them hard and we won''t stop until we''ve driven Zalazane from our islands.' WHERE `entry`=@Q_TrollinForVolunteers;
UPDATE `quest_template` SET `OfferRewardText` = 'I will take de spirits'' advice to heart. Wit'' dem behind us and de power of de ancient loas of de Darkspear Tribe, we be ready to reclaim what''s ours!' WHERE `entry`=@Q_DanceOfDeSpirits;
UPDATE `quest_template` SET `OfferRewardText` = 'At last, everythin'' be ready. Now, we show Zalazane what happen to dose who defy de Darkspears!' WHERE `entry`=@Q_PreparinForBattle;
UPDATE `quest_template` SET `OfferRewardText` = '$N, you''d be a mighty warrior and a fierce commrade to da Darkspear trolls. De Echo Isles are OURS now and we couldn''ta done it wit''out ya.$B$BTake dis cloak. Wear it wit pride. You''d be a member of da tribe now!$B$BIn no time, da trolls will have a home again and we have you to thank for dat.' WHERE `entry`=@Q_ZalazanesFall;

DELETE FROM `creature_involvedrelation` WHERE `id` IN (@N_Vanira,@N_Voljin,@N_Uruzin,@N_VoljinBoss);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(@N_Vanira,@Q_DaPerfectSpies),
(@N_Vanira,@Q_FrogsAway),
(@N_Voljin,@Q_LadyOfDaTigers),
(@N_Voljin,@Q_DanceOfDeSpirits),
(@N_Uruzin,@Q_TrollinForVolunteers),
(@N_VoljinBoss,@Q_PreparinForBattle),
(@N_Voljin,@Q_ZalazanesFall);

DELETE FROM `quest_poi` WHERE `questid` IN (@Q_FrogsAway,@Q_TrollinForVolunteers,@Q_LadyOfDaTigers,@Q_DanceOfDeSpirits,@Q_PreparinForBattle,@Q_DaPerfectSpies);
INSERT INTO `quest_poi` (`questid`,`id`,`objIndex`,`mapId`,`WorldMapAreaId`,`FloorId`,`unk3`,`unk4`) VALUES
(@Q_FrogsAway,0,0,1,4,0,0,1),(@Q_FrogsAway,1,0,1,4,0,0,1),
(@Q_FrogsAway,2,0,1,4,0,0,1),(@Q_FrogsAway,3,0,1,4,0,0,1),
(@Q_FrogsAway,4,-1,1,4,0,0,1),(@Q_TrollinForVolunteers,0,0,1,4,0,0,1),
(@Q_TrollinForVolunteers,1,-1,1,4,0,0,1),(@Q_LadyOfDaTigers,0,0,1,4,0,0,1),
(@Q_LadyOfDaTigers,1,-1,1,4,0,0,1),(@Q_DanceOfDeSpirits,0,0,1,4,0,0,1),
(@Q_DanceOfDeSpirits,1,-1,1,4,0,0,1),(@Q_PreparinForBattle,0,-1,1,4,0,0,1),
(@Q_DaPerfectSpies,0,-1,1,4,0,0,1),(@Q_DaPerfectSpies,1,10,1,4,0,0,7),
(@Q_DaPerfectSpies,2,1,1,4,0,0,7);
DELETE FROM `quest_poi_points` WHERE `questid` IN (@Q_FrogsAway,@Q_TrollinForVolunteers,@Q_LadyOfDaTigers,@Q_DanceOfDeSpirits,@Q_PreparinForBattle,@Q_DaPerfectSpies);
INSERT INTO `quest_poi_points` (`questId`,`id`,`x`,`y`) VALUES
(@Q_FrogsAway,0,-1041,-5585),(@Q_FrogsAway,0,-1062,-5631),(@Q_FrogsAway,0,-1066,-5375),
(@Q_FrogsAway,0,-1189,-5343),(@Q_FrogsAway,0,-1195,-5618),(@Q_FrogsAway,0,-1269,-5386),
(@Q_FrogsAway,0,-1289,-5571),(@Q_FrogsAway,0,-1320,-5477),(@Q_FrogsAway,0,-1322,-5527),
(@Q_FrogsAway,1,-1502,-5263),(@Q_FrogsAway,1,-1532,-5341),(@Q_FrogsAway,1,-1589,-5340),
(@Q_FrogsAway,1,-1611,-5276),(@Q_FrogsAway,2,-1020,-5153),(@Q_FrogsAway,2,-1089,-5174),
(@Q_FrogsAway,2,-1128,-5131),(@Q_FrogsAway,2,-955,-5186),(@Q_FrogsAway,3,-654,-5627),
(@Q_FrogsAway,3,-688,-5518),(@Q_FrogsAway,3,-730,-5656),(@Q_FrogsAway,3,-732,-5499),
(@Q_FrogsAway,3,-795,-5544),(@Q_FrogsAway,3,-806,-5674),(@Q_FrogsAway,3,-835,-5606),
(@Q_FrogsAway,4,-747,-5004),(@Q_TrollinForVolunteers,0,246,-4715),
(@Q_TrollinForVolunteers,0,247,-4675),(@Q_TrollinForVolunteers,0,248,-4673),
(@Q_TrollinForVolunteers,0,266,-4830),(@Q_TrollinForVolunteers,0,284,-4628),
(@Q_TrollinForVolunteers,0,302,-4612),(@Q_TrollinForVolunteers,0,343,-4831),
(@Q_TrollinForVolunteers,0,345,-4831),(@Q_TrollinForVolunteers,0,376,-4778),
(@Q_TrollinForVolunteers,0,380,-4661),(@Q_TrollinForVolunteers,0,411,-4704),
(@Q_TrollinForVolunteers,1,-765,-5018),(@Q_LadyOfDaTigers,0,-1122,-5127),
(@Q_LadyOfDaTigers,1,-755,-4998),(@Q_DanceOfDeSpirits,0,-805,-4976),
(@Q_DanceOfDeSpirits,1,-755,-4998),(@Q_PreparinForBattle,0,-804,-5373),
(@Q_DaPerfectSpies,0,-747,-5004),(@Q_DaPerfectSpies,1,-1014,-4911),
(@Q_DaPerfectSpies,1,-644,-4999),(@Q_DaPerfectSpies,1,-673,-4932),
(@Q_DaPerfectSpies,1,-673,-5062),(@Q_DaPerfectSpies,1,-736,-5100),
(@Q_DaPerfectSpies,1,-740,-4873),(@Q_DaPerfectSpies,1,-808,-4831),
(@Q_DaPerfectSpies,1,-808,-5100),(@Q_DaPerfectSpies,1,-887,-5062),
(@Q_DaPerfectSpies,1,-892,-4776),(@Q_DaPerfectSpies,1,-959,-4995),
(@Q_DaPerfectSpies,1,-984,-4785),(@Q_DaPerfectSpies,2,-749,-5024);



DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@N_Frog,@N_TigerSpirit);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(@N_Frog,@S_Pickup,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,1,0,0,0),
(@N_Frog,@S_Pickup2,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,3,0,0,0),
(@N_TigerSpirit,@S_RideVehicle,0,0,0,1,0,0,0); -- Spirit of the Tiger - Ride Vehicle Hardcoded

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@N_Frog,@N_AtunnedFrog,@N_Vanira,@N_Zentabra,@N_DScout,@N_Citizien1,@N_Citizien2,@N_Doctor,@N_DancePart,@N_RDrummer) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@N_Vanira*100,@N_Zentabra*100,@N_DScout*100,@N_Doctor*100) AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)VALUES
(@N_Frog,0,0,0,8,0,100,0,@S_Pickup,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: Senjin Frog - add aura'),
(@N_AtunnedFrog,0,0,0,54,0,100,0,0,0,0,0,33,@N_SpyFrogCredit,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Echo Isles: Spy Frog Killcredit'), -- FIXME: should be replaced by proper flare targeting
(@N_AtunnedFrog,0,1,0,25,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Attuned Frog: On reset set random movement'),
(@N_Vanira,0,0,0,19,0,100,0,@Q_LadyOfDaTigers,0,0,0,80,@N_Vanira*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On quest accept run script'),
(@N_Vanira*100,9,0,0,0,0,100,0,0,0,0,0,11,@S_ForceTiger,0,0,0,0,0,7,0,0,0,0,0,0,0,'Echo Isles: Cast Force Tiger on player'),
(@N_Vanira*100,9,1,0,0,0,100,0,0,0,0,0,11,@S_NatVisual,0,0,0,0,0,1,0,0,0,0,0,0,0,'Echo Isles: Cast Nature Visual on self'),
(@N_Vanira*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Echo Isles: Say Text 0'),
(@N_Vanira*100,9,3,0,0,0,100,0,500,500,0,0,86,75165,0,22,0,0,0,1,0,0,0,0,0,0,0,'Echo Isles: Force Tiger cast 75165 on self'),
(@N_Zentabra,0,0,0,25,0,100,0,0,0,0,0,80,@N_Zentabra*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Call actionlist on spawn'),
(@N_Zentabra*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Set orientation to player'),
(@N_Zentabra*100,9,1,0,0,0,100,0,0,0,0,0,11,@S_ZentrabaSmoke,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast spawn smoke effect on self'),
(@N_Zentabra*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(@N_Zentabra*100,9,3,0,0,0,100,0,1500,1500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
(@N_Zentabra*100,9,4,0,0,0,100,0,5500,5500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(@N_Zentabra*100,9,5,0,0,0,100,0,5500,5500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(@N_Zentabra*100,9,6,0,0,0,100,0,5500,5500,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(@N_Zentabra*100,9,7,0,0,0,100,0,0,0,0,0,33,@N_TigerCredit,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Award kill credit to player'),
(@N_Zentabra*100,9,8,0,0,0,100,0,5500,5500,0,0,11,@S_ZentrabaTransform,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cast tiger transform on self'),
(@N_Zentabra*100,9,9,0,0,0,100,0,100,100,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Set run on self'),
(@N_Zentabra*100,9,10,0,0,0,100,0,0,0,0,0,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Move self forward 10 yards'),
(@N_Zentabra*100,9,11,0,0,0,100,0,600,600,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Despawn self'),
(@N_DScout,0,0,0,25,0,100,0,0,0,0,0,53,1,@N_DScout,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Start waypath on spawn'),
(@N_DScout,0,1,0,40,0,100,0,1,@N_DScout,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Set fly = 0 on waypoint 1'),
(@N_DScout,0,2,0,40,0,100,0,1,@N_DScout,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Set run = 0 on waypoint 1'),
(@N_DScout,0,3,0,40,0,100,0,1,@N_DScout,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Unmount on waypoint 1'),
(@N_DScout,0,4,0,40,0,100,0,6,@N_DScout,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Pause waypoint on waypoint 6'),
(@N_DScout,0,5,0,40,0,100,0,6,@N_DScout,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0.820305, 'Darkspear Scout: Change orientation on waypoint 6'),
(@N_DScout,0,6,0,40,0,100,0,6,@N_DScout,0,0,80,@N_DScout*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Run script on waypoint 6'),
(@N_DScout,0,7,0,40,0,100,0,9,@N_DScout,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Despawn on waypoint 9'),
(@N_DScout*100,9,0,0,0,0,100,0,0,0,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_DScout*100,9,1,0,0,0,50,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random text'),
(@N_DScout*100,9,2,0,0,0,50,0,1000,1000,0,0,1,0,0,0,0,0,0,9,@N_Voljin,0,15,0,0,0,0, 'Vol''Jin: Reply to Darkspear Scout'),
(@N_DScout*100,9,3,0,0,0,100,0,2000,2000,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_DScout*100,9,4,0,0,0,100,0,6000,6000,0,0,10,1,2,5,66,0,0,1,0,0,0,0,0,0,0, 'Darkspear Scout: Random emote 1,2,5,66'),
(@N_Citizien1,0,0,0,8,0,100,0,@S_VolunterSummon1,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On spellhit - force despawn'),
(@N_Citizien2,0,0,0,8,0,100,0,@S_VolunterSummon2,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Echo Isles: On spellhit - force despawn'),
(@N_Doctor, 0,0,0,62,0,0,0,@Gossip+0,0,0,0,80,@N_Doctor*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - On gossip select start script'),
(@N_Doctor*100,9,0,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Remove gossip flag'),
(@N_Doctor*100,9,1,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 0'),
(@N_Doctor*100,9,2,0,0,0,100,0,1000,1000,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-812.137,-4986.7,17.3759,5.89921, 'Witch Doctor Hez''tok - Summon Ritual Drummer (1)'),
(@N_Doctor*100,9,3,0,0,0,100,0,0,0,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-798.187,-4985.52,17.7904,4.41568, 'Witch Doctor Hez''tok - Summon Ritual Drummer (2)'),
(@N_Doctor*100,9,4,0,0,0,100,0,0,0,0,0,12,@N_RDrummer,1,50000,0,0,0,8,0,0,0,-799.888,-4975.01,17.9325,0.942478, 'Witch Doctor Hez''tok - Summon Ritual Drummer (3)'),
(@N_Doctor*100,9,5,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-806.2,-4989.5,17.5177,0, 'Witch Doctor Hez''tok - Move to pos'),
(@N_Doctor*100,9,6,0,0,0,100,0,6500,6500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 1'),
(@N_Doctor*100,9,7,0,0,0,100,0,5500,5500,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 2'),
(@N_Doctor*100,9,8,0,0,0,100,0,3500,3500,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,9,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 3'),
(@N_Doctor*100,9,10,0,0,0,100,0,2500,2500,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,11,0,0,0,100,0,5000,5000,0,0,11,56745,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Drink Alcohol self'),
(@N_Doctor*100,9,12,0,0,0,100,0,600,600,0,0,11,29389,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Firebreathing self'),
(@N_Doctor*100,9,13,0,0,0,100,0,4000,4000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Set bytes1 kneel state'),
(@N_Doctor*100,9,14,0,0,0,100,0,1000,1000,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-805.8477,-5003.044,20.18328,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (1)'),
(@N_Doctor*100,9,15,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-801.0605,-4998.501,18.59358,4.41568, 'Witch Doctor Hez''tok - Summon Dance Participant (2)'),
(@N_Doctor*100,9,16,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-808.2397,-4985.208,19.54311,0.942478, 'Witch Doctor Hez''tok - Summon Dance Participant (3)'),
(@N_Doctor*100,9,17,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-799.2618,-4994.353,19.61933,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (4)'),
(@N_Doctor*100,9,18,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-797.8184,-4986.597,21.60157,4.41568, 'Witch Doctor Hez''tok - Summon Dance Participant (5)'),
(@N_Doctor*100,9,19,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-805.1284,-4987.553,18.79003,0.942478, 'Witch Doctor Hez''tok - Summon Dance Participant (6)'),
(@N_Doctor*100,9,20,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-814.1109,-5001.676,19.44409,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (7)'),
(@N_Doctor*100,9,21,0,0,0,100,0,0,0,0,0,12,@N_DancePart,1,40000,0,0,0,8,0,0,0,-795.7561,-4993.671,21.80729,5.89921, 'Witch Doctor Hez''tok - Summon Dance Participant (8)'),
(@N_Doctor*100,9,22,0,0,0,100,0,1000,1000,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-790.217041,-4999.733,17.171814,2.84488654, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (1)'),
(@N_Doctor*100,9,23,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-792.0052,-4994.14258,17.4839725,2.70526028, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (2)'),
(@N_Doctor*100,9,24,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-795.2049,-5003.078,17.716095,2.46091413, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (3)'),
(@N_Doctor*100,9,25,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-799.2274,-5005.68066,16.6322536,2.11184835, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (4)'),
(@N_Doctor*100,9,26,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-799.2557,-4990.76172,17.6279469,2.70527148, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (5)'),
(@N_Doctor*100,9,27,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-801.422058,-4998.04346,17.0008545,2.46088934, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (6)'),
(@N_Doctor*100,9,28,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-805.4358,-5002.88525,16.544487,1.727876, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (7)'),
(@N_Doctor*100,9,29,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-807.135,-4997.469,17.0008545,1.15000379, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (8)'),
(@N_Doctor*100,9,30,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-810.3698,-4993.825,17.1258545,0.808653831, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (9)'),
(@N_Doctor*100,9,31,0,0,0,100,0,0,0,0,0,12,@N_DAncestor,1,40000,0,0,0,8,0,0,0,-810.3889,-5004.778,16.12407,1.15191734, 'Witch Doctor Hez''tok - Summon Darkspear Ancestor (10)'),
(@N_Doctor*100,9,32,0,0,0,100,0,7000,7000,0,0,11,70663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Shadow Nova self'),
(@N_Doctor*100,9,33,0,0,0,100,0,0,0,0,0,11,31309,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Spirit Particles self'),
(@N_Doctor*100,9,34,0,0,0,100,0,0,0,0,0,91,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Set bytes1 none'),
(@N_Doctor*100,9,35,0,0,0,100,0,100,100,0,0,3,@N_Voice,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change entry to Voice of the Spirits'),
(@N_Doctor*100,9,36,0,0,0,100,0,100,100,0,0,3,0,31819,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change model to Voice of the Spirits'),
(@N_Doctor*100,9,37,0,0,0,100,0,1000,1000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 4'),
(@N_Doctor*100,9,38,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 5'),
(@N_Doctor*100,9,39,0,0,0,100,0,3000,3000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,40,0,0,0,100,0,3500,3500,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 6'),
(@N_Doctor*100,9,41,0,0,0,100,0,6000,6000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 7'),
(@N_Doctor*100,9,42,0,0,0,100,0,4500,4500,0,0,5,274,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,43,0,0,0,100,0,5000,5000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 8'),
(@N_Doctor*100,9,44,0,0,0,100,0,4500,4500,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,45,0,0,0,100,0,5500,5500,0,0,11,70663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Shadow Nova self'),
(@N_Doctor*100,9,46,0,0,0,100,0,100,100,0,0,28,31309,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Remove aura Spirit Particles'),
(@N_Doctor*100,9,47,0,0,0,100,0,0,0,0,0,3,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Change entry and model to Witch Doctor Hez''tok'),
(@N_Doctor*100,9,48,0,0,0,100,0,4000,4000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Say text 9'),
(@N_Doctor*100,9,49,0,0,0,100,0,2500,2500,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Do emote'),
(@N_Doctor*100,9,50,0,0,0,100,0,0,0,0,0,85,75319,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Cast Omen Event Credit invoker'), -- working

(@N_Doctor*100,9,51,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-805.0104,-4975.75,17.75085,0, 'Witch Doctor Hez''tok - Move to pos'),
(@N_Doctor*100,9,52,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.625123, 'Witch Doctor Hez''tok - Change orientation'),
(@N_Doctor*100,9,53,0,0,0,100,0,2000,2000,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Witch Doctor Hez''tok - Enable gossip flag'),
(@N_DancePart,0,0,0,25,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dance Participant - On reset set random movement'),
(@N_DancePart,0,1,0,25,0,100,0,0,0,0,0,3,0,22769,0,0,0,0,1,0,0,0,0,0,0,0, 'Dance Participant - On reset set model'),
(@N_RDrummer,0,0,0,1,0,100,0,0,0,1000,2000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play emote attack 2h every 1 or 2 secs'),
(@N_RDrummer,0,1,0,1,0,100,0,0,0,5000,5000,11,75313,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Cast Bang Ritual Gong every 5 seconds'),
(@N_RDrummer,0,2,0,1,0,100,1,4000,4000,0,0,4,7294,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play TrollDrumLoop after 4 seconds of spawn - not repeteable'),
(@N_RDrummer,0,3,0,1,0,100,0,0,0,30000,30000,4,7294,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ritual Drummer - Play Drumms sound every 30 secs');

DELETE FROM `creature_text` WHERE `entry` IN (@N_Vanira,@N_Zentabra,@N_Volunteer1,@N_Volunteer2,@N_Matriarch,@N_TigerCredit,@N_Doctor,@N_DScout,@N_Voljin);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@N_Vanira,0,0, 'O spirit of de tigers, lend $N your power and help us find de answers we seek!',0,0,100,5,0,0, 'Vanira'),
(@N_Zentabra,0,0, 'Dat be enough for now!',0,0,100,25,0,0, 'Zen''tabra'),
(@N_Zentabra,1,0, 'Don''t be lookin'' so surprised. Your shaman friend has sharp eyes, or should I say, sharp frogs.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Zentabra,2,0, 'My kind, da druids, we been layin'' low for some time now. We been waitin'' to see when an'' if Vol''jin might return.',0,0,100,11,0,0, 'Zen''tabra'),
(@N_Zentabra,3,0, 'Now dat it looks like de Darkspear be returnin'' to these isles, maybe de time has come for us to reveal ourselves.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Zentabra,4,0, 'Go back to Vol''jin an'' tell him dis: Zen''tabra stands ready to help him in de coming battle.',0,0,100,1,0,0, 'Zen''tabra'),
(@N_Volunteer1,0,0, 'Sign me up!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,1, 'Anythin'' for Vol''jin!',0,0,100,0,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,2, 'I''d be glad to help.',0,0,100,273,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,0,3, 'Just point me at de enemy!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,0, 'Sign me up!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,1, 'Anythin'' for Vol''jin!',0,0,100,0,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,2, 'I''d be glad to help.',0,0,100,273,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer2,0,3, 'Just point me at de enemy!',0,0,100,66,0,0, 'Troll Volunteer JustSpawned'),
(@N_Volunteer1,1,0, 'Reportin'' for duty.',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,1, 'Ready to take de fight to Zalazane.',0,0,100,1,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,2, 'Ready to fight beside Vol''jin!',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,3, 'New troll here!',0,0,100,0,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer1,1,4, 'When does de trainin'' start?',0,0,100,6,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,0, 'Reportin'' for duty.',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,1, 'Ready to take de fight to Zalazane.',0,0,100,1,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,2, 'Ready to fight beside Vol''jin!',0,0,100,66,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,3, 'New troll here!',0,0,100,0,0,0, 'Troll Volunteer Quest Turn in'),
(@N_Volunteer2,1,4, 'When does de trainin'' start?',0,0,100,6,0,0, 'Troll Volunteer Quest Turn in'),
(@N_TigerCredit,0,0, 'The tiger matriarch appears! Prove yourself in combat!',3,0,100,0,0,0, 'Tiger Matriarch Credit'),
(@N_Doctor,0,0, 'Darkspears, we consult de spirits! Drummers, take your places!' ,0,0,100,25,0,0, 'Witch Doctor Hez''tok' ),
(@N_Doctor,1,0, 'Spirits, we be gathered here to ask for your guidance.' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok' ),
(@N_Doctor,2,0, 'Our leader, Vol''jin, son of Sen''jin, issued de call to all Darkspears: reclaim de Echo Isles for our tribe.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,3,0, 'Spirits! I offer me own body to you! Speak through me! Is de time right for mighty Vol''jin''s undertaking?' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,4,0, 'De ancestors hear ya, witch doctor!' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,5,0, 'Know dat your plans please us, Darkspears. De son of Sen''jin walks de right path.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,6,0, 'De task in front of ya will not be easy, but ya have our blessin''.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,7,0, 'Ya gave up your home an'' ya gave up de loas of your ancestors when ya left de Echo Isles. Dey will not be pleased dat you been ignorin'' dem.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,8,0, 'Ya must make amends wit'' Bwonsamdi, de guardian of de dead, if ya hope to defeat Zalazane. It be de only way. Tell de son of Sen''jin dese things.' ,0,0,100,1,0,0, 'Witch Doctor Hez''tok'),
(@N_Doctor,9,0, 'De spirits have blessed us wit'' an answer! De Echo Isles will be ours again!' ,0,0,100,5,0,0, 'Witch Doctor Hez''tok'),
(@N_DScout,0,0, 'He got a big army, an'' he be plannin'' somethin'' down dere.' ,0,0,100,1,0,0, 'Darkspear Scout'),
(@N_DScout,0,1, 'Zalazane got most of his hexes trolls hidden under de canopy on de big island.' ,0,0,100,1,0,0, 'Darkspear Scout'),
(@N_Voljin,0,0, 'Thank ya, scout. Keep up da patrols. But for now, a rest is in order. Dismissed.' ,0,0,100,1,0,0, 'Vol''jin');

DELETE FROM `waypoints` WHERE `entry`=@N_DScout;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@N_DScout,1,-838.1788,-4989.835,14.93872, ''),
(@N_DScout,2,-829.3889,-4999.125,15.50085, ''),
(@N_DScout,3,-808.0018,-5010.587,15.36734, ''),
(@N_DScout,4,-796.1736,-5009.604,16.01879, ''),
(@N_DScout,5,-782.4566,-5002.518,17.26879, ''),
(@N_DScout,6,-758.7136,-5001.088,19.65562, 'Run script'),
(@N_DScout,7,-763.0104,-4995.054,20.06314, ''),
(@N_DScout,8,-753.5364,-4974.764,21.81314, ''),
(@N_DScout,9,-742.8715,-4961.878,22.66427, 'Despawn');

DELETE FROM `spell_area` WHERE `spell` IN (@S_SeeSenjinFrogInvs,@S_SeeSpyFrogInvs);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(@S_SeeSenjinFrogInvs,393,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,0,0,2,1), -- Darkspear Strand
(@S_SeeSenjinFrogInvs,367,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,0,0,2,1), -- Sen'jin Village
(@S_SeeSenjinFrogInvs,14,@Q_DaPerfectSpies,1,@Q_DaPerfectSpies,0,0,2,1), -- Durotar
(@S_SeeSpyFrogInvs,368,@Q_FrogsAway,1,@Q_FrogsAway,0,0,2,1); -- Echo Isles


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (11345,@Gossip+0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@S_FrogsAway;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=16 AND `SourceEntry`=@N_TigerSpirit;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=@I_VoljinDrums;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=75319;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,11345,0,0,9,@Q_FrogsAway,0,0,0, 'Echo Isles: QFrogs Away: gossip'),
(15,11345,1,0,9,@Q_TrollinForVolunteers,0,0,0, 'Echo Isles: Trollin for Volunteers: gossip'),
(15,11345,2,0,28,@Q_PreparinForBattle,0,0,0, 'Echo Isles: Preparin'' For Battle: gossip'),
(15,@Gossip+0,0,0,9,@Q_DanceOfDeSpirits,0,0,0, 'Hez''tok: Dance of De Spirits: gossip'),
(17,0,@S_FrogsAway,0,1,@S_SeeSpyFrogInvs,0,0,0, 'Echo Isles: SFrogs Away'),
(16,0,@N_TigerSpirit,0,23,367,0,0,0, 'Dismount player when not in intended zone'), -- Sen'jin Village
(16,0,@N_TigerSpirit,1,23,393,0,0,0, 'Dismount player when not in intended zone'), -- Darkspear Strand
(16,0,@N_TigerSpirit,2,23,368,0,0,0, 'Dismount player when not in intended zone'), -- Echo Isles
(18,0,@I_VoljinDrums,0,24,1,@N_Citizien1,0,63, 'Limit Voljin Drums to be used on Troll Citizen'),
(18,0,@I_VoljinDrums,1,24,1,@N_Citizien2,0,63, 'Limit Voljin Drums to be used on Troll Citizen'),
(13,0,75319,0,18,1,0,0,0, 'Omen Kill Credit - Target player AoE');


DELETE FROM `game_event` WHERE `eventEntry`=@Event;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event, '2010-09-07 00:00:00' , '2010-10-10 00:00:00' ,9999999,47520,0, 'Zalazane''s Fall' ,0);
DELETE FROM `game_event_creature_quest` WHERE `id` IN (@N_Vanira,@N_Voljin,@N_Uruzin,@N_VoljinBoss);
INSERT INTO `game_event_creature_quest` (`id`,`quest`,`eventEntry`) VALUES
(@N_Vanira,@Q_DaPerfectSpies,@Event),
(@N_Vanira,@Q_FrogsAway,@Event),
(@N_Vanira,@Q_LadyOfDaTigers,@Event),
(@N_Voljin,@Q_DanceOfDeSpirits,@Event),
(@N_Uruzin,@Q_TrollinForVolunteers,@Event),
(@N_Uruzin,@Q_PreparinForBattle,@Event),
(@N_VoljinBoss,@Q_ZalazanesFall,@Event);
DELETE FROM `game_event_creature` WHERE `eventEntry`=@Event;
INSERT INTO `game_event_creature` (`guid`,`eventEntry`) VALUES
(@CGuid+0,@Event),(@CGuid+1,@Event),(@CGuid+2,@Event),
(@CGuid+3,@Event),(@CGuid+4,@Event),(@CGuid+5,@Event),
(@CGuid+6,@Event),(@CGuid+7,@Event),(@CGuid+8,@Event),
(@CGuid+9,@Event),(@CGuid+10,@Event),(@CGuid+11,@Event),
(@CGuid+12,@Event),(@CGuid+13,@Event),(@CGuid+14,@Event),
(@CGuid+15,@Event),(@CGuid+16,@Event),(@CGuid+17,@Event),
(@CGuid+18,@Event),(@CGuid+19,@Event),(@CGuid+20,@Event),
(@CGuid+21,@Event),(@CGuid+22,@Event),(@CGuid+23,@Event),
(@CGuid+24,@Event),(@CGuid+25,@Event),(@CGuid+26,@Event),
(@CGuid+27,@Event),(@CGuid+28,@Event),(@CGuid+29,@Event),
(@CGuid+30,@Event),(@CGuid+31,@Event),(@CGuid+32,@Event),
(@CGuid+33,@Event),(@CGuid+34,@Event),(@CGuid+35,@Event),
(@CGuid+36,@Event),(@CGuid+37,@Event),(@CGuid+38,@Event),
(@CGuid+39,@Event),(@CGuid+40,@Event),(@CGuid+41,@Event),
(@CGuid+42,@Event),(@CGuid+43,@Event),(@CGuid+44,@Event),
(@CGuid+45,@Event),(@CGuid+46,@Event),(@CGuid+47,@Event),
(@CGuid+48,@Event),(@CGuid+49,@Event),(@CGuid+51,@Event),
(@CGuid+52,@Event),(@CGuid+53,@Event),(@CGuid+54,@Event),
(@CGuid+55,@Event),(@CGuid+56,@Event),(@CGuid+57,@Event),
(@CGuid+58,@Event),(@CGuid+59,@Event),(@CGuid+60,@Event),
(@CGuid+61,@Event),(@CGuid+62,@Event),(@CGuid+63,@Event),
(@CGuid+64,@Event),(@CGuid+65,@Event),(@CGuid+66,@Event),
(@CGuid+67,@Event),(@CGuid+68,@Event),(@CGuid+69,@Event),
(@CGuid+70,@Event),(@CGuid+71,@Event),(@CGuid+72,@Event),
(@CGuid+73,@Event),(@CGuid+74,@Event),(@CGuid+75,@Event),
(@CGuid+76,@Event),(@CGuid+77,@Event),(@CGuid+78,@Event),
(@CGuid+79,@Event),(@CGuid+80,@Event),(@CGuid+81,@Event),
(@CGuid+82,@Event),(@CGuid+83,@Event),(@CGuid+84,@Event),
(@CGuid+85,@Event),(@CGuid+86,@Event),(@CGuid+87,@Event),
(@CGuid+88,@Event),(@CGuid+89,@Event),(@CGuid+90,@Event),
(@CGuid+91,@Event),(@CGuid+92,@Event),(@CGuid+93,@Event),
(@CGuid+94,@Event),(@CGuid+95,@Event),(@CGuid+96,@Event),
(@CGuid+97,@Event),(@CGuid+98,@Event),(@CGuid+99,@Event),
(@CGuid+100,@Event),(@CGuid+101,@Event),(@CGuid+102,@Event),
(@CGuid+103,@Event),(@CGuid+104,@Event),(@CGuid+105,@Event),
(@CGuid+106,@Event),(@CGuid+107,@Event),(@CGuid+108,@Event),
(@CGuid+109,@Event),(@CGuid+110,@Event),(@CGuid+111,@Event),
(@CGuid+112,@Event),(@CGuid+113,@Event),(@CGuid+114,@Event),
(@CGuid+115,@Event),(@CGuid+116,@Event),(@CGuid+117,@Event);
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@Event;
INSERT INTO `game_event_gameobject` (`guid`,`eventEntry`) VALUES
(@GGuid+0,@Event),(@GGuid+1,@Event),(@GGuid+2,@Event),
(@GGuid+3,@Event),(@GGuid+4,@Event),(@GGuid+5,@Event),
(@GGuid+6,@Event),(@GGuid+7,@Event),(@GGuid+8,@Event),
(@GGuid+9,@Event),(@GGuid+10,@Event),(@GGuid+11,@Event),
(@GGuid+12,@Event),(@GGuid+13,@Event),(@GGuid+14,@Event),
(@GGuid+15,@Event),(@GGuid+16,@Event),(@GGuid+17,@Event),
(@GGuid+18,@Event),(@GGuid+19,@Event),(@GGuid+20,@Event),
(@GGuid+21,@Event),(@GGuid+22,@Event),(@GGuid+23,@Event),
(@GGuid+24,@Event),(@GGuid+25,@Event),(@GGuid+26,@Event),
(@GGuid+27,@Event),(@GGuid+28,@Event),(@GGuid+29,@Event),
(@GGuid+30,@Event),(@GGuid+31,@Event),(@GGuid+32,@Event),
(@GGuid+33,@Event),(@GGuid+34,@Event),(@GGuid+35,@Event),
(@GGuid+36,@Event),(@GGuid+37,@Event),(@GGuid+38,@Event),
(@GGuid+39,@Event),(@GGuid+40,@Event),(@GGuid+41,@Event),
(@GGuid+42,@Event),(@GGuid+43,@Event),(@GGuid+44,@Event),
(@GGuid+45,@Event),(@GGuid+46,@Event),(@GGuid+47,@Event),
(@GGuid+48,@Event),(@GGuid+49,@Event),(@GGuid+50,@Event),
(@GGuid+51,@Event),(@GGuid+52,@Event),(@GGuid+53,@Event),
(@GGuid+54,@Event),(@GGuid+55,@Event),(@GGuid+56,@Event),
(@GGuid+57,@Event),(@GGuid+58,@Event);
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch_credit' WHERE `entry`=40301;
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch' WHERE `entry`=40312;
UPDATE `creature_template` SET `ScriptName`= 'npc_troll_volunteer' WHERE `entry` IN (40260,40264);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (75420,75102);
INSERT INTO `spell_script_names` VALUES
(75420, 'spell_mount_check'),
(75102, 'spell_voljin_war_drums');

DELETE FROM `achievement_reward` WHERE `entry` IN (4784,4785);
INSERT INTO `achievement_reward` (`entry`,`title_A`,`title_H`,`item`,`sender`,`subject`,`text`) VALUES
(4784,0,0,0,37942, 'Emblem Quartermasters in Dalaran''s Silver Enclave', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Silver Enclave, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!'),
(4785,0,0,0,37941, 'Emblem Quartermasters in Dalaran''s Sunreaver Sanctuary', 'Your achievements in Northrend have not gone unnoticed, friend.$B$BThe Emblems you have earned may be used to purchase equipment from the various Emblem Quartermasters in Dalaran.$B$BYou may find us there, in the Sunreaver Sanctuary, where each variety of Emblem has its own quartermaster.$B$BWe look forward to your arrival!');
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=40176; -- Sen'jin Frog

DELETE FROM `gameobject` WHERE `guid`=151888 AND `id`=202564;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(151888,202564,0,1,1,-5463.98975,-626.967041,393.528717,0,0,0,0,0,120,0,1);

DELETE FROM `creature_equip_template` WHERE `entry`=2432;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES 
(2432,53056,0,0);
UPDATE `creature_template` SET `equipment_id`=2432 WHERE `entry`=39368; -- Set equipment to Drill Sergeant Steamcrank
UPDATE `creature_template` SET `equipment_id`=2432 WHERE `entry`=39675; -- Set equipment to Captain Tread Sparknozzle
UPDATE `creature_template` SET `equipment_id`=682 WHERE `entry`=32417; -- Set equipment to Scarlet Highlord Daion

UPDATE `creature_template` SET `AIName`= '' WHERE `entry`=30037;


DELETE FROM `creature` WHERE `id` IN (23289,23345,23346,23348,23291,23340,23342,23344,23370,23376,23427,23489);
DELETE FROM `creature` WHERE `guid` BETWEEN 52334 AND 52347;
INSERT INTO `creature` (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES 
(52334,23289,530,1,1,0,0,-5155.48975,696.2224,42.196106,4.90454865,120,0,0,1,0,0,0), -- Mine Car
(52335,23289,530,1,1,0,0,-5195.42334,620.3688,44.1691132,6.20430231,120,0,0,1,0,0,0), -- Mine Car
(52336,23345,530,1,1,0,0,-5066.307,640.2136,86.49668,1.553343,120,0,0,1,0,0,0), -- Wing Commander Ichman
(52337,23346,530,1,1,0,0,-5060.32666,640.43634,86.66157,1.50098312,120,0,0,1,0,0,0), -- Wing Commander Mulverick
(52338,23348,530,1,1,0,0,-5074.878,625.448547,85.91173,1.57079637,120,0,0,1,0,0,0), -- Captain Skyshatter
(52339,23291,530,1,1,0,0,-5105.28,548.8744,85.7275848,0.4537856,120,0,0,1,0,0,0), -- Chief Overseer Mudlump <Beater of Peons>
(52340,23340,530,1,1,0,0,-5088.555,640.8356,86.61429,1.48352981,120,0,0,1,0,0,0), -- Murg "Oldie" Muckjaw
(52341,23342,530,1,1,0,0,-5081.61768,640.931763,86.61429,1.57079637,120,0,0,1,0,0,0), -- Trope the Filth-Belcher
(52342,23344,530,1,1,0,0,-5072.988,640.0335,86.48929,1.60313094,120,0,0,1,0,0,0), -- Corlok the Vet
(52343,23370,530,1,1,0,0,-5104.80127,683.6003,104.504616,5.56760025,120,0,0,1,0,0,0), -- Dragonmaw Tower Controller
(52344,23376,530,1,1,0,0,-5129.35352,681.3448,40.0699348,1.04193306,120,0,0,1,0,0,0), -- Dragonmaw Foreman
(52345,23376,530,1,1,0,0,-5197.53369,620.5416,44.5623055,6.202318,120,0,0,1,0,0,0), -- Dragonmaw Foreman
(52346,23427,530,1,1,0,0,-5092.035,581.6629,86.958786,1.18682384,120,0,0,1,0,0,0), -- Illidari Lord Balthas
(52347,23489,530,1,1,0,0,-5099.259,617.7783,85.9796,4.22369671,120,0,0,1,0,0,0); -- Drake Dealer Hurlunk
DELETE FROM `creature_template_addon` WHERE `entry` IN (23345,23346,23348,23291,23340,23342,23344,23370,23427,23489);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes2`) VALUES
(23345,17718,1), -- Wing Commander Ichman
(23346,17719,1), -- Wing Commander Mulverick
(23348,21425,1), -- Captain Skyshatter
(23291,0,1), -- Chief Overseer Mudlump <Beater of Peons>
(23340,17701,1), -- Murg "Oldie" Muckjaw
(23342,21155,1), -- Trope the Filth-Belcher
(23344,16314,1), -- Corlok the Vet
(23370,0,1), -- Dragonmaw Tower Controller
(23427,0,1), -- Illidari Lord Balthas
(23489,0,1); -- Drake Dealer Hurlunk
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Dragonmaw Peon Work Node
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=2,`gender`=2 WHERE `modelid`=21412; -- Nethermine Flayer
UPDATE `creature_model_info` SET `bounding_radius`=0.3361105,`combat_reach`=1.1,`gender`=0 WHERE `modelid`=20284; -- Nethermine Ravager
UPDATE `creature_model_info` SET `bounding_radius`=0.4687497,`combat_reach`=2.025,`gender`=0 WHERE `modelid`=20893; -- Dragonmaw Skybreaker
UPDATE `creature_model_info` SET `bounding_radius`=2.5,`combat_reach`=5,`gender`=0 WHERE `modelid`=20896; -- Dragonmaw Ascendant
UPDATE `creature_model_info` SET `bounding_radius`=0.5022,`combat_reach`=2.025,`gender`=0 WHERE `modelid`=21421; -- Murg "Oldie" Muckjaw
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=21424; -- Corlok the Vet
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=21426; -- Captain Skyshatter
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=0 WHERE `modelid`=21422; -- Trope the Filth-Belcher
UPDATE `creature_template` SET `exp`=1,`minlevel`=70,`maxlevel`=70,`speed_run`=1 WHERE `entry`=23308; -- Dragonmaw Peon Work Node
UPDATE `creature_template` SET `speed_walk`=2,`speed_run`=2 WHERE `entry`=22253; -- Dragonmaw Ascendant
-- More Netherwing Eggs
SET @GUID := 151889;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+2;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`) VALUES
(@GUID,185915,530,1,1,-4244.827,325.0044,134.4166,0.1396245,0,0,0.06975555,0.9975641,1600),
(@GUID+1,185915,530,1,1,-4221.473,370.1472,136.2317,2.111848,0,0,0.8703556,0.4924237,1600),
(@GUID+2,185915,530,1,1,-5103.112,707.9791,85.04285,0.2792516,0,0,0.1391726,0.9902682,1600);
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=64,`speed_run`=0.99206285714286 WHERE `entry`=32447; -- Zul'drak Sentinel
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=32832,`speed_run`=1.1428571428571 WHERE `entry`=32409; -- Crazed Indu'le Survivor
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=32832,`speed_walk`=2,`speed_run`=2 WHERE `entry`=32422; -- Grocklar
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=32832,`speed_walk`=2,`speed_run`=2 WHERE `entry`=32429; -- Seething Hate
UPDATE `creature_model_info` SET `bounding_radius`=0.248,`combat_reach`=4,`gender`=0 WHERE `modelid`=26663; -- Grocklar
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=18083; -- Seething Hate
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=2 WHERE `modelid`=28284; -- Crazed Indu'le Survivor
UPDATE `creature_template` SET `equipment_id`=@EQUIP,`speed_run`=1.3857142857143 WHERE `entry`=32417; -- Scarlet Highlord Daion

DELETE FROM `creature_template_addon` WHERE `entry` IN (32429,32422,32409,32417,32447);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32429,0,0,1,0, '52561 0'), -- Seething Hate
(32422,0,0,1,0, NULL), -- Grocklar
(32409,0,0,1,0, NULL), -- Crazed Indu'le Survivor
(32417,19296,0,1,0, NULL), -- Scarlet Highlord Daion
(32447,0,0,1,0, NULL); -- Zul'drak Sentinel

DELETE FROM `creature_equip_template` WHERE `entry`=@EQUIP;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES 
(@EQUIP,38175,12932,0);

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+86; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES

(@GUID,32357,571,1,1,0,0,3550.59,7169.73,220.75,0.130042,28800,0,0,13936,3231,0,2),
(@GUID+1,32357,571,1,1,0,0,3792.23,7329.76,196.23,5.38979,28800,0,0,13936,3231,0,2),
(@GUID+2,32357,571,1,1,0,0,3990.13,6574,180.599,2.84903,28800,0,0,13936,3231,0,2),
(@GUID+3,32357,571,1,1,0,0,3733.24,6779.39,156.379,2.8011,28800,0,0,13936,3231,0,2),

(@GUID+4,32358,571,1,1,0,782,3766.55,4309.43,12.6436,0.814532,28800,0,0,13936,0,0,2), -- Fixed Z

(@GUID+5,32361,571,1,1,0,0,3565.27,3635.4,36.3026,1.89603,28800,20,0,13936,0,0,1),
(@GUID+6,32361,571,1,1,0,0,3131.14,3647.86,4.40561,2.64266,28800,0,0,13936,0,0,2),
(@GUID+7,32361,571,1,1,0,0,3122.88,3925.21,25.9087,2.59032,28800,20,0,13936,0,0,1),

(@GUID+8,32409,571,1,1,0,0,3425.29,1811.42,81.2668,0.434945,28800,5,0,14910,0,0,1),

(@GUID+9,32417,571,1,1,0,0,4105.49,-1132.07,134.27,0.953492,28800,0,0,14910,0,0,2),
(@GUID+10,32417,571,1,1,0,0,4577.47,-602.83,155.108,3.43925,28800,0,0,14910,0,0,2),
(@GUID+11,32417,571,1,1,0,0,4739.51,-373.885,187.437,2.81958,28800,0,0,14910,0,0,2),
(@GUID+12,32417,571,1,1,0,0,4616.39,-411.872,155.531,2.32242,28800,0,0,14910,0,0,2),

(@GUID+13,32377,571,1,1,0,0,2402.76,-5545.49,289.63,6.28297,28800,0,0,13936,0,0,2),
(@GUID+14,32377,571,1,1,0,0,2286.36,-5080.37,254.684,0.376,28800,0,0,13936,0,0,2),
(@GUID+15,32377,571,1,1,0,0,2667.07,-4613.32,253.45,2.52328,28800,0,0,13936,0,0,2),

(@GUID+16,32386,571,1,1,0,0,1091.68,-5756.49,233.888,5.71161,28800,0,0,13936,0,0,2),
(@GUID+17,32386,571,1,1,0,0,988.678,-5798.41,252.204,5.48463,28800,15,0,13936,0,0,1),
(@GUID+18,32386,571,1,1,0,0,685.78,-5894.07,289.31,3.23013,28800,15,0,13936,0,0,1),
(@GUID+19,32386,571,1,1,0,0,698.198,-5916.6,291.038,2.11171,28800,0,0,13936,0,0,2),
(@GUID+20,32386,571,1,1,0,0,1537.69,-5810.95,272.362,3.87268,28800,0,0,13936,0,0,2),
(@GUID+21,32386,571,1,1,0,0,1219.76,-5551.19,203.268,4.46259,28800,0,0,13936,0,0,2),

(@GUID+22,32398,571,1,1,27950,0,827.638,-3283.51,12.2082,3.9619,28800,5,0,13936,0,0,1),
(@GUID+23,32398,571,1,1,0,0,534.88,-2934.28,-0.13,5.13,28800,5,0,13936,0,0,1),
(@GUID+24,32398,571,1,1,0,0,314.914,-3130,34.8139,3.91321,28800,5,0,13936,0,0,1),
(@GUID+25,32398,571,1,1,0,0,23.3933,-3343.96,7.06814,0.594844,28800,0,0,13936,0,0,2),
(@GUID+26,32398,571,1,1,0,0,110.217,-3455.56,10.9399,5.36934,28800,5,0,13936,0,0,1),

(@GUID+27,32400,571,1,1,0,0,4423.2,-191.606,86.97,2.2154,28800,0,0,39760,0,0,2),
(@GUID+28,32400,571,1,1,0,0,4257.03,-245.357,71.873,0.90693,28800,0,0,39760,0,0,2),
(@GUID+29,32400,571,1,1,0,0,4171.21,-107.972,66.5049,0.678376,28800,0,0,39760,0,0,2),
(@GUID+30,32400,571,1,1,0,0,4117.19,339.269,56.2234,4.64336,28800,0,0,39760,0,0,2),
(@GUID+31,32400,571,1,1,0,0,3757.18,-256.696,76.8022,1.93109,28800,0,0,39760,0,0,2),
(@GUID+32,32400,571,1,1,0,0,3831,362.401,34.2447,4.3449,28800,0,0,39760,0,0,2),
(@GUID+33,32400,571,1,1,0,0,3327.3,632.078,83.1728,5.52535,28800,0,0,39760,0,0,2),
(@GUID+34,32400,571,1,1,0,0,3424.75,-224.108,75.47,1.22373,28800,0,0,39760,0,0,2),

(@GUID+35,32422,571,1,1,0,0,3570.74,-1748.55,160.909,0.577843,28800,0,0,41128,0,0,2),
(@GUID+36,32422,571,1,1,0,0,3568.53,-2418.75,139.732,3.53036,28800,0,0,41128,0,0,2),
(@GUID+37,32422,571,1,1,0,0,3061.42,-1840.03,66.0206,6.06678,28800,0,0,41128,0,0,2),
(@GUID+38,32422,571,1,1,0,0,4028.69,-1717.33,200.062,4.76214,28800,0,0,41128,0,0,2),
(@GUID+39,32422,571,1,1,0,0,2969.77,-2260.25,65.7,1.53929,28800,0,0,41128,0,0,2),
(@GUID+40,32422,571,1,1,0,0,3588.57,-2184.77,137.255,0.374254,28800,0,0,41128,0,0,2),

(@GUID+41,32429,571,1,1,0,0,3913.28,-2804.43,176.136,1.75467,28800,0,0,14910,0,0,2),
(@GUID+42,32429,571,1,1,0,0,3601.19,-3275.54,222.069,4.60829,28800,0,0,14910,0,0,2),
(@GUID+43,32429,571,1,1,0,0,3972.31,-2710.12,165.749,6.28272,28800,0,0,14910,0,0,2),

(@GUID+44,32438,571,1,1,0,1660,4064.03,-4598.68,174.644,5.63537,28800,5,0,14910,0,0,1),
(@GUID+45,32438,571,1,1,0,1660,4263.49,-4476.45,189.827,5.73447,28800,0,0,14910,0,0,2),
(@GUID+46,32438,571,1,1,0,1660,4162.44,-4622,140.978,4.71489,28800,5,0,14910,0,0,1),
(@GUID+47,32438,571,1,1,0,1660,4341.29,-4776.17,52.0998,4.73701,28800,5,0,14910,0,0,1),
(@GUID+48,32438,571,1,1,0,1660,4435.31,-4528.65,115.486,4.76371,28800,5,0,14910,0,0,1),
(@GUID+49,32438,571,1,1,0,1660,4582.12,-4714.61,62.4486,4.75272,28800,5,0,14910,0,0,1),

(@GUID+50,32495,571,1,1,0,0,7514.08,3663.15,623.327,5.33787,3600,0,0,18900,5991,0,0),
(@GUID+51,32495,571,1,1,0,0,8360.11,3510.63,655.052,3.11519,3600,0,0,18900,5991,0,0),
(@GUID+52,32495,571,1,1,0,0,8459.92,3147.1,588.143,3.932,3600,0,0,18900,5991,0,0),
(@GUID+53,32495,571,1,1,0,0,6800.17,1774.63,569.475,4.94124,3600,0,0,18900,5991,0,0),

(@GUID+54,32501,571,1,1,0,0,6155.1,2377.94,510.346,5.46898,28800,5,0,18900,0,0,1),
(@GUID+55,32501,571,1,1,0,0,7711.4,1029.98,446.606,4.69297,28800,5,0,18900,0,0,1),
(@GUID+56,32501,571,1,1,0,0,6525.8,3309.78,665.388,5.66139,28800,5,0,18900,0,0,1),

(@GUID+57,32475,571,1,1,0,0,6711.42,-4186.12,456.852,5.50739,28800,20,0,16502,0,0,1),
(@GUID+58,32475,571,1,1,0,0,6704.23,-4205.16,458.033,4.71414,28800,20,0,16502,0,0,1),
(@GUID+59,32475,571,1,1,0,0,6554.22,-4523.84,450.781,2.6564,28800,20,0,16502,0,0,1),
(@GUID+60,32475,571,1,1,0,0,6704.23,-4205.16,458.033,4.71414,28800,20,0,16502,0,0,1),

(@GUID+61,32471,571,1,1,0,0,5115.49,-1652.65,234.728,2.96739,28800,0,0,15952,0,0,2),
(@GUID+62,32471,571,1,1,0,0,5326.75,-1479.26,238.009,3.02158,28800,0,0,15952,0,0,2),
(@GUID+63,32471,571,1,1,0,0,5596.75,-1742.88,239.19,0.406713,28800,0,0,15952,0,0,2),
(@GUID+64,32471,571,1,1,0,0,5314.94,-1939.21,238.942,0.458038,28800,0,0,15952,0,0,2),
(@GUID+65,32471,571,1,1,0,0,5791.11,-1302.72,234.538,4.79067,28800,10,0,15952,0,0,1),
(@GUID+66,32471,571,1,1,0,0,5327.54,-1702.84,238.882,4.63875,28800,10,0,15952,0,0,1),
(@GUID+67,32471,571,1,1,0,0,5133.37,-1853.51,245.385,4.72044,28800,10,0,15952,0,0,1),

(@GUID+68,32485,571,1,1,0,0,4865.04,4679.54,-69.2385,1.14987,28800,0,0,42540,0,0,2),
(@GUID+69,32485,571,1,1,0,0,6087.94,4603.13,-96.8083,2.44102,28800,0,0,42540,0,0,2),

(@GUID+70,32481,571,1,1,0,0,5368.74,4427.76,-133.397,0.206642,28800,20,0,15952,0,0,1),
(@GUID+71,32481,571,1,1,0,0,5803.02,4564.18,-135.413,2.00913,28800,20,0,15952,0,0,1),
(@GUID+72,32481,571,1,1,0,0,5286.53,4998.04,-134.7,5.46489,28800,20,0,15952,0,0,1),
(@GUID+73,32481,571,1,1,0,0,5591.7,5192.67,-133.378,0.631543,28800,20,0,15952,0,0,1),
(@GUID+74,32481,571,1,1,0,0,5777.08,5070.89,-136.107,3.63961,28800,20,0,15952,0,0,1),
(@GUID+75,32481,571,1,1,0,0,5762.37,5001.74,-127.39,3.13774,28800,20,0,15952,0,0,1),

(@GUID+76,32500,571,1,1,0,0,8392.22,-1189.11,927.468,1.73202,28800,20,0,50400,3994,0,1),
(@GUID+77,32500,571,1,1,0,0,7751.04,-1099.42,926.238,2.84729,28800,20,0,50400,3994,0,1),
(@GUID+78,32500,571,1,1,0,0,7290.77,-1119.28,938.286,0.26333,28800,20,0,50400,3994,0,1),
(@GUID+79,32500,571,1,1,0,0,7934.73,-3183.8,862.21,4.21701,28800,20,0,50400,3994,0,1),

(@GUID+80,32487,571,1,1,0,0,6726.491,2521.456,428.1825,0.130042,28800,0,0,1,0,0,2),
(@GUID+81,32487,571,1,1,0,0,7812.443,2103.041,380.3420,0.130042,28800,0,0,1,0,0,2),
(@GUID+82,32487,571,1,1,0,0,7609.677,1477.351,330.2054,0.130042,28800,0,0,1,0,0,2),
(@GUID+83,32487,571,1,1,0,0,7190.445,1270.757,302.0640,0.130042,28800,0,0,1,0,0,2),
(@GUID+84,32487,571,1,1,0,0,7049.174,1225.784,295.9547,0.130042,28800,0,0,1,0,0,2),

(@GUID+85,32447,571,1,1,0,0,5693.950,-2871.760,274.5770,0.130042,28800,0,0,1,0,0,2),
(@GUID+86,32447,571,1,1,0,0,4914.310,-1661.770,248.3090,0.130042,28800,0,0,1,0,0,2);

DELETE FROM `pool_template` WHERE `entry` BETWEEN 1086 AND 1106;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(1086,1, 'Old Crystalbark Rare Spawn (1 out 4)'),
(1087,1, 'Fumblub Gearwind Rare Spawn (1 out 1)'),
(1088,1, 'Icehorn Rare Spawn (1 out 3)'),
(1089,1, 'Crazed Indu le Survivor Rare Spawn (1 out 1)'),
(1090,1, 'Scarlet Highlord Daion Rare Spawn (1 out 4)'),
(1091,1, 'Perobas the Bloodthirster Rare Spawn (1 out 3)'),
(1092,1, 'Vigdis the War Maiden Rare Spawn (1 out 6)'),
(1093,1, 'King Pin Rare Spawn (1 out 5)'),
(1094,1, 'Tukemuth Rare Spawn (1 out 8)'),
(1095,1, 'Grocklar Rare Spawn (1 out 6)'),
(1096,1, 'Seething Hate Rare Spawn (1 out 3)'),
(1097,1, 'Syreian the Bonecarver Rare Spawn (1 out 6)'),
(1098,1, 'Hildana Deathstealer Rare Spawn (1 out 4)'),
(1099,1, 'High Thane Jorfus Rare Spawn (1 out 3)'),
(1100,1, 'Terror Spinner Rare Spawn (1 out 4)'),
(1101,1, 'Griegen Rare Spawn (1 out 7)'),
(1102,1, 'King Krush Rare Spawn (1 out 2)'),
(1103,1, 'Aotona Rare Spawn (1 out 6)'),
(1104,1, 'Dirkee Rare Spawn (1 out 4)'),
(1105,1, 'Putridus the Ancient Rare Spawn (1 out 5)'),
(1106,1, 'Zul Drak Sentinel Rare Spawn (1 out 2)');
DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 1086 AND 1106;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID+0,1086,0,  'Old Crystalbark - Spawnlocation 1'),
(@GUID+1,1086,0,  'Old Crystalbark - Spawnlocation 2'),
(@GUID+2,1086,0,  'Old Crystalbark - Spawnlocation 3'),
(@GUID+3,1086,0,  'Old Crystalbark - Spawnlocation 4'),
(@GUID+4,1087,100, 'Fumblub Gearwind - Spawnlocation 1'),
(@GUID+5,1088,0,  'Icehorn - Spawnlocation 1'),
(@GUID+6,1088,0,  'Icehorn Spawnlocation 2'),
(@GUID+7,1088,0,  'Icehorn Spawnlocation 3'),
(@GUID+8,1089,100, 'Crazed Indu le Survivor - Spawnlocation 1'),
(@GUID+9,1090,0,  'Scarlet Highlord Daion Spawnlocation 1'),
(@GUID+10,1090,0, 'Scarlet Highlord Daion Spawnlocation 2'),
(@GUID+11,1090,0, 'Scarlet Highlord Daion Spawnlocation 3'),
(@GUID+12,1090,0, 'Scarlet Highlord Daion Spawnlocation 4'),
(@GUID+13,1091,0, 'Perobas the Bloodthirster Spawnlocation 1'),
(@GUID+14,1091,0, 'Perobas the Bloodthirster Spawnlocation 2'),
(@GUID+15,1091,0, 'Perobas the Bloodthirster Spawnlocation 3'),
(@GUID+16,1092,0, 'Vigdis the War Maiden Spawnlocation 1'),
(@GUID+17,1092,0, 'Vigdis the War Maiden Spawnlocation 2'),
(@GUID+18,1092,0, 'Vigdis the War Maiden Spawnlocation 3'),
(@GUID+19,1092,0, 'Vigdis the War Maiden Spawnlocation 4'),
(@GUID+20,1092,0, 'Vigdis the War Maiden Spawnlocation 5'),
(@GUID+21,1092,0, 'Vigdis the War Maiden Spawnlocation 6'),
(@GUID+22,1093,0, 'King Pin Spawnlocation 1'),
(@GUID+23,1093,0, 'King Pin Spawnlocation 2'),
(@GUID+24,1093,0, 'King Pin Spawnlocation 3'),
(@GUID+25,1093,0, 'King Pin Spawnlocation 4'),
(@GUID+26,1093,0, 'King Pin Spawnlocation 5'),
(@GUID+27,1094,0, 'Tukemuth Spawnlocation 1'),
(@GUID+28,1094,0, 'Tukemuth Spawnlocation 2'),
(@GUID+29,1094,0, 'Tukemuth Spawnlocation 3'),
(@GUID+30,1094,0, 'Tukemuth Spawnlocation 4'),
(@GUID+31,1094,0, 'Tukemuth Spawnlocation 5'),
(@GUID+32,1094,0, 'Tukemuth Spawnlocation 6'),
(@GUID+33,1094,0, 'Tukemuth Spawnlocation 7'),
(@GUID+34,1094,0, 'Tukemuth Spawnlocation 8'),
(@GUID+35,1095,0, 'Grocklar Spawnlocation 1'),
(@GUID+36,1095,0, 'Grocklar Spawnlocation 2'),
(@GUID+37,1095,0, 'Grocklar Spawnlocation 3'),
(@GUID+38,1095,0, 'Grocklar Spawnlocation 4'),
(@GUID+39,1095,0, 'Grocklar Spawnlocation 5'),
(@GUID+40,1095,0, 'Grocklar Spawnlocation 6'),
(@GUID+41,1096,0, 'Seething Hate Spawnlocation 1'),
(@GUID+42,1096,0, 'Seething Hate Spawnlocation 2'),
(@GUID+43,1096,0, 'Seething Hate Spawnlocation 3'),
(@GUID+44,1097,0, 'Syreian the Bonecarver Spawnlocation 1'),
(@GUID+45,1097,0, 'Syreian the Bonecarver Spawnlocation 2'),
(@GUID+46,1097,0, 'Syreian the Bonecarver Spawnlocation 3'),
(@GUID+47,1097,0, 'Syreian the Bonecarver Spawnlocation 4'),
(@GUID+48,1097,0, 'Syreian the Bonecarver Spawnlocation 5'),
(@GUID+49,1097,0, 'Syreian the Bonecarver Spawnlocation 6'),
(@GUID+50,1098,0, 'Hildana Deathstealer Spawnlocation 1'),
(@GUID+51,1098,0, 'Hildana Deathstealer Spawnlocation 2'),
(@GUID+52,1098,0, 'Hildana Deathstealer Spawnlocation 3'),
(@GUID+53,1098,0, 'Hildana Deathstealer Spawnlocation 4'),
(@GUID+54,1099,0, 'High Thane Jorfus Spawnlocation 1'),
(@GUID+55,1099,0, 'High Thane Jorfus Spawnlocation 2'),
(@GUID+56,1099,0, 'High Thane Jorfus Spawnlocation 3'),
(@GUID+57,1100,0, 'Terror Spinner Spawnlocation 1'),
(@GUID+58,1100,0, 'Terror Spinner Spawnlocation 2'),
(@GUID+59,1100,0, 'Terror Spinner Spawnlocation 3'),
(@GUID+60,1100,0, 'Terror Spinner Spawnlocation 4'),
(@GUID+61,1101,0, 'Griegen Spawnlocation 1'),
(@GUID+62,1101,0, 'Griegen Spawnlocation 2'),
(@GUID+63,1101,0, 'Griegen Spawnlocation 3'),
(@GUID+64,1101,0, 'Griegen Spawnlocation 4'),
(@GUID+65,1101,0, 'Griegen Spawnlocation 5'),
(@GUID+66,1101,0, 'Griegen Spawnlocation 6'),
(@GUID+67,1101,0, 'Griegen Spawnlocation 7'),
(@GUID+68,1102,0, 'King Krush Spawnlocation 1'),
(@GUID+69,1102,0, 'King Krush Spawnlocation 2'),
(@GUID+70,1103,0, 'Aotona Spawnlocation 1'),
(@GUID+71,1103,0, 'Aotona Spawnlocation 2'),
(@GUID+72,1103,0, 'Aotona Spawnlocation 3'),
(@GUID+73,1103,0, 'Aotona Spawnlocation 4'),
(@GUID+74,1103,0, 'Aotona Spawnlocation 5'),
(@GUID+75,1103,0, 'Aotona Spawnlocation 6'),
(@GUID+76,1104,0, 'Dirkee Spawnlocation 1'),
(@GUID+77,1104,0, 'Dirkee Spawnlocation 2'),
(@GUID+78,1104,0, 'Dirkee Spawnlocation 3'),
(@GUID+79,1104,0, 'Dirkee Spawnlocation 4'),
(@GUID+80,1105,0, 'Putridus the Ancient Spawnlocation 1'),
(@GUID+81,1105,0, 'Putridus the Ancient Spawnlocation 2'),
(@GUID+82,1105,0, 'Putridus the Ancient Spawnlocation 3'),
(@GUID+83,1105,0, 'Putridus the Ancient Spawnlocation 4'),
(@GUID+84,1105,0, 'Putridus the Ancient Spawnlocation 5'),
(@GUID+85,1106,0, 'Zul Drak Sentinel Spawnlocation 1'),
(@GUID+86,1106,0, 'Zul Drak Sentinel Spawnlocation 2');

SET @ENTRY := 32487;
SET @SPELL1 := 61080; -- Putrid Punt
SET @SPELL2 := 41534; -- War Stomp
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,8000,8000,9000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Putridus the Ancient - Combat - Cast Putrid Punt'),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,12000,12000,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Putridus the Ancient - Combat - Cast War Stomp');
-- Pathing for Putridus the Ancient Entry: 32487
SET @PATH := @GUID+80 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+80;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+80,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,2,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,3,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,4,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,5,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,6,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,7,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,8,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,9,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,10,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,11,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,12,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,13,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,14,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,15,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,16,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,17,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,18,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,19,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,20,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,21,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,22,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,23,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,24,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,25,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,26,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,27,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,28,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,29,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,30,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,31,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,32,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,33,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,34,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,35,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,36,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,37,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,38,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,39,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,40,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,41,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,42,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,43,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,44,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,45,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,46,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,47,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,48,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,49,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,50,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,51,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,52,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,53,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,54,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,55,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,56,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,57,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,58,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,59,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,60,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,61,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,62,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,63,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,64,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,65,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,66,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,67,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,68,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,69,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,70,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,71,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,72,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,73,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,74,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,75,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,76,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,77,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,78,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,79,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,80,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,81,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,82,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,83,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,84,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,85,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,86,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,87,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,88,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,89,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,90,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,91,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,92,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,93,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,94,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,95,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,96,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,97,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,98,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,99,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,100,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,101,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,102,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,103,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,104,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,105,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,106,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,107,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,108,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,109,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,110,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,111,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,112,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,113,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,114,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,115,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,116,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,117,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,118,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,119,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,120,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,121,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,122,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,123,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,124,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,125,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,126,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,127,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,128,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,129,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,130,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,131,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,132,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,133,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,134,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,135,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,136,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,137,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,138,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,139,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,140,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,141,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,142,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,143,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,144,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,145,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,146,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,147,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,148,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,149,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,150,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,151,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,152,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,153,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,154,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,155,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,156,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,157,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,158,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,159,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,160,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,161,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,162,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,163,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,164,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,165,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,166,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,167,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,168,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,169,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,170,6726.491,2521.456,428.1825,0,0,0,100,0);

SET @PATH := @GUID+81 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+81;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+81,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,2,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,3,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,4,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,5,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,6,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,7,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,8,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,9,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,10,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,11,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,12,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,13,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,14,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,15,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,16,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,17,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,18,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,19,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,20,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,21,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,22,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,23,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,24,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,25,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,26,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,27,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,28,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,29,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,30,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,31,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,32,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,33,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,34,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,35,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,36,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,37,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,38,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,39,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,40,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,41,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,42,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,43,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,44,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,45,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,46,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,47,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,48,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,49,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,50,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,51,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,52,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,53,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,54,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,55,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,56,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,57,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,58,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,59,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,60,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,61,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,62,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,63,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,64,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,65,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,66,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,67,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,68,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,69,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,70,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,71,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,72,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,73,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,74,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,75,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,76,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,77,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,78,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,79,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,80,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,81,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,82,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,83,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,84,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,85,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,86,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,87,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,88,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,89,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,90,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,91,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,92,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,93,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,94,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,95,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,96,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,97,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,98,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,99,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,100,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,101,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,102,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,103,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,104,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,105,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,106,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,107,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,108,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,109,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,110,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,111,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,112,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,113,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,114,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,115,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,116,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,117,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,118,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,119,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,120,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,121,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,122,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,123,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,124,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,125,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,126,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,127,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,128,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,129,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,130,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,131,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,132,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,133,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,134,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,135,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,136,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,137,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,138,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,139,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,140,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,141,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,142,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,143,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,144,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,145,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,146,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,147,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,148,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,149,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,150,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,151,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,152,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,153,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,154,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,155,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,156,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,157,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,158,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,159,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,160,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,161,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,162,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,163,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,164,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,165,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,166,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,167,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,168,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,169,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,170,7812.443,2103.041,380.3420,0,0,0,100,0);

SET @PATH := @GUID+82 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+82;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+82,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,2,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,3,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,4,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,5,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,6,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,7,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,8,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,9,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,10,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,11,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,12,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,13,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,14,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,15,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,16,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,17,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,18,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,19,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,20,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,21,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,22,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,23,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,24,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,25,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,26,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,27,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,28,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,29,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,30,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,31,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,32,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,33,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,34,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,35,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,36,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,37,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,38,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,39,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,40,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,41,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,42,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,43,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,44,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,45,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,46,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,47,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,48,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,49,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,50,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,51,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,52,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,53,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,54,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,55,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,56,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,57,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,58,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,59,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,60,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,61,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,62,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,63,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,64,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,65,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,66,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,67,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,68,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,69,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,70,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,71,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,72,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,73,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,74,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,75,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,76,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,77,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,78,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,79,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,80,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,81,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,82,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,83,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,84,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,85,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,86,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,87,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,88,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,89,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,90,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,91,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,92,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,93,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,94,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,95,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,96,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,97,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,98,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,99,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,100,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,101,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,102,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,103,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,104,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,105,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,106,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,107,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,108,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,109,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,110,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,111,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,112,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,113,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,114,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,115,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,116,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,117,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,118,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,119,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,120,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,121,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,122,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,123,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,124,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,125,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,126,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,127,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,128,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,129,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,130,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,131,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,132,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,133,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,134,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,135,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,136,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,137,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,138,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,139,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,140,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,141,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,142,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,143,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,144,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,145,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,146,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,147,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,148,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,149,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,150,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,151,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,152,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,153,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,154,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,155,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,156,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,157,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,158,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,159,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,160,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,161,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,162,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,163,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,164,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,165,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,166,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,167,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,168,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,169,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,170,7609.677,1477.351,330.2054,0,0,0,100,0);

SET @PATH := @GUID+83 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+83;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+83,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,2,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,3,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,4,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,5,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,6,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,7,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,8,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,9,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,10,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,11,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,12,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,13,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,14,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,15,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,16,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,17,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,18,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,19,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,20,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,21,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,22,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,23,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,24,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,25,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,26,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,27,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,28,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,29,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,30,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,31,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,32,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,33,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,34,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,35,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,36,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,37,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,38,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,39,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,40,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,41,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,42,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,43,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,44,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,45,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,46,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,47,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,48,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,49,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,50,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,51,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,52,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,53,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,54,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,55,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,56,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,57,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,58,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,59,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,60,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,61,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,62,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,63,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,64,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,65,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,66,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,67,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,68,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,69,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,70,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,71,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,72,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,73,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,74,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,75,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,76,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,77,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,78,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,79,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,80,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,81,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,82,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,83,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,84,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,85,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,86,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,87,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,88,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,89,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,90,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,91,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,92,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,93,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,94,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,95,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,96,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,97,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,98,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,99,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,100,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,101,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,102,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,103,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,104,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,105,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,106,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,107,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,108,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,109,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,110,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,111,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,112,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,113,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,114,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,115,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,116,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,117,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,118,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,119,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,120,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,121,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,122,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,123,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,124,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,125,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,126,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,127,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,128,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,129,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,130,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,131,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,132,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,133,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,134,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,135,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,136,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,137,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,138,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,139,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,140,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,141,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,142,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,143,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,144,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,145,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,146,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,147,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,148,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,149,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,150,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,151,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,152,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,153,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,154,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,155,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,156,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,157,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,158,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,159,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,160,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,161,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,162,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,163,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,164,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,165,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,166,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,167,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,168,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,169,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,170,7190.445,1270.757,302.0640,0,0,0,100,0);

SET @PATH := @GUID+84 * 10;
DELETE FROM `creature_addon` WHERE `guid`=@GUID+84;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID+84,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,2,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,3,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,4,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,5,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,6,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,7,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,8,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,9,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,10,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,11,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,12,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,13,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,14,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,15,6671.106,1128.045,274.4435,0,0,0,100,0),
(@PATH,16,6693.807,1148.469,273.6163,0,0,0,100,0),
(@PATH,17,6708.991,1156.622,274.5040,0,0,0,100,0),
(@PATH,18,6734.180,1152.155,275.0406,0,0,0,100,0),
(@PATH,19,6757.009,1150.346,275.5406,0,0,0,100,0),
(@PATH,20,6778.632,1167.743,275.3220,0,0,0,100,0),
(@PATH,21,6810.069,1170.602,278.5624,0,0,0,100,0),
(@PATH,22,6845.187,1154.830,281.7770,0,0,0,100,0),
(@PATH,23,6882.745,1177.818,284.5468,0,0,0,100,0),
(@PATH,24,6914.853,1191.724,288.5059,0,0,0,100,0),
(@PATH,25,6945.642,1200.520,292.3016,0,0,0,100,0),
(@PATH,26,6968.840,1205.214,302.3910,0,0,0,100,0),
(@PATH,27,6974.230,1206.504,304.6984,0,0,0,100,0),
(@PATH,28,7005.839,1214.057,306.8951,0,0,0,100,0),
(@PATH,29,7038.954,1222.982,295.8718,0,0,0,100,0),
(@PATH,30,7049.174,1225.784,295.9547,0,0,0,100,0),
(@PATH,31,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,32,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,33,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,34,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,35,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,36,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,37,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,38,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,39,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,40,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,41,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,42,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,43,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,44,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,45,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,46,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,47,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,48,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,49,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,50,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,51,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,52,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,53,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,54,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,55,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,56,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,57,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,58,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,59,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,60,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,61,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,62,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,63,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,64,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,65,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,66,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,67,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,68,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,69,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,70,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,71,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,72,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,73,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,74,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,75,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,76,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,77,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,78,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,79,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,80,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,81,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,82,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,83,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,84,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,85,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,86,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,87,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,88,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,89,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,90,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,91,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,92,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,93,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,94,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,95,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,96,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,97,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,98,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,99,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,100,6682.528,2498.002,433.9948,0,0,0,100,0),
(@PATH,101,6726.491,2521.456,428.1825,0,0,0,100,0),
(@PATH,102,6763.606,2540.764,424.1843,0,0,0,100,0),
(@PATH,103,6798.884,2566.029,418.5891,0,0,0,100,0),
(@PATH,104,6840.742,2591.737,413.0497,0,0,0,100,0),
(@PATH,105,6881.453,2615.144,409.9131,0,0,0,100,0),
(@PATH,106,6918.779,2634.562,405.9561,0,0,0,100,0),
(@PATH,107,6958.574,2641.570,401.6977,0,0,0,100,0),
(@PATH,108,7005.859,2647.866,399.2826,0,0,0,100,0),
(@PATH,109,7046.561,2646.076,397.9875,0,0,0,100,0),
(@PATH,110,7080.877,2647.094,397.3363,0,0,0,100,0),
(@PATH,111,7124.366,2648.242,395.8636,0,0,0,100,0),
(@PATH,112,7161.439,2649.354,395.0137,0,0,0,100,0),
(@PATH,113,7199.069,2648.609,394.5688,0,0,0,100,0),
(@PATH,114,7239.180,2647.334,392.9237,0,0,0,100,0),
(@PATH,115,7285.470,2636.182,393.9926,0,0,0,100,0),
(@PATH,116,7315.738,2608.110,393.2762,0,0,0,100,0),
(@PATH,117,7348.643,2572.670,392.2311,0,0,0,100,0),
(@PATH,118,7370.756,2530.682,392.1492,0,0,0,100,0),
(@PATH,119,7395.200,2496.757,391.2005,0,0,0,100,0),
(@PATH,120,7424.339,2472.582,388.7454,0,0,0,100,0),
(@PATH,121,7456.768,2452.186,385.1945,0,0,0,100,0),
(@PATH,122,7497.301,2428.523,382.9902,0,0,0,100,0),
(@PATH,123,7538.836,2402.540,380.5944,0,0,0,100,0),
(@PATH,124,7581.293,2376.074,376.8400,0,0,0,100,0),
(@PATH,125,7618.725,2352.308,374.1796,0,0,0,100,0),
(@PATH,126,7653.262,2329.615,373.0400,0,0,0,100,0),
(@PATH,127,7687.885,2305.656,370.4056,0,0,0,100,0),
(@PATH,128,7726.067,2275.610,369.6468,0,0,0,100,0),
(@PATH,129,7757.738,2242.657,369.2574,0,0,0,100,0),
(@PATH,130,7780.571,2213.544,367.9858,0,0,0,100,0),
(@PATH,131,7798.583,2186.587,366.9403,0,0,0,100,0),
(@PATH,132,7811.335,2150.569,364.6897,0,0,0,100,0),
(@PATH,133,7812.443,2103.041,380.3420,0,0,0,100,0),
(@PATH,134,7812.340,2079.998,389.7163,0,0,0,100,0),
(@PATH,135,7812.245,2058.403,392.1172,0,0,0,100,0),
(@PATH,136,7812.190,2036.709,389.5194,0,0,0,100,0),
(@PATH,137,7812.143,2014.416,380.2727,0,0,0,100,0),
(@PATH,138,7811.477,1974.489,367.6566,0,0,0,100,0),
(@PATH,139,7811.252,1937.083,365.6089,0,0,0,100,0),
(@PATH,140,7810.860,1897.173,363.0266,0,0,0,100,0),
(@PATH,141,7785.744,1870.642,361.4379,0,0,0,100,0),
(@PATH,142,7743.309,1851.258,357.4115,0,0,0,100,0),
(@PATH,143,7699.728,1829.282,355.4451,0,0,0,100,0),
(@PATH,144,7696.018,1791.864,351.5138,0,0,0,100,0),
(@PATH,145,7702.002,1751.072,346.2082,0,0,0,100,0),
(@PATH,146,7723.843,1723.729,344.1997,0,0,0,100,0),
(@PATH,147,7727.404,1690.751,342.8039,0,0,0,100,0),
(@PATH,148,7711.238,1670.327,340.3039,0,0,0,100,0),
(@PATH,149,7689.874,1631.565,336.2794,0,0,0,100,0),
(@PATH,150,7668.053,1600.292,334.6544,0,0,0,100,0),
(@PATH,151,7645.275,1559.671,332.7607,0,0,0,100,0),
(@PATH,152,7632.163,1515.536,331.6975,0,0,0,100,0),
(@PATH,153,7609.677,1477.351,330.2054,0,0,0,100,0),
(@PATH,154,7579.112,1452.958,327.5829,0,0,0,100,0),
(@PATH,155,7539.097,1427.456,324.4498,0,0,0,100,0),
(@PATH,156,7519.051,1409.884,321.9337,0,0,0,100,0),
(@PATH,157,7501.126,1376.004,319.7974,0,0,0,100,0),
(@PATH,158,7460.677,1369.438,314.6037,0,0,0,100,0),
(@PATH,159,7419.581,1363.374,312.0828,0,0,0,100,0),
(@PATH,160,7389.044,1348.929,310.1828,0,0,0,100,0),
(@PATH,161,7347.691,1344.195,308.6195,0,0,0,100,0),
(@PATH,162,7314.380,1346.306,307.6338,0,0,0,100,0),
(@PATH,163,7281.290,1348.486,306.5570,0,0,0,100,0),
(@PATH,164,7259.728,1332.310,305.3224,0,0,0,100,0),
(@PATH,165,7226.770,1301.865,302.9928,0,0,0,100,0),
(@PATH,166,7190.445,1270.757,302.0640,0,0,0,100,0),
(@PATH,167,7159.991,1271.942,300.1463,0,0,0,100,0),
(@PATH,168,7118.611,1256.946,297.7034,0,0,0,100,0),
(@PATH,169,7077.323,1235.719,296.1696,0,0,0,100,0),
(@PATH,170,7049.174,1225.784,295.9547,0,0,0,100,0);


SET @NPC := @GUID+85;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5724.000,-2852.640,274.5060,0,0,0,100,0),
(@PATH,2,5755.550,-2823.590,274.5150,0,0,0,100,0),
(@PATH,3,5809.330,-2835.480,274.4960,0,0,0,100,0),
(@PATH,4,5829.910,-2805.140,274.4080,0,0,0,100,0),
(@PATH,5,5828.510,-2766.280,274.7190,0,0,0,100,0),
(@PATH,6,5828.290,-2755.410,276.5500,0,0,0,100,0),
(@PATH,7,5822.310,-2702.180,276.5840,0,0,0,100,0),
(@PATH,8,5794.060,-2684.310,276.5840,0,0,0,100,0),
(@PATH,9,5761.970,-2664.910,276.5840,0,0,0,100,0),
(@PATH,10,5744.330,-2663.150,280.7680,0,0,0,100,0),
(@PATH,11,5737.410,-2654.850,280.7680,0,0,0,100,0),
(@PATH,12,5737.570,-2632.250,292.4730,0,0,0,100,0),
(@PATH,13,5750.730,-2617.920,292.3230,0,0,0,100,0),
(@PATH,14,5773.040,-2617.450,292.4190,0,0,0,100,0),
(@PATH,15,5791.980,-2617.770,292.4190,0,0,0,100,0),
(@PATH,16,5818.440,-2617.850,292.4190,0,0,0,100,0),
(@PATH,17,5842.470,-2617.850,292.4190,0,0,0,100,0),
(@PATH,18,5869.620,-2618.230,292.4190,0,0,0,100,0),
(@PATH,19,5842.470,-2617.850,292.4190,0,0,0,100,0),
(@PATH,20,5818.440,-2617.850,292.4190,0,0,0,100,0),
(@PATH,21,5791.980,-2617.770,292.4190,0,0,0,100,0),
(@PATH,22,5773.040,-2617.450,292.4190,0,0,0,100,0),
(@PATH,23,5750.730,-2617.920,292.3230,0,0,0,100,0),
(@PATH,24,5727.260,-2618.850,292.4160,0,0,0,100,0),
(@PATH,25,5705.450,-2617.610,292.4120,0,0,0,100,0),
(@PATH,26,5683.230,-2617.440,292.4180,0,0,0,100,0),
(@PATH,27,5666.380,-2618.120,292.4710,0,0,0,100,0),
(@PATH,28,5644.480,-2618.200,292.4710,0,0,0,100,0),
(@PATH,29,5618.580,-2617.640,292.4990,0,0,0,100,0),
(@PATH,30,5597.510,-2617.550,292.4990,0,0,0,100,0),
(@PATH,31,5580.090,-2617.990,292.4990,0,0,0,100,0),
(@PATH,32,5566.360,-2617.760,292.4200,0,0,0,100,0),
(@PATH,33,5580.090,-2617.990,292.4990,0,0,0,100,0),
(@PATH,34,5597.510,-2617.550,292.4990,0,0,0,100,0),
(@PATH,35,5618.580,-2617.640,292.4990,0,0,0,100,0),
(@PATH,36,5644.480,-2618.200,292.4710,0,0,0,100,0),
(@PATH,37,5666.380,-2618.120,292.4710,0,0,0,100,0),
(@PATH,38,5683.230,-2617.440,292.4180,0,0,0,100,0),
(@PATH,39,5705.450,-2617.610,292.4120,0,0,0,100,0),
(@PATH,40,5727.260,-2618.850,292.4160,0,0,0,100,0),
(@PATH,41,5737.570,-2632.250,292.4730,0,0,0,100,0),
(@PATH,42,5737.410,-2654.850,280.7680,0,0,0,100,0),
(@PATH,43,5744.330,-2663.150,280.7680,0,0,0,100,0),
(@PATH,44,5761.970,-2664.910,276.5840,0,0,0,100,0),
(@PATH,45,5794.060,-2684.310,276.5840,0,0,0,100,0),
(@PATH,46,5822.310,-2702.180,276.5840,0,0,0,100,0),
(@PATH,47,5828.290,-2755.410,276.5500,0,0,0,100,0),
(@PATH,48,5828.510,-2766.280,274.7190,0,0,0,100,0),
(@PATH,49,5829.910,-2805.140,274.4080,0,0,0,100,0),
(@PATH,50,5809.330,-2835.480,274.4960,0,0,0,100,0),
(@PATH,51,5755.550,-2823.590,274.5150,0,0,0,100,0),
(@PATH,52,5724.000,-2852.640,274.5060,0,0,0,100,0),
(@PATH,53,5693.950,-2871.760,274.5770,0,0,0,100,0),
(@PATH,54,5664.210,-2905.730,274.3850,0,0,0,100,0),
(@PATH,55,5629.240,-2933.900,274.3790,0,0,0,100,0),
(@PATH,56,5601.860,-2960.070,274.3790,0,0,0,100,0),
(@PATH,57,5594.340,-2966.000,276.5940,0,0,0,100,0),
(@PATH,58,5559.140,-2960.480,276.5840,0,0,0,100,0),
(@PATH,59,5526.130,-2965.070,276.5840,0,0,0,100,0),
(@PATH,60,5507.190,-2996.900,276.5880,0,0,0,100,0),
(@PATH,61,5490.880,-3013.770,288.0960,0,0,0,100,0),
(@PATH,62,5465.120,-3043.530,288.7970,0,0,0,100,0),
(@PATH,63,5455.740,-3053.280,292.0040,0,0,0,100,0),
(@PATH,64,5438.300,-3072.640,292.4190,0,0,0,100,0),
(@PATH,65,5408.170,-3076.490,292.4190,0,0,0,100,0),
(@PATH,66,5389.960,-3057.200,292.4190,0,0,0,100,0),
(@PATH,67,5372.570,-3028.290,292.4190,0,0,0,100,0),
(@PATH,68,5359.020,-2999.280,292.4190,0,0,0,100,0),
(@PATH,69,5343.850,-2981.210,292.4190,0,0,0,100,0),
(@PATH,70,5316.590,-2957.750,292.4180,0,0,0,100,0),
(@PATH,71,5291.510,-2936.590,292.4180,0,0,0,100,0),
(@PATH,72,5269.860,-2920.950,292.4180,0,0,0,100,0),
(@PATH,73,5248.840,-2899.650,292.4180,0,0,0,100,0),
(@PATH,74,5228.780,-2879.540,292.4180,0,0,0,100,0),
(@PATH,75,5202.560,-2855.400,292.4200,0,0,0,100,0),
(@PATH,76,5194.670,-2837.020,292.4180,0,0,0,100,0),
(@PATH,77,5216.640,-2815.020,292.4180,0,0,0,100,0),
(@PATH,78,5246.490,-2789.880,292.4180,0,0,0,100,0),
(@PATH,79,5272.980,-2764.980,292.4180,0,0,0,100,0),
(@PATH,80,5297.260,-2742.340,292.4200,0,0,0,100,0),
(@PATH,81,5323.050,-2718.580,292.4170,0,0,0,100,0),
(@PATH,82,5354.000,-2692.930,292.4190,0,0,0,100,0),
(@PATH,83,5323.050,-2718.580,292.4170,0,0,0,100,0),
(@PATH,84,5297.260,-2742.340,292.4200,0,0,0,100,0),
(@PATH,85,5272.980,-2764.980,292.4180,0,0,0,100,0),
(@PATH,86,5246.490,-2789.880,292.4180,0,0,0,100,0),
(@PATH,87,5216.640,-2815.020,292.4180,0,0,0,100,0),
(@PATH,88,5194.670,-2837.020,292.4180,0,0,0,100,0),
(@PATH,89,5172.790,-2864.270,292.4190,0,0,0,100,0),
(@PATH,90,5154.700,-2887.120,292.4190,0,0,0,100,0),
(@PATH,91,5129.290,-2891.070,292.4190,0,0,0,100,0),
(@PATH,92,5107.440,-2912.540,292.4190,0,0,0,100,0),
(@PATH,93,5083.430,-2936.790,292.4190,0,0,0,100,0),
(@PATH,94,5062.290,-2957.040,292.0600,0,0,0,100,0),
(@PATH,95,5042.170,-2976.570,292.5840,0,0,0,100,0),
(@PATH,96,5013.840,-3004.280,292.4190,0,0,0,100,0),
(@PATH,97,4990.340,-3027.050,292.4190,0,0,0,100,0),
(@PATH,98,4963.340,-3053.410,292.4190,0,0,0,100,0),
(@PATH,99,4935.050,-3080.150,292.4190,0,0,0,100,0),
(@PATH,100,4912.420,-3101.800,292.4190,0,0,0,100,0),
(@PATH,101,4886.650,-3126.440,292.4190,0,0,0,100,0),
(@PATH,102,4862.060,-3149.930,292.4190,0,0,0,100,0),
(@PATH,103,4843.120,-3168.170,292.4190,0,0,0,100,0),
(@PATH,104,4862.060,-3149.930,292.4190,0,0,0,100,0),
(@PATH,105,4886.650,-3126.440,292.4190,0,0,0,100,0),
(@PATH,106,4912.420,-3101.800,292.4190,0,0,0,100,0),
(@PATH,107,4935.050,-3080.150,292.4190,0,0,0,100,0),
(@PATH,108,4963.340,-3053.410,292.4190,0,0,0,100,0),
(@PATH,109,4990.340,-3027.050,292.4190,0,0,0,100,0),
(@PATH,110,5013.840,-3004.280,292.4190,0,0,0,100,0),
(@PATH,111,5042.170,-2976.570,292.5840,0,0,0,100,0),
(@PATH,112,5062.290,-2957.040,292.0600,0,0,0,100,0),
(@PATH,113,5083.430,-2936.790,292.4190,0,0,0,100,0),
(@PATH,114,5107.440,-2912.540,292.4190,0,0,0,100,0),
(@PATH,115,5129.290,-2891.070,292.4190,0,0,0,100,0),
(@PATH,116,5154.700,-2887.120,292.4190,0,0,0,100,0),
(@PATH,117,5172.790,-2864.270,292.4190,0,0,0,100,0),
(@PATH,118,5202.560,-2855.400,292.4200,0,0,0,100,0),
(@PATH,119,5228.780,-2879.540,292.4180,0,0,0,100,0),
(@PATH,120,5248.840,-2899.650,292.4180,0,0,0,100,0),
(@PATH,121,5269.860,-2920.950,292.4180,0,0,0,100,0),
(@PATH,122,5291.510,-2936.590,292.4180,0,0,0,100,0),
(@PATH,123,5316.590,-2957.750,292.4180,0,0,0,100,0),
(@PATH,124,5343.850,-2981.210,292.4190,0,0,0,100,0),
(@PATH,125,5359.020,-2999.280,292.4190,0,0,0,100,0),
(@PATH,126,5372.570,-3028.290,292.4190,0,0,0,100,0),
(@PATH,127,5389.960,-3057.200,292.4190,0,0,0,100,0),
(@PATH,128,5408.170,-3076.490,292.4190,0,0,0,100,0),
(@PATH,129,5438.300,-3072.640,292.4190,0,0,0,100,0),
(@PATH,130,5455.740,-3053.280,292.0040,0,0,0,100,0),
(@PATH,131,5465.120,-3043.530,288.7970,0,0,0,100,0),
(@PATH,132,5490.880,-3013.770,288.0960,0,0,0,100,0),
(@PATH,133,5507.190,-2996.900,276.5880,0,0,0,100,0),
(@PATH,134,5526.130,-2965.070,276.5840,0,0,0,100,0),
(@PATH,135,5559.140,-2960.480,276.5840,0,0,0,100,0),
(@PATH,136,5594.340,-2966.000,276.5940,0,0,0,100,0),
(@PATH,137,5601.860,-2960.070,274.3790,0,0,0,100,0),
(@PATH,138,5629.240,-2933.900,274.3790,0,0,0,100,0),
(@PATH,139,5664.210,-2905.730,274.3850,0,0,0,100,0),
(@PATH,140,5693.950,-2871.760,274.5770,0,0,0,100,0);

SET @NPC := @GUID+86;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4914.130,-1622.030,248.3090,0,0,0,100,0),
(@PATH,2,4912.460,-1580.230,248.3090,0,0,0,100,0),
(@PATH,3,4906.730,-1561.730,248.3680,0,0,0,100,0),
(@PATH,4,4883.310,-1539.930,248.7920,0,0,0,100,0),
(@PATH,5,4851.130,-1514.290,249.1620,0,0,0,100,0),
(@PATH,6,4883.310,-1539.930,248.7920,0,0,0,100,0),
(@PATH,7,4906.730,-1561.730,248.3680,0,0,0,100,0),
(@PATH,8,4912.460,-1580.230,248.3090,0,0,0,100,0),
(@PATH,9,4914.130,-1622.030,248.3090,0,0,0,100,0),
(@PATH,10,4914.310,-1661.770,248.3090,0,0,0,100,0),
(@PATH,11,4913.710,-1698.930,248.3080,0,0,0,100,0),
(@PATH,12,4914.110,-1730.130,248.3070,0,0,0,100,0),
(@PATH,13,4914.250,-1760.870,248.3070,0,0,0,100,0),
(@PATH,14,4914.320,-1804.820,248.3090,0,0,0,100,0),
(@PATH,15,4913.730,-1841.620,248.3090,0,0,0,100,0),
(@PATH,16,4912.850,-1875.260,248.3090,0,0,0,100,0),
(@PATH,17,4913.100,-1909.730,248.3070,0,0,0,100,0),
(@PATH,18,4913.340,-1956.600,248.3000,0,0,0,100,0),
(@PATH,19,4913.430,-1996.570,248.3090,0,0,0,100,0),
(@PATH,20,4913.280,-2029.650,248.3080,0,0,0,100,0),
(@PATH,21,4931.000,-2048.890,248.3080,0,0,0,100,0),
(@PATH,22,4966.010,-2050.800,248.3080,0,0,0,100,0),
(@PATH,23,4997.010,-2052.770,248.3080,0,0,0,100,0),
(@PATH,24,5028.930,-2055.350,248.1920,0,0,0,100,0),
(@PATH,25,5062.110,-2058.030,248.2960,0,0,0,100,0),
(@PATH,26,5083.820,-2050.360,248.1850,0,0,0,100,0),
(@PATH,27,5111.150,-2049.930,248.1180,0,0,0,100,0),
(@PATH,28,5148.310,-2050.290,248.2960,0,0,0,100,0),
(@PATH,29,5177.760,-2049.490,248.2960,0,0,0,100,0),
(@PATH,30,5211.760,-2048.980,248.2970,0,0,0,100,0),
(@PATH,31,5177.760,-2049.490,248.2960,0,0,0,100,0),
(@PATH,32,5148.310,-2050.290,248.2960,0,0,0,100,0),
(@PATH,33,5111.150,-2049.930,248.1180,0,0,0,100,0),
(@PATH,34,5083.820,-2050.360,248.1850,0,0,0,100,0),
(@PATH,35,5062.110,-2058.030,248.2960,0,0,0,100,0),
(@PATH,36,5028.930,-2055.350,248.1920,0,0,0,100,0),
(@PATH,37,4997.010,-2052.770,248.3080,0,0,0,100,0),
(@PATH,38,4966.010,-2050.800,248.3080,0,0,0,100,0),
(@PATH,39,4931.000,-2048.890,248.3080,0,0,0,100,0),
(@PATH,40,4913.280,-2029.650,248.3080,0,0,0,100,0),
(@PATH,41,4913.430,-1996.570,248.3090,0,0,0,100,0),
(@PATH,42,4913.340,-1956.600,248.3000,0,0,0,100,0),
(@PATH,43,4913.100,-1909.730,248.3070,0,0,0,100,0),
(@PATH,44,4912.850,-1875.260,248.3090,0,0,0,100,0),
(@PATH,45,4913.730,-1841.620,248.3090,0,0,0,100,0),
(@PATH,46,4914.320,-1804.820,248.3090,0,0,0,100,0),
(@PATH,47,4914.250,-1760.870,248.3070,0,0,0,100,0),
(@PATH,48,4914.110,-1730.130,248.3070,0,0,0,100,0),
(@PATH,49,4913.710,-1698.930,248.3080,0,0,0,100,0),
(@PATH,50,4914.310,-1661.770,248.3090,0,0,0,100,0);

 
SET @NPC := @GUID+4;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4107.777,`position_y`=4981.302,`position_z`=4.601125 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3996.668,5027.57,4.601125,0,0,0,100,0),
(@PATH,2,3908.403,5132.647,18.65668,0,0,0,100,0),
(@PATH,3,3762.461,5061.485,18.65668,0,0,0,100,0),
(@PATH,4,3706.78,4998.379,18.65668,0,0,0,100,0),
(@PATH,5,3626.849,4981.311,18.65668,0,0,0,100,0),
(@PATH,6,3553.993,4971.021,18.65668,0,0,0,100,0),
(@PATH,7,3562.81,4855.884,18.65668,0,0,0,100,0),
(@PATH,8,3482.353,4704.925,8.01779,0,0,0,100,0),
(@PATH,9,3476.721,4495.351,7.07335,0,0,0,100,0),
(@PATH,10,3651.377,4535.771,7.07335,0,0,0,100,0),
(@PATH,11,3797.042,4659.164,4.21224,0,0,0,100,0),
(@PATH,12,3959.966,4664.088,5.490018,0,0,0,100,0),
(@PATH,13,4050.999,4706.122,13.51779,0,0,0,100,0),
(@PATH,14,4141.185,4783.229,13.99001,0,0,0,100,0),
(@PATH,15,4250.018,4783.799,13.8789,0,0,0,100,0),
(@PATH,16,4252.546,4879.61,7.906681,0,0,0,100,0),
(@PATH,17,4107.777,4981.302,4.601125,0,0,0,100,0);



SET @GUID := 250006;

UPDATE `creature_template` SET `faction_a`=14, `faction_h`=14 WHERE entry IN (32630);
DELETE FROM `creature` WHERE `guid`=@GUID; 
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES

(@GUID,32630,571,1,1,0,0,7090.247,-1566.583,958.0051,0.7234184,28800,0,0,1,0,0,2);

-- Pathing for Vyragosa Entry: 32630
SET @NPC := @GUID;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=6913.308,`position_y`=-1725.261,`position_z`=954.7917 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7025.494,-1624.87,957.3694,0,0,0,100,0),
(@PATH,2,7167.578,-1501.694,962.5693,0,0,0,100,0),
(@PATH,3,7440.402,-1295.861,997.2911,0,0,0,100,0),
(@PATH,4,7210.958,-1046.892,1006.18,0,0,0,100,0),
(@PATH,5,6998.465,-1076.847,1024.819,0,0,0,100,0),
(@PATH,6,6874.249,-1097.382,927.736,0,0,0,100,0),
(@PATH,7,6614.792,-875.7547,812.7645,0,0,0,100,0),
(@PATH,8,6563.275,-811.7673,749.8757,0,0,0,100,0),
(@PATH,9,6299.502,-797.577,529.1257,0,0,0,100,0),
(@PATH,10,6194.549,-1013.144,501.5424,0,0,0,100,0),
(@PATH,11,6319.254,-1251.661,468.6258,0,0,0,100,0),
(@PATH,12,6309.161,-1537.857,615.0423,0,0,0,100,0),
(@PATH,13,6748.211,-1664.307,919.3118,0,0,0,100,0),
(@PATH,14,6913.308,-1725.261,954.7917,0,0,0,100,0);

UPDATE `pool_template` SET `max_limit`=15 WHERE `entry`=896; -- Wintergrasp from 20 to 15
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=897; -- Icecrown from 20 to 35
UPDATE `pool_template` SET `max_limit`=10 WHERE `entry`=2001; -- Alterac Mountains (outer section) from 4 to 10
UPDATE `pool_template` SET `max_limit`=45 WHERE `entry`=2002; -- Arathi Highlands (Main Section) from 10 to 45
UPDATE `pool_template` SET `max_limit`=25 WHERE `entry`=2004; -- Badlands from 9 to 25
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=2005; -- Blasted Lands from 8 to 20
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=2007; -- Burning Steppes from 10 to 40
UPDATE `pool_template` SET `max_limit`=15 WHERE `entry`=2008; -- Dun Morogh from 12 to 15
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=2009; -- Duskwood from 16 to 20
UPDATE `pool_template` SET `max_limit`=10 WHERE `entry`=2012; -- Eversong Woods from 6 to 10
UPDATE `pool_template` SET `max_limit`=10 WHERE `entry`=2014; -- Hillsbrad Foothills (Main Section) from 5 to 10
UPDATE `pool_template` SET `max_limit`= 3 WHERE `entry`=2016; -- Hillsbrad Foothills (Azurelode Mine) - Special Mineral GOs ONLY from 4 to 3
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=2018; -- Loch Modan from 9 to 20
UPDATE `creature_template` SET `equipment_id`=682 WHERE `entry`=32417; -- Scarlet Highlord Daion

DELETE FROM `creature_equip_template` WHERE `entry`=2433;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(2433,19903,13319,0);
UPDATE `creature` SET `spawnMask`=`spawnMask`|2|1 WHERE `guid` BETWEEN 48304 AND 48304+6 AND `id`=33233;

UPDATE `game_event` SET `start_time`= '2008-01-02 21:00:00' WHERE `eventEntry`=25;
UPDATE `version` SET `db_version`='TDB 335.11.39' LIMIT 1;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13671,13625,13670,13669,13666);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13676,13673,13674,13675,13677);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES

(19,0,13671,0,8,13835,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13671,0,8,13835,0,0,0, '', NULL),
(19,0,13671,0,8,13837,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13671,0,8,13837,0,0,0, '', NULL),
(19,0,13671,0,8,13828,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13671,0,8,13828,0,0,0, '', NULL),
(19,0,13625,0,8,13835,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13625,0,8,13835,0,0,0, '', NULL),
(19,0,13625,0,8,13837,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13625,0,8,13837,0,0,0, '', NULL),
(19,0,13625,0,8,13828,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13625,0,8,13828,0,0,0, '', NULL),
(19,0,13670,0,8,13835,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13670,0,8,13835,0,0,0, '', NULL),
(19,0,13670,0,8,13837,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13670,0,8,13837,0,0,0, '', NULL),
(19,0,13670,0,8,13828,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13670,0,8,13828,0,0,0, '', NULL),
(19,0,13669,0,8,13835,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13669,0,8,13835,0,0,0, '', NULL),
(19,0,13669,0,8,13837,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13669,0,8,13837,0,0,0, '', NULL),
(19,0,13669,0,8,13828,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13669,0,8,13828,0,0,0, '', NULL),
(19,0,13666,0,8,13835,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13666,0,8,13835,0,0,0, '', NULL),
(19,0,13666,0,8,13837,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13666,0,8,13837,0,0,0, '', NULL),
(19,0,13666,0,8,13828,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13666,0,8,13828,0,0,0, '', NULL),

(19,0,13676,0,8,13838,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13676,0,8,13838,0,0,0, '', NULL),
(19,0,13676,0,8,13839,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13676,0,8,13839,0,0,0, '', NULL),
(19,0,13676,0,8,13829,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13676,0,8,13829,0,0,0, '', NULL),
(19,0,13677,0,8,13838,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13677,0,8,13838,0,0,0, '', NULL),
(19,0,13677,0,8,13839,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13677,0,8,13839,0,0,0, '', NULL),
(19,0,13677,0,8,13829,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13677,0,8,13829,0,0,0, '', NULL),
(19,0,13675,0,8,13838,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13675,0,8,13838,0,0,0, '', NULL),
(19,0,13675,0,8,13839,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13675,0,8,13839,0,0,0, '', NULL),
(19,0,13675,0,8,13829,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13675,0,8,13829,0,0,0, '', NULL),
(19,0,13674,0,8,13838,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13674,0,8,13838,0,0,0, '', NULL),
(19,0,13674,0,8,13839,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13674,0,8,13839,0,0,0, '', NULL),
(19,0,13674,0,8,13829,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13674,0,8,13829,0,0,0, '', NULL),
(19,0,13673,0,8,13838,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13673,0,8,13838,0,0,0, '', NULL),
(19,0,13673,0,8,13839,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13673,0,8,13839,0,0,0, '', NULL),
(19,0,13673,0,8,13829,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13673,0,8,13829,0,0,0, '', NULL);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=100,`mincountOrRef`=5,`maxcount`=5 WHERE `entry`=41426; -- Magically Wrapped Gift

DELETE FROM `creature_template_addon` WHERE `entry` IN (15214,25171,30281,30298,30342,30343,31898,31899,32498,33222,33223,33225,33229);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(15214,0,0,1,0, NULL), -- Invisible Stalker
(25171,0,0,1,0, NULL), -- Invisible Stalker (Scale x0.5)
(30281,0,1,1,0, NULL), -- Silver Covenant Hippogryph
(30298,0,0,1,0, NULL), -- Invisible Stalker (Float, Uninteractible, LargeAOI)
(30342,0,0,1,0, NULL), -- Orgrim's Hammer
(30343,0,0,1,0, NULL), -- The Skybreaker
(31898,0,0,1,0, NULL), -- Asric
(31899,0,0,1,0, NULL), -- Jadaar
(32498,0,0,1,0, '51583 0'), -- Glacier Penguin; Aura: [DND] Creature Random Size (0 - 50)
(33222,0,0,1,0, '5301 0'), -- Sir Marcus Barlowe; Aura: Defensive State (DND)
(33223,0,0,1,0, '5301 0'), -- Captain Joseph Holley Aura: Defensive State (DND)
(33225,0,0,1,0, '5301 0 62594 0'), -- Marshal Jacob Alerius Aura: Defensive State (DND), Stormwind Champion's Pennant
(33229,0,0,1,0, '7056 0'); -- Melee Target

UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=17213; -- Broom
UPDATE `creature_model_info` SET `bounding_radius`=0.2263,`combat_reach`=0.73,`gender`=2 WHERE `modelid`=25391; -- Glacier Penguin


UPDATE `creature_template` SET `speed_run`=0.85714 WHERE `entry`=17213; -- Broom
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25171; -- Invisible Stalker (Scale x0.5) (move to new file)
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=30281; -- Silver Covenant Hippogryph
UPDATE `creature_template` SET `minlevel`=80,`exp`=1 WHERE `entry`=31898; -- Asric
UPDATE `creature_template` SET `minlevel`=80,`exp`=1 WHERE `entry`=31899; -- Jadaar
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=32498; -- Glacier Penguin
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33222; -- Sir Marcus Barlowe
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33223; -- Captain Joseph Holley
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33225; -- Marshal Jacob Alerius
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|131072,`dynamicflags`=132,`speed_walk`=1,`speed_run`=1,`flags_extra`=`flags_extra`|262144 WHERE `entry`=33229; -- Melee Target


UPDATE  `creature` SET `position_x`= 8530.686,`position_y`=647.2205,`position_z`=558.7308,`orientation`=1.623156 WHERE `guid` =202363; -- Invisible Stalker
DELETE FROM `creature` WHERE `guid` IN (110531,110391); -- wrong Asric & Jadaar spawns in Dalaran Sewers

SET @CGUID = 209019;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+7 AND `id`=25171;
DELETE FROM `creature` WHERE `guid`=@CGUID+8 AND `id`=30298;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@CGUID+0,25171,571,1,1,0,0,8363.315,783.223938,550.2727,3.33357882,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+1,25171,571,1,1,0,0,8366.177,766.661438,551.2031,1.83259571,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+2,25171,571,1,1,0,0,8366.972,896.803833,552.576355,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+3,25171,571,1,1,0,0,8370.458,779.0816,550.0816,3.33357882,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+4,25171,571,1,1,0,0,8371.508,770.821167,550.436157,2.72271371,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+5,25171,571,1,1,0,0,8375.15,908.0208,549.7291,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+6,25171,571,1,1,0,0,8388.508,888.4358,548.0348,2.443461,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+7,25171,571,1,1,0,0,8393.317,894.256958,546.748,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+8,30298,571,1,1,0,0,8440.007,793.1233,585.525,0,120,0,0,1,0,0,0); -- Invisible Stalker (Float, Uninteractible, LargeAOI)


DELETE FROM `smart_scripts` WHERE `entryorguid`=25171 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25171,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler (not repeteable)'),
(25171,0,1,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl (not repeteable)');
UPDATE `creature_template` SET `ScriptName` ='' WHERE `entry`=35473; -- Argent Tournament Post
SET @Event = 62;
SET @GUID = 209028;

UPDATE `game_event` SET `start_time`='2011-01-04 14:00:00',`description`='Fishing Extravaganza Fishing Pools' WHERE `eventEntry`=15; -- Fishing Extravaganza
UPDATE `game_event` SET `start_time`='2011-01-03 14:00:00',`length`=60*(24+3) WHERE `eventEntry`=14; -- Fishing Extravaganza Announce
DELETE FROM `game_event` WHERE `eventEntry`=@Event;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event, '2011-01-04 14:00:00', '2020-12-31 05:00:00',10080,3*60,0, 'Fishing Extravaganza Turn-ins',0);

UPDATE `game_event_creature` SET `eventEntry`=@Event WHERE `guid` IN (54688,54687,203521);
DELETE FROM `game_event_creature` WHERE `guid`=@GUID;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(14,@GUID);

DELETE FROM `creature` WHERE `id`=15119;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID,15119,0,1,1,0,0,-4964.69,-936.287,501.743,5.44543,300,0,0,1,0,0,0,0,0,0);
UPDATE `game_event` SET `start_time`='2011-01-01 14:00:00' WHERE `eventEntry`=14; -- Fishing Extravaganza Announce
UPDATE `game_event` SET `start_time`='2011-01-02 14:00:00' WHERE `eventEntry`=15; -- Fishing Extravaganza Pools
UPDATE `game_event` SET `start_time`='2011-01-02 14:00:00' WHERE `eventEntry`=62; -- Fishing Extravaganza Turn-ins
SET @Event = 63;
SET @GUID = 209029;


UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|768,`equipment_id`=589 WHERE `entry`=38294; -- Elder Clearwater
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=2 WHERE `modelid`=23657; -- Elder Clearwater
DELETE FROM `creature_template_addon` WHERE `entry`=38294;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(38294,0,0,1,0, NULL);

DELETE FROM `creature` WHERE `id`=38294;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@GUID,38294,571,1,1,0,0,5699.039,617.319458,646.797363,0.8552113,120,0,0,1,0,0,0);

DELETE FROM `game_event` WHERE `eventEntry` IN (@Event,@Event+1);
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event+0, '2011-01-03 13:00:00', '2020-12-31 05:00:00',10080,3*60,0, 'Kalu''ak Fishing Derby Turn-ins',0),
(@Event+1, '2011-01-03 14:00:00', '2020-12-31 05:00:00',10080,1*60,0, 'Kalu''ak Fishing Derby Fishing Pools',0); -- to be used with conditions

DELETE FROM `game_event_creature` WHERE `guid`=@GUID;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@Event,@GUID);


UPDATE `quest_template` SET `RequestItemsText`='I''m afraid we''ve already had a winner for today, young $N. However, if you bring a shark, I''ll see that it''s released back into the waters, and I might just have a little something for you...',
`OfferRewardText`='Well, it''s nice that you tried $R. I don''t want you to think your efforts were wasted, so I''ve got something for you.' WHERE `entry`=24806; -- Better Luck Next Time
UPDATE `quest_template` SET `RequestItemsText`='The Kalu''ak have a long tradition of honing our fishing skills by putting them to the the test every week.$B$BThe first person to catch and bring a blacktip shark to me will be rewarded handsomely, and be known as the greatest fisherman of the north... for a couple days at least.$B$BThe blacktip shark''s favorite food is the pygmy suckerfish. Try fishing for the blacktip wherever you would normally catch the suckerfish.',
`OfferRewardText`='Don''t just stand there! Give me the shark and I''ll declare you the winner!' WHERE `entry` =24803; -- Kalu'ak Fishing Derby
SET @GUID = 209030; -- Need 2 - creature.guid
SET @BotH = 35607; -- Reginald Arcfire
SET @BotA = 35594; -- Brassbolt Mechawrench

UPDATE `creature_template` SET `npcflag`=`npcflag`|1|2097152,`speed_run`=0.99206,`flags_extra`=`flags_extra`|2 WHERE `entry`=@BotA; -- Brassbolt Mechawrench
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|1|2097152,`speed_run`=0.99206 WHERE `entry`=@BotH; -- Reginald Arcfire

UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=28282;

DELETE FROM `creature_addon` WHERE `guid`=85057; -- old spawn
DELETE FROM `creature_template_addon` WHERE `entry` IN (@BotH,@BotA);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@BotH,0,65536,1,0, '60191 0'), -- Reginald Arcfire
(@BotA,0,65536,1,0, '60190 0'); -- Brassbolt Mechawrench

DELETE FROM `creature` WHERE `id` IN (@BotH,@BotA);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`) VALUES
(@GUID+0,@BotH,571,1,1,5927.63500,731.5764,643.253052,4.694936,120),
(@GUID+1,@BotA,571,1,1,5927.62939,731.5903,643.253052,4.764749,120);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=10656;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(10656,0,6,NULL,13,2097152,0,0,0,0,0,NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10656;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(15,10656,0,7,202,350, 'Steam-Powered Auctioneer - Engineering 350');

DELETE FROM `spell_area` WHERE `spell` IN (60197,60194);
INSERT INTO `spell_area` (`spell`,`area`,`racemask`,`gender`,`autocast`) VALUES
(60197,4395,690,2,1), -- Reginald Arcfire
(60194,4395,1101,2,1); -- Brassbolt Mechawrench
-- Scripting cleanup
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry` IN (29154,28961,28965);
UPDATE `creature_template` SET `AIName`= '' WHERE `entry` IN (23069,23259,23336,33229,33243,33272);


SET @ENTRY := 225;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-10617.34,`position_y`=-1153.902,`position_z`=27.11271 WHERE `guid`=4086;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - ONESHOT_POINT'),
(@ENTRY,0,3,0,40,0,100,0,6,@ENTRY,0,0,54,50000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,40,0,100,0,10,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - pause path'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - STATE_WORK_MINING'),
(@ENTRY,0,6,0,56,0,100,0,10,@ENTRY,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - waypoint 10 resumed - STATE_NONE');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-10616.74,-1150.729,28.03606, 'Gavin Gnarltree'),
(@ENTRY,2,-10609.4,-1154.94,28.2175, 'Gavin Gnarltree'),
(@ENTRY,3,-10605.3,-1157.31,30.007, 'Gavin Gnarltree'),
(@ENTRY,4,-10600.3,-1159.58,30.0602, 'Gavin Gnarltree'),
(@ENTRY,5,-10596.1,-1156.43,30.0602, 'Gavin Gnarltree'),
(@ENTRY,6,-10596.89,-1154.147,30.05965, 'Gavin Gnarltree'),
(@ENTRY,7,-10601.7,-1159.03,30.0602, 'Gavin Gnarltree'),
(@ENTRY,8,-10606,-1156.86,29.9963, 'Gavin Gnarltree'),
(@ENTRY,9,-10609.6,-1155.18,28.2269, 'Gavin Gnarltree'),
(@ENTRY,10,-10617.34,-1153.902,27.11271, 'Gavin Gnarltree');


SET @ENTRY := 33589;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8489.46,`position_y`=964.667,`position_z`=547.293 WHERE `guid`=75904;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 1 - run script'),
(@ENTRY,0,2,3,40,0,100,0,4,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 4 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.193953, 'Joseph Wilson - Reach wp 4 - turn to'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,2,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - cast'),
(@ENTRY*100,9,3,0,0,0,100,0,10000,10000,0,0,66,0,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,4,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - cast');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8492.984,961.6198,547.2927, 'Joseph Wilson'),
(@ENTRY,2,8489.46,964.667,547.293, 'Joseph Wilson'),
(@ENTRY,3,8489.138,966.7257,547.2927, 'Joseph Wilson'),
(@ENTRY,4,8489.907,967.6441,547.2939, 'Joseph Wilson'),
(@ENTRY,5,8489.138,966.7257,547.2927, 'Joseph Wilson'),
(@ENTRY,6,8489.46,964.667,547.293, 'Joseph Wilson');


SET @ENTRY := 33854;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8480.21,`position_y`=937.883,`position_z`=547.293 WHERE `guid`=76735;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.01942, 'Thomas Partridge - Reach wp 1 - turn to'),
(@ENTRY,0,3,0,40,0,100,0,5,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 5 - run script'),
(@ENTRY,0,4,0,40,0,100,0,9,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 9 - run script'),
(@ENTRY,0,5,0,40,0,100,0,13,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 13 - run script'),
(@ENTRY,0,6,0,40,0,100,0,16,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 16 - run script'),
(@ENTRY,0,7,0,40,0,100,0,20,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 20 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,5,273,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - emote');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8481.685,959.4879,547.2927, 'Thomas Partridge'),
(@ENTRY,2,8482.575,952.007,547.2927, 'Thomas Partridge'),
(@ENTRY,3,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,4,8480.29,928.951,547.293, 'Thomas Partridge'),
(@ENTRY,5,8481.386,929.6846,547.2927, 'Thomas Partridge'),
(@ENTRY,6,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,7,8479.08,935.109,547.293, 'Thomas Partridge'),
(@ENTRY,8,8482.33,937.765,547.294, 'Thomas Partridge'),
(@ENTRY,9,8487.458,937.033,547.2927, 'Thomas Partridge'),
(@ENTRY,10,8482.33,937.765,547.294, 'Thomas Partridge'),
(@ENTRY,11,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,12,8479.21,919.35,547.294, 'Thomas Partridge'),
(@ENTRY,13,8483.181,917.6667,547.2927, 'Thomas Partridge'),
(@ENTRY,14,8480.25,917.926,547.293, 'Thomas Partridge'),
(@ENTRY,15,8480.31,909.402,547.293, 'Thomas Partridge'),
(@ENTRY,16,8484.031,903.8014,547.2927, 'Thomas Partridge'),
(@ENTRY,17,8479.39,909.922,547.293, 'Thomas Partridge'),
(@ENTRY,18,8479.08,935.109,547.293, 'Thomas Partridge'),
(@ENTRY,19,8483.99,937.559,547.293, 'Thomas Partridge'),
(@ENTRY,20,8486.654,940.0261,547.2929, 'Thomas Partridge'),
(@ENTRY,21,8483.99,937.559,547.293, 'Thomas Partridge'),
(@ENTRY,22,8480.21,937.883,547.293, 'Thomas Partridge');


SET @ENTRY := 32509;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5771.88,`position_y`=632.803,`position_z`=661.075 WHERE `guid`=120355;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,2,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 2 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.321288, 'Brammold Deepmine - Reach wp 2 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,8,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 8 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.692969, 'Brammold Deepmine - Reach wp 8 - turn to');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5769.026,629.7931,661.0721, 'Brammold Deepmine'),
(@ENTRY,2,5770.056,625.5038,661.0721, 'Brammold Deepmine'),
(@ENTRY,3,5769.026,629.7931,661.0721, 'Brammold Deepmine'),
(@ENTRY,4,5771.88,632.803,661.075, 'Brammold Deepmine'),
(@ENTRY,5,5773.25,637.491,661.151, 'Brammold Deepmine'),
(@ENTRY,6,5759.77,648.809,650.12, 'Brammold Deepmine'),
(@ENTRY,7,5757,647.883,650.141, 'Brammold Deepmine'),
(@ENTRY,8,5753.792,635.2266,650.1417, 'Brammold Deepmine'),
(@ENTRY,9,5757,647.883,650.141, 'Brammold Deepmine'),
(@ENTRY,10,5759.77,648.809,650.12, 'Brammold Deepmine'),
(@ENTRY,11,5773.25,637.491,661.151, 'Brammold Deepmine'),
(@ENTRY,12,5771.88,632.803,661.075, 'Brammold Deepmine');


SET @ENTRY := 32668;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5805.625,`position_y`=692.3191,`position_z`=647.0484 WHERE `guid`=110543;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Emi - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 1 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,2,@ENTRY,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 2 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.316126, 'Emi - Reach wp 2 - turm to');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5809.61,694.5121,647.0484, 'Emi'),
(@ENTRY,2,5805.625,692.3191,647.0484, 'Emi');



SET @ENTRY := 32669;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5807.146,`position_y`=683.3826,`position_z`=647.0484 WHERE `guid`=110586;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Colin - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.427974, 'Colin - Reach wp 1 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,2,@ENTRY,0,0,54,28000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 2 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.2094395, 'Colin - Reach wp 2 - turm to'),
(@ENTRY,0,5,6,40,0,100,0,3,@ENTRY,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 3 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.804818, 'Colin - Reach wp 3 - turm to');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5815.523,681.2226,647.0484, 'Colin'),
(@ENTRY,2,5818.646,688.2175,647.0484, 'Colin'),
(@ENTRY,3,5807.146,683.3826,647.0484, 'Colin');
SET @NPC := 102310;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3466.93,`position_y`=-4594.270,`position_z`=231.273 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3462.383,-4612.148,231.4899,0,0,0,100,0),
(@PATH,2,3455.436,-4622.705,231.2399,0,0,0,100,0),
(@PATH,3,3431.224,-4629.703,231.8959,0,0,0,100,0),
(@PATH,4,3417.972,-4627.66,231.7709,0,0,0,100,0),
(@PATH,5,3407.802,-4618.447,231.8959,0,0,0,100,0),
(@PATH,6,3404.309,-4602.283,231.6459,0,0,0,100,0),
(@PATH,7,3407.839,-4586.454,231.6536,0,0,0,100,0),
(@PATH,8,3418.060,-4573.690,231.466,0,0,0,100,0),
(@PATH,9,3434.690,-4569.920,231.300,0,0,0,100,0),
(@PATH,10,3450.15,-4570.980,231.293,0,0,0,100,0),
(@PATH,11,3462.95,-4577.800,231.405,0,0,0,100,0),
(@PATH,12,3466.93,-4594.270,231.273,0,0,0,100,0);


SET @NPC := 103278;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=234.3479,`position_y`=-3839.657,`position_z`=6.546998 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,260.008,-3825.02,5.059539,0,0,0,100,0),
(@PATH,2,279.0299,-3805.746,4.302778,0,0,0,100,0),
(@PATH,3,307.1137,-3802.395,2.265985,0,0,0,100,0),
(@PATH,4,327.6607,-3807.026,2.515985,0,0,0,100,0),
(@PATH,5,356.2998,-3801.84,1.635767,0,0,0,100,0),
(@PATH,6,390.8152,-3765.867,0.9720907,0,0,0,100,0),
(@PATH,7,376.6523,-3827.153,2.452734,0,0,0,100,0),
(@PATH,8,341.8276,-3860.943,5.220708,0,0,0,100,0),
(@PATH,9,317.3375,-3872.974,3.487318,0,0,0,100,0),
(@PATH,10,299.2409,-3881.008,1.03899,0,0,0,100,0),
(@PATH,11,281.0217,-3887.393,5.197232,0,0,0,100,0),
(@PATH,12,242.4368,-3911.016,4.672004,0,0,0,100,0),
(@PATH,13,234.3479,-3839.657,6.546998,0,0,0,100,0);


SET @NPC := 66994;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11155.1,`position_y`=537.7078,`position_z`=61.61254 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11149.68,531.8951,61.64723,0,0,0,100,0),
(@PATH,2,-11145.47,530.3519,61.64816,0,0,0,100,0),
(@PATH,3,-11142.67,529.801,61.65041,0,0,0,100,0),
(@PATH,4,-11140.16,529.242,61.64826,0,0,0,100,0),
(@PATH,5,-11135.57,530.644,61.6618,0,0,0,100,0),
(@PATH,6,-11131.79,533.377,61.64826,0,0,0,100,0),
(@PATH,7,-11130.45,537.5435,61.64826,0,0,0,100,0),
(@PATH,8,-11129.11,544.0456,61.61562,0,0,0,100,0),
(@PATH,9,-11131.18,551.2862,61.6304,0,0,0,100,0),
(@PATH,10,-11133.83,554.506,61.63765,0,0,0,100,0),
(@PATH,11,-11137.87,556.6643,61.64382,0,0,0,100,0),
(@PATH,12,-11144.09,557.5725,61.63416,0,0,0,100,0),
(@PATH,13,-11150.33,555.5367,61.60638,0,0,0,100,0),
(@PATH,14,-11154.31,552.1038,61.62201,0,0,0,100,0),
(@PATH,15,-11156.64,544.7747,61.62113,0,0,0,100,0),
(@PATH,16,-11155.1,537.7078,61.61254,0,0,0,100,0);


SET @NPC := 66988;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11152.27,`position_y`=552.6809,`position_z`=55.89178 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11149.12,554.4658,55.80492,0,0,0,100,0),
(@PATH,2,-11144.68,556.6826,55.13705,0,0,0,100,0),
(@PATH,3,-11140.38,556.8944,53.87344,0,0,0,100,0),
(@PATH,4,-11136,554.8301,52.57347,0,0,0,100,0),
(@PATH,5,-11131.66,549.8716,50.37294,0,0,0,100,0),
(@PATH,6,-11130.73,546.1309,49.47009,0,0,0,100,0),
(@PATH,7,-11131.66,549.8716,50.37294,0,0,0,100,0),
(@PATH,8,-11136,554.8301,52.57347,0,0,0,100,0),
(@PATH,9,-11140.38,556.8944,53.87344,0,0,0,100,0),
(@PATH,10,-11144.68,556.6826,55.13705,0,0,0,100,0),
(@PATH,11,-11149.12,554.4658,55.80492,0,0,0,100,0),
(@PATH,12,-11152.27,552.6809,55.89178,0,0,0,100,0);


SET @NPC := 90331;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11147.35,`position_y`=512.5392,`position_z`=32.61861 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11155.68,519.0281,32.36861,0,0,0,100,0),
(@PATH,2,-11147.35,512.5392,32.61861,0,0,0,100,0),
(@PATH,3,-11135.54,503.5617,31.61861,0,0,0,100,0),
(@PATH,4,-11120.64,505.8491,31.42709,0,0,0,100,0),
(@PATH,5,-11107.24,507.4966,30.92709,0,0,0,100,0),
(@PATH,6,-11120.64,505.8491,31.42709,0,0,0,100,0),
(@PATH,7,-11135.54,503.5617,31.61861,0,0,0,100,0),
(@PATH,8,-11147.35,512.5392,32.61861,0,0,0,100,0);


SET @NPC := 28337;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9293.198,`position_y`=-2943.878,`position_z`=163.8473 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9294.498,-2942.447,163.8475,0,0,0,100,0),
(@PATH,2,-9295.34,-2940.965,163.8479,0,0,0,100,0),
(@PATH,3,-9295.685,-2939.59,163.8468,0,0,0,100,0),
(@PATH,4,-9295.738,-2938.026,163.8467,0,0,0,100,0),
(@PATH,5,-9295.759,-2936.388,163.847,0,0,0,100,0),
(@PATH,6,-9295.278,-2935.375,163.8471,0,0,0,100,0),
(@PATH,7,-9294.543,-2934.205,163.8473,0,0,0,100,0),
(@PATH,8,-9294.007,-2933.157,163.8473,0,0,0,100,0),
(@PATH,9,-9292.805,-2932.29,163.8473,0,0,0,100,0),
(@PATH,10,-9291.458,-2931.706,163.8473,0,0,0,100,0),
(@PATH,11,-9290.221,-2931.361,163.8473,0,0,0,100,0),
(@PATH,12,-9289.213,-2931.191,163.8473,0,0,0,100,0),
(@PATH,13,-9288.1,-2930.992,163.8473,0,0,0,100,0),
(@PATH,14,-9287.005,-2931.001,163.8473,0,0,0,100,0),
(@PATH,15,-9285.914,-2931.289,163.8473,0,0,0,100,0),
(@PATH,16,-9284.389,-2931.998,163.8473,0,0,0,100,0),
(@PATH,17,-9283.646,-2933.005,163.8473,0,0,0,100,0),
(@PATH,18,-9282.956,-2934.348,163.8473,0,0,0,100,0),
(@PATH,19,-9282.225,-2935.459,163.8473,0,0,0,100,0),
(@PATH,20,-9281.658,-2936.635,163.8473,0,0,0,100,0),
(@PATH,21,-9281.364,-2937.675,163.8473,0,0,0,100,0),
(@PATH,22,-9281.658,-2936.635,163.8473,0,0,0,100,0),
(@PATH,23,-9282.225,-2935.459,163.8473,0,0,0,100,0),
(@PATH,24,-9282.956,-2934.348,163.8473,0,0,0,100,0),
(@PATH,25,-9283.646,-2933.005,163.8473,0,0,0,100,0),
(@PATH,26,-9284.389,-2931.998,163.8473,0,0,0,100,0),
(@PATH,27,-9285.914,-2931.289,163.8473,0,0,0,100,0),
(@PATH,28,-9287.005,-2931.001,163.8473,0,0,0,100,0),
(@PATH,29,-9288.1,-2930.992,163.8473,0,0,0,100,0),
(@PATH,30,-9289.213,-2931.191,163.8473,0,0,0,100,0),
(@PATH,31,-9290.221,-2931.361,163.8473,0,0,0,100,0),
(@PATH,32,-9291.458,-2931.706,163.8473,0,0,0,100,0),
(@PATH,33,-9292.805,-2932.29,163.8473,0,0,0,100,0),
(@PATH,34,-9294.007,-2933.157,163.8473,0,0,0,100,0),
(@PATH,35,-9294.543,-2934.205,163.8473,0,0,0,100,0),
(@PATH,36,-9295.278,-2935.375,163.8471,0,0,0,100,0),
(@PATH,37,-9295.759,-2936.388,163.847,0,0,0,100,0),
(@PATH,38,-9295.738,-2938.026,163.8467,0,0,0,100,0),
(@PATH,39,-9295.685,-2939.59,163.8468,0,0,0,100,0),
(@PATH,40,-9295.391,-2940.761,163.8475,0,0,0,100,0),
(@PATH,41,-9294.498,-2942.447,163.8475,0,0,0,100,0),
(@PATH,42,-9293.198,-2943.878,163.8473,0,0,0,100,0),
(@PATH,43,-9291.648,-2944.502,163.8473,0,0,0,100,0),
(@PATH,44,-9289.801,-2945.168,163.8473,0,0,0,100,0),
(@PATH,45,-9288.234,-2945.503,163.8473,0,0,0,100,0),
(@PATH,46,-9286.938,-2945.095,163.8473,0,0,0,100,0),
(@PATH,47,-9285.65,-2944.349,163.8473,0,0,0,100,0),
(@PATH,48,-9284.43,-2943.57,163.8473,0,0,0,100,0),
(@PATH,49,-9283.33,-2942.828,163.8473,0,0,0,100,0),
(@PATH,50,-9282.16,-2941.825,163.8473,0,0,0,100,0),
(@PATH,51,-9283.208,-2942.748,163.8473,0,0,0,100,0),
(@PATH,52,-9284.43,-2943.57,163.8473,0,0,0,100,0),
(@PATH,53,-9285.65,-2944.349,163.8473,0,0,0,100,0),
(@PATH,54,-9286.938,-2945.095,163.8473,0,0,0,100,0),
(@PATH,55,-9288.209,-2945.509,163.8473,0,0,0,100,0),
(@PATH,56,-9289.801,-2945.168,163.8473,0,0,0,100,0),
(@PATH,57,-9291.648,-2944.502,163.8473,0,0,0,100,0),
(@PATH,58,-9293.198,-2943.878,163.8473,0,0,0,100,0);


SET @NPC := 17316;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8726,`position_y`=-2374.531,`position_z`=157.9322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8720.093,-2371.032,156.9322,0,0,0,100,0),
(@PATH,2,-8714.607,-2362.74,156.7913,0,0,0,100,0),
(@PATH,3,-8706.662,-2347.766,156.1663,0,0,0,100,0),
(@PATH,4,-8694.753,-2337.18,156.0414,0,0,0,100,0),
(@PATH,5,-8681.48,-2329.154,156.0413,0,0,0,100,0),
(@PATH,6,-8676.822,-2318.932,156.0413,0,0,0,100,0),
(@PATH,7,-8682.414,-2311.587,156.0413,0,0,0,100,0),
(@PATH,8,-8691.346,-2314.592,156.6663,0,0,0,100,0),
(@PATH,9,-8697.195,-2324.672,157.0413,0,0,0,100,0),
(@PATH,10,-8704.646,-2338.616,156.0413,0,0,0,100,0),
(@PATH,11,-8712.913,-2350.304,156.1663,0,0,0,100,0),
(@PATH,12,-8751.018,-2372.175,157.9172,0,0,0,100,0),
(@PATH,13,-8759.117,-2380.215,156.7922,0,0,0,100,0),
(@PATH,14,-8773.799,-2405.039,156.4857,0,0,0,100,0),
(@PATH,15,-8767.317,-2393.249,156.0413,0,0,0,100,0),
(@PATH,16,-8757.157,-2380.358,157.0422,0,0,0,100,0),
(@PATH,17,-8744.273,-2377.308,158.5422,0,0,0,100,0),
(@PATH,18,-8735.471,-2378.812,159.4172,0,0,0,100,0),
(@PATH,19,-8726,-2374.531,157.9322,0,0,0,100,0);


SET @NPC := 16227;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=423,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=-9621.853,`position_y`=-2534.608,`position_z`=59.30342 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9611.43,-2537.291,59.55342,0,0,0,100,0),
(@PATH,2,-9596.484,-2523.148,62.104,0,0,0,100,0),
(@PATH,3,-9595.624,-2513.513,59.729,0,0,0,100,0),
(@PATH,4,-9578.707,-2505.862,59.229,0,0,0,100,0),
(@PATH,5,-9595.624,-2513.513,59.729,0,0,0,100,0),
(@PATH,6,-9596.484,-2523.148,62.104,0,0,0,100,0),
(@PATH,7,-9611.43,-2537.291,59.55342,0,0,0,100,0),
(@PATH,8,-9621.853,-2534.608,59.30342,0,0,0,100,0),
(@PATH,9,-9631.005,-2520.389,59.22416,0,0,0,100,0),
(@PATH,10,-9626.435,-2493.965,61.77357,0,0,0,100,0),
(@PATH,11,-9615.699,-2482.903,60.27357,0,0,0,100,0),
(@PATH,12,-9600.611,-2478.035,59.14857,0,0,0,100,0),
(@PATH,13,-9615.699,-2482.903,60.27357,0,0,0,100,0),
(@PATH,14,-9626.435,-2493.965,61.77357,0,0,0,100,0),
(@PATH,15,-9631.005,-2520.389,59.22416,0,0,0,100,0),
(@PATH,16,-9621.853,-2534.608,59.30342,0,0,0,100,0);


SET @NPC := 16349;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9539.159,`position_y`=-1908.932,`position_z`=73.13508 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9515.88,-1927.064,76.08606,0,0,0,100,0),
(@PATH,2,-9539.159,-1908.932,73.13508,0,0,0,100,0),
(@PATH,3,-9535.29,-1892.516,74.76267,0,0,0,100,0),
(@PATH,4,-9488.921,-1881.527,82.08475,0,0,0,100,0),
(@PATH,5,-9479.733,-1869.828,84.58475,0,0,0,100,0),
(@PATH,6,-9488.921,-1881.527,82.08475,0,0,0,100,0),
(@PATH,7,-9535.29,-1892.516,74.76267,0,0,0,100,0),
(@PATH,8,-9539.159,-1908.932,73.13508,0,0,0,100,0);


SET @NPC := 15218;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9632.086,`position_y`=-2441.966,`position_z`=63.98378 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9606.604,-2486.99,60.02357,0,0,0,100,0),
(@PATH,2,-9602.279,-2502.665,59.72416,0,0,0,100,0),
(@PATH,3,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,4,-9625.794,-2448.716,63.23378,0,0,0,100,0),
(@PATH,5,-9632.086,-2441.966,63.98378,0,0,0,100,0);


SET @NPC := 15219;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9622.567,`position_y`=-2470.478,`position_z`=60.27357 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,2,-9606.604,-2486.99,60.02357,0,0,0,100,0),
(@PATH,3,-9602.279,-2502.665,59.72416,0,0,0,100,0),
(@PATH,4,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,5,-9622.567,-2470.478,60.27357,0,0,0,100,0),
(@PATH,6,-9625.794,-2448.716,63.23378,0,0,0,100,0),
(@PATH,7,-9622.567,-2470.478,60.27357,0,0,0,100,0);


SET @NPC := 16224;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9605.831,`position_y`=-2504.101,`position_z`=59.84916 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9617.936,-2505.087,60.59916,0,0,0,100,0),
(@PATH,2,-9624.509,-2515.335,59.47416,0,0,0,100,0),
(@PATH,3,-9638.779,-2525.417,59.05296,0,0,0,100,0),
(@PATH,4,-9628.489,-2516.524,59.34916,0,0,0,100,0),
(@PATH,5,-9615.57,-2504.555,60.34916,0,0,0,100,0),
(@PATH,6,-9605.831,-2504.101,59.84916,0,0,0,100,0),
(@PATH,7,-9602.604,-2510.273,59.34916,8000,0,0,100,0),
(@PATH,8,-9605.831,-2504.101,59.84916,0,0,0,100,0);


SET @NPC := 10109;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9129.793,`position_y`=-2061.262,`position_z`=128.7022 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9129.67,-2045.571,128.7022,0,0,0,100,0),
(@PATH,2,-9136.09,-2034.611,128.5107,0,0,0,100,0),
(@PATH,3,-9129.67,-2045.571,128.7022,0,0,0,100,0),
(@PATH,4,-9129.793,-2061.262,128.7022,0,0,0,100,0),
(@PATH,5,-9102.493,-2073.968,128.7588,0,0,0,100,0),
(@PATH,6,-9081.025,-2073.283,128.7137,0,0,0,100,0),
(@PATH,7,-9061.23,-2083.464,129.3531,0,0,0,100,0),
(@PATH,8,-9081.025,-2073.283,128.7137,0,0,0,100,0),
(@PATH,9,-9102.493,-2073.968,128.7588,0,0,0,100,0),
(@PATH,10,-9129.793,-2061.262,128.7022,0,0,0,100,0);


SET @NPC := 26003;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9081.852,`position_y`=-2446.575,`position_z`=123.6152 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9068.523,-2439.98,127.2402,0,0,0,100,0),
(@PATH,2,-9055.93,-2434.33,127.9016,0,0,0,100,0),
(@PATH,3,-9043.435,-2417.14,128.5205,0,0,0,100,0),
(@PATH,4,-9055.781,-2434.121,127.9016,0,0,0,100,0),
(@PATH,5,-9068.496,-2439.973,127.2402,0,0,0,100,0),
(@PATH,6,-9080.561,-2445.323,124.1152,0,0,0,100,0),
(@PATH,7,-9095.229,-2447.28,120.7402,0,0,0,100,0),
(@PATH,8,-9081.852,-2446.575,123.6152,0,0,0,100,0);


SET @NPC := 10108;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9085.817,`position_y`=-2041.056,`position_z`=129.4007 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9093.47,-2023.117,128.7757,0,0,0,100,0),
(@PATH,2,-9085.817,-2041.056,129.4007,0,0,0,100,0),
(@PATH,3,-9098.341,-2060.571,128.7757,0,0,0,100,0),
(@PATH,4,-9121.283,-2054.603,128.7022,0,0,0,100,0),
(@PATH,5,-9098.341,-2060.571,128.7757,0,0,0,100,0),
(@PATH,6,-9085.817,-2041.056,129.4007,0,0,0,100,0);


SET @NPC := 10171;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8719.215,`position_y`=-2162.265,`position_z`=157.9493 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8732.552,-2168.392,159.3678,0,0,0,100,0),
(@PATH,2,-8746.09,-2167.292,158.6607,0,0,0,100,0),
(@PATH,3,-8732.552,-2168.392,159.3678,0,0,0,100,0),
(@PATH,4,-8719.215,-2162.265,157.9493,0,0,0,100,0),
(@PATH,5,-8696.335,-2161.937,157.3559,0,0,0,100,0),
(@PATH,6,-8692.609,-2182.1,156.5922,0,0,0,100,0),
(@PATH,7,-8701.185,-2195.719,154.9269,0,0,0,100,0),
(@PATH,8,-8702.752,-2227.732,154.6221,0,0,0,100,0),
(@PATH,9,-8713.253,-2240.955,154.7007,0,0,0,100,0),
(@PATH,10,-8732.683,-2250.81,154.3486,0,0,0,100,0),
(@PATH,11,-8713.253,-2240.955,154.7007,0,0,0,100,0),
(@PATH,12,-8702.752,-2227.732,154.6221,0,0,0,100,0),
(@PATH,13,-8701.185,-2195.719,154.9269,0,0,0,100,0),
(@PATH,14,-8692.609,-2182.1,156.5922,0,0,0,100,0),
(@PATH,15,-8696.276,-2161.936,157.3557,0,0,0,100,0),
(@PATH,16,-8719.215,-2162.265,157.9493,0,0,0,100,0);


SET @NPC := 10126;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8856.583,`position_y`=-1959.49,`position_z`=122.6195 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8869.44,-1973.048,123.1989,0,0,0,100,0),
(@PATH,2,-8872.306,-1987.248,125.6125,0,0,0,100,0),
(@PATH,3,-8871.035,-1998.969,123.9351,0,0,0,100,0),
(@PATH,4,-8874.864,-2010.225,123.8613,0,0,0,100,0),
(@PATH,5,-8881.981,-2014.834,124.7159,0,0,0,100,0),
(@PATH,6,-8890.29,-2014.196,125.0285,0,0,0,100,0),
(@PATH,7,-8882.051,-2014.828,124.7096,0,0,0,100,0),
(@PATH,8,-8874.864,-2010.225,123.8613,0,0,0,100,0),
(@PATH,9,-8871.035,-1998.969,123.9351,0,0,0,100,0),
(@PATH,10,-8872.306,-1987.248,125.6125,0,0,0,100,0),
(@PATH,11,-8869.474,-1973.084,123.2088,0,0,0,100,0),
(@PATH,12,-8856.583,-1959.49,122.6195,0,0,0,100,0),
(@PATH,13,-8854.203,-1933.718,124.2242,0,0,0,100,0),
(@PATH,14,-8849.34,-1913.927,126.1551,0,0,0,100,0),
(@PATH,15,-8874.792,-1914.902,132.0751,0,0,0,100,0),
(@PATH,16,-8889.941,-1926.165,135.8921,0,0,0,100,0),
(@PATH,17,-8903.536,-1951.488,137.975,0,0,0,100,0),
(@PATH,18,-8889.941,-1926.165,135.8921,0,0,0,100,0),
(@PATH,19,-8874.792,-1914.902,132.0751,0,0,0,100,0),
(@PATH,20,-8849.34,-1913.927,126.1551,0,0,0,100,0),
(@PATH,21,-8854.203,-1933.718,124.2242,0,0,0,100,0),
(@PATH,22,-8856.583,-1959.49,122.6195,0,0,0,100,0);


SET @NPC := 16422;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8996.826,`position_y`=-2085.873,`position_z`=132.5694 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8962.664,-2081.184,132.5694,0,0,0,100,0),
(@PATH,2,-8996.826,-2085.873,132.5694,0,0,0,100,0),
(@PATH,3,-9022.803,-2096.318,132.0085,0,0,0,100,0),
(@PATH,4,-8996.826,-2085.873,132.5694,0,0,0,100,0);


SET @NPC := 11897;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8795.307,`position_y`=-1973.387,`position_z`=126.7356 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8801.047,-1955.703,126.1625,0,0,0,100,0),
(@PATH,2,-8795.307,-1973.387,126.7356,0,0,0,100,0),
(@PATH,3,-8782.728,-1980.681,128.0934,0,0,0,100,0),
(@PATH,4,-8772.052,-1993.34,129.6344,0,0,0,100,0),
(@PATH,5,-8768.62,-2016.962,130.0639,0,0,0,100,0),
(@PATH,6,-8786.789,-2040.241,127.6738,0,0,0,100,0),
(@PATH,7,-8804.953,-2054.536,129.402,0,0,0,100,0),
(@PATH,8,-8786.789,-2040.241,127.6738,0,0,0,100,0),
(@PATH,9,-8768.62,-2016.962,130.0639,0,0,0,100,0),
(@PATH,10,-8772.052,-1993.34,129.6344,0,0,0,100,0),
(@PATH,11,-8782.728,-1980.681,128.0934,0,0,0,100,0),
(@PATH,12,-8795.307,-1973.387,126.7356,0,0,0,100,0);


SET @NPC := 11679;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9008.022,`position_y`=-2015.315,`position_z`=135.5978 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9013.389,-2001.146,135.8478,0,0,0,100,0),
(@PATH,2,-9020.631,-1992.944,136.1136,0,0,0,100,0),
(@PATH,3,-9032.95,-1992.436,138.1136,0,0,0,100,0),
(@PATH,4,-9020.631,-1992.944,136.1136,0,0,0,100,0),
(@PATH,5,-9013.389,-2001.146,135.8478,0,0,0,100,0),
(@PATH,6,-9008.022,-2015.315,135.5978,0,0,0,100,0),
(@PATH,7,-9000.12,-2022.714,135.7228,0,0,0,100,0),
(@PATH,8,-8983.734,-2024.047,135.9675,0,0,0,100,0),
(@PATH,9,-8976.881,-2007.302,135.8149,0,0,0,100,0),
(@PATH,10,-8945.093,-1989.848,138.4766,0,0,0,100,0),
(@PATH,11,-8928.801,-1979.029,139.8955,0,0,0,100,0),
(@PATH,12,-8918.683,-1984.234,140.0949,0,0,0,100,0),
(@PATH,13,-8893.354,-1992.97,136.0317,0,0,0,100,0),
(@PATH,14,-8918.683,-1984.234,140.0949,0,0,0,100,0),
(@PATH,15,-8928.801,-1979.029,139.8955,0,0,0,100,0),
(@PATH,16,-8944.557,-1989.485,138.5895,0,0,0,100,0),
(@PATH,17,-8976.881,-2007.302,135.8149,0,0,0,100,0),
(@PATH,18,-8983.734,-2024.047,135.9675,0,0,0,100,0),
(@PATH,19,-9000.12,-2022.714,135.7228,0,0,0,100,0),
(@PATH,20,-9008.022,-2015.315,135.5978,0,0,0,100,0);


SET @NPC := 10095;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9475.37,`position_y`=-1934.13,`position_z`=80.3683 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9471.528,-1924.836,81.67286,0,0,0,100,0),
(@PATH,2,-9466.015,-1923.353,82.18614,0,0,0,100,0),
(@PATH,3,-9460.636,-1918.143,82.68614,0,0,0,100,0),
(@PATH,4,-9458.96,-1909.725,82.56114,0,0,0,100,0),
(@PATH,5,-9460.59,-1901.123,82.43614,0,0,0,100,0),
(@PATH,6,-9492.081,-1893.237,80.33475,0,0,0,100,0),
(@PATH,7,-9510.62,-1931.774,76.58606,0,0,0,100,0),
(@PATH,8,-9524.609,-1944.812,74.45707,0,0,0,100,0),
(@PATH,9,-9523.66,-1956.9,74.2286,0,0,0,100,0),
(@PATH,10,-9508.4,-1957.79,77.6211,0,0,0,100,0),
(@PATH,11,-9492.42,-1952.17,79.3943,0,0,0,100,0),
(@PATH,12,-9480.27,-1944.86,79.5265,0,0,0,100,0),
(@PATH,13,-9475.37,-1934.13,80.3683,0,0,0,100,0);


SET @NPC := 10053;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9265.055,`position_y`=-3209.41,`position_z`=102.3781 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9292.012,-3240.249,100.6492,0,0,0,100,0),
(@PATH,2,-9310.653,-3233.226,100.8562,0,0,0,100,0),
(@PATH,3,-9343.33,-3233.92,95.33384,0,0,0,100,0),
(@PATH,4,-9376.466,-3260.896,88.62462,4000,0,0,100,0),
(@PATH,5,-9343.33,-3233.92,95.33384,0,0,0,100,0),
(@PATH,6,-9310.653,-3233.226,100.8562,0,0,0,100,0),
(@PATH,7,-9292.012,-3240.249,100.6492,0,0,0,100,0),
(@PATH,8,-9265.055,-3209.41,102.3781,0,0,0,100,0);


SET @NPC := 5973;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10222.43,`position_y`=143.7129,`position_z`=2.255024 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10243.54,161.2734,0.0465889,0,0,0,100,0),
(@PATH,2,-10274.24,166.031,1.11338,0,0,0,100,0),
(@PATH,3,-10275.96,150.4307,1.513012,0,0,0,100,0),
(@PATH,4,-10261.48,138.3093,2.175644,0,0,0,100,0),
(@PATH,5,-10222.57,178.1452,0.4510765,0,0,0,100,0),
(@PATH,6,-10209.76,180.1912,1.390846,0,0,0,100,0),
(@PATH,7,-10204.68,164.0327,1.472527,0,0,0,100,0),
(@PATH,8,-10206.47,150.2491,1.775291,0,0,0,100,0),
(@PATH,9,-10222.43,143.7129,2.255024,0,0,0,100,0);


SET @NPC := 4394;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=210,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=-10224.68,`position_y`=214.6403,`position_z`=2.800045 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10221.75,199.632,2.804298,0,0,0,100,0),
(@PATH,2,-10224.68,214.6403,2.800045,0,0,0,100,0),
(@PATH,3,-10222.65,233.476,2.799393,0,0,0,100,0),
(@PATH,4,-10224.83,251.8642,2.799393,0,0,0,100,0),
(@PATH,5,-10236.47,256.503,2.799393,0,0,0,100,0),
(@PATH,6,-10240.21,269.6581,2.799393,0,0,0,100,0),
(@PATH,7,-10238.13,284.0669,2.799393,0,0,0,100,0),
(@PATH,8,-10229.13,286.6407,2.799393,0,0,0,100,0),
(@PATH,9,-10209.48,282.851,2.16798,0,0,0,100,0),
(@PATH,10,-10205.71,282.0735,2.416508,0,0,0,100,0),
(@PATH,11,-10201.7,282.9867,2.54327,0,0,0,100,0),
(@PATH,12,-10196.69,286.0379,2.193909,0,0,0,100,0),
(@PATH,13,-10195.89,292.459,2.453735,0,0,0,100,0),
(@PATH,14,-10200.42,308.0852,4.772118,0,0,0,100,0),
(@PATH,15,-10195.89,292.459,2.453735,0,0,0,100,0),
(@PATH,16,-10196.69,286.0379,2.193909,0,0,0,100,0),
(@PATH,17,-10201.7,282.9867,2.54327,0,0,0,100,0),
(@PATH,18,-10205.71,282.0735,2.416508,0,0,0,100,0),
(@PATH,19,-10209.48,282.851,2.16798,0,0,0,100,0),
(@PATH,20,-10229.13,286.6407,2.799393,0,0,0,100,0),
(@PATH,21,-10238.13,284.0669,2.799393,0,0,0,100,0),
(@PATH,22,-10240.21,269.6581,2.799393,0,0,0,100,0),
(@PATH,23,-10236.47,256.503,2.799393,0,0,0,100,0),
(@PATH,24,-10224.83,251.8642,2.799393,0,0,0,100,0),
(@PATH,25,-10222.65,233.476,2.799393,0,0,0,100,0),
(@PATH,26,-10224.68,214.6403,2.800045,0,0,0,100,0);


SET @NPC := 31809;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9164.028,`position_y`=-2442.941,`position_z`=110.9322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9162.086,-2442.718,109.9972,10000,1,0,100,0),
(@PATH,2,-9140.406,-2451.874,110.0572,0,1,0,100,0),
(@PATH,3,-9112.781,-2462.785,119.0318,0,1,0,100,0),
(@PATH,4,-9107.47,-2472.122,120.0782,0,1,0,100,0),
(@PATH,5,-9110.72,-2477.348,119.7032,10000,1,0,100,0),
(@PATH,6,-9110.416,-2471.354,119.5782,0,1,0,100,0),
(@PATH,7,-9119.938,-2462.73,117.2818,0,1,0,100,0),
(@PATH,8,-9135.719,-2453.595,111.1822,0,1,0,100,0),
(@PATH,9,-9154.232,-2450.505,110.5572,0,1,0,100,0),
(@PATH,10,-9164.028,-2442.941,110.9322,0,1,0,100,0);
DELETE FROM `creature` WHERE `guid` IN (31833,31807);
DELETE FROM `creature_addon` WHERE `guid` IN (31833,31807);


SET @NPC := 4211;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10577.47,`position_y`=-1165.161,`position_z`=28.14966 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10581.63,-1172.892,28.49362,0,0,0,100,0),
(@PATH,2,-10584.04,-1180.587,27.99362,0,0,0,100,0),
(@PATH,3,-10573.58,-1185.804,27.99362,0,0,0,100,0),
(@PATH,4,-10570.05,-1191.732,27.86862,0,0,0,100,0),
(@PATH,5,-10569.19,-1199.181,27.74362,0,0,0,100,0),
(@PATH,6,-10551.35,-1205.735,27.56617,0,0,0,100,0),
(@PATH,7,-10549.26,-1192.892,27.66226,0,0,0,100,0),
(@PATH,8,-10535.19,-1192.908,27.66226,0,0,0,100,0),
(@PATH,9,-10546.21,-1179.316,28.16226,0,0,0,100,0),
(@PATH,10,-10547.91,-1167.96,27.78726,0,0,0,100,0),
(@PATH,11,-10554.19,-1153.211,28.07649,0,0,0,100,0),
(@PATH,12,-10565.88,-1154.214,27.57649,0,0,0,100,0),
(@PATH,13,-10577.47,-1165.161,28.14966,0,0,0,100,0);


SET @NPC := 4176;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10572.92,`position_y`=-1211.979,`position_z`=26.21894 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10581.87,-1200.016,27.71894,0,0,0,100,0),
(@PATH,2,-10581.5,-1199.797,27.74362,56000,0,0,100,0),
(@PATH,3,-10572.92,-1211.979,26.21894,8000,0,0,100,0);


SET @NPC := 4082;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10596.64,`position_y`=-1163.852,`position_z`=30.05967 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10596.3,-1164.096,30.05967,0,0,0,100,0), 
(@PATH,2,-10590.63,-1156.783,30.05967,0,0,0,100,0),
(@PATH,3,-10590.52,-1155.93,30.05967,55000,0,0,100,0),
(@PATH,4,-10590.21,-1156.136,30.05967,0,0,0,100,0),
(@PATH,5,-10596.64,-1163.852,30.05967,14000,0,0,100,0);


SET @NPC := 4192;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10499.35,`position_y`=-1157.982,`position_z`=28.08655 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10494.12,-1160.191,28.37647,45000,0,0,100,0), 
(@PATH,2,-10498.6,-1160.361,28.08655,0,0,0,100,0),
(@PATH,3,-10498.77,-1161.604,28.08655,9000,0,0,100,0),
(@PATH,4,-10498.77,-1161.249,28.08655,0,0,0,100,0),
(@PATH,5,-10507.73,-1161.963,28.09953,0,0,0,100,0),
(@PATH,6,-10509.7,-1160.204,28.09953,6000,0,0,100,0),
(@PATH,7,-10509.61,-1160.543,28.09953,0,0,0,100,0),
(@PATH,8,-10507.16,-1161.83,28.09953,0,0,0,100,0),
(@PATH,9,-10499.27,-1159.314,28.08655,0,0,0,100,0),
(@PATH,10,-10499.35,-1157.982,28.08655,18000,0,0,100,0);

DROP TABLE IF EXISTS `achievement_dbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT '-1',
  `mapID` int(11) NOT NULL DEFAULT '-1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `refAchievement` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `achievement_dbc` WRITE;
/*!40000 ALTER TABLE `achievement_dbc` DISABLE KEYS */;
INSERT INTO `achievement_dbc` VALUES
(3696,-1,-1,0,2,1,0), -- Earned the right to represent a city in the Argent Tournament
(4788,-1,-1,0,2,1,0), -- Is exalted with The Aldor or has any of exalted rewards
(4789,-1,-1,0,2,1,0); -- Is exalted with The Scryers or has any of exalted rewards
/*!40000 ALTER TABLE `achievement_dbc` ENABLE KEYS */;
UNLOCK TABLES;
UPDATE `creature_template` SET `speed_run`=1,`spell2`=30708 WHERE `entry`=17539; -- Totem of Wrath I
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`speed_run`=1,`spell2`=30708 WHERE `entry`=30652; -- Totem of Wrath II
UPDATE `creature_template` SET `spell2`=30708 WHERE `entry`=30653; -- Totem of Wrath III
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`spell2`=30708 WHERE `entry`=30654; -- Totem of Wrath IV

UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=2 WHERE `modelid`=4589;

DELETE FROM `creature_template_addon` WHERE `entry` IN (17539,30652,30653,30654);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(17539,0,0,257,0,NULL), -- Totem of Wrath I
(30652,0,0,257,0,NULL), -- Totem of Wrath II
(30653,0,0,257,0,NULL), -- Totem of Wrath III
(30654,0,0,1,0,NULL); -- Totem of Wrath IV

DELETE FROM `spell_group` WHERE `spell_id`=30708; -- Unneeded stack rules
DELETE FROM `smart_scripts` WHERE (`entryorguid`=25171 OR `entryorguid` BETWEEN -209026 AND -209019) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-209019,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209020,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209022,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209023,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209021,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209024,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209025,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209026,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13593,13703,13704,13705,13706,13707,13708,13709,13710,13711);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(19,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(19,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(19,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(19,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(19,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(19,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(19,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(19,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(19,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker'),
(20,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(20,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(20,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(20,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(20,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(20,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(20,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(20,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(20,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(20,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker');


DELETE FROM `spell_area` WHERE `spell`=64373 AND `area` IN (4666,4667,4674);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(64373,4666,0,0,0,0,0,2,1), -- Sunreaver Pavillion
(64373,4667,0,0,0,0,0,2,1), -- Silver Covenant Pavillion
(64373,4674,0,0,0,0,0,2,1); -- Argent Pavillion

UPDATE `npc_spellclick_spells` SET `quest_end`=13687 WHERE `npc_entry`=33842; -- Sunreaver Hawkstrider - !Horde Tournament Eligibility Marker
UPDATE `npc_spellclick_spells` SET `quest_end`=13686 WHERE `npc_entry`=33843; -- Quel'dorei Steed - !Alliance Tournament Eligibility Marker

UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~1 WHERE `entry`=13593; -- !Human - Valiant Of Stormwind
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~4 WHERE `entry`=13703; -- !Dwarf - Valiant Of Ironforge
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~64 WHERE `entry`=13704; -- !Gnome - Valiant Of Gnomeregan
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~1024 WHERE `entry`=13705; -- !Draenei - Valiant Of The Exodar
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~8 WHERE `entry`=13706; -- !Night Elf - Valiant Of Darnassus

UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~2 WHERE `entry`=13707; -- !Orc - Valiant of Orgrimmar
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~128 WHERE `entry`=13708; -- !Troll - Valiant Of Sen'jin
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~32 WHERE `entry`=13709; -- !Tauren - Valiant Of Thunder Bluff
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~16 WHERE `entry`=13710; -- !Undead - Valiant Of Undercity
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~512 WHERE `entry`=13711; -- !Blood Elf - Valiant Of Silvermoon

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_symbol_of_life_dummy';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(8593, 'spell_symbol_of_life_dummy');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_ulduar_proximity_mines';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(63027, 'spell_ulduar_proximity_mines');
UPDATE `creature_template` SET `ScriptName` = 'npc_corki' WHERE `entry` IN (18445,20812,18369);
UPDATE `gameobject_template` SET `ScriptName` = 'go_corkis_prison' WHERE `entry` IN (182349,182350,182521);
DELETE FROM `script_texts` WHERE `npc_entry` IN (18445,20812,18369);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(18445,-1800071, 'Thanks, $C! I''m sure my dad will reward you greatly! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(20812,-1800072, 'This is the last time I get caught!I promise! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(18369,-1800073, 'Thank you for saving me again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
UPDATE `creature_template` SET `ScriptName`='npc_princess_stillpine' WHERE `entry`=17682;
UPDATE `gameobject_template` SET `ScriptName`='go_princess_stillpines_cage' WHERE `entry`=181928;
DELETE FROM `script_texts` WHERE `npc_entry` =17682;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(17682,-1800074,'Go to the west',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_valanar_kinetic_bomb_absorb';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72054, 'spell_valanar_kinetic_bomb_absorb');
DELETE FROM `command` WHERE name = 'learn all';
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=70530;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-70447,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72836,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72837,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72838,70530,0, 'Putricide: Volatile Ooze Adhesive Protection');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_ooze_channel';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70447, 'spell_putricide_ooze_channel'),
(72836, 'spell_putricide_ooze_channel'),
(72837, 'spell_putricide_ooze_channel'),
(72838, 'spell_putricide_ooze_channel'),
(70672, 'spell_putricide_ooze_channel'),
(72455, 'spell_putricide_ooze_channel'),
(72832, 'spell_putricide_ooze_channel'),
(72833, 'spell_putricide_ooze_channel');
UPDATE `instance_template` SET `script`='instance_blackrock_spire' WHERE `map`=229;

SET @ENTRY  := 31848;
SET @GOSSIP := 10131;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,85,46343,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zidormi - On gossip option select - Player Cast Teleport to Caverns of Time on self');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=@GOSSIP;


SET @ENTRY  := 27425;
SET @GOSSIP := 21250;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Darrok - On gossip option select - Close gossip'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,85,48960,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Darrok - On gossip option select - Cast Horde Log Ride 01 Begin on player'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,48961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Darrok - On gossip option select - Cast Log Ride Horde 00 on player');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=2125100;


SET @ENTRY  := 35117;
SET @GOSSIP := 10616;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,66777,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Stabled Argent Hippogryph - On gossip option select - Cast Mount Up on player');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=1061600;


SET @ENTRY  := 30630;
SET @GOSSIP := 9991;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,85,57536,0,0,0,0,0,19,30630,0,0,0,0,0,0, 'Arch Druid Lilliandra - On gossip option select - Player Cast Forcecast Portal: Moonglade on Arch Druid Lilliandra');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=999200;


SET @ENTRY  := 30051;
SET @GOSSIP := 9626;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,50135,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Librarian Tiare - On gossip option select - Cast Teleport - Coldarra, Transitus Shield to Amber Ledge on player');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=962600;


SET @ENTRY  := 24795;
SET @GOSSIP := 9472;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Surristrasz - On gossip option select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,@GOSSIP,0,0,0,85,46064,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Surristrasz - On gossip option select - Player Cast Amber Ledge to Coldarra on self');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=947200;


SET @ENTRY  := 19882;
SET @GOSSIP := 8060;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Jero''me - On gossip option select - Close gossip');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=806000;


SET @ENTRY  := 23859;
SET @GOSSIP := 9546;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,80,2385900,0,2,0,0,0,1,0,0,0,0,0,0,0, 'Greer Orehammer - On aggro - Run Script'),
(@ENTRY,0,1,2,62,0,100,0,@GOSSIP,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Greer Orehammer - On gossip option select - Close gossip'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,56,33634,10,0,0,0,0,7,0,0,0,0,0,0,0, 'Greer Orehammer - On gossip option select - give player 10 Orehammer''s Precision Bombs'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,52,745,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Greer Orehammer - On gossip option select - Plague This Taxi Start');

UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=954601;

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (7608,7609);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7608,7609);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7608,12,0,0, ''),
(7608,13,8,0, ''),
(7609,12,1,0, ''),
(7609,13,20,0, '');

SET @lasher := 34300;
DELETE FROM `creature_loot_template` WHERE `entry`=@lasher;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(@lasher,37704,100,1,0,1,3), -- Crystalised Life
(@lasher,43324,-75,1,0,1,1), -- Alliance Herb Pouch
(@lasher,44809,-75,1,0,1,1), -- Horde Herb Pouch 
(@lasher,44774,80,1,0,1,1), -- Ice-Piercing Thorn
(@lasher,44775,20,1,0,1,1); -- Revolting Flower


UPDATE `creature_template` SET `skinloot`=80007 WHERE `entry` IN (34300,30845);

DELETE FROM `spell_area` WHERE `spell`=55164 AND `area`=4197;
INSERT INTO `spell_area` 
(`spell`,`area`,`quest_start`,`quest_start_active`,`aura_spell`,`racemask`,`gender`,`autocast`) 
VALUES
(55164,4197,0,0,8326,65527,2,1);
SET @GUID := 152021 ; -- Set GUID

SET @BG_Zar := 32832;
SET @Moonstrike := 32834;
SET @ZomBocom := 31865;
SET @Xazi := 31864;
SET @Nargle := 31863;
SET @Krezzik := 32405;
SET @Argex := 32407;
SET @Thunderhorn := 32383;
SET @Doris := 32385;
SET @Tristia := 32380;
SET @Dirgehammer := 32381;

DELETE FROM `creature` WHERE `id` IN (@BG_Zar,@Moonstrike,@ZomBocom,@Xazi,@Nargle,@Krezzik,@Argex,@Thunderhorn,@Doris,@Tristia,@Dirgehammer);
INSERT INTO creature
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES
(@GUID,@Nargle,571,1,1,26463,0,5753.74,585.413,615.052,0,180,0,0,1,0,0,0,0,0,0), -- Nargle Lashcord
(@GUID+1,@Argex,1,1,1,27953,0,-7123.33,-3766.68,9.40339,0,180,0,0,1,0,0,0,0,0,0), -- Argex Irongut
(@GUID+2,@Krezzik,530,1,1,0,0,3066.45,3638.87,145.218,0.875901,120,0,0,1,0,0,0,0,0,0), -- Krezzik the Striker
(@GUID+3,@Xazi,571,1,1,26464,0,5751.54,584.66,615.052,0,180,0,0,1,0,0,0,0,0,0), -- Xazi Smolderpipe
(@GUID+4,@ZomBocom,571,1,1,26465,0,5751.73,582.943,615.052,0,180,0,0,1,0,0,0,0,0,0), -- Zom Bocom
(@GUID+5,@Doris,1,1,1,0,0,1673.07,-4201.89,56.3826,3.62927,25,0,0,55888,0,0,0,0,0,0), -- Doris
(@GUID+6,@BG_Zar,1,1,1,0,0,1670.17,-4199.26,56.3827,3.98664,25,0,0,11828,0,0,0,0,0,0), -- BG_Zar
(@GUID+7,@Thunderhorn,1,1,1,0,0,1669.09,-4196.78,56.3827,4.10416,25,0,0,11828,0,0,0,0,0,0), -- Thunderhorn
(@GUID+8,@Moonstrike,0,1,1,28301,0,-8775.85,423.96,105.233,5.73298,180,0,0,11828,0,0,0,0,0,0), -- Moonstrike
(@GUID+9,@Tristia,0,1,1,21512,0,-8773.78,425.804,105.233,4.80621,180,0,0,11828,0,0,0,0,0,0), -- Tristia
(@GUID+10,@Dirgehammer,0,1,1,12917,0,-8781.18,419.883,105.233,6.18459,180,0,0,7048,0,0,0,0,0,0); -- Dirgehammer

DELETE FROM `game_event_creature` WHERE `eventEntry`=57;
INSERT INTO `game_event_creature` (`guid`,`eventEntry`) VALUES
(@GUID,57), -- Nargle Lashcord (31863)
(@GUID+1,57), -- Argex Irongut (32407)
(@GUID+2,57), -- Krezzik the Striker (32405)
(@GUID+3,57), -- Xazi Smolderpipe (31864)
(@GUID+4,57), -- Zom Bocom (31865)
(@GUID+5,57), -- Doris Volanthius (32385)
(@GUID+6,57), -- Blood Guard Zar'shi (32832)
(@GUID+7,57), -- Sergeant Thunderhorn (32383)
(@GUID+8,57), -- Knight Lieutenant Moonstrike (32834)
(@GUID+9,57), -- Lieutenant Tristia (32380)
(@GUID+10,57); -- Captain Dirgehammer (32381)
SET @31600HP := 2560;
SET @38000HP := 2561;
SET @1660RT_39400HP := 2564;
SET @1750RT_47400HP := 2565;
SET @1600RT_47400HP := 2566;
SET @1690RT_47400HP := 2567;
SET @49600HP := 2559;
SET @50000HP := 2570;
SET @60000HP := 2569;
SET @1800RT_62000HP := 2568;
SET @1720RT_62000HP := 2563;
SET @1630RT_62000HP := 2562;
SET @7200HP_200AP := 2443;
SET @9600HP_275AP := 2445;
SET @12000HP_350AP := 2440;
SET @1615RT_7200HP_400AP := 2452;
SET @1775RT_9600HP_550AP := 2459;
SET @1645RT_12000HP_700AP := 2454;
SET @1735RT_12000HP_700AP := 2453;
SET @1675RT_12000HP_700AP := 2451;
SET @1930RT_2250AP := 2469;
SET @1930RT_1200AP := 2468;
SET @1930RT_4500AP := 2460;
SET @1930RT_3150AP := 2466;
SET @1750RT_1350AP := 2463;
SET @2050RT_1750AP := 2470;
SET @1810RT_2250AP := 2465;
SET @1870RT_2250AP := 2462;
SET @1990RT_2250AP := 2464;


SET @BG_Zar := 32832; -- (34061/34062/34063) as s6/s7/s8?
SET @Moonstrike := 32834; -- (34082/34083/34084) as s6/s7/s8?
SET @ZomBocom := 31865; -- (or 29541 or 40205)
SET @Xazi := 31864; -- (or 29540 or 40210)
SET @Nargle := 31863; -- (or 29539 or 40211)
SET @Kezzik := 32405; -- (or 32356 or 40207)
SET @Argex := 32407; -- (or 32359 or 40215)
SET @Thunderhorn := 32383; -- (most likely) (34036/34037/34038) as s6/s7/s8?
SET @Doris := 32385; -- (most likely) (34058/34059/34060) as s6/s7/s8?
SET @Tristia := 32380; -- (most likely) (34076,34077,34078) as s6/s7/s8?

DELETE FROM `npc_vendor` WHERE `entry` IN (@BG_Zar,@Moonstrike,@ZomBocom,@Xazi,@Nargle,@Kezzik,@Argex,@Thunderhorn,@Doris,@Tristia);
INSERT INTO `npc_vendor` 
(`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
VALUES 

(@BG_Zar,0,40779,0,0,@60000HP), -- Savage Gladiator Chest DK
(@BG_Zar,0,40799,0,0,@50000HP), -- Savage Gladiator Gloves DK
(@BG_Zar,0,40817,0,0,@60000HP), -- Savage Gladiator Helm DK
(@BG_Zar,0,40837,0,0,@60000HP), -- Savage Gladiator Legs DK
(@BG_Zar,0,40857,0,0,@50000HP), -- Savage Gladiator Shoulders DK
(@BG_Zar,0,41272,0,0,@60000HP), -- Savage Gladiator Chest Druid1
(@BG_Zar,0,41268,0,0,@50000HP), -- Savage Gladiator Gloves Druid1
(@BG_Zar,0,41269,0,0,@60000HP), -- Savage Gladiator Helm Druid1
(@BG_Zar,0,41270,0,0,@60000HP), -- Savage Gladiator Legs Druid1
(@BG_Zar,0,41271,0,0,@50000HP), -- Savage Gladiator Shoulders Druid1
(@BG_Zar,0,41658,0,0,@60000HP), -- Savage Gladiator Chest Druid2
(@BG_Zar,0,41770,0,0,@50000HP), -- Savage Gladiator Gloves Druid2
(@BG_Zar,0,41675,0,0,@60000HP), -- Savage Gladiator Helm Druid2
(@BG_Zar,0,41664,0,0,@60000HP), -- Savage Gladiator Legs Druid2
(@BG_Zar,0,41712,0,0,@50000HP), -- Savage Gladiator Shoulders Druid2
(@BG_Zar,0,41313,0,0,@60000HP), -- Savage Gladiator Chest Druid3
(@BG_Zar,0,41290,0,0,@50000HP), -- Savage Gladiator Gloves Druid3
(@BG_Zar,0,41324,0,0,@60000HP), -- Savage Gladiator Helm Druid3
(@BG_Zar,0,41301,0,0,@60000HP), -- Savage Gladiator Legs Druid3
(@BG_Zar,0,41278,0,0,@50000HP), -- Savage Gladiator Shoulders Druid3
(@BG_Zar,0,41084,0,0,@60000HP), -- Savage Gladiator Chest Hunter
(@BG_Zar,0,41140,0,0,@50000HP), -- Savage Gladiator Gloves Hunter
(@BG_Zar,0,41154,0,0,@60000HP), -- Savage Gladiator Helm Hunter
(@BG_Zar,0,41202,0,0,@60000HP), -- Savage Gladiator Legs Hunter
(@BG_Zar,0,41214,0,0,@50000HP), -- Savage Gladiator Shoulders Hunter
(@BG_Zar,0,41949,0,0,@60000HP), -- Savage Gladiator Chest Mage
(@BG_Zar,0,41968,0,0,@50000HP), -- Savage Gladiator Gloves Mage
(@BG_Zar,0,41943,0,0,@60000HP), -- Savage Gladiator Helm Mage
(@BG_Zar,0,41956,0,0,@60000HP), -- Savage Gladiator Legs Mage
(@BG_Zar,0,41962,0,0,@50000HP), -- Savage Gladiator Shoulders Mage
(@BG_Zar,0,40898,0,0,@60000HP), -- Savage Gladiator Chest Paladin1
(@BG_Zar,0,40918,0,0,@50000HP), -- Savage Gladiator Gloves Paladin1
(@BG_Zar,0,40930,0,0,@60000HP), -- Savage Gladiator Helm Paladin1
(@BG_Zar,0,40936,0,0,@60000HP), -- Savage Gladiator Legs Paladin1
(@BG_Zar,0,40960,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin1
(@BG_Zar,0,40780,0,0,@60000HP), -- Savage Gladiator Chest Paladin2
(@BG_Zar,0,40798,0,0,@50000HP), -- Savage Gladiator Gloves Paladin2
(@BG_Zar,0,40818,0,0,@60000HP), -- Savage Gladiator Helm Paladin2
(@BG_Zar,0,40838,0,0,@60000HP), -- Savage Gladiator Legs Paladin2
(@BG_Zar,0,40858,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin2
(@BG_Zar,0,41851,0,0,@60000HP), -- Savage Gladiator Chest Priest1
(@BG_Zar,0,41847,0,0,@50000HP), -- Savage Gladiator Gloves Priest1
(@BG_Zar,0,41848,0,0,@60000HP), -- Savage Gladiator Helm Priest1
(@BG_Zar,0,41849,0,0,@60000HP), -- Savage Gladiator Legs Priest1
(@BG_Zar,0,41850,0,0,@50000HP), -- Savage Gladiator Shoulders Priest1
(@BG_Zar,0,41918,0,0,@60000HP), -- Savage Gladiator Chest Priest2
(@BG_Zar,0,41937,0,0,@50000HP), -- Savage Gladiator Gloves Priest2
(@BG_Zar,0,41912,0,0,@60000HP), -- Savage Gladiator Helm Priest2
(@BG_Zar,0,41924,0,0,@60000HP), -- Savage Gladiator Legs Priest2
(@BG_Zar,0,41930,0,0,@50000HP), -- Savage Gladiator Shoulders Priest2
(@BG_Zar,0,41647,0,0,@60000HP), -- Savage Gladiator Chest Rogue
(@BG_Zar,0,41643,0,0,@50000HP), -- Savage Gladiator Gloves Rogue
(@BG_Zar,0,41644,0,0,@60000HP), -- Savage Gladiator Helm Rogue
(@BG_Zar,0,41645,0,0,@60000HP), -- Savage Gladiator Legs Rogue
(@BG_Zar,0,41646,0,0,@50000HP), -- Savage Gladiator Shoulders Rogue
(@BG_Zar,0,41078,0,0,@60000HP), -- Savage Gladiator Chest Shaman1
(@BG_Zar,0,41134,0,0,@50000HP), -- Savage Gladiator Gloves Shaman1
(@BG_Zar,0,41148,0,0,@60000HP), -- Savage Gladiator Helm Shaman1
(@BG_Zar,0,41160,0,0,@60000HP), -- Savage Gladiator Legs Shaman1
(@BG_Zar,0,41208,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman1
(@BG_Zar,0,40987,0,0,@60000HP), -- Savage Gladiator Chest Shaman2
(@BG_Zar,0,41004,0,0,@50000HP), -- Savage Gladiator Gloves Shaman2
(@BG_Zar,0,41016,0,0,@60000HP), -- Savage Gladiator Helm Shaman2
(@BG_Zar,0,41030,0,0,@60000HP), -- Savage Gladiator Legs Shaman2
(@BG_Zar,0,41041,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman2
(@BG_Zar,0,40986,0,0,@60000HP), -- Savage Gladiator Chest Shaman3
(@BG_Zar,0,40998,0,0,@50000HP), -- Savage Gladiator Gloves Shaman3
(@BG_Zar,0,41010,0,0,@60000HP), -- Savage Gladiator Helm Shaman3
(@BG_Zar,0,41023,0,0,@60000HP), -- Savage Gladiator Legs Shaman3
(@BG_Zar,0,41024,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman3
(@BG_Zar,0,41996,0,0,@60000HP), -- Savage Gladiator Chest Warlock
(@BG_Zar,0,42014,0,0,@50000HP), -- Savage Gladiator Gloves Warlock
(@BG_Zar,0,41990,0,0,@60000HP), -- Savage Gladiator Helm Warlock
(@BG_Zar,0,42002,0,0,@60000HP), -- Savage Gladiator Legs Warlock
(@BG_Zar,0,42008,0,0,@50000HP), -- Savage Gladiator Shoulders Warlock
(@BG_Zar,0,40778,0,0,@60000HP), -- Savage Gladiator Chest Warrior
(@BG_Zar,0,40797,0,0,@50000HP), -- Savage Gladiator Gloves Warrior
(@BG_Zar,0,40816,0,0,@60000HP), -- Savage Gladiator Helm Warrior
(@BG_Zar,0,40836,0,0,@60000HP), -- Savage Gladiator Legs Warrior
(@BG_Zar,0,40856,0,0,@50000HP), -- Savage Gladiator Shoulders Warrior
-- Spacer
(@Moonstrike,0,40779,0,0,@60000HP), -- Savage Gladiator Chest DK
(@Moonstrike,0,40799,0,0,@50000HP), -- Savage Gladiator Gloves DK
(@Moonstrike,0,40817,0,0,@60000HP), -- Savage Gladiator Helm DK
(@Moonstrike,0,40837,0,0,@60000HP), -- Savage Gladiator Legs DK
(@Moonstrike,0,40857,0,0,@50000HP), -- Savage Gladiator Shoulders DK
(@Moonstrike,0,41272,0,0,@60000HP), -- Savage Gladiator Chest Druid1
(@Moonstrike,0,41268,0,0,@50000HP), -- Savage Gladiator Gloves Druid1
(@Moonstrike,0,41269,0,0,@60000HP), -- Savage Gladiator Helm Druid1
(@Moonstrike,0,41270,0,0,@60000HP), -- Savage Gladiator Legs Druid1
(@Moonstrike,0,41271,0,0,@50000HP), -- Savage Gladiator Shoulders Druid1
(@Moonstrike,0,41658,0,0,@60000HP), -- Savage Gladiator Chest Druid2
(@Moonstrike,0,41770,0,0,@50000HP), -- Savage Gladiator Gloves Druid2
(@Moonstrike,0,41675,0,0,@60000HP), -- Savage Gladiator Helm Druid2
(@Moonstrike,0,41664,0,0,@60000HP), -- Savage Gladiator Legs Druid2
(@Moonstrike,0,41712,0,0,@50000HP), -- Savage Gladiator Shoulders Druid2
(@Moonstrike,0,41313,0,0,@60000HP), -- Savage Gladiator Chest Druid3
(@Moonstrike,0,41290,0,0,@50000HP), -- Savage Gladiator Gloves Druid3
(@Moonstrike,0,41324,0,0,@60000HP), -- Savage Gladiator Helm Druid3
(@Moonstrike,0,41301,0,0,@60000HP), -- Savage Gladiator Legs Druid3
(@Moonstrike,0,41278,0,0,@50000HP), -- Savage Gladiator Shoulders Druid3
(@Moonstrike,0,41084,0,0,@60000HP), -- Savage Gladiator Chest Hunter
(@Moonstrike,0,41140,0,0,@50000HP), -- Savage Gladiator Gloves Hunter
(@Moonstrike,0,41154,0,0,@60000HP), -- Savage Gladiator Helm Hunter
(@Moonstrike,0,41202,0,0,@60000HP), -- Savage Gladiator Legs Hunter
(@Moonstrike,0,41214,0,0,@50000HP), -- Savage Gladiator Shoulders Hunter
(@Moonstrike,0,41949,0,0,@60000HP), -- Savage Gladiator Chest Mage
(@Moonstrike,0,41968,0,0,@50000HP), -- Savage Gladiator Gloves Mage
(@Moonstrike,0,41943,0,0,@60000HP), -- Savage Gladiator Helm Mage
(@Moonstrike,0,41956,0,0,@60000HP), -- Savage Gladiator Legs Mage
(@Moonstrike,0,41962,0,0,@50000HP), -- Savage Gladiator Shoulders Mage
(@Moonstrike,0,40898,0,0,@60000HP), -- Savage Gladiator Chest Paladin1
(@Moonstrike,0,40918,0,0,@50000HP), -- Savage Gladiator Gloves Paladin1
(@Moonstrike,0,40930,0,0,@60000HP), -- Savage Gladiator Helm Paladin1
(@Moonstrike,0,40936,0,0,@60000HP), -- Savage Gladiator Legs Paladin1
(@Moonstrike,0,40960,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin1
(@Moonstrike,0,40780,0,0,@60000HP), -- Savage Gladiator Chest Paladin2
(@Moonstrike,0,40798,0,0,@50000HP), -- Savage Gladiator Gloves Paladin2
(@Moonstrike,0,40818,0,0,@60000HP), -- Savage Gladiator Helm Paladin2
(@Moonstrike,0,40838,0,0,@60000HP), -- Savage Gladiator Legs Paladin2
(@Moonstrike,0,40858,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin2
(@Moonstrike,0,41851,0,0,@60000HP), -- Savage Gladiator Chest Priest1
(@Moonstrike,0,41847,0,0,@50000HP), -- Savage Gladiator Gloves Priest1
(@Moonstrike,0,41848,0,0,@60000HP), -- Savage Gladiator Helm Priest1
(@Moonstrike,0,41849,0,0,@60000HP), -- Savage Gladiator Legs Priest1
(@Moonstrike,0,41850,0,0,@50000HP), -- Savage Gladiator Shoulders Priest1
(@Moonstrike,0,41918,0,0,@60000HP), -- Savage Gladiator Chest Priest2
(@Moonstrike,0,41937,0,0,@50000HP), -- Savage Gladiator Gloves Priest2
(@Moonstrike,0,41912,0,0,@60000HP), -- Savage Gladiator Helm Priest2
(@Moonstrike,0,41924,0,0,@60000HP), -- Savage Gladiator Legs Priest2
(@Moonstrike,0,41930,0,0,@50000HP), -- Savage Gladiator Shoulders Priest2
(@Moonstrike,0,41647,0,0,@60000HP), -- Savage Gladiator Chest Rogue
(@Moonstrike,0,41643,0,0,@50000HP), -- Savage Gladiator Gloves Rogue
(@Moonstrike,0,41644,0,0,@60000HP), -- Savage Gladiator Helm Rogue
(@Moonstrike,0,41645,0,0,@60000HP), -- Savage Gladiator Legs Rogue
(@Moonstrike,0,41646,0,0,@50000HP), -- Savage Gladiator Shoulders Rogue
(@Moonstrike,0,41078,0,0,@60000HP), -- Savage Gladiator Chest Shaman1
(@Moonstrike,0,41134,0,0,@50000HP), -- Savage Gladiator Gloves Shaman1
(@Moonstrike,0,41148,0,0,@60000HP), -- Savage Gladiator Helm Shaman1
(@Moonstrike,0,41160,0,0,@60000HP), -- Savage Gladiator Legs Shaman1
(@Moonstrike,0,41208,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman1
(@Moonstrike,0,40987,0,0,@60000HP), -- Savage Gladiator Chest Shaman2
(@Moonstrike,0,41004,0,0,@50000HP), -- Savage Gladiator Gloves Shaman2
(@Moonstrike,0,41016,0,0,@60000HP), -- Savage Gladiator Helm Shaman2
(@Moonstrike,0,41030,0,0,@60000HP), -- Savage Gladiator Legs Shaman2
(@Moonstrike,0,41041,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman2
(@Moonstrike,0,40986,0,0,@60000HP), -- Savage Gladiator Chest Shaman3
(@Moonstrike,0,40998,0,0,@50000HP), -- Savage Gladiator Gloves Shaman3
(@Moonstrike,0,41010,0,0,@60000HP), -- Savage Gladiator Helm Shaman3
(@Moonstrike,0,41023,0,0,@60000HP), -- Savage Gladiator Legs Shaman3
(@Moonstrike,0,41024,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman3
(@Moonstrike,0,41996,0,0,@60000HP), -- Savage Gladiator Chest Warlock
(@Moonstrike,0,42014,0,0,@50000HP), -- Savage Gladiator Gloves Warlock
(@Moonstrike,0,41990,0,0,@60000HP), -- Savage Gladiator Helm Warlock
(@Moonstrike,0,42002,0,0,@60000HP), -- Savage Gladiator Legs Warlock
(@Moonstrike,0,42008,0,0,@50000HP), -- Savage Gladiator Shoulders Warlock
(@Moonstrike,0,40778,0,0,@60000HP), -- Savage Gladiator Chest Warrior
(@Moonstrike,0,40797,0,0,@50000HP), -- Savage Gladiator Gloves Warrior
(@Moonstrike,0,40816,0,0,@60000HP), -- Savage Gladiator Helm Warrior
(@Moonstrike,0,40836,0,0,@60000HP), -- Savage Gladiator Legs Warrior
(@Moonstrike,0,40856,0,0,@50000HP), -- Savage Gladiator Shoulders Warrior
(@ZomBocom,0,40779,0,0,@12000HP_350AP), -- Savage Gladiator Chest DK
(@ZomBocom,0,40799,0,0,@7200HP_200AP), -- Savage Gladiator Gloves DK
(@ZomBocom,0,40817,0,0,@12000HP_350AP), -- Savage Gladiator Helm DK
(@ZomBocom,0,40837,0,0,@12000HP_350AP), -- Savage Gladiator Legs DK
(@ZomBocom,0,40857,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders DK
(@ZomBocom,0,41272,0,0,@12000HP_350AP), -- Savage Gladiator Chest Druid1
(@ZomBocom,0,41268,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Druid1
(@ZomBocom,0,41269,0,0,@12000HP_350AP), -- Savage Gladiator Helm Druid1
(@ZomBocom,0,41270,0,0,@12000HP_350AP), -- Savage Gladiator Legs Druid1
(@ZomBocom,0,41271,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Druid1
(@ZomBocom,0,41658,0,0,@12000HP_350AP), -- Savage Gladiator Chest Druid2
(@ZomBocom,0,41770,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Druid2
(@ZomBocom,0,41675,0,0,@12000HP_350AP), -- Savage Gladiator Helm Druid2
(@ZomBocom,0,41664,0,0,@12000HP_350AP), -- Savage Gladiator Legs Druid2
(@ZomBocom,0,41712,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Druid2
(@ZomBocom,0,41313,0,0,@12000HP_350AP), -- Savage Gladiator Chest Druid3
(@ZomBocom,0,41290,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Druid3
(@ZomBocom,0,41324,0,0,@12000HP_350AP), -- Savage Gladiator Helm Druid3
(@ZomBocom,0,41301,0,0,@12000HP_350AP), -- Savage Gladiator Legs Druid3
(@ZomBocom,0,41278,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Druid3
(@ZomBocom,0,41084,0,0,@12000HP_350AP), -- Savage Gladiator Chest Hunter
(@ZomBocom,0,41140,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Hunter
(@ZomBocom,0,41154,0,0,@12000HP_350AP), -- Savage Gladiator Helm Hunter
(@ZomBocom,0,41202,0,0,@12000HP_350AP), -- Savage Gladiator Legs Hunter
(@ZomBocom,0,41214,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Hunter
(@ZomBocom,0,41949,0,0,@12000HP_350AP), -- Savage Gladiator Chest Mage
(@ZomBocom,0,41968,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Mage
(@ZomBocom,0,41943,0,0,@12000HP_350AP), -- Savage Gladiator Helm Mage
(@ZomBocom,0,41956,0,0,@12000HP_350AP), -- Savage Gladiator Legs Mage
(@ZomBocom,0,41962,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Mage
(@ZomBocom,0,40898,0,0,@12000HP_350AP), -- Savage Gladiator Chest Paladin1
(@ZomBocom,0,40918,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Paladin1
(@ZomBocom,0,40930,0,0,@12000HP_350AP), -- Savage Gladiator Helm Paladin1
(@ZomBocom,0,40936,0,0,@12000HP_350AP), -- Savage Gladiator Legs Paladin1
(@ZomBocom,0,40960,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Paladin1
(@ZomBocom,0,40780,0,0,@12000HP_350AP), -- Savage Gladiator Chest Paladin2
(@ZomBocom,0,40798,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Paladin2
(@ZomBocom,0,40818,0,0,@12000HP_350AP), -- Savage Gladiator Helm Paladin2
(@ZomBocom,0,40838,0,0,@12000HP_350AP), -- Savage Gladiator Legs Paladin2
(@ZomBocom,0,40858,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Paladin2
(@ZomBocom,0,41851,0,0,@12000HP_350AP), -- Savage Gladiator Chest Priest1
(@ZomBocom,0,41847,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Priest1
(@ZomBocom,0,41848,0,0,@12000HP_350AP), -- Savage Gladiator Helm Priest1
(@ZomBocom,0,41849,0,0,@12000HP_350AP), -- Savage Gladiator Legs Priest1
(@ZomBocom,0,41850,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Priest1
(@ZomBocom,0,41918,0,0,@12000HP_350AP), -- Savage Gladiator Chest Priest2
(@ZomBocom,0,41937,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Priest2
(@ZomBocom,0,41912,0,0,@12000HP_350AP), -- Savage Gladiator Helm Priest2
(@ZomBocom,0,41924,0,0,@12000HP_350AP), -- Savage Gladiator Legs Priest2
(@ZomBocom,0,41930,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Priest2
(@ZomBocom,0,41647,0,0,@12000HP_350AP), -- Savage Gladiator Chest Rogue
(@ZomBocom,0,41643,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Rogue
(@ZomBocom,0,41644,0,0,@12000HP_350AP), -- Savage Gladiator Helm Rogue
(@ZomBocom,0,41645,0,0,@12000HP_350AP), -- Savage Gladiator Legs Rogue
(@ZomBocom,0,41646,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Rogue
(@ZomBocom,0,41078,0,0,@12000HP_350AP), -- Savage Gladiator Chest Shaman1
(@ZomBocom,0,41134,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Shaman1
(@ZomBocom,0,41148,0,0,@12000HP_350AP), -- Savage Gladiator Helm Shaman1
(@ZomBocom,0,41160,0,0,@12000HP_350AP), -- Savage Gladiator Legs Shaman1
(@ZomBocom,0,41208,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Shaman1
(@ZomBocom,0,40987,0,0,@12000HP_350AP), -- Savage Gladiator Chest Shaman2
(@ZomBocom,0,41004,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Shaman2
(@ZomBocom,0,41016,0,0,@12000HP_350AP), -- Savage Gladiator Helm Shaman2
(@ZomBocom,0,41030,0,0,@12000HP_350AP), -- Savage Gladiator Legs Shaman2
(@ZomBocom,0,41041,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Shaman2
(@ZomBocom,0,40986,0,0,@12000HP_350AP), -- Savage Gladiator Chest Shaman3
(@ZomBocom,0,40998,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Shaman3
(@ZomBocom,0,41010,0,0,@12000HP_350AP), -- Savage Gladiator Helm Shaman3
(@ZomBocom,0,41023,0,0,@12000HP_350AP), -- Savage Gladiator Legs Shaman3
(@ZomBocom,0,41024,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Shaman3
(@ZomBocom,0,41996,0,0,@12000HP_350AP), -- Savage Gladiator Chest Warlock
(@ZomBocom,0,42014,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Warlock
(@ZomBocom,0,41990,0,0,@12000HP_350AP), -- Savage Gladiator Helm Warlock
(@ZomBocom,0,42002,0,0,@12000HP_350AP), -- Savage Gladiator Legs Warlock
(@ZomBocom,0,42008,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Warlock
(@ZomBocom,0,40778,0,0,@12000HP_350AP), -- Savage Gladiator Chest Warrior
(@ZomBocom,0,40797,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Warrior
(@ZomBocom,0,40816,0,0,@12000HP_350AP), -- Savage Gladiator Helm Warrior
(@ZomBocom,0,40836,0,0,@12000HP_350AP), -- Savage Gladiator Legs Warrior
(@ZomBocom,0,40856,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Warrior
(@Xazi,0,40781,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest DK
(@Xazi,0,40803,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves DK
(@Xazi,0,40820,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm DK
(@Xazi,0,40841,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs DK
(@Xazi,0,40860,0,0,@1775RT_9600HP_550AP),  -- Hateful Gladiator Shoulders DK
(@Xazi,0,41308,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Druid1
(@Xazi,0,41284,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves Druid1
(@Xazi,0,41319,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Druid1
(@Xazi,0,41296,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Druid1
(@Xazi,0,41273,0,0,@1775RT_9600HP_550AP),  -- Hateful Gladiator Shoulders Druid1
(@Xazi,0,41659,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Druid2
(@Xazi,0,41771,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves Druid2
(@Xazi,0,41676,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Druid2
(@Xazi,0,41665,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Druid2
(@Xazi,0,41713,0,0,@1775RT_9600HP_550AP),  -- Hateful Gladiator Shoulders Druid2
(@Xazi,0,41314,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Druid3
(@Xazi,0,41291,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves Druid3
(@Xazi,0,41325,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Druid3
(@Xazi,0,41302,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Druid3
(@Xazi,0,41279,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Druid3
(@Xazi,0,41085,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Hunter
(@Xazi,0,41141,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Hunter
(@Xazi,0,41155,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Hunter
(@Xazi,0,41203,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Hunter
(@Xazi,0,41215,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Hunter
(@Xazi,0,41950,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Mage
(@Xazi,0,41969,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Mage
(@Xazi,0,41944,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Mage
(@Xazi,0,41957,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Mage
(@Xazi,0,41963,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Mage
(@Xazi,0,40904,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Paladin1
(@Xazi,0,40925,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Paladin1
(@Xazi,0,40931,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Paladin1
(@Xazi,0,40937,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Paladin1
(@Xazi,0,40961,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Paladin1
(@Xazi,0,40782,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Paladin2
(@Xazi,0,40802,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Paladin2
(@Xazi,0,40821,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Paladin2
(@Xazi,0,40842,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Paladin2
(@Xazi,0,40861,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Paladin2
(@Xazi,0,41857,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Priest1
(@Xazi,0,41872,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Priest1
(@Xazi,0,41852,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Priest1
(@Xazi,0,41862,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Priest1
(@Xazi,0,41867,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Priest1
(@Xazi,0,41919,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Priest2
(@Xazi,0,41938,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Priest2
(@Xazi,0,41913,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Priest2
(@Xazi,0,41925,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Priest2
(@Xazi,0,41931,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Priest2
(@Xazi,0,41648,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Rogue
(@Xazi,0,41765,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Rogue
(@Xazi,0,41670,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Rogue
(@Xazi,0,41653,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Rogue
(@Xazi,0,41681,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Rogue
(@Xazi,0,41079,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Shaman1
(@Xazi,0,41135,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Shaman1
(@Xazi,0,41149,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Shaman1
(@Xazi,0,41162,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Shaman1
(@Xazi,0,41209,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Shaman1
(@Xazi,0,40989,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Shaman2
(@Xazi,0,41005,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Shaman2
(@Xazi,0,41017,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Shaman2
(@Xazi,0,41031,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Shaman2
(@Xazi,0,41042,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Shaman2
(@Xazi,0,40988,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Shaman3
(@Xazi,0,40999,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Shaman3
(@Xazi,0,41011,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Shaman3
(@Xazi,0,41025,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Shaman3
(@Xazi,0,41036,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Shaman3
(@Xazi,0,42001,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Warlock
(@Xazi,0,42015,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Warlock
(@Xazi,0,41991,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Warlock
(@Xazi,0,42003,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Warlock
(@Xazi,0,42009,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Warlock
(@Xazi,0,40783,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Warrior
(@Xazi,0,40801,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Warrior
(@Xazi,0,40819,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Warrior
(@Xazi,0,40840,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Warrior
(@Xazi,0,40859,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Warrior
(@Nargle,0,40784,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest DK
(@Nargle,0,40806,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves DK
(@Nargle,0,40824,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm DK
(@Nargle,0,40845,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs DK
(@Nargle,0,40863,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders DK
(@Nargle,0,41309,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid1
(@Nargle,0,41286,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid1
(@Nargle,0,41320,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid1
(@Nargle,0,41297,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid1
(@Nargle,0,41274,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid1
(@Nargle,0,41660,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid2
(@Nargle,0,41772,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid2
(@Nargle,0,41677,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid2
(@Nargle,0,41666,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid2
(@Nargle,0,41714,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid2
(@Nargle,0,41315,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid3
(@Nargle,0,41292,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid3
(@Nargle,0,41326,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid3
(@Nargle,0,41303,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid3
(@Nargle,0,41280,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid3
(@Nargle,0,41086,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Hunter
(@Nargle,0,41142,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Hunter
(@Nargle,0,41156,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Hunter
(@Nargle,0,41204,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Hunter
(@Nargle,0,41216,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Hunter
(@Nargle,0,41951,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Mage
(@Nargle,0,41970,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Mage
(@Nargle,0,41945,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Mage
(@Nargle,0,41958,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Mage
(@Nargle,0,41964,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Mage
(@Nargle,0,40905,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin1
(@Nargle,0,40926,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin1
(@Nargle,0,40932,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin1
(@Nargle,0,40938,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin1
(@Nargle,0,40962,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin1
(@Nargle,0,40785,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin2
(@Nargle,0,40805,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin2
(@Nargle,0,40825,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin2
(@Nargle,0,40846,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin2
(@Nargle,0,40864,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin2
(@Nargle,0,41858,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest1
(@Nargle,0,41873,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest1
(@Nargle,0,41853,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest1
(@Nargle,0,41863,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest1
(@Nargle,0,41868,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest1
(@Nargle,0,41920,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest2
(@Nargle,0,41939,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest2
(@Nargle,0,41914,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest2
(@Nargle,0,41926,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest2
(@Nargle,0,41933,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest2
(@Nargle,0,41649,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Rogue
(@Nargle,0,41766,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Rogue
(@Nargle,0,41671,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Rogue
(@Nargle,0,41654,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Rogue
(@Nargle,0,41682,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Rogue
(@Nargle,0,41080,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman1
(@Nargle,0,41136,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman1
(@Nargle,0,41150,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman1
(@Nargle,0,41198,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman1
(@Nargle,0,41210,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman1
(@Nargle,0,40991,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman2
(@Nargle,0,41006,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman2
(@Nargle,0,41018,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman2
(@Nargle,0,41032,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman2
(@Nargle,0,41043,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman2
(@Nargle,0,40990,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman3
(@Nargle,0,41000,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman3
(@Nargle,0,41012,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman3
(@Nargle,0,41026,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman3
(@Nargle,0,41037,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman3
(@Nargle,0,41997,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warlock
(@Nargle,0,42016,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warlock
(@Nargle,0,41992,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warlock
(@Nargle,0,42004,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warlock
(@Nargle,0,42010,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warlock
(@Nargle,0,40786,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warrior
(@Nargle,0,40804,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warrior
(@Nargle,0,40823,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warrior
(@Nargle,0,40844,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warrior
(@Nargle,0,40862,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warrior

(@Nargle,0,42490,0,0,@1930RT_4500AP),-- Deadly Gladiator Longbow (bow)
(@Nargle,0,42495,0,0,@1930RT_4500AP),-- Deadly Gladiator Heavy Crossbow (crossbow)
(@Nargle,0,42255,0,0,@1930RT_3150AP),-- Deadly Gladiator Mutilator (dagger) offhand
(@Nargle,0,42242,0,0,@1930RT_3150AP),-- Deadly Gladiator Shanker (dagger) One Hand
(@Nargle,0,42248,0,0,@1930RT_3150AP),-- Deadly Gladiator Shiv (dagger) offhand
(@Nargle,0,42346,0,0,@1930RT_3150AP),-- Deadly Gladiator Spellblade (dagger) Main Hand
(@Nargle,0,42265,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Render (Fist Weapon) offhand
(@Nargle,0,42270,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Ripper (Fist Weapon) offhand
(@Nargle,0,42260,0,0,@1930RT_3150AP),-- Deadly Gladiator Right Ripper (Fist Weapon) main hand
(@Nargle,0,42485,0,0,@1930RT_4500AP),-- Deadly Gladiator Rifle (Gun)
(@Nargle,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Chopper (1haxe) offhand
(@Nargle,0,42208,0,0,@1930RT_3150AP),-- Deadly Gladiator Cleaver (1haxe) mainhand
(@Nargle,0,42227,0,0,@1930RT_3150AP),-- Deadly Gladiator Hacker (1haxe) offhand
(@Nargle,0,42237,0,0,@1930RT_3150AP),-- Deadly Gladiator Waraxe (1haxe) one hand
(@Nargle,0,42280,0,0,@1930RT_3150AP),-- Deadly Gladiator Bonecracker (1hmace) offhand
(@Nargle,0,42352,0,0,@1930RT_3150AP),-- Deadly Gladiator Gavel (1h mace) main hand
(@Nargle,0,42275,0,0,@1930RT_3150AP),-- Deadly Gladiator Pummeler (1h mace) one hand
(@Nargle,0,42290,0,0,@1930RT_3150AP),-- Deadly Gladiator Quickblade (1h sword) off hand
(@Nargle,0,42285,0,0,@1930RT_3150AP),-- Deadly Gladiator Slicer (1h sword) one hand
(@Nargle,0,42327,0,0,@1930RT_4500AP),-- Deadly Gladiator Pike (polearm)
(@Nargle,0,42362,0,0,@1930RT_4500AP),-- Deadly Gladiator Battle Staff (staff)
(@Nargle,0,42384,0,0,@1930RT_4500AP),-- Deadly Gladiator Energy Staff (staff)
(@Nargle,0,44420,0,0,@1930RT_4500AP),-- Deadly Gladiator Focus Staff (staff)
(@Nargle,0,42390,0,0,@1930RT_4500AP),-- Deadly Gladiator Staff (staff)
(@Nargle,0,44419,0,0,@1930RT_4500AP),-- Deadly Gladiator War Staff (staff)
(@Nargle,0,42450,0,0,@1930RT_2250AP),-- Deadly Gladiator War Edge (Thrown)
(@Nargle,0,42317,0,0,@1930RT_4500AP),-- Deadly Gladiator Decapitator (2haxe)
(@Nargle,0,42322,0,0,@1930RT_4500AP),-- Deadly Gladiator Bonegrinder (2hmace)
(@Nargle,0,42332,0,0,@1930RT_4500AP),-- Deadly Gladiator Greatsword (2h Sword)
(@Nargle,0,42513,0,0,@1930RT_2250AP),-- Deadly Gladiator Baton of Light (wand)
(@Nargle,0,42519,0,0,@1930RT_2250AP),-- Deadly Gladiator Piercing Touch (wand)
(@Nargle,0,42502,0,0,@1930RT_2250AP),-- Deadly Gladiator Touch of Defeat (wand)
(@Nargle,0,42564,0,0,@1930RT_2250AP),-- Deadly Gladiator Barrier (shield)
(@Nargle,0,42570,0,0,@1930RT_2250AP),-- Deadly Gladiator Redoubt (shield)
(@Nargle,0,42559,0,0,@1930RT_2250AP),-- Deadly Gladiator Shield Wall (shield)
(@Nargle,0,42588,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Resolve (Relic)
(@Nargle,0,42583,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Steadfastness (Relic)
(@Nargle,0,42578,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Tenacity (Relic)
(@Nargle,0,42852,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Fortitude (Relic)
(@Nargle,0,42614,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Justice (Relic)
(@Nargle,0,42620,0,0,@1930RT_1200AP),-- Deadly Gladiator Sigil of Strife (Relic)
(@Nargle,0,42607,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Indomitability (Relic)
(@Nargle,0,42602,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Survival (Relic)
(@Nargle,0,42597,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of the Third Wind (Relic)

(@Kezzik,0,40784,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest DK
(@Kezzik,0,40806,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves DK
(@Kezzik,0,40824,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm DK
(@Kezzik,0,40845,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs DK
(@Kezzik,0,40863,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders DK
(@Kezzik,0,41309,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid1
(@Kezzik,0,41286,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid1
(@Kezzik,0,41320,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid1
(@Kezzik,0,41297,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid1
(@Kezzik,0,41274,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid1
(@Kezzik,0,41660,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid2
(@Kezzik,0,41772,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid2
(@Kezzik,0,41677,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid2
(@Kezzik,0,41666,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid2
(@Kezzik,0,41714,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid2
(@Kezzik,0,41315,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid3
(@Kezzik,0,41292,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid3
(@Kezzik,0,41326,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid3
(@Kezzik,0,41303,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid3
(@Kezzik,0,41280,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid3
(@Kezzik,0,41086,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Hunter
(@Kezzik,0,41142,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Hunter
(@Kezzik,0,41156,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Hunter
(@Kezzik,0,41204,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Hunter
(@Kezzik,0,41216,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Hunter
(@Kezzik,0,41951,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Mage
(@Kezzik,0,41970,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Mage
(@Kezzik,0,41945,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Mage
(@Kezzik,0,41958,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Mage
(@Kezzik,0,41964,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Mage
(@Kezzik,0,40905,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin1
(@Kezzik,0,40926,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin1
(@Kezzik,0,40932,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin1
(@Kezzik,0,40938,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin1
(@Kezzik,0,40962,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin1
(@Kezzik,0,40785,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin2
(@Kezzik,0,40805,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin2
(@Kezzik,0,40825,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin2
(@Kezzik,0,40846,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin2
(@Kezzik,0,40864,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin2
(@Kezzik,0,41858,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest1
(@Kezzik,0,41873,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest1
(@Kezzik,0,41853,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest1
(@Kezzik,0,41863,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest1
(@Kezzik,0,41868,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest1
(@Kezzik,0,41920,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest2
(@Kezzik,0,41939,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest2
(@Kezzik,0,41914,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest2
(@Kezzik,0,41926,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest2
(@Kezzik,0,41933,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest2
(@Kezzik,0,41649,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Rogue
(@Kezzik,0,41766,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Rogue
(@Kezzik,0,41671,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Rogue
(@Kezzik,0,41654,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Rogue
(@Kezzik,0,41682,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Rogue
(@Kezzik,0,41080,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman1
(@Kezzik,0,41136,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman1
(@Kezzik,0,41150,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman1
(@Kezzik,0,41198,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman1
(@Kezzik,0,41210,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman1
(@Kezzik,0,40991,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman2
(@Kezzik,0,41006,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman2
(@Kezzik,0,41018,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman2
(@Kezzik,0,41032,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman2
(@Kezzik,0,41043,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman2
(@Kezzik,0,40990,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman3
(@Kezzik,0,41000,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman3
(@Kezzik,0,41012,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman3
(@Kezzik,0,41026,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman3
(@Kezzik,0,41037,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman3
(@Kezzik,0,41997,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warlock
(@Kezzik,0,42016,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warlock
(@Kezzik,0,41992,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warlock
(@Kezzik,0,42004,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warlock
(@Kezzik,0,42010,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warlock
(@Kezzik,0,40786,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warrior
(@Kezzik,0,40804,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warrior
(@Kezzik,0,40823,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warrior
(@Kezzik,0,40844,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warrior
(@Kezzik,0,40862,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warrior

(@Kezzik,0,42490,0,0,@1930RT_4500AP),-- Deadly Gladiator Longbow (bow)
(@Kezzik,0,42495,0,0,@1930RT_4500AP),-- Deadly Gladiator Heavy Crossbow (crossbow)
(@Kezzik,0,42255,0,0,@1930RT_3150AP),-- Deadly Gladiator Mutilator (dagger) offhand
(@Kezzik,0,42242,0,0,@1930RT_3150AP),-- Deadly Gladiator Shanker (dagger) One Hand
(@Kezzik,0,42248,0,0,@1930RT_3150AP),-- Deadly Gladiator Shiv (dagger) offhand
(@Kezzik,0,42346,0,0,@1930RT_3150AP),-- Deadly Gladiator Spellblade (dagger) Main Hand
(@Kezzik,0,42265,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Render (Fist Weapon) offhand
(@Kezzik,0,42270,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Ripper (Fist Weapon) offhand
(@Kezzik,0,42260,0,0,@1930RT_3150AP),-- Deadly Gladiator Right Ripper (Fist Weapon) main hand
(@Kezzik,0,42485,0,0,@1930RT_4500AP),-- Deadly Gladiator Rifle (Gun)
(@Kezzik,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Chopper (1haxe) offhand
(@Kezzik,0,42208,0,0,@1930RT_3150AP),-- Deadly Gladiator Cleaver (1haxe) mainhand
(@Kezzik,0,42227,0,0,@1930RT_3150AP),-- Deadly Gladiator Hacker (1haxe) offhand
(@Kezzik,0,42237,0,0,@1930RT_3150AP),-- Deadly Gladiator Waraxe (1haxe) one hand
(@Kezzik,0,42280,0,0,@1930RT_3150AP),-- Deadly Gladiator Bonecracker (1hmace) offhand
(@Kezzik,0,42352,0,0,@1930RT_3150AP),-- Deadly Gladiator Gavel (1h mace) main hand
(@Kezzik,0,42275,0,0,@1930RT_3150AP),-- Deadly Gladiator Pummeler (1h mace) one hand
(@Kezzik,0,42290,0,0,@1930RT_3150AP),-- Deadly Gladiator Quickblade (1h sword) off hand
(@Kezzik,0,42285,0,0,@1930RT_3150AP),-- Deadly Gladiator Slicer (1h sword) one hand
(@Kezzik,0,42327,0,0,@1930RT_4500AP),-- Deadly Gladiator Pike (polearm)
(@Kezzik,0,42362,0,0,@1930RT_4500AP),-- Deadly Gladiator Battle Staff (staff)
(@Kezzik,0,42384,0,0,@1930RT_4500AP),-- Deadly Gladiator Energy Staff (staff)
(@Kezzik,0,44420,0,0,@1930RT_4500AP),-- Deadly Gladiator Focus Staff (staff)
(@Kezzik,0,42390,0,0,@1930RT_4500AP),-- Deadly Gladiator Staff (staff)
(@Kezzik,0,44419,0,0,@1930RT_4500AP),-- Deadly Gladiator War Staff (staff)
(@Kezzik,0,42450,0,0,@1930RT_2250AP),-- Deadly Gladiator War Edge (Thrown)
(@Kezzik,0,42317,0,0,@1930RT_4500AP),-- Deadly Gladiator Decapitator (2haxe)
(@Kezzik,0,42322,0,0,@1930RT_4500AP),-- Deadly Gladiator Bonegrinder (2hmace)
(@Kezzik,0,42332,0,0,@1930RT_4500AP),-- Deadly Gladiator Greatsword (2h Sword)
(@Kezzik,0,42513,0,0,@1930RT_2250AP),-- Deadly Gladiator Baton of Light (wand)
(@Kezzik,0,42519,0,0,@1930RT_2250AP),-- Deadly Gladiator Piercing Touch (wand)
(@Kezzik,0,42502,0,0,@1930RT_2250AP),-- Deadly Gladiator Touch of Defeat (wand)
(@Kezzik,0,42564,0,0,@1930RT_2250AP),-- Deadly Gladiator Barrier (shield)
(@Kezzik,0,42570,0,0,@1930RT_2250AP),-- Deadly Gladiator Redoubt (shield)
(@Kezzik,0,42559,0,0,@1930RT_2250AP),-- Deadly Gladiator Shield Wall (shield)
(@Kezzik,0,42588,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Resolve (Relic)
(@Kezzik,0,42583,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Steadfastness (Relic)
(@Kezzik,0,42578,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Tenacity (Relic)
(@Kezzik,0,42852,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Fortitude (Relic)
(@Kezzik,0,42614,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Justice (Relic)
(@Kezzik,0,42620,0,0,@1930RT_1200AP),-- Deadly Gladiator Sigil of Strife (Relic)
(@Kezzik,0,42607,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Indomitability (Relic)
(@Kezzik,0,42602,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Survival (Relic)
(@Kezzik,0,42597,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of the Third Wind (Relic)

(@Argex,0,40784,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest DK
(@Argex,0,40806,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves DK
(@Argex,0,40824,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm DK
(@Argex,0,40845,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs DK
(@Argex,0,40863,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders DK
(@Argex,0,41309,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid1
(@Argex,0,41286,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid1
(@Argex,0,41320,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid1
(@Argex,0,41297,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid1
(@Argex,0,41274,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid1
(@Argex,0,41660,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid2
(@Argex,0,41772,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid2
(@Argex,0,41677,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid2
(@Argex,0,41666,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid2
(@Argex,0,41714,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid2
(@Argex,0,41315,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid3
(@Argex,0,41292,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid3
(@Argex,0,41326,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid3
(@Argex,0,41303,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid3
(@Argex,0,41280,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid3
(@Argex,0,41086,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Hunter
(@Argex,0,41142,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Hunter
(@Argex,0,41156,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Hunter
(@Argex,0,41204,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Hunter
(@Argex,0,41216,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Hunter
(@Argex,0,41951,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Mage
(@Argex,0,41970,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Mage
(@Argex,0,41945,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Mage
(@Argex,0,41958,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Mage
(@Argex,0,41964,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Mage
(@Argex,0,40905,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin1
(@Argex,0,40926,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin1
(@Argex,0,40932,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin1
(@Argex,0,40938,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin1
(@Argex,0,40962,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin1
(@Argex,0,40785,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin2
(@Argex,0,40805,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin2
(@Argex,0,40825,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin2
(@Argex,0,40846,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin2
(@Argex,0,40864,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin2
(@Argex,0,41858,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest1
(@Argex,0,41873,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest1
(@Argex,0,41853,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest1
(@Argex,0,41863,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest1
(@Argex,0,41868,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest1
(@Argex,0,41920,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest2
(@Argex,0,41939,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest2
(@Argex,0,41914,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest2
(@Argex,0,41926,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest2
(@Argex,0,41933,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest2
(@Argex,0,41649,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Rogue
(@Argex,0,41766,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Rogue
(@Argex,0,41671,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Rogue
(@Argex,0,41654,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Rogue
(@Argex,0,41682,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Rogue
(@Argex,0,41080,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman1
(@Argex,0,41136,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman1
(@Argex,0,41150,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman1
(@Argex,0,41198,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman1
(@Argex,0,41210,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman1
(@Argex,0,40991,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman2
(@Argex,0,41006,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman2
(@Argex,0,41018,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman2
(@Argex,0,41032,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman2
(@Argex,0,41043,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman2
(@Argex,0,40990,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman3
(@Argex,0,41000,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman3
(@Argex,0,41012,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman3
(@Argex,0,41026,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman3
(@Argex,0,41037,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman3
(@Argex,0,41997,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warlock
(@Argex,0,42016,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warlock
(@Argex,0,41992,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warlock
(@Argex,0,42004,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warlock
(@Argex,0,42010,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warlock
(@Argex,0,40786,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warrior
(@Argex,0,40804,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warrior
(@Argex,0,40823,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warrior
(@Argex,0,40844,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warrior
(@Argex,0,40862,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warrior

(@Argex,0,42490,0,0,@1930RT_4500AP),-- Deadly Gladiator Longbow (bow)
(@Argex,0,42495,0,0,@1930RT_4500AP),-- Deadly Gladiator Heavy Crossbow (crossbow)
(@Argex,0,42255,0,0,@1930RT_3150AP),-- Deadly Gladiator Mutilator (dagger) offhand
(@Argex,0,42242,0,0,@1930RT_3150AP),-- Deadly Gladiator Shanker (dagger) One Hand
(@Argex,0,42248,0,0,@1930RT_3150AP),-- Deadly Gladiator Shiv (dagger) offhand
(@Argex,0,42346,0,0,@1930RT_3150AP),-- Deadly Gladiator Spellblade (dagger) Main Hand
(@Argex,0,42265,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Render (Fist Weapon) offhand
(@Argex,0,42270,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Ripper (Fist Weapon) offhand
(@Argex,0,42260,0,0,@1930RT_3150AP),-- Deadly Gladiator Right Ripper (Fist Weapon) main hand
(@Argex,0,42485,0,0,@1930RT_4500AP),-- Deadly Gladiator Rifle (Gun)
(@Argex,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Chopper (1haxe) offhand
(@Argex,0,42208,0,0,@1930RT_3150AP),-- Deadly Gladiator Cleaver (1haxe) mainhand
(@Argex,0,42227,0,0,@1930RT_3150AP),-- Deadly Gladiator Hacker (1haxe) offhand
(@Argex,0,42237,0,0,@1930RT_3150AP),-- Deadly Gladiator Waraxe (1haxe) one hand
(@Argex,0,42280,0,0,@1930RT_3150AP),-- Deadly Gladiator Bonecracker (1hmace) offhand
(@Argex,0,42352,0,0,@1930RT_3150AP),-- Deadly Gladiator Gavel (1h mace) main hand
(@Argex,0,42275,0,0,@1930RT_3150AP),-- Deadly Gladiator Pummeler (1h mace) one hand
(@Argex,0,42290,0,0,@1930RT_3150AP),-- Deadly Gladiator Quickblade (1h sword) off hand
(@Argex,0,42285,0,0,@1930RT_3150AP),-- Deadly Gladiator Slicer (1h sword) one hand
(@Argex,0,42327,0,0,@1930RT_4500AP),-- Deadly Gladiator Pike (polearm)
(@Argex,0,42362,0,0,@1930RT_4500AP),-- Deadly Gladiator Battle Staff (staff)
(@Argex,0,42384,0,0,@1930RT_4500AP),-- Deadly Gladiator Energy Staff (staff)
(@Argex,0,44420,0,0,@1930RT_4500AP),-- Deadly Gladiator Focus Staff (staff)
(@Argex,0,42390,0,0,@1930RT_4500AP),-- Deadly Gladiator Staff (staff)
(@Argex,0,44419,0,0,@1930RT_4500AP),-- Deadly Gladiator War Staff (staff)
(@Argex,0,42450,0,0,@1930RT_2250AP),-- Deadly Gladiator War Edge (Thrown)
(@Argex,0,42317,0,0,@1930RT_4500AP),-- Deadly Gladiator Decapitator (2haxe)
(@Argex,0,42322,0,0,@1930RT_4500AP),-- Deadly Gladiator Bonegrinder (2hmace)
(@Argex,0,42332,0,0,@1930RT_4500AP),-- Deadly Gladiator Greatsword (2h Sword)
(@Argex,0,42513,0,0,@1930RT_2250AP),-- Deadly Gladiator Baton of Light (wand)
(@Argex,0,42519,0,0,@1930RT_2250AP),-- Deadly Gladiator Piercing Touch (wand)
(@Argex,0,42502,0,0,@1930RT_2250AP),-- Deadly Gladiator Touch of Defeat (wand)
(@Argex,0,42564,0,0,@1930RT_2250AP),-- Deadly Gladiator Barrier (shield)
(@Argex,0,42570,0,0,@1930RT_2250AP),-- Deadly Gladiator Redoubt (shield)
(@Argex,0,42559,0,0,@1930RT_2250AP),-- Deadly Gladiator Shield Wall (shield)
(@Argex,0,42588,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Resolve (Relic)
(@Argex,0,42583,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Steadfastness (Relic)
(@Argex,0,42578,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Tenacity (Relic)
(@Argex,0,42852,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Fortitude (Relic)
(@Argex,0,42614,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Justice (Relic)
(@Argex,0,42620,0,0,@1930RT_1200AP),-- Deadly Gladiator Sigil of Strife (Relic)
(@Argex,0,42607,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Indomitability (Relic)
(@Argex,0,42602,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Survival (Relic)
(@Argex,0,42597,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of the Third Wind (Relic)



(@Thunderhorn,0,42110,0,0,@38000HP), -- Hateful Gladiator Band of Dominance
(@Thunderhorn,0,42112,0,0,@38000HP), -- Hateful Gladiator Band of Triumph
(@Thunderhorn,0,42057,0,0,@38000HP), -- Hateful Gladiator's Cloak of Ascendancy
(@Thunderhorn,0,42059,0,0,@38000HP), -- Hateful Gladiator's Cloak of Deliverance
(@Thunderhorn,0,42055,0,0,@38000HP), -- Hateful Gladiator's Cloak of Dominance
(@Thunderhorn,0,42058,0,0,@38000HP), -- Hateful Gladiator's Cloak of Salvation
(@Thunderhorn,0,42056,0,0,@38000HP), -- Hateful Gladiator's Cloak of Subjugation
(@Thunderhorn,0,42060,0,0,@38000HP), -- Hateful Gladiator's Cloak of Triumph
(@Thunderhorn,0,42061,0,0,@38000HP), -- Hateful Gladiator's Cloak of Victory
(@Thunderhorn,0,42024,0,0,@38000HP), -- Hateful Gladiator's Pendant of Ascendancy
(@Thunderhorn,0,42025,0,0,@38000HP), -- Hateful Gladiator's Pendant of Deliverance
(@Thunderhorn,0,42022,0,0,@38000HP), -- Hateful Gladiator's Pendant of Dominance
(@Thunderhorn,0,42026,0,0,@38000HP), -- Hateful Gladiator's Pendant of Salvation
(@Thunderhorn,0,42023,0,0,@38000HP), -- Hateful Gladiator's Pendant of Subjugation
(@Thunderhorn,0,42020,0,0,@38000HP), -- Hateful Gladiator's Pendant of Triumph
(@Thunderhorn,0,42021,0,0,@38000HP), -- Hateful Gladiator's Pendant of Victory
(@Thunderhorn,0,41638,0,0,@31600HP), -- Hateful Gladiator's Armwraps of Dominance
(@Thunderhorn,0,41332,0,0,@31600HP), -- Hateful Gladiator's Armwraps of Salvation
(@Thunderhorn,0,41830,0,0,@31600HP), -- Hateful Gladiator's Armwraps of Triumph
(@Thunderhorn,0,40972,0,0,@31600HP), -- Hateful Gladiator's Bracers of Salvation
(@Thunderhorn,0,40887,0,0,@31600HP), -- Hateful Gladiator's Bracers of Triumph
(@Thunderhorn,0,41907,0,0,@31600HP), -- Hateful Gladiator's Cuffs of Dominance
(@Thunderhorn,0,41878,0,0,@31600HP), -- Hateful Gladiator's Cuffs of Salvation
(@Thunderhorn,0,41063,0,0,@31600HP), -- Hateful Gladiator's Wristguards of Dominance
(@Thunderhorn,0,41047,0,0,@31600HP), -- Hateful Gladiator's Wristguards of Salvation
(@Thunderhorn,0,41223,0,0,@31600HP), -- Hateful Gladiator's Wristguards of Triumph
(@Thunderhorn,0,41633,0,0,@49600HP), -- Hateful Gladiator's Boots of Dominance
(@Thunderhorn,0,41331,0,0,@49600HP), -- Hateful Gladiator's Boots of Salvation
(@Thunderhorn,0,41828,0,0,@49600HP), -- Hateful Gladiator's Boots of Triumph
(@Thunderhorn,0,40973,0,0,@49600HP), -- Hateful Gladiator's Greaves of Salvation
(@Thunderhorn,0,40878,0,0,@49600HP), -- Hateful Gladiator's Greaves of Triumph
(@Thunderhorn,0,41073,0,0,@49600HP), -- Hateful Gladiator's Sabatons of Dominance
(@Thunderhorn,0,41049,0,0,@49600HP), -- Hateful Gladiator's Sabatons of Salvation
(@Thunderhorn,0,41228,0,0,@49600HP), -- Hateful Gladiator's Sabatons of Triumph
(@Thunderhorn,0,41901,0,0,@49600HP), -- Hateful Gladiator's Slippers of Dominance
(@Thunderhorn,0,41879,0,0,@49600HP), -- Hateful Gladiator's Slippers of Salvation
(@Thunderhorn,0,41628,0,0,@49600HP), -- Hateful Gladiator's Belt of Dominance
(@Thunderhorn,0,41330,0,0,@49600HP), -- Hateful Gladiator's Belt of Salvation
(@Thunderhorn,0,41827,0,0,@49600HP), -- Hateful Gladiator's Belt of Triumph
(@Thunderhorn,0,41896,0,0,@49600HP), -- Hateful Gladiator's Cord of Dominance
(@Thunderhorn,0,41877,0,0,@49600HP), -- Hateful Gladiator's Cord of Salvation
(@Thunderhorn,0,40966,0,0,@49600HP), -- Hateful Gladiator's Girdle of Salvation
(@Thunderhorn,0,40877,0,0,@49600HP), -- Hateful Gladiator's Girdle of Triumph
(@Thunderhorn,0,41068,0,0,@49600HP), -- Hateful Gladiator's Waistguard of Dominance
(@Thunderhorn,0,41050,0,0,@49600HP), -- Hateful Gladiator's Waistguard of Salvation
(@Thunderhorn,0,41233,0,0,@49600HP), -- Hateful Gladiator's Waistguard of Triumph
(@Thunderhorn,0,42122,0,0,@49600HP), -- Medallion of the Horde
(@Doris,0,42129,0,0,@1800RT_62000HP), -- Battlemasters Accuracy   213
(@Doris,0,42130,0,0,@1800RT_62000HP), -- Battlemasters Avidity    213
(@Doris,0,42132,0,0,@1800RT_62000HP), -- Battlemasters Bravery    213
(@Doris,0,42131,0,0,@1800RT_62000HP), -- Battlemasters Conviction 213
(@Doris,0,42128,0,0,@1800RT_62000HP), -- Battlemasters Hostility  213
(@Doris,0,42064,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Ascendancy
(@Doris,0,42066,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Deliverance
(@Doris,0,42062,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Dominance
(@Doris,0,42065,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Salvation
(@Doris,0,42063,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Subjugation
(@Doris,0,42067,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Triumph
(@Doris,0,42068,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Victory
(@Doris,0,41634,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Dominance
(@Doris,0,41620,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Salvation
(@Doris,0,41835,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Triumph
(@Doris,0,40975,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Salvation
(@Doris,0,40880,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Triumph
(@Doris,0,41074,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Dominance
(@Doris,0,41054,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Salvation
(@Doris,0,41229,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Triumph
(@Doris,0,41902,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Dominance
(@Doris,0,41884,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Salvation
(@Doris,0,42114,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Ascendancy
(@Doris,0,42115,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Victory
(@Doris,0,41639,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Dominance
(@Doris,0,41624,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Salvation
(@Doris,0,41839,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Triumph
(@Doris,0,40982,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Salvation
(@Doris,0,40888,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Triumph
(@Doris,0,41908,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Dominance
(@Doris,0,41892,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Salvation
(@Doris,0,41064,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Dominance
(@Doris,0,41059,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Salvation
(@Doris,0,41224,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Triumph
(@Doris,0,41629,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Dominance
(@Doris,0,41616,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Salvation
(@Doris,0,41831,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Triumph
(@Doris,0,41897,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Dominance
(@Doris,0,41880,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Salvation
(@Doris,0,40974,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Salvation
(@Doris,0,40879,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Triumph
(@Doris,0,41069,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Dominance
(@Doris,0,41048,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Salvation
(@Doris,0,41234,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Triumph
(@Doris,0,42030,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Ascendancy
(@Doris,0,42032,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Deliverance
(@Doris,0,42029,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Dominance
(@Doris,0,42033,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Salvation
(@Doris,0,42031,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Subjugation
(@Doris,0,42027,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Triumph
(@Doris,0,42028,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Victory

(@Tristia,0,42129,0,0,@1800RT_62000HP), -- Battlemasters Accuracy   213
(@Tristia,0,42130,0,0,@1800RT_62000HP), -- Battlemasters Avidity    213
(@Tristia,0,42132,0,0,@1800RT_62000HP), -- Battlemasters Bravery    213
(@Tristia,0,42131,0,0,@1800RT_62000HP), -- Battlemasters Conviction 213
(@Tristia,0,42128,0,0,@1800RT_62000HP), -- Battlemasters Hostility  213
(@Tristia,0,42064,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Ascendancy
(@Tristia,0,42066,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Deliverance
(@Tristia,0,42062,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Dominance
(@Tristia,0,42065,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Salvation
(@Tristia,0,42063,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Subjugation
(@Tristia,0,42067,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Triumph
(@Tristia,0,42068,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Victory
(@Tristia,0,41634,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Dominance
(@Tristia,0,41620,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Salvation
(@Tristia,0,41835,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Triumph
(@Tristia,0,40975,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Salvation
(@Tristia,0,40880,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Triumph
(@Tristia,0,41074,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Dominance
(@Tristia,0,41054,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Salvation
(@Tristia,0,41229,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Triumph
(@Tristia,0,41902,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Dominance
(@Tristia,0,41884,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Salvation
(@Tristia,0,42114,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Ascendancy
(@Tristia,0,42115,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Victory
(@Tristia,0,41639,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Dominance
(@Tristia,0,41624,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Salvation
(@Tristia,0,41839,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Triumph
(@Tristia,0,40982,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Salvation
(@Tristia,0,40888,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Triumph
(@Tristia,0,41908,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Dominance
(@Tristia,0,41892,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Salvation
(@Tristia,0,41064,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Dominance
(@Tristia,0,41059,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Salvation
(@Tristia,0,41224,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Triumph
(@Tristia,0,41629,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Dominance
(@Tristia,0,41616,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Salvation
(@Tristia,0,41831,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Triumph
(@Tristia,0,41897,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Dominance
(@Tristia,0,41880,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Salvation
(@Tristia,0,40974,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Salvation
(@Tristia,0,40879,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Triumph
(@Tristia,0,41069,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Dominance
(@Tristia,0,41048,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Salvation
(@Tristia,0,41234,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Triumph
(@Tristia,0,42030,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Ascendancy
(@Tristia,0,42032,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Deliverance
(@Tristia,0,42029,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Dominance
(@Tristia,0,42033,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Salvation
(@Tristia,0,42031,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Subjugation
(@Tristia,0,42027,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Triumph
(@Tristia,0,42028,0,0,@1600RT_47400HP); -- Deadly Gladiator Pendant of Victory

UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=948; -- increase pool: MASTER Herbs Silithus zone 1377 ( by 5)
UPDATE `pool_template` SET `max_limit`=75 WHERE `entry`=949; -- increase pool: MASTER Herbs Stonetalon Mountains zone 406 ( by 60)
UPDATE `pool_template` SET `max_limit`=55 WHERE `entry`=950; -- increase pool: MASTER Herbs Redridge Mountains zone 44 ( by 40)
UPDATE `pool_template` SET `max_limit`=80 WHERE `entry`=951; -- increase pool: MASTER Herbs Westfall zone 40 ( by 65)
UPDATE `pool_template` SET `max_limit`=55 WHERE `entry`=952; -- increase pool: MASTER Herbs Loch Modan zone 38 ( by 40)
UPDATE `pool_template` SET `max_limit`=45 WHERE `entry`=953; -- increase pool: MASTER Herbs Tirisfal Glades zone 85 ( by 30)
UPDATE `pool_template` SET `max_limit`=60 WHERE `entry`=954; -- increase pool: MASTER Herbs Western Plaguelands zone 28 ( by 45)
UPDATE `pool_template` SET `max_limit`=45 WHERE `entry`=955; -- increase pool: MASTER Herbs Mulgore zone 215 ( by 30)
UPDATE `pool_template` SET `max_limit`=60 WHERE `entry`=956; -- increase pool: MASTER Herbs Silverpine Forest zone 130 ( by 45)
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=957; -- increase pool: MASTER Herbs Teldrassil zone 141 ( by 20)
UPDATE `pool_template` SET `max_limit`=70 WHERE `entry`=958; -- increase pool: MASTER Herbs Hillsbrad Foothills zone 267 ( by 55)
UPDATE `pool_template` SET `max_limit`=85 WHERE `entry`=959; -- increase pool: MASTER Herbs Arathi Highlands zone 45 ( by 120)
UPDATE `pool_template` SET `max_limit`=95 WHERE `entry`=960; -- increase pool: MASTER Herbs Ashenvale zone 331 ( by 105)
UPDATE `pool_template` SET `max_limit`=85 WHERE `entry`=961; -- increase pool: MASTER Herbs Darkshore zone 148 ( by 85)
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=962; -- increase pool: MASTER Herbs Thousand Needles zone 400 ( by 20)
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=963; -- increase pool: MASTER Herbs Tanaris zone 440 ( by 20)
UPDATE `pool_template` SET `max_limit`=65 WHERE `entry`=964; -- increase pool: MASTER Herbs Feralas zone 357 ( by 50)
UPDATE `pool_template` SET `max_limit`=90 WHERE `entry`=965; -- increase pool: MASTER Herbs Hinterlands zone 47 ( by 75)
UPDATE `pool_template` SET `max_limit`=75 WHERE `entry`=966; -- increase pool: MASTER Herbs Un'Goro Crater zone 490 ( by 60)
UPDATE `pool_template` SET `max_limit`=75 WHERE `entry`=967; -- increase pool: MASTER Herbs Winterspring zone 618 ( by 60)
UPDATE `pool_template` SET `max_limit`=90 WHERE `entry`=968; -- increase pool: MASTER Herbs Eastern Plaguelands zone 139 ( by 110)
UPDATE `pool_template` SET `max_limit`=30 WHERE `entry`=969; -- increase pool: MASTER Herbs Ghostlands zone 3433 ( by 15)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=970; -- increase pool: MASTER Herbs Eversong Woods zone 3430 ( by 25)
UPDATE `pool_template` SET `max_limit`=30 WHERE `entry`=971; -- increase pool: MASTER Herbs Azuremyst Isle zone 3524 ( by 15)
UPDATE `pool_template` SET `max_limit`=60 WHERE `entry`=972; -- increase pool: MASTER Herbs Hellfire Peninsula zone 3483 ( by 45)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=973; -- increase pool: MASTER Herbs Nagrand zone 3518 ( by 25)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=974; -- increase pool: MASTER Herbs Netherstorm zone 3523 ( by 25)
UPDATE `pool_template` SET `max_limit`=95 WHERE `entry`=975; -- increase pool: MASTER Herbs Zangarmarsh zone 3521 ( by 80)
UPDATE `pool_template` SET `max_limit`=45 WHERE `entry`=976; -- increase pool: MASTER Herbs Shadowmoon Valley zone 3520 ( by 30)
UPDATE `pool_template` SET `max_limit`=65 WHERE `entry`=977; -- increase pool: MASTER Herbs Terokkar Forest zone 3519 ( by 50)
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=978; -- increase pool: MASTER Herbs Blade's Edge Mountains zone 3522 ( by 20)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=980; -- increase pool: MASTER Herbs Icecrown zone 210 ( by 25)
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=981; -- increase pool: MASTER Herbs Storm Peaks zone 67 ( by 20)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=982; -- increase pool: MASTER Herbs Sholazar Basin zone 3711 ( by 25)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=983; -- increase pool: MASTER Herbs Zul'drak zone 66 ( by 25)
UPDATE `pool_template` SET `max_limit`=20 WHERE `entry`=984; -- increase pool: MASTER Herbs Grizzly Hills zone 394 ( by 5)
UPDATE `pool_template` SET `max_limit`=35 WHERE `entry`=985; -- increase pool: MASTER Herbs Dragonblight zone 65 ( by 20)
UPDATE `pool_template` SET `max_limit`=30 WHERE `entry`=986; -- increase pool: MASTER Herbs Howling Fjord zone 495 ( by 15)
UPDATE `pool_template` SET `max_limit`=25 WHERE `entry`=987; -- increase pool: MASTER Herbs Borean Tundra zone 3537 ( by 10)
UPDATE `pool_template` SET `max_limit`=100 WHERE `entry`=988; -- increase pool: MASTER Herbs Stranglethorn Vale zone 33 ( by 165)
UPDATE `pool_template` SET `max_limit`=85 WHERE `entry`=990; -- increase pool: MASTER Herbs Azshara zone 16 ( by 115)
UPDATE `pool_template` SET `max_limit`=25 WHERE `entry`=991; -- increase pool: MASTER Herbs Dustwallow Marsh zone 15 ( by 10)
UPDATE `pool_template` SET `max_limit`=75 WHERE `entry`=992; -- increase pool: MASTER Herbs Durotar zone 14 ( by 60)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=993; -- increase pool: MASTER Herbs Elwynn Forest zone 12 ( by 25)
UPDATE `pool_template` SET `max_limit`=90 WHERE `entry`=994; -- increase pool: MASTER Herbs Wetlands zone 11 ( by 85)
UPDATE `pool_template` SET `max_limit`=80 WHERE `entry`=995; -- increase pool: MASTER Herbs Duskwood zone 10 ( by 65)
UPDATE `pool_template` SET `max_limit`=85 WHERE `entry`=996; -- increase pool: MASTER Herbs Swamp of Sorrows zone 8 ( by 85)
UPDATE `pool_template` SET `max_limit`=30 WHERE `entry`=997; -- increase pool: MASTER Herbs Blasted Lands zone 4 ( by 15)
UPDATE `pool_template` SET `max_limit`=45 WHERE `entry`=998; -- increase pool: MASTER Herbs Badlands zone 3 ( by 30)
UPDATE `pool_template` SET `max_limit`=40 WHERE `entry`=999; -- increase pool: MASTER Herbs Dun Morogh zone 1 ( by 25)

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=732;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=732;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=732 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(732, 0, 0, 0, 67, 0, 100, 0, 3900, 6900, 0, 0, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Murloc Lurker - Casts Backstab');-- Chain the Black Knight Quest Series
UPDATE `quest_template` SET `PrevQuestId`=0,`NextQuestId`=13641 WHERE `entry`=13633; -- The Black Knight of Westfall? (Ally)
UPDATE `quest_template` SET `PrevQuestId`=0,`NextQuestId`=13641 WHERE `entry`=13634; -- The Black Knight of Silverpine (Horde)
UPDATE `quest_template` SET `PrevQuestId`=0,`NextQuestId`=13643 WHERE `entry`=13641; -- The Seer's Crystal
UPDATE `quest_template` SET `PrevQuestId`=13641,`NextQuestId`=0 WHERE `entry`=13643; -- The Stories Dead Men Tell
UPDATE `quest_template` SET `PrevQuestId`=13643,`NextQuestId`=0 WHERE `entry`=13654; -- There's Something About the Squire
UPDATE `quest_template` SET `PrevQuestId`=13654,`NextQuestId`=0 WHERE `entry`=13663; -- The Black Knight's Orders
UPDATE `quest_template` SET `PrevQuestId`=13663,`NextQuestId`=0 WHERE `entry`=13664; -- The Black Knight's Fall
UPDATE `quest_template` SET `PrevQuestId`=13664,`NextQuestId`=0 WHERE `entry`=14016; -- The Black Knight's Curse
UPDATE `quest_template` SET `PrevQuestId`=14016,`NextQuestId`=0 WHERE `entry`=14017; -- The Black Knight's Fate

UPDATE `quest_template` SET `PrevQuestId`=13664 WHERE `entry`=13682; -- Thread from Above only after The Black Knights Fall
UPDATE `quest_template` SET `PrevQuestId`=13664 WHERE `entry`=13788; -- Thread from Above only after The Black Knights Fall
UPDATE `quest_template` SET `PrevQuestId`=13664 WHERE `entry`=13809; -- Thread from Above only after The Black Knights Fall
UPDATE `quest_template` SET `PrevQuestId`=13664 WHERE `entry`=13812; -- Thread from Above only after The Black Knights Fall

UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry` IN (32405,32407); 

DELETE FROM `gossip_menu` WHERE `entry`=6652 AND `text_id`=9190;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6652,9190);
DELETE FROM `gossip_menu` WHERE `entry`=7146 AND `text_id`=8410;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7146,8410);
DELETE FROM `gossip_menu` WHERE `entry`=7153 AND `text_id`=8417;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7153,8417);
DELETE FROM `gossip_menu` WHERE `entry`=7158 AND `text_id`=8423;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7158,8423);
DELETE FROM `gossip_menu` WHERE `entry`=7159 AND `text_id`=8424;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7159,8424);
DELETE FROM `gossip_menu` WHERE `entry`=7160 AND `text_id`=8429;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7160,8429);
DELETE FROM `gossip_menu` WHERE `entry`=7162 AND `text_id`=8431;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7162,8431);
DELETE FROM `gossip_menu` WHERE `entry`=7163 AND `text_id`=8433;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7163,8433);
DELETE FROM `gossip_menu` WHERE `entry`=7171 AND `text_id`=8445;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7171,8445);
DELETE FROM `gossip_menu` WHERE `entry`=7172 AND `text_id`=8447;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7172,8447);
DELETE FROM `gossip_menu` WHERE `entry`=7188 AND `text_id`=8466;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7188,8466);
DELETE FROM `gossip_menu` WHERE `entry`=7192 AND `text_id`=8472;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7192,8472);
DELETE FROM `gossip_menu` WHERE `entry`=7195 AND `text_id`=8476;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7195,8476);
DELETE FROM `gossip_menu` WHERE `entry`=7204 AND `text_id`=8485;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7204,8485);
DELETE FROM `gossip_menu` WHERE `entry`=7205 AND `text_id`=8487;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7205,8487);
DELETE FROM `gossip_menu` WHERE `entry`=7206 AND `text_id`=8488;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7206,8488);
DELETE FROM `gossip_menu` WHERE `entry`=7207 AND `text_id`=8489;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7207,8489);
DELETE FROM `gossip_menu` WHERE `entry`=7211 AND `text_id`=8501;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7211,8501);
DELETE FROM `gossip_menu` WHERE `entry`=7250 AND `text_id`=8564;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7250,8564);
DELETE FROM `gossip_menu` WHERE `entry`=7251 AND `text_id`=8565;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7251,8565);
DELETE FROM `gossip_menu` WHERE `entry`=7253 AND `text_id`=8569;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7253,8569);
DELETE FROM `gossip_menu` WHERE `entry`=7259 AND `text_id`=8580;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7259,8580);
DELETE FROM `gossip_menu` WHERE `entry`=7287 AND `text_id`=8617;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7287,8617);
DELETE FROM `gossip_menu` WHERE `entry`=7289 AND `text_id`=8620;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7289,8620);
DELETE FROM `gossip_menu` WHERE `entry`=7291 AND `text_id`=8638;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7291,8638);
DELETE FROM `gossip_menu` WHERE `entry`=7446 AND `text_id`=9019;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7446,9019);
DELETE FROM `gossip_menu` WHERE `entry`=7447 AND `text_id`=9020;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7447,9020);
DELETE FROM `gossip_menu` WHERE `entry`=7451 AND `text_id`=9024;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7451,9024);
DELETE FROM `gossip_menu` WHERE `entry`=8775 AND `text_id`=11354;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8775,11354);
DELETE FROM `gossip_menu` WHERE `entry`=8789 AND `text_id`=11256;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8789,11256);
DELETE FROM `gossip_menu` WHERE `entry`=8790 AND `text_id`=11257;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8790,11257);
DELETE FROM `gossip_menu` WHERE `entry`=8791 AND `text_id`=11258;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8791,11258);
DELETE FROM `gossip_menu` WHERE `entry`=8792 AND `text_id`=11259;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8792,11259);
DELETE FROM `gossip_menu` WHERE `entry`=8825 AND `text_id`=11372;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8825,11372);


UPDATE `creature_template` SET `gossip_menu_id`=7146 WHERE `entry`=16187;
UPDATE `creature_template` SET `gossip_menu_id`=7153 WHERE `entry`=16197;
UPDATE `creature_template` SET `gossip_menu_id`=7158 WHERE `entry`=16213;
UPDATE `creature_template` SET `gossip_menu_id`=7159 WHERE `entry`=16219;
UPDATE `creature_template` SET `gossip_menu_id`=7160 WHERE `entry`=16220;
UPDATE `creature_template` SET `gossip_menu_id`=7162 WHERE `entry`=16224;
UPDATE `creature_template` SET `gossip_menu_id`=7163 WHERE `entry`=16231;
UPDATE `creature_template` SET `gossip_menu_id`=7171 WHERE `entry`=16253;
UPDATE `creature_template` SET `gossip_menu_id`=7172 WHERE `entry`=16252;
UPDATE `creature_template` SET `gossip_menu_id`=7188 WHERE `entry`=16289;
UPDATE `creature_template` SET `gossip_menu_id`=7192 WHERE `entry`=16293;
UPDATE `creature_template` SET `gossip_menu_id`=7195 WHERE `entry`=16203;
UPDATE `creature_template` SET `gossip_menu_id`=7204 WHERE `entry`=16205;
UPDATE `creature_template` SET `gossip_menu_id`=7205 WHERE `entry`=16202;
UPDATE `creature_template` SET `gossip_menu_id`=7206 WHERE `entry`=16201;
UPDATE `creature_template` SET `gossip_menu_id`=7207 WHERE `entry`=16251;
UPDATE `creature_template` SET `gossip_menu_id`=7250 WHERE `entry`=16462;
UPDATE `creature_template` SET `gossip_menu_id`=7251 WHERE `entry`=16464;
UPDATE `creature_template` SET `gossip_menu_id`=7253 WHERE `entry`=16463;
UPDATE `creature_template` SET `gossip_menu_id`=7259 WHERE `entry`=16480;
UPDATE `creature_template` SET `gossip_menu_id`=7287 WHERE `entry`=16528;
UPDATE `creature_template` SET `gossip_menu_id`=7288 WHERE `entry`=16542;
UPDATE `creature_template` SET `gossip_menu_id`=7289 WHERE `entry`=16217;
UPDATE `creature_template` SET `gossip_menu_id`=7291 WHERE `entry`=16603;
UPDATE `creature_template` SET `gossip_menu_id`=7446 WHERE `entry`=17655;
UPDATE `creature_template` SET `gossip_menu_id`=7447 WHERE `entry`=17656;
UPDATE `creature_template` SET `gossip_menu_id`=7451 WHERE `entry`=16665;
UPDATE `creature_template` SET `gossip_menu_id`=8775 WHERE `entry`=23559;
UPDATE `creature_template` SET `gossip_menu_id`=8789 WHERE `entry`=23718;


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6652,7287,7146,7171,7451,7446,7153,7447,8789) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6652,7171,8789) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8789) AND `id` IN (2);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8775) AND `id` IN (6);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(6652,0,3, 'I seek training in the ways of the Hunter.',5,16,0,0,0,0,0, ''),
(6652,1,0, 'I wish to unlearn my talents.',16,16,0,0,0,0,0, ''),
(7287,0,1, 'Show me what I have access to, Vredigar.',3,128,0,0,0,0,0, ''),
(7146,0,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(7171,0,3, 'Master chef, can you train me in the culinary arts?',5,16,0,0,0,0,0, ''),
(7171,1,1, 'Have you any cooking supplies?',3,128,0,0,0,0,0, ''),
(7451,0,12, 'I wish to make use of the stables.',14,4194304,0,0,0,0,0, ''),
(7446,0,1, 'I want to browse your goods.',3,128,0,0,0,0,0, ''),
(7153,0,0, 'Arcanist Vandril, what are the Forsaken doing here?',1,1,7211,0,0,0,0, ''),
(7447,0,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(8789,0,0, 'Who is this Budd fellow?',1,1,8790,0,0,0,0, ''),
(8789,1,0, 'Interesting crew you''ve got here....',1,1,8791,0,0,0,0, ''),
(8789,2,0, 'Whew! What''s that smell?',1,1,8792,0,0,0,0, ''),
(8775,6,0, 'Are you suggesting I provide you with people for Zul''jin''s sacrifices?',1,1,8825,0,0,0,0, '');


DELETE FROM `npc_text` WHERE `ID` IN (11354,11372);
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(11354,1,'Listen, $c, it''s clear that you and your friends know your way around Azeroth. Surely you''ve come across certain folks who hunger for fame and fortune. $b$bSend me anyone who might be willing to enter Zul''Aman and I''ll make it worth your while.','',0,0,1,1000,1,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(11372,1,'Perish the thought!$b$bI''m simply trying to rid the world of a horrible menace, and that type of thing rarely comes without a price, as I''m sure you know.$b$bThink of it like this, $n. You''ll be offering ordinary folks the chance to become heroes! A rare opportunity indeed!$b$bYou just send them my way and I''ll handle the rest....','',0,0,1,1000,1,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1);


DELETE FROM `gossip_menu` WHERE `entry`=10921 AND `text_id`=15170;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10921,15170);
DELETE FROM `gossip_menu` WHERE `entry`=10948 AND `text_id`=15212;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10948,15212);
DELETE FROM `gossip_menu` WHERE `entry`=7925 AND `text_id`=9704;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7925,9704);
DELETE FROM `gossip_menu` WHERE `entry`=10976 AND `text_id`=15256;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10976,15256);
DELETE FROM `gossip_menu` WHERE `entry`=12024 AND `text_id`=16850;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12024,16850);
DELETE FROM `gossip_menu` WHERE `entry`=11983 AND `text_id`=16801;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11983,16801);
DELETE FROM `gossip_menu` WHERE `entry`=11979 AND `text_id`=16796;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11979,16796);
DELETE FROM `gossip_menu` WHERE `entry`=11952 AND `text_id`=16779;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11952,16779);
DELETE FROM `gossip_menu` WHERE `entry`=6647 AND `text_id`=7904;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6647,7904);
DELETE FROM `gossip_menu` WHERE `entry`=11793 AND `text_id`=16540;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11793,16540);


UPDATE `creature_template` SET `gossip_menu_id`=10921 WHERE `entry`=37675;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38042;
UPDATE `creature_template` SET `gossip_menu_id`=7925 WHERE `entry`=19175;
UPDATE `creature_template` SET `gossip_menu_id`=10976 WHERE `entry`=37172;


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6647) AND `id` IN (0,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(6647,0,3, 'I would like to train further in the ways of the Light.',5,16,0,0,0,0,0, ''),
(6647,1,0, 'I wish to unlearn my talents.',16,16,0,0,0,0,0, '');


DELETE FROM `npc_text` WHERE `ID` IN (9704,16850,16801,16796,16779);
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(9704,1,'The largest celebration of the Lunar Festival is taking place in Moonglade. If that''s too far to travel to, there are druids offering transport from the Valley of Wisdom.','The largest celebration of the Lunar Festival is taking place in Moonglade. If that''s too far to travel to, there are druids offering transport from the Valley of Wisdom.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16850,1,'Never underestimate the power of proper supply management. The warriors may win the battles, but it''s the supplies that win the war. ','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16801,1,'There are no emotions. There are no morals. There are no zealots.$B$BThere is only the Brotherhood.$B$BHere, in the very chapel where Uther the Lightbringer joined the Order of the Silver Hand, I, Korfax, Champion of the Light, will inspire fear into the fearless.$B$BNothing will curb my fury - not the Scarlet Crusade, not the Argent Dawn, not my brothers, not even you.','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16796,1,'The Brotherhood of the Light transcends the ability of any other group to eradicate affronts to the Light. We will take any actions necessary to rid the world of foul beasts like these undead. Nothing will stand in our way.$B$BAre you with us, or against us?','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16779,1,'Weapons...armor...these are the keys to victory. Any warrior, no matter how strong, is essentially defenseless without them.$B$BI have crafted many a legend in my day, $r. You will find nothing like them in all of Azeroth. They are the key to my brethren''s success.','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1);



DELETE FROM `gossip_menu` WHERE `entry`=141 AND `text_id`=4793;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (141,4793);
DELETE FROM `gossip_menu` WHERE `entry`=523 AND `text_id`=4985;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (523,4985);
DELETE FROM `gossip_menu` WHERE `entry`=1582 AND `text_id`=938;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1582,938);
DELETE FROM `gossip_menu` WHERE `entry`=2384 AND `text_id`=2193;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (2384,2193);
DELETE FROM `gossip_menu` WHERE `entry`=2782 AND `text_id`=3466;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (2782,3466);
DELETE FROM `gossip_menu` WHERE `entry`=3062 AND `text_id`=3794;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3062,3794);
DELETE FROM `gossip_menu` WHERE `entry`=3162 AND `text_id`=3896;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3162,3896);
DELETE FROM `gossip_menu` WHERE `entry`=3187 AND `text_id`=3954;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3187,3954);
DELETE FROM `gossip_menu` WHERE `entry`=4017 AND `text_id`=4888;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4017,4888);
DELETE FROM `gossip_menu` WHERE `entry`=4104 AND `text_id`=5006;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4104,5006);
DELETE FROM `gossip_menu` WHERE `entry`=4105 AND `text_id`=5008;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4105,5008);
DELETE FROM `gossip_menu` WHERE `entry`=4509 AND `text_id`=4985;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4509,4985);
DELETE FROM `gossip_menu` WHERE `entry`=4511 AND `text_id`=4985;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4511,4985);
DELETE FROM `gossip_menu` WHERE `entry`=4603 AND `text_id`=5715;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4603,5715);
DELETE FROM `gossip_menu` WHERE `entry`=4604 AND `text_id`=5715;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4604,5715);
DELETE FROM `gossip_menu` WHERE `entry`=4643 AND `text_id`=5715;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4643,5715);
DELETE FROM `gossip_menu` WHERE `entry`=4741 AND `text_id`=5793;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4741,5793);
DELETE FROM `gossip_menu` WHERE `entry`=4747 AND `text_id`=5799;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4747,5799);
DELETE FROM `gossip_menu` WHERE `entry`=5848 AND `text_id`=7010;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5848,7010);
DELETE FROM `gossip_menu` WHERE `entry`=6815 AND `text_id`=7935;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6815,7935);
DELETE FROM `gossip_menu` WHERE `entry`=6899 AND `text_id`=7935;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6899,7935);
DELETE FROM `gossip_menu` WHERE `entry`=6918 AND `text_id`=8205;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6918,8205);
DELETE FROM `gossip_menu` WHERE `entry`=7935 AND `text_id`=9716;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7935,9716);
DELETE FROM `gossip_menu` WHERE `entry`=10031 AND `text_id`=13911;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10031,13911);
DELETE FROM `gossip_menu` WHERE `entry`=10181 AND `text_id`=14126;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10181,14126);
DELETE FROM `gossip_menu` WHERE `entry`=10638 AND `text_id`=14736;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10638,14736);
DELETE FROM `gossip_menu` WHERE `entry`=11185 AND `text_id`=5002;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11185,5002);
DELETE FROM `gossip_menu` WHERE `entry`=11189 AND `text_id`=15572;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11189,15572);
DELETE FROM `gossip_menu` WHERE `entry`=11653 AND `text_id`=16283;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11653,16283);
DELETE FROM `gossip_menu` WHERE `entry`=11681 AND `text_id`=16344;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11681,16344);
DELETE FROM `gossip_menu` WHERE `entry`=11726 AND `text_id`=16413;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11726,16413);
DELETE FROM `gossip_menu` WHERE `entry`=11766 AND `text_id`=16489;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11766,16489);
DELETE FROM `gossip_menu` WHERE `entry`=11767 AND `text_id`=16490;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11767,16490);
DELETE FROM `gossip_menu` WHERE `entry`=11790 AND `text_id`=16535;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11790,16535);
DELETE FROM `gossip_menu` WHERE `entry`=11824 AND `text_id`=16578;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11824,16578);
DELETE FROM `gossip_menu` WHERE `entry`=11875 AND `text_id`=4973;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11875,4973);
DELETE FROM `gossip_menu` WHERE `entry`=11877 AND `text_id`=5717;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11877,5717);
DELETE FROM `gossip_menu` WHERE `entry`=11878 AND `text_id`=5006;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11878,5006);
DELETE FROM `gossip_menu` WHERE `entry`=11879 AND `text_id`=4998;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11879,4998);
DELETE FROM `gossip_menu` WHERE `entry`=11906 AND `text_id`=16715;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11906,16715);
DELETE FROM `gossip_menu` WHERE `entry`=11912 AND `text_id`=4986;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11912,4986);
DELETE FROM `gossip_menu` WHERE `entry`=11913 AND `text_id`=5004;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11913,5004);
DELETE FROM `gossip_menu` WHERE `entry`=11919 AND `text_id`=16734;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11919,16734);
DELETE FROM `gossip_menu` WHERE `entry`=11932 AND `text_id`=16749;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11932,16749);
DELETE FROM `gossip_menu` WHERE `entry`=11933 AND `text_id`=565;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11933,565);
DELETE FROM `gossip_menu` WHERE `entry`=11951 AND `text_id`=16778;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11951,16778);
DELETE FROM `gossip_menu` WHERE `entry`=11969 AND `text_id`=16783;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11969,16783);
DELETE FROM `gossip_menu` WHERE `entry`=11971 AND `text_id`=16789;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11971,16789);
DELETE FROM `gossip_menu` WHERE `entry`=12050 AND `text_id`=16882;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12050,16882);
DELETE FROM `gossip_menu` WHERE `entry`=12094 AND `text_id`=16982;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12094,16982);
DELETE FROM `gossip_menu` WHERE `entry`=12095 AND `text_id`=16983;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12095,16983);
DELETE FROM `gossip_menu` WHERE `entry`=12151 AND `text_id`=17085;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12151,17085);
DELETE FROM `gossip_menu` WHERE `entry`=12233 AND `text_id`=17176;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12233,17176);
DELETE FROM `gossip_menu` WHERE `entry`=12235 AND `text_id`=17180;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12235,17180);
DELETE FROM `gossip_menu` WHERE `entry`=12443 AND `text_id`=17499;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12443,17499);
DELETE FROM `gossip_menu` WHERE `entry`=12563 AND `text_id`=17647;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12563,17647);
DELETE FROM `gossip_menu` WHERE `entry`=12670 AND `text_id`=12549;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (12670,12549);


UPDATE `creature_template` SET `gossip_menu_id`=64 WHERE `entry`=5880;
UPDATE `creature_template` SET `gossip_menu_id`=141 WHERE `entry`=3170;
UPDATE `creature_template` SET `gossip_menu_id`=141 WHERE `entry`=3155;
UPDATE `creature_template` SET `gossip_menu_id`=523 WHERE `entry`=3169;
UPDATE `creature_template` SET `gossip_menu_id`=2384 WHERE `entry`=3326;
UPDATE `creature_template` SET `gossip_menu_id`=2782 WHERE `entry`=1383;
UPDATE `creature_template` SET `gossip_menu_id`=3062 WHERE `entry`=10578;
UPDATE `creature_template` SET `gossip_menu_id`=3162 WHERE `entry`=7952;
UPDATE `creature_template` SET `gossip_menu_id`=3187 WHERE `entry`=11176;
UPDATE `creature_template` SET `gossip_menu_id`=3644 WHERE `entry`=3706;
UPDATE `creature_template` SET `gossip_menu_id`=4017 WHERE `entry`=3171;
UPDATE `creature_template` SET `gossip_menu_id`=4104 WHERE `entry`=3173;
UPDATE `creature_template` SET `gossip_menu_id`=4509 WHERE `entry`=3353;
UPDATE `creature_template` SET `gossip_menu_id`=4511 WHERE `entry`=3354;
UPDATE `creature_template` SET `gossip_menu_id`=4603 WHERE `entry`=3324;
UPDATE `creature_template` SET `gossip_menu_id`=4604 WHERE `entry`=3325;
UPDATE `creature_template` SET `gossip_menu_id`=4643 WHERE `entry`=3156;
UPDATE `creature_template` SET `gossip_menu_id`=4741 WHERE `entry`=3332;
UPDATE `creature_template` SET `gossip_menu_id`=4747 WHERE `entry`=3399;
UPDATE `creature_template` SET `gossip_menu_id`=5848 WHERE `entry`=14451;
UPDATE `creature_template` SET `gossip_menu_id`=5856 WHERE `entry`=5943;
UPDATE `creature_template` SET `gossip_menu_id`=6565 WHERE `entry`=7951;
UPDATE `creature_template` SET `gossip_menu_id`=6815 WHERE `entry`=15572;
UPDATE `creature_template` SET `gossip_menu_id`=6899 WHERE `entry`=15579;
UPDATE `creature_template` SET `gossip_menu_id`=6918 WHERE `entry`=15895;
UPDATE `creature_template` SET `gossip_menu_id`=7935 WHERE `entry`=19177;
UPDATE `creature_template` SET `gossip_menu_id`=10031 WHERE `entry`=5875;
UPDATE `creature_template` SET `gossip_menu_id`=10181 WHERE `entry`=3881;
UPDATE `creature_template` SET `gossip_menu_id`=10638 WHERE `entry`=35364;
UPDATE `creature_template` SET `gossip_menu_id`=11189 WHERE `entry`=10676;
UPDATE `creature_template` SET `gossip_menu_id`=11790 WHERE `entry`=3139;
UPDATE `creature_template` SET `gossip_menu_id`=11971 WHERE `entry`=9988;
UPDATE `creature_template` SET `gossip_menu_id`=12670 WHERE `entry`=12776;
UPDATE `creature_template` SET `gossip_menu_id`=12670 WHERE `entry`=6027;
UPDATE `creature_template` SET `gossip_menu_id`=12670 WHERE `entry`=5815;


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1012,6899,12443,2746,10181,4142,4741,4747,11767,10638,7034,6918) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (12443,11767,6899,3162,6815) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6815,1582,11919) AND `id` IN (2);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1582,11919,6815,6899) AND `id` IN (3);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6899) AND `id` IN (4);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(1012,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(6899,0,0, 'Where is Elder Darkcore?',1,1,0,0,0,0,0, ''),
(12443,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(2746,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(10181,0,1, 'I want to browse your goods.',3,128,0,0,0,0,0, ''),
(4142,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(4741,0,3, 'I require training, Lumak.',5,16,0,0,0,0,0, ''),
(4747,0,3, 'I require training, Zamja.',5,16,0,0,0,0,0, ''),
(11767,0,3, 'I would like to train.',5,16,0,0,0,0,0, ''),
(10638,0,0, 'I no longer wish to gain experience.',1,1,0,0,0,0,0, ''),
(7034,0,0, 'I would like to enter the secret code to receive my Murloc pet.',1,1,0,0,0,0,0, ''),
(6918,0,0, 'I''d like a new invitation to the Lunar Festival.',1,1,0,0,0,0,0, ''),
(12443,1,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(11767,1,0, 'I wish to unlearn my talents.',16,16,0,0,0,0,0, ''),
(6899,1,0, 'Where is Elder Ironband?',1,1,0,0,0,0,0, ''),
(3162,1,1, 'I would like to buy from you.',3,128,0,0,0,0,0, ''),
(6815,1,0, 'Where is Elder High Mountain?',1,1,0,0,0,0,0, ''),
(6815,2,0, 'Where is Elder Moonwarden?',1,1,0,0,0,0,0, ''),
(1582,2,5, 'Make this inn your home.',8,65536,0,0,0,0,0, ''),
(11919,2,5, 'Make this inn your home.',8,65536,0,0,0,0,0, ''),
(1582,3,1, 'I want to browse your goods.',3,128,0,0,0,0,0, ''),
(11919,3,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(6815,3,0, 'Where is Elder Windtotem?',1,1,0,0,0,0,0, ''),
(6899,3,0, 'Where is Elder Runetotem?',1,1,0,0,0,0,0, ''),
(6899,4,0, 'Where is Elder Windtotem?',1,1,0,0,0,0,0, '');


DELETE FROM `npc_text` WHERE `ID` IN (14126,15572,16283,16344,16413,16489,16490,16535,16578,16715,16734,16749,16778,16783,16789,16882,16982,16983,17085,17125,17176,17180,17499,17647);
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(14126,1,'How may I help you?','How may I help you?',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(15572,1,'Need something?','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16283,1,'Leave this old Dragonmaw to his drink, $c.$B$BI''ve fought creatures that would curl your spine and I''ve seen my people all but slaughtered in the swamps of the wetlands and amidst the ruins of Outland.$B$BGet. Lost.','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16344,1,'You ever been to the jungle, $r?$b$bIt''s real nice.','',0,0,0,0,0,0,0,1,'Stranglethorn, $g man: babe;.  That''s where it''s AT!','',0,0,0,0,0,0,0,1,'Hi.','',0,0,0,0,0,0,0,1,'Ah, to be back in Stranglethorn.  The screeching raptors, the troll wars, jungle creatures as far as the eye see, just ASKING to be killed...$b$b<Bort sighs.>','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16413,1,'Fishing has always come naturally to my family.  You look like you could use a little help though.  How about running a few errands for a Master Angler?','',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16489,1,'The Light protect you, $c.','The Light protect you, $c.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16490,1,'The light of the Sun illuminates the path to wisdom.  Where shall we walk today, friend?','The light of the Sun illuminates the path to wisdom.  Where shall we walk today, friend?',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16535,1,'Keep your eyes open, $c. Even Durotar is not safe from our enemies.','',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16578,1,'Ya''ll need to find a different trainer, $c. I cannot help ya.','',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16715,1,'Dark is de jungle, but fertile is its soil.$B$BMay de spirits of de earth watch over ya, $c.','Dark is de jungle, but fertile is its soil.$B$BMay de spirits of de earth watch over ya, $c.',1,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16734,100,'Come in, mon... forget yer cares for a while!$B$BRest de body, rest de soul.','Come in, mon... forget yer cares for a while!$B$BRest de body, rest de soul.',1,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16749,1,'De secrets I have ta share would blast your soul apart, $c.$B$BTrust me: You be wantin'' ta talk ta someone else about trainin''.','De secrets I have ta share would blast your soul apart, $c.$B$BTrust me: You be wantin'' ta talk ta someone else about trainin''.',1,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16778,1,'I can''t see a thing with this mask on, but I''m not about to tell HER that.','',1,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16783,1,'You take a wrong turn, mon? Heh heh heh.$B$BWhat can I be helpin'' ya find?','You take a wrong turn, mon? Heh heh heh.$B$BWhat can I be helpin'' ya find?',1,0,153,3,396,0,0,1,'Don''t see many a'' your kind ''round here, mon.$B$BWhat can I be helpin'' ya find?','Don''t see many a'' your kind ''round here, mon.$B$BWhat can I be helpin'' ya find?',1,0,396,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16789,1,'Hey der, mon.$B$BDid ya need help recoverin'' a lost companion?','Hey der, mon.$B$BDid ya need help recoverin'' a lost companion?',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16882,1,'Nothin'' ta see here, mon.  Be on yer way, why don''cha?','Nothin'' ta see here, mon.  Be on yer way, why don''cha?',1,0,274,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16982,1,'The Highborne have returned, and with them spellcraft lost to the world for centuries.$B$BDo you have something for me to examine?','The Highborne have returned, and with them spellcraft lost to the world for centuries.$B$BDo you have something for me to examine?',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16983,1,'Arcane Reforgers can modify the magical effects of a item; this magically complex process is known simply as reforging.$B$BThrough reforging, a secondary attribute of any piece of weaponry, armor, or jewelry may be reduced in order to add an additional secondary attribute. In this manner one may customize their equipment to best match their role and skills.$B$BFor example, if an item afforded you a bonus to strike your enemies but you''d rather it made you attack more quickly, an Arcane Reforger could, for a price, reforge the item to have less Hit Rating but increase your Haste Rating.','Arcane Reforgers can modify the magical effects of a item; this magically complex process is known simply as reforging.$B$BThrough reforging, a secondary attribute of any piece of weaponry, armor, or jewelry may be reduced in order to add an additional secondary attribute. In this manner one may customize their equipment to best match their role and skills.$B$BFor example, if an item afforded you a bonus to strike your enemies but you''d rather it made you attack more quickly, an Arcane Reforger could, for a price, reforge the item to have less Hit Rating but increase your Haste Rating.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(17085,1,'After the fall of the Burning Blade Clan, we blademasters swore to free ourselves and our people from demonic control.$B$BThis may be done, but my honor remains unsatisfied.$B$BI shall fight for the Horde - and train other warriors to do so - until I die gloriously in battle. This is the only path I may tread.','After the fall of the Burning Blade Clan, we blademasters swore to free ourselves and our people from demonic control.$B$BThis may be done, but my honor remains unsatisfied.$B$BI shall fight for the Horde - and train other warriors to do so - until I die gloriously in battle. This is the only path I may tread.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(17125,1,'I can teach you the basics of any gathering or production profession, but that''s all.$B$BTo learn more than an apprentice''s skills, you''ll need to visit a specialist dedicated to only one profession.$B$BYou can learn up to two professions: Two gathering, two production, or one of each.$B$BSecondary skills like Archaeology, Cooking, First Aid, and Fishing don''t count towards your two professions; you can learn as many of those as you like.','I can teach you the basics of any gathering or production profession, but that''s all.$B$BTo learn more than an apprentice''s skills, you''ll need to visit a specialist dedicated to only one profession.$B$BYou can learn up to two professions: Two gathering, two production, or one of each.$B$BSecondary skills like Archaeology, Cooking, First Aid, and Fishing don''t count towards your two professions; you can learn as many of those as you like.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(17176,1,'For too long we have ignored the secrets of the Arcane.$B$BSadly, they will remain a secret to you.','For too long we have ignored the secrets of the Arcane.$B$BSadly, they will remain a secret to you.',1,0,274,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(17180,1,'Sorry, $c. $B$BYour grasp of the arcane isn''t strong enough to understand portal magic.','Sorry, $c. $B$BYour grasp of the arcane isn''t strong enough to understand portal magic.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(17499,1,'You be here ta learn fishin'', mon? Or maybe ta buy some tings for it?','You be here ta learn fishin'', mon? Or maybe ta buy some tings for it?',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(17647,1,'Hail, $N.  We''re in need of your assistance.','',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1);


DELETE FROM `gossip_menu` WHERE `entry`=5854 AND `text_id`=7017;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5854,7017);
DELETE FROM `gossip_menu` WHERE `entry`=6573 AND `text_id`=7821;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6573,7821);
DELETE FROM `gossip_menu` WHERE `entry`=6570 AND `text_id`=7869;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6570,7869);
DELETE FROM `gossip_menu` WHERE `entry`=7437 AND `text_id`=7903;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7437,7903);
DELETE FROM `gossip_menu` WHERE `entry`=6939 AND `text_id`=8228;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6939,8228);
DELETE FROM `gossip_menu` WHERE `entry`=6940 AND `text_id`=8229;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6940,8229);
DELETE FROM `gossip_menu` WHERE `entry`=6942 AND `text_id`=8232;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6942,8232);
DELETE FROM `gossip_menu` WHERE `entry`=7116 AND `text_id`=8374;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7116,8374);
DELETE FROM `gossip_menu` WHERE `entry`=7117 AND `text_id`=8378;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7117,8378);
DELETE FROM `gossip_menu` WHERE `entry`=7141 AND `text_id`=8403;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7141,8403);
DELETE FROM `gossip_menu` WHERE `entry`=7154 AND `text_id`=8418;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7154,8418);
DELETE FROM `gossip_menu` WHERE `entry`=7155 AND `text_id`=8419;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7155,8419);
DELETE FROM `gossip_menu` WHERE `entry`=7156 AND `text_id`=8421;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7156,8421);
DELETE FROM `gossip_menu` WHERE `entry`=7214 AND `text_id`=8504;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7214,8504);
DELETE FROM `gossip_menu` WHERE `entry`=7235 AND `text_id`=8535;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7235,8535);
DELETE FROM `gossip_menu` WHERE `entry`=7244 AND `text_id`=8552;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7244,8552);
DELETE FROM `gossip_menu` WHERE `entry`=7245 AND `text_id`=8556;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7245,8556);
DELETE FROM `gossip_menu` WHERE `entry`=7247 AND `text_id`=8558;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7247,8558);
DELETE FROM `gossip_menu` WHERE `entry`=7255 AND `text_id`=8575;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7255,8575);
DELETE FROM `gossip_menu` WHERE `entry`=7256 AND `text_id`=8576;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7256,8576);
DELETE FROM `gossip_menu` WHERE `entry`=7311 AND `text_id`=8678;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7311,8678);
DELETE FROM `gossip_menu` WHERE `entry`=7313 AND `text_id`=8682;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7313,8682);
DELETE FROM `gossip_menu` WHERE `entry`=7316 AND `text_id`=8684;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7316,8684);
DELETE FROM `gossip_menu` WHERE `entry`=7323 AND `text_id`=8698;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7323,8698);
DELETE FROM `gossip_menu` WHERE `entry`=7324 AND `text_id`=8699;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7324,8699);
DELETE FROM `gossip_menu` WHERE `entry`=7325 AND `text_id`=8700;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7325,8700);
DELETE FROM `gossip_menu` WHERE `entry`=7344 AND `text_id`=8755;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7344,8755);
DELETE FROM `gossip_menu` WHERE `entry`=7864 AND `text_id`=9630;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7864,9630);
DELETE FROM `gossip_menu` WHERE `entry`=7921 AND `text_id`=9700;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7921,9700);
DELETE FROM `gossip_menu` WHERE `entry`=8098 AND `text_id`=10011;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8098,10011);
DELETE FROM `gossip_menu` WHERE `entry`=8376 AND `text_id`=10451;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8376,10451);
DELETE FROM `gossip_menu` WHERE `entry`=8380 AND `text_id`=10456;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8380,10456);
DELETE FROM `gossip_menu` WHERE `entry`=8732 AND `text_id`=11049;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8732,11049);
DELETE FROM `gossip_menu` WHERE `entry`=8733 AND `text_id`=11055;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8733,11055);
DELETE FROM `gossip_menu` WHERE `entry`=9142 AND `text_id`=12370;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9142,12370);
DELETE FROM `gossip_menu` WHERE `entry`=10991 AND `text_id`=15284;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10991,15284);
DELETE FROM `gossip_menu` WHERE `entry`=11902 AND `text_id`=16703;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11902,16703);
DELETE FROM `gossip_menu` WHERE `entry`=9420 AND `text_id`=12666;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9420,12666);


UPDATE `creature_template` SET `gossip_menu_id`=4783 WHERE `entry`=16271;
UPDATE `creature_template` SET `gossip_menu_id`=5854 WHERE `entry`=16676;
UPDATE `creature_template` SET `gossip_menu_id`=6570 WHERE `entry`=15281;
UPDATE `creature_template` SET `gossip_menu_id`=6573 WHERE `entry`=15301;
UPDATE `creature_template` SET `gossip_menu_id`=6647 WHERE `entry`=16275;
UPDATE `creature_template` SET `gossip_menu_id`=6650 WHERE `entry`=16279;
UPDATE `creature_template` SET `gossip_menu_id`=6652 WHERE `entry`=16270;
UPDATE `creature_template` SET `gossip_menu_id`=6939 WHERE `entry`=15924;
UPDATE `creature_template` SET `gossip_menu_id`=6940 WHERE `entry`=15403;
UPDATE `creature_template` SET `gossip_menu_id`=6942 WHERE `entry`=15951;
UPDATE `creature_template` SET `gossip_menu_id`=7116 WHERE `entry`=16144;
UPDATE `creature_template` SET `gossip_menu_id`=7117 WHERE `entry`=16147;
UPDATE `creature_template` SET `gossip_menu_id`=7141 WHERE `entry`=15416;
UPDATE `creature_template` SET `gossip_menu_id`=7154 WHERE `entry`=16196;
UPDATE `creature_template` SET `gossip_menu_id`=7155 WHERE `entry`=16183;
UPDATE `creature_template` SET `gossip_menu_id`=7156 WHERE `entry`=16210;
UPDATE `creature_template` SET `gossip_menu_id`=7214 WHERE `entry`=16362;
UPDATE `creature_template` SET `gossip_menu_id`=7235 WHERE `entry`=16397;
UPDATE `creature_template` SET `gossip_menu_id`=7244 WHERE `entry`=16443;
UPDATE `creature_template` SET `gossip_menu_id`=7245 WHERE `entry`=16444;
UPDATE `creature_template` SET `gossip_menu_id`=7247 WHERE `entry`=15942;
UPDATE `creature_template` SET `gossip_menu_id`=7255 WHERE `entry`=15398;
UPDATE `creature_template` SET `gossip_menu_id`=7256 WHERE `entry`=15400;
UPDATE `creature_template` SET `gossip_menu_id`=7311 WHERE `entry`=16263;
UPDATE `creature_template` SET `gossip_menu_id`=7313 WHERE `entry`=16860;
UPDATE `creature_template` SET `gossip_menu_id`=7316 WHERE `entry`=16862;
UPDATE `creature_template` SET `gossip_menu_id`=7323 WHERE `entry`=16924;
UPDATE `creature_template` SET `gossip_menu_id`=7324 WHERE `entry`=15397;
UPDATE `creature_template` SET `gossip_menu_id`=7325 WHERE `entry`=15401;
UPDATE `creature_template` SET `gossip_menu_id`=7344 WHERE `entry`=15399;
UPDATE `creature_template` SET `gossip_menu_id`=7346 WHERE `entry`=17056;
UPDATE `creature_template` SET `gossip_menu_id`=7437 WHERE `entry`=16647;
UPDATE `creature_template` SET `gossip_menu_id`=7524 WHERE `entry`=16160;
UPDATE `creature_template` SET `gossip_menu_id`=7524 WHERE `entry`=16161;
UPDATE `creature_template` SET `gossip_menu_id`=7524 WHERE `entry`=16366;
UPDATE `creature_template` SET `gossip_menu_id`=7524 WHERE `entry`=16367;
UPDATE `creature_template` SET `gossip_menu_id`=7566 WHERE `entry`=16646;
UPDATE `creature_template` SET `gossip_menu_id`=7566 WHERE `entry`=16648;
UPDATE `creature_template` SET `gossip_menu_id`=7864 WHERE `entry`=18947;
UPDATE `creature_template` SET `gossip_menu_id`=7921 WHERE `entry`=19169;
UPDATE `creature_template` SET `gossip_menu_id`=8098 WHERE `entry`=16264;
UPDATE `creature_template` SET `gossip_menu_id`=8376 WHERE `entry`=15501;
UPDATE `creature_template` SET `gossip_menu_id`=8380 WHERE `entry`=19775;
UPDATE `creature_template` SET `gossip_menu_id`=8732 WHERE `entry`=16688;
UPDATE `creature_template` SET `gossip_menu_id`=8733 WHERE `entry`=16642;
UPDATE `creature_template` SET `gossip_menu_id`=9142 WHERE `entry`=17718;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=16185;
UPDATE `creature_template` SET `gossip_menu_id`=10181 WHERE `entry`=16261;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38043;
UPDATE `creature_template` SET `gossip_menu_id`=10991 WHERE `entry`=38295;
UPDATE `creature_template` SET `gossip_menu_id`=11902 WHERE `entry`=15278;
UPDATE `creature_template` SET `gossip_menu_id`=12670 WHERE `entry`=16649;
UPDATE `creature_template` SET `gossip_menu_id`=9420 WHERE `entry`=26647;


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7244,7245,7256,7311,7313,7524,7864,8098,8376,8380,8732,8733) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7256,7324,7524) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7324) AND `id` IN (2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7244,0,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(7245,0,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(7256,0,3, 'I wish to learn more about blacksmithing.',5,16,0,0,0,0,0, ''),
(7256,1,1, 'May I see your wares?',3,128,0,0,0,0,0, ''),
(7311,0,1, 'May I see your wares?',3,128,0,0,0,0,0, ''),
(7313,0,1, 'Let me see what hatchlings you have for sale.',3,128,0,0,0,0,0, ''),
(7324,2,1, 'Let me browse your goods.',3,128,0,0,0,0,0, ''),
(7324,1,5, 'Make this inn your home.',8,65536,0,0,0,0,0, ''),
(7524,0,1, 'I want to browse your goods.',3,128,0,0,0,0,0, ''),
(7524,1,3, 'Train me.',5,16,0,0,0,0,0, ''),
(7864,0,1, 'I would like to buy from you.',3,128,0,0,0,0,0, ''),
(8098,0,1, 'I wish to purchase one of these creatures.',3,128,0,0,0,0,0, ''),
(8376,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(8380,0,3, 'Train me.',5,16,0,0,0,0,0, ''),
(8732,0,3, 'I would like to train.',5,16,0,0,0,0,0, ''),
(8733,0,3, 'I would like to train.',5,16,0,0,0,0,0, '');


DELETE FROM `npc_text` WHERE `ID` IN (7821,16703);
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(7821,1,'','Ah, $N - it is good to see you again.  I trust your affairs go well.',0,0,2,0,1,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1),
(16703,1,'','$N!  I hope you''re ready to get to work, because there is much for you to do here on Sunstrider Isle.$B$BEver since the destruction of the Sunwell by Arthas and the Scourge, we have been a race adrift on a sea of uncertainty.  We teeter on the edge of oblivion.  This will change, $c, and you will learn and aid our recovery at the same time.$B$BThe Outland awaits us!',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,1);



DELETE FROM `gossip_menu` WHERE `entry`=7436 AND `text_id`=9005;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7436,9005);

UPDATE `creature_template` SET `gossip_menu_id`=7436 WHERE `entry`=16268;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7436 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7436,0,1, 'May I see your wares?',3,128,0,0,0,0,0, '');


DELETE FROM `gossip_menu` WHERE `entry`=9985 AND `text_id`=13839;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9985,13839);

UPDATE `creature_template` SET `gossip_menu_id`=9985 WHERE `entry`=26905;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=9985 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9985,0,3, 'Train me.',5,16,0,0,0,0,0, '');


UPDATE `creature_text` SET `text`= 'The Lich King is unlike any foe that you have ever faced, Highlord. Though you bested him upon the holy ground of Light''s Hope Chapel, you tread now upon his domain.$B' WHERE `entry`=30377 AND `groupid`=1;
UPDATE `creature_text` SET `text`= 'You cannot win. Not like this...$B' WHERE `entry`=30377 AND `groupid`=2;
UPDATE `creature_text` SET `text`= 'The Lich King knows your boundaries, Highlord. He knows that you will not fire on your own men. Do you not understand? He has no boundaries. No rules to abide. $B' WHERE `entry`=30377 AND `groupid`=8;
UPDATE `creature_text` SET `text`= 'Then you have lost, Highlord.$B' WHERE `entry`=30377 AND `groupid`=9;


UPDATE `creature_text` SET `text`= 'Th... thank you.  I thought I was going to die.' WHERE `entry`=16206;
UPDATE `gossip_menu_option` SET `option_text`= 'A bit ungrateful, aren''t we?  The way out is clear, flee quickly!' WHERE `menu_id`=7179;
UPDATE `gossip_menu_option` SET `option_text`= 'You''re free to go now.  The way out is safe.' WHERE `menu_id`=7176;
UPDATE `gossip_menu_option` SET `option_text`= 'You''re free to go now.  The way out is safe.' WHERE `menu_id`=7186;
DELETE FROM `disables` WHERE `sourceType` = 4 AND `entry` IN (7625,6446,7628);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6446,7625) AND `type`=11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7628 AND `type`!=0;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES 
(6446,11,0,0,'achievement_bg_sa_drop_it'),
(7625,11,0,0,'achievement_bg_sa_artillery_veteran'),
(7628,11,0,0,'achievement_bg_sa_artillery_expert'),
(7628,3,607,0,'');
DELETE FROM `spell_bonus_data` WHERE `entry`=31707;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(31707,0.8333,0,0,0, 'Mage - Water Elemental Waterbolt');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7628 AND `type`=3;
DELETE FROM `spell_script_names`  WHERE `ScriptName` IN ('spell_generic_clone', 'spell_generic_clone_weapon');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(45785, 'spell_generic_clone'),
(49889, 'spell_generic_clone'),
(50218, 'spell_generic_clone'),
(51719, 'spell_generic_clone'),
(57528, 'spell_generic_clone'),
(69828, 'spell_generic_clone'),
(41055, 'spell_generic_clone_weapon'),
(63416, 'spell_generic_clone_weapon'),
(69891, 'spell_generic_clone_weapon'),
(45206, 'spell_generic_clone_weapon'),
(69892, 'spell_generic_clone_weapon'),
(57593, 'spell_generic_clone_weapon');
SET @GUID=152032; -- Need 8
DELETE FROM `creature` WHERE `id`=33429;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,33429,571,1,256,0,0,6253.47,2263.21,244.456,0.488692,120,0,0,1,0,0,0,0,0,0),
(@GUID+1,33429,571,1,256,0,0,6217.16,2252.59,496.038,0.488692,120,0,0,1,0,0,0,0,0,0),
(@GUID+2,33429,571,1,256,0,0,6234.1,2301.56,488.447,0.488692,120,0,0,1,0,0,0,0,0,0),
(@GUID+3,33429,571,1,256,0,0,6163.18,2231.77,506.981,0.488692,120,0,0,1,0,0,0,0,0,0),
(@GUID+4,33429,571,1,256,0,0,6172.18,2257.27,503.146,0.488692,120,0,0,1,0,0,0,0,0,0),
(@GUID+5,33429,571,1,256,0,0,6242.42,2246.47,491.941,0.56266,120,0,0,1,0,0,0,0,0,0),
(@GUID+6,33429,571,1,256,0,0,6202.35,2284.08,495.286,0.488692,120,0,0,1,0,0,0,0,0,0),
(@GUID+7,33429,571,1,256,0,0,6145.68,2208.17,512.426,0.488692,120,0,0,1,0,0,0,0,0,0);


UPDATE `creature_template` SET `speed_run`=2 WHERE `entry`=33429; -- Boneguard Lieutenant

UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=29098; -- Boneguard Lieutenant

DELETE FROM `creature_template_addon` WHERE `entry`=33429;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33429,25678,0,1,0,NULL); -- Boneguard Lieutenant


SET @GUID=152040; -- Need 57
DELETE FROM `creature` WHERE `id` IN (29407,29409,29412,29413);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(117812,29413,571,1,1,0,0,6304.011,-1012.982,413.2471,2.827433,300,0,0,1,0,0,0,0,0,0), -- Updated Spawn with Sniffed Position
(117813,29413,571,1,1,0,0,6447,-1004.23,433.973,3.21141,300,0,0,11001,0,0,0,0,0,0),
(117814,29413,571,1,1,0,0,6694.82,-1049.95,408.713,4.79241,300,0,0,11001,0,0,0,0,0,0),
(@GUID+0,29413,571,1,1,0,0,6549.784,-1268.647,398.4628,4.380776,300,0,0,1,0,0,0,0,0,0),
(@GUID+1,29413,571,1,1,0,0,6594.707,-1254.841,396.956,0.1745329,300,0,0,1,0,0,0,0,0,0),
(@GUID+2,29413,571,1,1,0,0,6577.69,-1234.807,401.2381,1.919862,300,0,0,1,0,0,0,0,0,0),
(@GUID+3,29413,571,1,1,0,0,6505.765,-1010.692,437.3392,2.146755,300,0,0,1,0,0,0,0,0,0),
(@GUID+4,29413,571,1,1,0,0,6617.206,-1275.861,394.5572,0.03490658,300,0,0,1,0,0,0,0,0,0),
(@GUID+5,29413,571,1,1,0,0,6607.412,-1271.927,395.044,4.310963,300,0,0,1,0,0,0,0,0,0),
(@GUID+6,29413,571,1,1,0,0,6618.625,-1289.63,395.3728,0.2617994,300,0,0,1,0,0,0,0,0,0),
(@GUID+7,29413,571,1,1,0,0,6598.191,-1286.431,394.4492,0.3316126,300,0,0,1,0,0,0,0,0,0),
(@GUID+8,29413,571,1,1,0,0,6695.96,-1041.137,412.2228,-1.350969,300,0,0,1,0,0,0,0,0,0),
(@GUID+9,29413,571,1,1,0,0,6598.955,-1012.957,429.1754,6.230914,300,0,0,1,0,0,0,0,0,0),
(@GUID+10,29413,571,1,1,0,0,6550.22,-1296.998,395.8197,5.305801,300,0,0,1,0,0,0,0,0,0),
(@GUID+11,29413,571,1,1,0,0,6562.411,-1279.173,394.7112,4.572762,300,0,0,1,0,0,0,0,0,0),
(@GUID+12,29413,571,1,1,0,0,6582.667,-1295.584,396.0742,3.769911,300,0,0,1,0,0,0,0,0,0),
(@GUID+13,29413,571,1,1,0,0,6572.444,-1251.02 ,397.3442,1.40402,300,0,0,1,0,0,0,0,0,0),
(@GUID+14,29413,571,1,1,0,0,6554.481,-1243.797,398.5085,4.45059,300,0,0,1,0,0,0,0,0,0),
(@GUID+15,29413,571,1,1,0,0,6671.676,-1297.581,395.9203,0.1032045,300,0,0,1,0,0,0,0,0,0),

(117781,29412,571,1,1,26223,0,6519.95,-1027.48,433.737,0.175263,300,0,0,11379,0,0,0,0,0,0),
(117782,29412,571,1,1,26223,0,6742.73,-1543.87,365.316,2.23402,300,0,0,11379,0,0,0,0,0,0),
(117783,29412,571,1,1,26223,0,6669.02,-1082.85,400.338,5.49205,300,5,0,11379,0,0,1,0,0,0),
(@GUID+16,29412,571,1,1,0,0,6685.524,-1304.507,395.6901,1.574838,300,0,0,1,0,0,0,0,0,0),
(@GUID+17,29412,571,1,1,0,0,6585.083,-1121.508,410.5753,5.966588,300,0,0,1,0,0,0,0,0,0),
(@GUID+18,29412,571,1,1,0,0,6691.913,-1491.667,377.6763,1.820203,300,0,0,1,0,0,0,0,0,0),
(@GUID+19,29412,571,1,1,0,0,6658.331,-1299.063,396.7297,2.80998,300,0,0,1,0,0,0,0,0,0),
(@GUID+20,29412,571,1,1,0,0,6645.377,-1164.97,399.7607,5.235988,300,0,0,1,0,0,0,0,0,0),
(@GUID+21,29412,571,1,1,0,0,6665.021,-1076.323,402.5284,4.24115,300,0,0,1,0,0,0,0,0,0),
(@GUID+22,29412,571,1,1,0,0,6706.143,-1073.628,391.6251,0.781437,300,0,0,1,0,0,0,0,0,0),
(@GUID+23,29412,571,1,1,0,0,6638.069,-1253.051,395.669,4.049164,300,0,0,1,0,0,0,0,0,0),
(@GUID+24,29412,571,1,1,0,0,6599.83,-1024.043,428.5868,3.237097,300,0,0,1,0,0,0,0,0,0),
(@GUID+25,29412,571,1,1,0,0,6538.664,-1043.781,428.86,0.1047198,300,0,0,1,0,0,0,0,0,0),
(@GUID+26,29412,571,1,1,0,0,6684.955,-1351.482,394.3488,6.021386,300,0,0,1,0,0,0,0,0,0),
(@GUID+27,29412,571,1,1,0,0,6712.782,-1482.948,377.3944,1.758111,300,0,0,1,0,0,0,0,0,0),
(@GUID+28,29412,571,1,1,0,0,6615.511,-1116.219,411.492,4.632286,300,0,0,1,0,0,0,0,0,0),
(117305,29407,571,1,1,27185,0,6297.12,-1425.6,426.168,2.28638,300,0,0,11001,3643,0,0,0,0,0),
(117306,29407,571,1,1,27174,0,6297.26,-1406.99,425.576,3.66519,300,0,0,11001,3643,0,0,0,0,0),
(117307,29407,571,1,1,27174,0,6278.49,-1425.38,425.555,1.02974,300,0,0,11001,3643,0,0,0,0,0),
(117308,29407,571,1,1,27174,0,6292.41,-1374.15,425.467,1.57504,300,5,0,11001,3643,0,1,0,0,0),
(117309,29407,571,1,1,27174,0,6293.24,-1367.46,425.361,3.45575,300,0,0,11001,3643,0,0,0,0,0),
(117310,29407,571,1,1,27185,0,6310.95,-1762.18,457.459,1.51755,300,5,0,11001,3643,0,1,0,0,0),
(@GUID+29,29407,571,1,1,0,0,6434.24,-1737.51,432.217,5.46288,300,0,0,1,0,0,0,0,0,0),
(@GUID+30,29407,571,1,1,0,0,6319.8,-1661.22,457.449,0.837758,300,0,0,1,0,0,0,0,0,0),
(@GUID+31,29407,571,1,1,0,0,6289.97,-1599.25,425.883,4.57276,300,0,0,1,0,0,0,0,0,0),
(@GUID+32,29407,571,1,1,0,0,6483.06,-1634.21,464.794,2.37365,300,0,0,1,0,0,0,0,0,0),
(@GUID+33,29407,571,1,1,0,0,6475.38,-1631.87,464.816,0.279253,300,0,0,1,0,0,0,0,0,0),
(@GUID+34,29407,571,1,1,0,0,6458.55,-1661.17,434.631,4.08083,300,0,0,1,0,0,0,0,0,0),
(@GUID+35,29407,571,1,1,0,0,6518.89,-1646.07,426.105,5.11381,300,0,0,1,0,0,0,0,0,0),
(@GUID+36,29407,571,1,1,0,0,6273.52,-1604.35,424.533,5.55015,300,0,0,1,0,0,0,0,0,0),
(@GUID+37,29407,571,1,1,0,0,6425.83,-1670.41,471.519,2.25148,300,0,0,1,0,0,0,0,0,0),
(@GUID+38,29407,571,1,1,0,0,6428.22,-1705.45,434.128,0.488692,300,0,0,1,0,0,0,0,0,0),
(@GUID+39,29407,571,1,1,0,0,6541.62,-1654.47,453.662,5.96903,300,0,0,1,0,0,0,0,0,0),
(@GUID+40,29407,571,1,1,0,0,6403.41,-1717.79,431.839,4.60767,300,0,0,1,0,0,0,0,0,0),
(@GUID+41,29407,571,1,1,0,0,6441.19,-1758.54,432.217,3.26377,300,0,0,1,0,0,0,0,0,0),
(@GUID+42,29407,571,1,1,0,0,6471.03,-1753.78,432.738,1.18682,300,0,0,1,0,0,0,0,0,0),
(@GUID+43,29407,571,1,1,0,0,6459.88,-1762.25,432.217,0.925025,300,0,0,1,0,0,0,0,0,0),
(@GUID+44,29407,571,1,1,0,0,6414.89,-1738.78,432.217,0.401426,300,0,0,1,0,0,0,0,0,0),
(@GUID+45,29407,571,1,1,0,0,6408.04,-1729.23,432.211,2.47837,300,0,0,1,0,0,0,0,0,0),
(@GUID+46,29407,571,1,1,0,0,6514.17,-1749.59,436.202,5.86431,300,0,0,1,0,0,0,0,0,0),
(@GUID+47,29407,571,1,1,0,0,6519.56,-1747.13,436.252,4.41568,300,0,0,1,0,0,0,0,0,0),

(117614,29409,571,1,1,24842,0,6381.32,-1648.28,420.067,1.16937,300,5,0,11770,0,0,1,0,0,0),
(@GUID+48,29409,571,1,1,0,0,6479.16,-1642.7,465.234,1.20397,300,0,0,1,0,0,0,0,0,0),
(@GUID+49,29409,571,1,1,0,0,6410.43,-1613.44,421.331,3.10776,300,0,0,1,0,0,0,0,0,0),
(@GUID+50,29409,571,1,1,0,0,6446.13,-1641.86,418.539,3.43956,300,0,0,1,0,0,0,0,0,0),
(@GUID+51,29409,571,1,1,0,0,6480.65,-1717.4,434.573,2.00713,300,0,0,1,0,0,0,0,0,0),
(@GUID+52,29409,571,1,1,0,0,6503.1,-1677.39,432.951,3.56047,300,0,0,1,0,0,0,0,0,0),
(@GUID+53,29409,571,1,1,0,0,6316.56,-1528.47,428.335,1.8326,300,0,0,1,0,0,0,0,0,0),
(@GUID+54,29409,571,1,1,0,0,6285.07,-1554.58,423.336,2.21657,300,0,0,1,0,0,0,0,0,0),
(@GUID+55,29409,571,1,1,0,0,6544.34,-1675.45,452.674,3.63029,300,0,0,1,0,0,0,0,0,0),
(@GUID+56,29409,571,1,1,0,0,6429.06,-1736.25,479.353,0.855211,300,0,0,1,0,0,0,0,0,0),
(@GUID+57,29409,571,1,1,0,0,6522.09,-1735.2,436.308,0.615843,300,0,0,1,0,0,0,0,0,0);


UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry` IN (29413,29412); -- Snowblind Digger
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=29412; -- Crystalweb Spitter
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=29407; -- Snowblind Devotee
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|32,`speed_run`=1.19048 WHERE `entry`=29546; -- K3 Snow Runner
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=29618; -- Snowblind Follower
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|33554432,`speed_run`=1.19048 WHERE `entry`=29475; -- Improved Land Mine
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_walk`=1.6,`speed_run`=1.42857 WHERE `entry`=29409; -- Garm Watcher



UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=0,`gender`=0 WHERE `modelid`=27183; -- Snowblind Digger
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=0,`gender`=0 WHERE `modelid`=27185; -- Snowblind Devotee
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=0,`gender`=0 WHERE `modelid`=27172; -- Snowblind Follower
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=0,`gender`=0 WHERE `modelid`=27181; -- Snowblind Follower
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=6,`gender`=0 WHERE `modelid`=24857; -- Garm Invader
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=6,`gender`=0 WHERE `modelid`=24842; -- Garm Watcher


DELETE FROM `creature_template_addon` WHERE `entry` IN (29413,29412,29407,29546,29618,29475,29619,29409);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(29413,0,0,1,0, NULL), -- Snowblind Digger
(29412,0,0,1,0,NULL), -- Crystalweb Spitter
(29407,0,0,1,0, NULL), -- Snowblind Devotee
(29546,0,0,1,0, NULL), -- K3 Snow Runner.
(29618,0,0,1,0, NULL), -- Snowblind Follower
(29475,0,0,1,0, NULL), -- Improved Land Mine
(29619,0,0,1,0, NULL), -- Garm Invader
(29409,0,0,1,0, NULL); -- Garm Watcher


SET @OGUID=151892;
DELETE FROM `gameobject` WHERE `id` IN (192131,192130,192129);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,192129,571,1,1,6601.13,-1285.09,394.554,-0.951203,0,0,-0.951203,0.889017,0,0,0),
(@OGUID+1,192130,571,1,1,6606.31,-1273.52,394.595,-0.854712,0.0864091,0.0250797,-0.416438,0.904701,0,0,0),
(@OGUID+2,192131,571,1,1,6562.62,-1285.12,394.856,-0.95405,-0.0144057,0.0048542,-0.459116,0.888246,0,0,0);
SET @GUID := 152098; 

DELETE FROM `creature` WHERE `id` IN (33211,33499,24495,28602,26266,29563,29695,29719,29720,29747,29790,24910);
INSERT INTO creature (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 

(@GUID  ,33211,571,1,1,0,0,3714.916,-4303.659,182.632217,5.098984,120,0,0,1,0,0,0),
(@GUID+1,33211,571,1,1,0,0,3727.9043,-4302.23926,182.257217,3.08221,120,0,0,1,0,0,0),
(@GUID+2,33211,571,1,1,0,0,3745.24487,-4297.097,182.389908,2.715872,120,0,0,1,0,0,0),
(@GUID+3,33211,571,1,1,0,0,3756.47559,-4301.28857,182.095047,2.807836,120,0,0,1,0,0,0),
(@GUID+4,33211,571,1,1,0,0,3771.68848,-4302.969,185.325317,2.31952834,120,0,0,1,0,0,0),
(@GUID+5,33211,571,1,1,0,0,3772.791,-4310.51367,181.825317,0.8431596,120,0,0,1,0,0,0),
(@GUID+6,33211,571,1,1,0,0,3775.21948,-4321.11475,180.200317,3.22582984,120,0,0,1,0,0,0),
(@GUID+7,33211,571,1,1,0,0,3788.88062,-4324.47852,183.075317,5.38701057,120,0,0,1,0,0,0),
(@GUID+8,33211,571,1,1,0,0,3794.85938,-4332.317,181.450317,1.17659271,120,0,0,1,0,0,0),
(@GUID+9,33211,571,1,1,0,0,3802.84766,-4337.217,182.431076,6.150771,120,0,0,1,0,0,0),
(@GUID+10,33211,571,1,1,0,0,3806.70459,-4355.509,181.681076,1.17746329,120,0,0,1,0,0,0),
(@GUID+11,33211,571,1,1,0,0,3809.69434,-4349.24,182.556076,5.637143,120,0,0,1,0,0,0),
(@GUID+12,33211,571,1,1,0,0,3813.42139,-4361.893,181.931076,2.17208815,120,0,0,1,0,0,0),
(@GUID+13,33211,571,1,1,0,0,3814.98438,-4356.101,183.181076,2.89564323,120,0,0,1,0,0,0),

(@GUID+14,33499,571,1,1,0,0,5396.5166,375.7173,170.753632,2.53072739,120,0,0,1,0,0,0),
(@GUID+15,33499,571,1,1,0,0,5410.31152,369.325531,167.654877,3.26376557,120,0,0,1,0,0,0),
(@GUID+16,33499,571,1,1,0,0,5411.861,354.3646,166.12265,5.75958633,120,0,0,1,0,0,0),
(@GUID+17,33499,571,1,1,0,0,5416.46338,439.1525,170.43544,3.42084527,120,0,0,1,0,0,0),
(@GUID+18,33499,571,1,1,0,0,5426.99951,440.918182,169.2432,2.565634,120,0,0,1,0,0,0),
(@GUID+19,33499,571,1,1,0,0,5427.884,360.650848,163.194031,5.078908,120,0,0,1,0,0,0),
(@GUID+20,33499,571,1,1,0,0,5458.528,424.540039,163.886261,0.2268928,120,0,0,1,0,0,0),
(@GUID+21,33499,571,1,1,0,0,5469.51074,374.17688,158.1148,4.20624352,120,0,0,1,0,0,0),

(@GUID+22,24495,1,1,1,0,0,1174.58008,-4292.92139,21.3573341,6.24827862,120,0,0,1,0,0,0), -- Only during Brewfest!

(@GUID+23,28602,1,1,1,0,0,-6104.96533,-1243.60107,-143.192078,3.12413931,120,0,0,1,0,0,0),
(@GUID+24,28602,1,1,1,0,0,-6121.083,-1241.73962,-143.1921,3.19395256,120,0,0,1,0,0,0),

(@GUID+25,26266,571,1,1,0,0,2711.477,4684.87061,2.576662,-2.87749,120,0,0,1,0,0,0), -- Spawns via script???

(@GUID+26,29563,571,1,2,0,0,7335.38135,-2055.097,764.358459,3.36848545,120,0,0,1,0,0,0), -- PHASEMASK = 0x00000002

(@GUID+27,29695,571,1,1,0,0,7313.95752,-1611.87976,944.595459,1.79768908,120,0,0,1,0,0,0),

(@GUID+28,29719,571,1,2,0,0,8249.877,2766.00684,641.9236,2.84488654,120,0,0,1,0,0,0), 
(@GUID+29,29719,571,1,2,0,0,8251.455,2788.82275,641.9236,3.159046,120,0,0,1,0,0,0),
(@GUID+30,29719,571,1,2,0,0,8277.752,2676.89429,689.776733,2.5395987,120,0,0,1,0,0,0),
(@GUID+31,29719,571,1,2,0,0,8312.651,2687.84644,689.776733,1.71902692,120,0,0,1,0,0,0),
(@GUID+32,29719,571,1,2,0,0,8333.677,2713.59741,658.5447,1.27409029,120,0,0,1,0,0,0),
(@GUID+33,29719,571,1,2,0,0,8347.788,2669.8252,689.776733,0.123821385,120,0,0,1,0,0,0),
(@GUID+34,29719,571,1,2,0,0,8353.299,2769.45532,656.0902,4.17133665,120,0,0,1,0,0,0),
(@GUID+35,29719,571,1,2,0,0,8373.952,2828.15039,717.741638,2.66342187,120,0,0,1,0,0,0),
(@GUID+36,29719,571,1,2,0,0,8419.114,2731.20874,656.828064,3.8397243,120,0,0,1,0,0,0),
(@GUID+37,29719,571,1,2,0,0,8419.519,2697.39771,760.0408,4.81710863,120,0,0,1,0,0,0),
(@GUID+38,29719,571,1,2,0,0,8424.577,2652.73364,759.9575,1.02128124,120,0,0,1,0,0,0),
(@GUID+39,29719,571,1,2,0,0,8439.591,2734.11157,759.9575,4.00091362,120,0,0,1,0,0,0),
(@GUID+40,29719,571,1,2,0,0,8481.104,2684.45435,652.436646,2.75762,120,0,0,1,0,0,0),
(@GUID+41,29719,571,1,2,0,0,8485.137,2563.694,759.9575,0.482697248,120,0,0,1,0,0,0),
(@GUID+42,29719,571,1,2,0,0,8551.035,2716.2085,652.3534,0.739110649,120,0,0,1,0,0,0),
(@GUID+43,29719,571,1,2,0,0,8576.94,2706.49927,652.3534,0.875271261,120,0,0,1,0,0,0),
(@GUID+44,29719,571,1,2,0,0,8603.393,2743.799,759.9575,2.06062126,120,0,0,1,0,0,0),
(@GUID+45,29719,571,1,2,0,0,8614.454,2711.10767,652.4367,3.52556515,120,0,0,1,0,0,0),
(@GUID+46,29719,571,1,2,0,0,8626.026,2682.54761,764.3245,3.37955,120,0,0,1,0,0,0),

(@GUID+47,29720,571,1,2,0,0,8271.127,2722.98315,647.9443,4.702879,120,0,0,1,0,0,0),
(@GUID+48,29720,571,1,2,0,0,8313.714,2730.06567,666.274048,1.41371667,120,0,0,1,0,0,0),
(@GUID+49,29720,571,1,2,0,0,8323.991,2775.6377,655.4387,0.820304751,120,0,0,1,0,0,0),
(@GUID+50,29720,571,1,2,0,0,8332.92,2771.744,655.195068,4.373434,120,0,0,1,0,0,0),
(@GUID+51,29720,571,1,2,0,0,8357.752,2723.99731,662.515747,1.15191734,120,0,0,1,0,0,0),
(@GUID+52,29720,571,1,2,0,0,8404.075,2751.15625,666.435547,3.59537816,120,0,0,1,0,0,0),
(@GUID+53,29720,571,1,2,0,0,8405.231,2798.09473,717.7043,2.73629141,120,0,0,1,0,0,0),
(@GUID+54,29720,571,1,2,0,0,8413.143,2643.30151,760.040833,3.281219,120,0,0,1,0,0,0),
(@GUID+55,29720,571,1,2,0,0,8439.822,2744.45386,759.9607,5.875154,120,0,0,1,0,0,0),
(@GUID+56,29720,571,1,2,0,0,8477.97,2558.73364,759.9575,5.86126,120,0,0,1,0,0,0),
(@GUID+57,29720,571,1,2,0,0,8497.8,2665.35474,653.9178,1.16937053,120,0,0,1,0,0,0),
(@GUID+58,29720,571,1,2,0,0,8503.94,2690.78564,653.9437,2.72271371,120,0,0,1,0,0,0),
(@GUID+59,29720,571,1,2,0,0,8518.637,2650.9563,653.9734,2.72271371,120,0,0,1,0,0,0),
(@GUID+60,29720,571,1,2,0,0,8525.105,2553.115,759.9575,2.747424,120,0,0,1,0,0,0),
(@GUID+61,29720,571,1,2,0,0,8530.889,2679.33374,654.1611,2.72271371,120,0,0,1,0,0,0),
(@GUID+62,29720,571,1,2,0,0,8534.625,2547.15869,759.9575,0.228721559,120,0,0,1,0,0,0),
(@GUID+63,29720,571,1,2,0,0,8536.244,2602.14526,652.3534,1.24435687,120,0,0,1,0,0,0),
(@GUID+64,29720,571,1,2,0,0,8581.542,2581.62085,765.5597,2.29454422,120,0,0,1,0,0,0),
(@GUID+65,29720,571,1,2,0,0,8603.618,2744.43042,759.9575,5.913211,120,0,0,1,0,0,0),
(@GUID+66,29720,571,1,2,0,0,8640.634,2686.18237,760.040833,1.2566371,120,0,0,1,0,0,0),

(@GUID+67,29747,571,1,2,0,0,8526.228,2665.08521,1045.03979,2.67035365,120,0,0,1,0,0,0),

(@GUID+68,29790,571,1,2,0,0,8526.228,2665.08521,1037.08838,2.67035365,120,0,0,1,0,0,0), 
 
(@GUID+69,24910,571,1,1,0,0,101.368256,-3645.39087,21.6450329,4.067803,120,0,0,1,0,0,0);


UPDATE creature_template SET `baseattacktime`=2500,`faction_A`=974,`faction_H`=974,`rangeattacktime`= 1069547520,`scale`=1,`speed_run`=1.142857,`speed_walk`=1 WHERE entry = 29747;     -- The Ocular
UPDATE `creature_template` SET `baseattacktime`=2500,`faction_A`=974,`faction_H`=974,`rangeattacktime`=1073804739,`scale`=1,`speed_run`=1,`speed_walk`=1 WHERE entry = 29790; -- The Ocular - Eye of Archerus Exterior Shell
UPDATE `creature_template` SET `baseattacktime`=1000,`faction_A`=21,`faction_H`=21,`rangeattacktime`= 1055790203,`scale`=1,`speed_run`=1.428571,`speed_walk`=1 WHERE `entry`=29720; -- Vault Geist
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=21,`faction_H`=21,`rangeattacktime`= 1063256064,`scale`=1,`speed_run`=1.142857,`speed_walk`=1 WHERE `entry`=29719; -- Morbid Carcass
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=14,`faction_H`=14,`minlevel`=79,`maxlevel`=79,`scale`=1,`speed_run`=1.142857,`speed_walk`=1 WHERE `entry`=33499; -- Skelettal Woodcutter
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=35,`faction_H`=35,`minlevel`=1,`maxlevel`=1,`scale`=1,`speed_run`=1,`speed_walk`=1.6 WHERE `entry`= 33211; -- Lake Frog
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=775,`faction_H`=775,`minlevel`=65,`maxlevel`=65,`npcflag`=`npcflag`|1|2|128,`scale`=1,`speed_run`=1.142857,`speed_walk`=1,`unit_flags`=`unit_flags`|256|512|32768 WHERE `entry`=24495; -- Blix Fixwidget
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=2080,`faction_H`=2080,`minlevel`=77,`maxlevel`=78,`scale`=1,`speed_run`=1.142857,`speed_walk`=1 WHERE `entry`= 28602; -- Death's Hand Acolyte
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=1771,`faction_H`=1771,`minlevel`=70,`maxlevel`=70,`scale`=1,`speed_run`=1.071429,`speed_walk`=1 WHERE `entry`=26266; -- Heigarr the Horrible
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=35,`faction_H`=35,`minlevel`=80,`maxlevel`=80,`scale`=1,`speed_run`=1.142857,`speed_walk`=1 WHERE `entry`=29563; -- Injured Icemaw Matriarch
UPDATE `creature_template` SET `baseattacktime`=2000,`faction_A`=1954,`faction_H`=1954,`minlevel`=79,`maxlevel`=79,`scale`=1,`speed_run`=0.9920629,`speed_walk`=1 WHERE entry = 29695; -- Tracker Thulin
UPDATE creature_template SET `baseattacktime`=2000,`faction_A`=35,`faction_H`=35,`minlevel`=70,`maxlevel`=70,`npcflag`=`npcflag`|2,`scale`=1,`speed_run`=1.142857,`speed_walk`=1 WHERE entry = 24910; -- Captain Ellis
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=31103; -- Twilight Egg (Cosmetic)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81 WHERE `entry`=30681; -- Onyx Blaze Mistress
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81 WHERE `entry`=30453; -- Onyx Sanctum Guardian
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|33554432 WHERE `entry`=30648; -- Fire Cyclone
UPDATE `creature_model_info` SET `bounding_radius`=2.25,`combat_reach`=4.5,`gender`=0 WHERE `modelid`=27421; -- Shadron
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2 WHERE `entry`=30616; -- Flame Tsunami


UPDATE `creature_model_info` SET `bounding_radius`=1.25,`combat_reach`=8.75,`gender`=0 WHERE `modelid`=27226; -- Onyx Brood General
UPDATE `creature_model_info` SET `bounding_radius`=3.75,`combat_reach`=3.75,`gender`=1 WHERE `modelid`=27227; -- Onyx Blaze Mistress
UPDATE `creature_model_info` SET `bounding_radius`=3.75,`combat_reach`=4.375,`gender`=0 WHERE `modelid`=12891; -- Onyx Flight Captain
UPDATE `creature_model_info` SET `bounding_radius`=2.25,`combat_reach`=4.5,`gender`=0 WHERE `modelid`=27039; -- Vesperon
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=1,`gender`=0 WHERE `modelid`=27225; -- Onyx Sanctum Guardian
UPDATE `creature_model_info` SET `bounding_radius`=1.8,`combat_reach`=1,`gender`=2 WHERE `modelid`=27035; -- Sartharion


DELETE FROM `creature_template_addon` WHERE `entry` IN (31103,30680,30681,30682,30449,30453,30648,30451,28860,30616);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(31103,0,0,1,0, NULL), -- Twilight Egg (Cosmetic)
(30680,0,0,1,0, NULL), -- Onyx Brood General
(30681,0,0,1,0, NULL), -- Onyx Blaze Mistress
(30682,0,0,1,0, NULL), -- Onyx Flight Captain
(30449,0,0,1,0, NULL), -- Vesperon
(30453,0,0,1,0, NULL), -- Onyx Sanctum Guardian
(30648,0,0,1,0, NULL), -- Fire Cyclone
(30451,0,0,1,0, NULL), -- Shadron
(28860,0,0,1,0, NULL), -- Sartharion
(30616,0,0,1,0, NULL); -- Flame Tsunami

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId=13 AND SourceEntry IN (66665,67328);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,66665,0,18,1,35013,0,0, '','Koralon Burning Breath'), -- 10 man
(13,0,67328,0,18,1,35013,0,0, '','Koralon Burning Breath'); -- 25 man
DELETE FROM `disables`WHERE `entry` IN(7631,7630,7629,6446,7625,7628,7626);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN(7631,7630,7629,6446,7625,7628,7626);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7631,6,4609,0, ''),
(7630,6,4609,0, ''),
(7629,7,52418,0, ''),
(6446,7,52418,0, ''),
(7625,11,0,0, 'achievement_bg_sa_artillery'),
(7628,11,0,0, 'achievement_bg_sa_artillery');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN(7626);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7626,0,0,0, '');
DELETE FROM `spell_dbc` WHERE `Id`=60937;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(60937,0,0,562036736,32,1,0,0,0,0,0,0,1,0,0,101,0,0,0,0,0,1,0,-1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Seaforium charges damaging wall achievement credit');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_seaforium_blast';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(52408, 'spell_gen_seaforium_blast');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (66862,67681);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(66862,'spell_eadric_radiance'),
(67681,'spell_eadric_radiance');-- Northrend Cloud spawns and pooling
SET @POOL := 4993; -- Set by TDB team (pool_template.entry -  need 6)
SET @GUID := 152168; -- Set by TDB team (creature.guid - need 91)

SET @Artic := 24879; -- Arctic Cloud
SET @Cinder := 32522; -- Cinder Cloud
SET @Steam := 32544; -- Steam Cloud

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL+0 AND @POOL+5;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOL+0,3, 'Arctic Cloud'),
(@POOL+1,3, 'Arctic Cloud'),
(@POOL+2,3, 'Arctic Cloud'),
(@POOL+3,4, 'Cinder Cloud'),
(@POOL+4,3, 'Steam Cloud'),
(@POOL+5,1, 'Steam Cloud');

DELETE FROM `pool_creature` WHERE (`guid` BETWEEN @GUID+0 AND @GUID+90) AND (`pool_entry` BETWEEN @POOL+0 AND @POOL+5);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID+0,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+1,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+2,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+3,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+4,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+5,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+6,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+7,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+8,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+9,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+10,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+11,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+12,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+13,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+14,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+15,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+16,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+17,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+18,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+19,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+20,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+21,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+22,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+23,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+24,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+25,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+26,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+27,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+28,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+29,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+30,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+31,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+32,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+33,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+34,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+35,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+36,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+37,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+38,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+39,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+40,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+41,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+42,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+43,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+44,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+45,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+46,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+47,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+48,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+49,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+50,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+51,@POOL+3,0, 'Cinder Cloud'),
(@GUID+52,@POOL+3,0, 'Cinder Cloud'),
(@GUID+53,@POOL+3,0, 'Cinder Cloud'),
(@GUID+54,@POOL+3,0, 'Cinder Cloud'),
(@GUID+55,@POOL+3,0, 'Cinder Cloud'),
(@GUID+56,@POOL+3,0, 'Cinder Cloud'),
(@GUID+57,@POOL+3,0, 'Cinder Cloud'),
(@GUID+58,@POOL+3,0, 'Cinder Cloud'),
(@GUID+59,@POOL+3,0, 'Cinder Cloud'),
(@GUID+60,@POOL+3,0, 'Cinder Cloud'),
(@GUID+61,@POOL+3,0, 'Cinder Cloud'),
(@GUID+62,@POOL+3,0, 'Cinder Cloud'),
(@GUID+63,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+64,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+65,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+66,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+67,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+68,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+69,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+70,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+71,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+72,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+73,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+74,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+75,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+76,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+77,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+78,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+79,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+80,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+81,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+82,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+83,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+84,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+85,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+86,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+87,@POOL+5,0, 'Steam Cloud - Borean Tundra'),
(@GUID+88,@POOL+5,0, 'Steam Cloud - Borean Tundra'),
(@GUID+89,@POOL+5,0, 'Steam Cloud - Borean Tundra'),
(@GUID+90,@POOL+5,0, 'Steam Cloud - Borean Tundra');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (@Artic,@Cinder,@Steam));
DELETE FROM `creature` WHERE `id` IN (@Artic,@Cinder,@Steam);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,@Artic,571,1,1,0,0,8154.26,-50.2582,853.637,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+1,@Artic,571,1,1,0,0,7585.26,-292.083,1126.52,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+2,@Artic,571,1,1,0,0,8234.87,-690.383,927.345,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+3,@Artic,571,1,1,0,0,7419.3,-903.758,909.254,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+4,@Artic,571,1,1,0,0,6286.04,-576.583,424.563,2.5426,300,5,0,42,0,0,1,0,0,0),
(@GUID+5,@Artic,571,1,1,0,0,5925.67,-626.371,478.491,2.5426,300,5,0,42,0,0,1,0,0,0),
(@GUID+6,@Artic,571,1,1,0,0,6503.32,-1038.15,485.395,2.5426,300,5,0,42,0,0,1,0,0,0),
(@GUID+7,@Artic,571,1,1,0,0,6286.04,-1323.4,426.505,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+8,@Artic,571,1,1,0,0,6926.17,-2091.55,805.349,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+9,@Artic,571,1,1,0,0,6992.55,-2141.33,737.069,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+10,@Artic,571,1,1,0,0,7153.77,-2248.02,759.305,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+11,@Artic,571,1,1,0,0,7229.63,-3044.62,845.739,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+12,@Artic,571,1,1,0,0,7518.88,-3094.41,842.155,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+13,@Artic,571,1,1,0,0,7893.47,-3322.01,857.378,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+14,@Artic,571,1,1,0,0,2762.83,1406.18,131.607,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+15,@Artic,571,1,1,0,0,2845.1,1972.63,140.6,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+16,@Artic,571,1,1,0,0,3073.22,-214.625,93.7885,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+17,@Artic,571,1,1,0,0,3248.98,1187.46,134.375,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+18,@Artic,571,1,1,0,0,3260.2,-1218.52,78.6832,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+19,@Artic,571,1,1,0,0,3458.4,1804.38,75.0776,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+20,@Artic,571,1,1,0,0,3585.54,-1083.92,111.125,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+21,@Artic,571,1,1,0,0,3589.28,671.492,77.7206,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+22,@Artic,571,1,1,0,0,3611.72,-102.458,59.6765,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+23,@Artic,571,1,1,0,0,3708.95,1804.38,101.572,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+24,@Artic,571,1,1,0,0,3880.97,1187.46,55.4913,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+25,@Artic,571,1,1,0,0,4023.07,357.425,41.9114,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+26,@Artic,571,1,1,0,0,4116.56,26.5337,52.568,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+27,@Artic,571,1,1,0,0,4307.28,-820.325,147.814,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+28,@Artic,571,1,1,0,0,4486.78,-242.667,90.8629,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+29,@Artic,571,1,1,0,0,4561.57,-1280.21,159.549,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+30,@Artic,571,1,1,0,0,4576.53,1630.52,286.716,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+31,@Artic,571,1,1,0,0,4815.86,-309.966,229.377,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+32,@Artic,571,1,1,0,0,4924.31,845.35,178.601,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+33,@Artic,571,1,1,0,0,5122.51,1047.25,223.784,3.4733,300,5,0,42,0,0,1,0,0,0),
(@GUID+34,@Artic,571,1,1,0,0,6019.36,2383.58,518.105,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+35,@Artic,571,1,1,0,0,6144.8,1580.92,620.674,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+36,@Artic,571,1,1,0,0,6393.17,-211.808,678.76,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+37,@Artic,571,1,1,0,0,6504.39,1474.31,437.27,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+38,@Artic,571,1,1,0,0,6717.53,184.454,626.635,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+39,@Artic,571,1,1,0,0,6845.56,-789.958,731.38,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+40,@Artic,571,1,1,0,0,7064.68,2860.17,418.75,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+41,@Artic,571,1,1,0,0,7273.74,721.812,482.114,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+42,@Artic,571,1,1,0,0,7390.81,1806.67,433.04,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+43,@Artic,571,1,1,0,0,7518.88,77.7668,801.405,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+44,@Artic,571,1,1,0,0,7670.96,2966.77,531.154,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+45,@Artic,571,1,1,0,0,7679.32,797.062,479.98,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+46,@Artic,571,1,1,0,0,7718.02,42.2043,1021.67,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+47,@Artic,571,1,1,0,0,7984.55,1568.38,460.722,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+48,@Artic,571,1,1,0,0,8016.75,-2916.6,1137.52,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+49,@Artic,571,1,1,0,0,8227.06,3280.31,655.771,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+50,@Artic,571,1,1,0,0,8306.51,960.104,582.006,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+51,@Cinder,571,1,1,0,0,4311.02,1495.92,133.764,1.42942,300,5,0,42,0,0,1,0,0,0),
(@GUID+52,@Cinder,571,1,1,0,0,4347.75,1395.21,134.203,1.42942,300,5,0,42,0,0,1,0,0,0),
(@GUID+53,@Cinder,571,1,1,0,0,4393.29,1490.31,123.673,4.82626,300,5,0,42,0,0,1,0,0,0),
(@GUID+54,@Cinder,571,1,1,0,0,4408.25,1406.18,132.796,4.82626,300,5,0,42,0,0,1,0,0,0),
(@GUID+55,@Cinder,571,1,1,0,0,6419.15,4981.92,-69.5219,1.81657,300,5,0,42,0,0,1,0,0,0),
(@GUID+56,@Cinder,571,1,1,0,0,6488.85,4942.72,-57.9343,1.81657,300,5,0,42,0,0,1,0,0,0),
(@GUID+57,@Cinder,571,1,1,0,0,6517.9,4859.95,-52.7975,1.81657,300,5,0,42,0,0,1,0,0,0),
(@GUID+58,@Cinder,571,1,1,0,0,4217.27,1770.67,352.922,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+59,@Cinder,571,1,1,0,0,4235.12,1883.72,355.337,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+60,@Cinder,571,1,1,0,0,4330.32,1723.07,366.032,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+61,@Cinder,571,1,1,0,0,4342.22,1868.84,356.522,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+62,@Cinder,571,1,1,0,0,4375.93,1782.57,356.84,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+63,@Steam,571,1,1,0,0,3452.67,4685.5,-12.9957,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+64,@Steam,571,1,1,0,0,3698.67,4904.56,-13.6717,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+65,@Steam,571,1,1,0,0,4033.07,4524.1,-1.63039,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+66,@Steam,571,1,1,0,0,4079.2,5089.02,-1.50956,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+67,@Steam,571,1,1,0,0,4740.55,5008.06,-55.5771,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+68,@Steam,571,1,1,0,0,4920.89,4070.89,-17.9628,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+69,@Steam,571,1,1,0,0,5112.28,5953.37,-61.9079,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+70,@Steam,571,1,1,0,0,5152.94,3810.09,-7.13058,0.803393,300,5,0,4979,0,0,1,0,0,0),
(@GUID+71,@Steam,571,1,1,0,0,5158.75,4184.73,-88.1236,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+72,@Steam,571,1,1,0,0,5179.07,5739.91,-83.8105,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+73,@Steam,571,1,1,0,0,5248.77,4707.48,-133.847,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+74,@Steam,571,1,1,0,0,5254.58,5008.06,-135.353,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+75,@Steam,571,1,1,0,0,5376.56,4433.04,-135.251,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+76,@Steam,571,1,1,0,0,5393.98,5940.3,-49.8372,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+77,@Steam,571,1,1,0,0,5501.44,3609.7,-17.8316,0.803393,300,5,0,4979,0,0,1,0,0,0),
(@GUID+78,@Steam,571,1,1,0,0,5585.66,3810.09,-15.5887,0.504939,300,5,0,4979,0,0,1,0,0,0),
(@GUID+79,@Steam,571,1,1,0,0,5588.23,3643.99,-23.6778,0.504939,300,5,0,4979,0,0,1,0,0,0),
(@GUID+80,@Steam,571,1,1,0,0,5608.89,6005.64,-39.6709,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+81,@Steam,571,1,1,0,0,5788.95,5744.27,-69.0541,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+82,@Steam,571,1,1,0,0,5817.99,4171.66,-101.138,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+83,@Steam,571,1,1,0,0,5931.25,4820.74,-110.276,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+84,@Steam,571,1,1,0,0,5980.62,4337.2,-85.2827,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+85,@Steam,571,1,1,0,0,6131.64,4568.08,-91.79,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+86,@Steam,571,1,1,0,0,6149.07,4297.99,-56.5222,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+87,@Steam,571,1,1,0,0,6231,5577.32,-27.9032,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+88,@Steam,571,1,1,0,0,6346.55,4258.79,-47.6791,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+89,@Steam,571,1,1,0,0,6436.58,5360.92,-33.6846,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+90,@Steam,571,1,1,0,0,6459.81,4520.2,-62.7745,5.40584,300,5,0,4979,0,0,1,0,0,0);

DELETE FROM `creature` WHERE `id`=21789; -- Nakansi / Shadowmoon Valley
INSERT INTO creature (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(152259,21789,530,1,1,0,0,-2741.8,2719.07,123.584,0.603481,600,0,0,34930,0,0,0);


DELETE FROM `gameobject` WHERE `id`=187987; -- South Point Station Valve
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(151895,187987,571,1,1,3791.704,4808.966,-11.5618,1.483528,0,0,0.6755896,0.7372779,0,0,0);


UPDATE `creature_template` SET /*`npcflag`=`npcflag`|16777216,*/`speed_walk`=2.8 WHERE `entry`=30123; -- Snorri needs spellclick data
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=30272; -- Njorndar Proto-Drake needs spellclick data
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_walk`=1.444444 WHERE `entry`=30500; -- Argent Skytalon
UPDATE `creature_template` SET `speed_walk`=1.444444 WHERE `entry`=31070; -- Argent Skytalon
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`speed_walk`=1.2 WHERE `entry`=32370; -- Refurbished Demolisher
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_flags`=`unit_flags`|8,`speed_walk`=1.2,`vehicleid`=512 WHERE `entry`=31830; -- Refurbished Demolisher
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.3857142857143 WHERE `entry`=34125; -- Stabled Campaign Warhorse
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|16400,`unit_class`=4,`speed_run`=1 WHERE `entry` IN (36839,35427); -- Horde Gunship Cannon, Horde Gunship Cannon (1)
UPDATE `creature_template` SET `baseattacktime`=2000,/*`npcflag`=`npcflag`|16777216,*/`speed_run`=1.1428571428571 WHERE `entry`=37945; -- Dream Portal needs spellclick data
UPDATE `creature_template` SET `exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,/*`npcflag`=`npcflag`|16777216,*/`speed_run`=1.1428571428571 WHERE `entry`=38186; -- Dream Portal (Pre-effect)  needs spellclick data

UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=2.25,`gender`=2 WHERE `modelid`=25092; -- Refurbished Demolisher
UPDATE `creature_model_info` SET `bounding_radius`=0.248,`combat_reach`=4.8,`gender`=0 WHERE `modelid`=26772; -- Snorri
UPDATE `creature_model_info` SET `bounding_radius`=1.085,`combat_reach`=3.5,`gender`=2 WHERE `modelid`=27703; -- Geargrinder's Jumpbot
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=2.25,`gender`=2 WHERE `modelid`=25092; -- Refurbished Demolisher
UPDATE `creature_model_info` SET `bounding_radius`=1.9,`combat_reach`=0,`gender`=2 WHERE `modelid`=29489; -- Horde Gunship Cannon
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=30844; -- Dream Portal
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=30844; -- Dream Portal (Pre-effect)

DELETE FROM `creature_template_addon` WHERE `entry` IN (30123,30272,31070,31736,31770,32370,31830,36839,37945,38186);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30123,0,0,1,0, '61208 0'), -- Snorri; Aura: Fjorn's Anvil - Quest Invisibility 3
(30272,0,0,1,0, NULL), -- Njorndar Proto-Drake
(31070,0,0,1,0, NULL), -- Argent Skytalon
(31736,0,0,1,0, NULL), -- Geargrinder's Jumpbot
(31770,0,0,1,0, NULL), -- Thunderbomb's Jumpbot
(32370,0,65536,1,0, '49414 0'), -- Refurbished Demolisher; Auras: Generic Quest Invisibility 1
(31830,0,0,1,0, NULL), -- Refurbished Demolisher
(36839,0,0,1,0, '69470 0 69470 1'), -- Horde Gunship Cannon; Aura: Heat Drain
(37945,0,0,1,0, NULL), -- Dream Portal
(38186,0,0,1,0, NULL); -- Dream Portal (Pre-effect)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry`=13846;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(19,0,13846,1,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,1,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(19,0,13846,2,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,2,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(19,0,13846,3,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,3,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(19,0,13846,4,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,4,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(19,0,13846,5,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,5,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(19,0,13846,6,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,6,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(19,0,13846,7,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,7,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(19,0,13846,8,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,8,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(19,0,13846,9,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,9,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(19,0,13846,10,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,10,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(19,0,13846,11,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,11,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(19,0,13846,12,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,12,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(19,0,13846,13,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,13,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered'),
(19,0,13846,14,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,14,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered'),
(20,0,13846,1,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,1,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(20,0,13846,2,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,2,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(20,0,13846,3,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,3,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(20,0,13846,4,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,4,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(20,0,13846,5,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,5,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(20,0,13846,6,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,6,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(20,0,13846,7,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,7,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(20,0,13846,8,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,8,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(20,0,13846,9,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,9,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(20,0,13846,10,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,10,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(20,0,13846,11,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,11,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(20,0,13846,12,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,12,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(20,0,13846,13,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,13,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered'),
(20,0,13846,14,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,14,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered');

DELETE FROM `gossip_menu` WHERE `entry`=7303 AND `text_id`=8662;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7303,8662);
DELETE FROM `gossip_menu` WHERE `entry`=7380 AND `text_id`=8835;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7380,8835);
DELETE FROM `gossip_menu` WHERE `entry`=7424 AND `text_id`=8973;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7424,8973);
DELETE FROM `gossip_menu` WHERE `entry`=7423 AND `text_id`=8972;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7423,8972);
DELETE FROM `gossip_menu` WHERE `entry`=7425 AND `text_id`=8974;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7425,8974);
DELETE FROM `gossip_menu` WHERE `entry`=11910 AND `text_id`=16726;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11910,16726);
DELETE FROM `gossip_menu` WHERE `entry`=5729 AND `text_id`=6896;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5729,6896);
DELETE FROM `gossip_menu` WHERE `entry`=5728 AND `text_id`=6897;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5728,6897);
DELETE FROM `gossip_menu` WHERE `entry`=5727 AND `text_id`=6898;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5727,6898);
DELETE FROM `gossip_menu` WHERE `entry`=5726 AND `text_id`=6899;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5726,6899);
DELETE FROM `gossip_menu` WHERE `entry`=5725 AND `text_id`=6900;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5725,6900);
DELETE FROM `gossip_menu` WHERE `entry`=5724 AND `text_id`=6901;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5724,6901);
DELETE FROM `gossip_menu` WHERE `entry`=5723 AND `text_id`=6902;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5723,6902);
DELETE FROM `gossip_menu` WHERE `entry`=5737 AND `text_id`=6911;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5737,6911);
DELETE FROM `gossip_menu` WHERE `entry`=7084 AND `text_id`=8336;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7084,8336);
DELETE FROM `gossip_menu` WHERE `entry`=5748 AND `text_id`=6927;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5748,6927);
DELETE FROM `gossip_menu` WHERE `entry`=5756 AND `text_id`=6940;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5756,6940);
DELETE FROM `gossip_menu` WHERE `entry`=5743 AND `text_id`=6919;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5743,6919);
DELETE FROM `gossip_menu` WHERE `entry`=5747 AND `text_id`=6925;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5747,6925);
DELETE FROM `gossip_menu` WHERE `entry`=5755 AND `text_id`=6939;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5755,6939);
DELETE FROM `gossip_menu` WHERE `entry`=10026 AND `text_id`=13902;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10026,13902);
DELETE FROM `gossip_menu` WHERE `entry`=9750 AND `text_id`=13375;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9750,13375);
DELETE FROM `gossip_menu` WHERE `entry`=7522 AND `text_id`=9122;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7522,9122);
DELETE FROM `gossip_menu` WHERE `entry`=9162 AND `text_id`=12756;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9162,12756);
DELETE FROM `gossip_menu` WHERE `entry`=9162 AND `text_id`=12417;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9162,12417);
DELETE FROM `gossip_menu` WHERE `entry`=9164 AND `text_id`=12422;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9164,12422);
DELETE FROM `gossip_menu` WHERE `entry`=9166 AND `text_id`=12424;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9166,12424);
DELETE FROM `gossip_menu` WHERE `entry`=9167 AND `text_id`=12426;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9167,12426);
DELETE FROM `gossip_menu` WHERE `entry`=9144 AND `text_id`=12373;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9144,12373);
DELETE FROM `gossip_menu` WHERE `entry`=9164 AND `text_id`=12422;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9164,12422);
DELETE FROM `gossip_menu` WHERE `entry`=9166 AND `text_id`=12424;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9166,12424);
DELETE FROM `gossip_menu` WHERE `entry`=21230 AND `text_id`=1237;
DELETE FROM `gossip_menu` WHERE `entry`=687 AND `text_id`=1237;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (687,1237);
DELETE FROM `gossip_menu` WHERE `entry`=689 AND `text_id`=1239;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (689,1239);
DELETE FROM `gossip_menu` WHERE `entry`=690 AND `text_id`=1240;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (690,1240);
DELETE FROM `gossip_menu` WHERE `entry`=701 AND `text_id`=1253;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (701,1253);
DELETE FROM `gossip_menu` WHERE `entry`=703 AND `text_id`=1255;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (703,1255);
DELETE FROM `gossip_menu` WHERE `entry`=10990 AND `text_id`=15282;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10990,15282);
DELETE FROM `gossip_menu` WHERE `entry`=10929 AND `text_id`=15188;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10929,15188);
DELETE FROM `gossip_menu` WHERE `entry`=10945 AND `text_id`=15209;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10945,15209);
DELETE FROM `gossip_menu` WHERE `entry`=10946 AND `text_id`=15210;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10946,15210);
DELETE FROM `gossip_menu` WHERE `entry`=10947 AND `text_id`=15211;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10947,15211);
DELETE FROM `gossip_menu` WHERE `entry`=9554 AND `text_id`=12869;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9554,12869);
DELETE FROM `gossip_menu` WHERE `entry`=10400 AND `text_id`=14455;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10400,14455);
DELETE FROM `gossip_menu` WHERE `entry`=10340 AND `text_id`=14408;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10340,14408);
DELETE FROM `gossip_menu` WHERE `entry`=10440 AND `text_id`=14476;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10440,14476);
DELETE FROM `gossip_menu` WHERE `entry`=9550 AND `text_id`=12865;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9550,12865);
DELETE FROM `gossip_menu` WHERE `entry`=9555 AND `text_id`=12868;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9555,12868);
DELETE FROM `gossip_menu` WHERE `entry`=9557 AND `text_id`=12871;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9557,12871);


UPDATE `creature_template` SET `gossip_menu_id`=7303 WHERE `entry`=16554;
UPDATE `creature_template` SET `gossip_menu_id`=5729 WHERE `entry`=14358;
UPDATE `creature_template` SET `gossip_menu_id`=5737 WHERE `entry`=14369;
UPDATE `creature_template` SET `gossip_menu_id`=7084 WHERE `entry`=16032;
UPDATE `creature_template` SET `gossip_menu_id`=5748 WHERE `entry`=14383;
UPDATE `creature_template` SET `gossip_menu_id`=5756 WHERE `entry`=14382;
UPDATE `creature_template` SET `gossip_menu_id`=5747 WHERE `entry`=14368;
UPDATE `creature_template` SET `gossip_menu_id`=5755 WHERE `entry`=14381;
UPDATE `creature_template` SET `gossip_menu_id`=10026 WHERE `entry`=31085;
UPDATE `creature_template` SET `gossip_menu_id`=9740 WHERE `entry`=28082;
UPDATE `creature_template` SET `gossip_menu_id`=9741 WHERE `entry`=28138;
UPDATE `creature_template` SET `gossip_menu_id`=9162 WHERE `entry`=25459;
UPDATE `creature_template` SET `gossip_menu_id`=9164 WHERE `entry`=25475;
UPDATE `creature_template` SET `gossip_menu_id`=9166 WHERE `entry`=25476;
UPDATE `creature_template` SET `gossip_menu_id`=9167 WHERE `entry`=25503;
UPDATE `creature_template` SET `gossip_menu_id`=9144 WHERE `entry`=25237;
UPDATE `creature_template` SET `gossip_menu_id`=9164 WHERE `entry`=25475;
UPDATE `creature_template` SET `gossip_menu_id`=9166 WHERE `entry`=25476;
UPDATE `creature_template` SET `gossip_menu_id`=10990 WHERE `entry`=37671;
UPDATE `creature_template` SET `gossip_menu_id`=10929 WHERE `entry`=37715;
UPDATE `creature_template` SET `gossip_menu_id`=9549 WHERE `entry`=27810;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=37887;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38041;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38040;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38039;
UPDATE `creature_template` SET `gossip_menu_id`=10470 WHERE `entry`=33382;
UPDATE `creature_template` SET `gossip_menu_id`=10400 WHERE `entry`=33972;
UPDATE `creature_template` SET `gossip_menu_id`=10340 WHERE `entry`=33447;
UPDATE `creature_template` SET `gossip_menu_id`=9550 WHERE `entry`=27495;

UPDATE `creature_template` SET `gossip_menu_id`=687 WHERE `gossip_menu_id`=21230;


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7368) AND `id` IN (1,2);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7370,5729,5728,5727,5726,5725,5724,5723,7522,9162) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9550,9555) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10340) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10976,10929,10945,10946) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7368,1,0, 'Acteon, where is the best area to hunt for moongraze stags?',1,1,7423,0,0,0,0, ''),
(7368,2,0, 'Acteon, where is the best place to hunt moongraze bucks?',1,1,7424,0,0,0,0, ''),
(7370,0,0, 'Where can I find more infected nightstalker runts, Exarch?',1,1,7425,0,0,0,0, ''),
(5729,0,0, 'What happened here, spirit?',1,1,5728,0,0,0,0, ''),
(5728,0,0, 'I know very little of the Highborne and nothing of the Shen''dralar.',1,1,5727,0,0,0,0, ''),
(5727,0,0, 'Continue, please.',1,1,5726,0,0,0,0, ''),
(5726,0,0, 'Fascinating. Continue, please.',1,1,5725,0,0,0,0, ''),
(5725,0,0, 'I''m going to have to kill something, aren''t I?',1,1,5724,0,0,0,0, ''),
(5724,0,0, 'We live in a world of endless tragedy.',1,1,5723,0,0,0,0, ''),
(5723,0,0, 'A very sad tale. Thank you, spirit.',1,1,0,0,0,0,0, ''),
(7522,0,3, 'Teach me the ways of the spirits.',5,16,0,0,0,0,0, ''),
(9162,0,0, 'Send me to Garrosh''s Landing, Yanni.',1,1,0,0,0,0,0, ''),
(10976,0,0, 'I need another disguise.',1,1,0,0,0,0,0, ''),
(10929,0,0, 'I have a rocket here with your mark on it, Snivel.',1,1,10945,0,0,0,0, ''),
(10945,0,0, 'There''s a chemical inside the rocket. What is it?',1,1,10946,0,0,0,0, ''),
(10946,0,0, 'Where were they delivered?',1,1,10947,0,0,0,0, ''),
(9550,0,0, 'Why would I want to ride a shredder?',1,1,9555,0,0,0,0, ''),
(9555,0,0, 'Where can I get a Refurbished Shredder Key?',1,1,9557,0,0,0,0, ''),
(10340,1,0, 'How do the Argent Crusade riders fight?',1,1,10440,0,0,0,0, '');

DELETE FROM `npc_text` WHERE `ID` IN (16540,8336,16726) AND `WDBVerified`=-1;
INSERT INTO `npc_text` (`ID`,`text0_0`,`WDBVerified`) VALUES
(16540, '[PH]', -1),
(8336, '[PH]', -1),
(16726, '[PH]', -1);
SET @EquiEntry = 2439; -- Need 1 slot


UPDATE `creature_template` SET `exp`=1,`minlevel`=65,`maxlevel`=65,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=34075; -- Captain Dirgehammer
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=12778; -- Lieutenant Rachel Vaccar
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|32768,`equipment_id`=@EquiEntry,`speed_run`=1.1428571428571 WHERE `entry`=34078; -- Lieutenant Tristia
UPDATE `creature_template` SET `exp`=1,`minlevel`=65,`maxlevel`=65,`npcflag`=`npcflag`|128,`unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=34081; -- Captain O'Neal
UPDATE `creature_template` SET `faction_A`=123,`faction_H`=123,`exp`=2,`minlevel`=75,`maxlevel`=75,`baseattacktime`=2000,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|32768,`equipment_id`=188,`speed_run`=1.1428571428571 WHERE `entry`=40607; -- Knight-Lieutenant T'Maire Sydes
UPDATE `creature_template` SET `baseattacktime`=2000,`speed_run`=2.8571428571429,`InhabitType`=5 WHERE `entry`=32180; -- Tempus Wyrm
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432,`unit_class`=2,`speed_walk`=4,`speed_run`=2.8571428571429,`InhabitType`=7 WHERE `entry`=34381; -- [DND]Northrend Children's Week Trigger
UPDATE `creature_template` SET `speed_walk`=4,`speed_run`=2.8571428571429,`InhabitType`=5 WHERE `entry`=27925; -- Nozdormu
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256,`speed_run`=2.8571428571429,`InhabitType`=5 WHERE `entry`=32185; -- Infinite Eradicator
UPDATE `creature_template` SET `faction_A`=2141,`faction_H`=2141,`exp`=2,`speed_run`=1.1428571428571 WHERE `entry`=32331; -- Past You  ???
UPDATE `creature_template` SET `faction_A`=2111,`faction_H`=2111,`unit_flags`=`unit_flags`|34816,`speed_run`=1.1428571428571 WHERE `entry`=27896; -- Infinite Assailant
UPDATE `creature_template` SET `faction_A`=2111,`faction_H`=2111,`unit_flags`=`unit_flags`|559104,`speed_run`=1.1428571428571 WHERE `entry`=27897; -- Infinite Destroyer
UPDATE `creature_template` SET `exp`=2,`speed_run`=1 WHERE `entry`=32327; -- Hourglass of Eternity
UPDATE `creature_template` SET `speed_walk`=1.2,`speed_run`=2 WHERE `entry`=26841; -- Reanimated Frost Wyrm
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33556488,`flags_extra`=`flags_extra`|128 WHERE `entry`=28306; -- Anti-Magic Zone

UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=31953; -- Knight-Lieutenant T'Maire Sydes
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=0 WHERE `modelid`=27814; -- Infinite Eradicator
UPDATE `creature_model_info` SET `bounding_radius`=3.5,`combat_reach`=3,`gender`=2 WHERE `modelid`=24934; -- Nozdormu
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- [DND]Northrend Children's Week Trigger
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=0 WHERE `modelid`=27813; -- Infinite Timebreaker
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Past You
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=2.5,`gender`=0 WHERE `modelid`=20512; -- Infinite Destroyer
UPDATE `creature_model_info` SET `bounding_radius`=0.375,`combat_reach`=1.25,`gender`=0 WHERE `modelid`=19062; -- Infinite Assailant

UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=256,`auras`= '5301 0' WHERE `entry`=12778; -- Lieutenant Rachel Vaccar
UPDATE `creature_template_addon` SET `bytes2`=258 WHERE `entry`=12780; -- Sergeant Major Skyshadow
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=256,`auras`= '5301 0' WHERE `entry`=19848; -- Harbinger Ennarth
UPDATE `creature_template_addon` SET `bytes2`=256 WHERE `entry`=12779; -- Archmage Gaiman

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (31257,26426,32186,26841));
DELETE FROM `creature_template_addon` WHERE `entry` IN (34075,34081,40607,34078,28306);
DELETE FROM `creature_template_addon` WHERE `entry` IN (26426,27925,32186,32180,32185,32327,26841);
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`auras`) VALUES
(34075,0,257, '5301 0'), -- Captain Dirgehammer
(34081,0,257, NULL), -- Captain O'Neal
(40607,0,257, NULL), -- Knight-Lieutenant T'Maire Sydes
(34078,0,257, '5301 0'), -- Lieutenant Tristia
(26426,0,1, '47015 0'), -- Arctic Ram
(27925,50397184,1, '50013 0'),
(32186,50331648,1, '4368 0'), -- Infinite Timebreaker
(32180,50331648,1, '4368 0'), -- Tempus Wyrm
(32185,50331648,1, '4368 0'), -- Infinite Eradicator
(32327,0,1, '50057 0 50867 0'), -- Hourglass of Eternity
(26841,50331648,1, NULL), -- Reanimated Frost Wyrm
(28306,0,257, NULL); -- Anti-Magic Zone

DELETE FROM `creature_equip_template` WHERE `entry`=@EquiEntry;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EquiEntry,34520,29638,0); -- Equipment of 34078 (Lieutenant Tristia)


DELETE FROM `spell_dbc` WHERE `Id`=5302;
INSERT INTO `spell_dbc` (`Id`,`Attributes`,`AttributesEx`,`CastingTimeIndex`,`ProcChance`,`DurationIndex`,`RangeIndex`,`EquippedItemClass`,`Effect1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`Comment`) VALUES
(5302,536871312,1024,1,101,28,1,-1,6,1,4,1,1,1, 'Defensive State - Follows a successful block,dodge or parry.');


UPDATE `spell_dbc` SET `Attributes`=256,`CastingTimeIndex`=1,`ProcChance`=101,`SpellLevel`=45,`RangeIndex`=1,`Effect1`=1,`EffectDieSides1`=1,`EffectBasePoints1`=1,`EffectImplicitTargetA1`=1,`DmgMultiplier1`=1,`DmgMultiplier2`=1,`DmgMultiplier3`=1 WHERE `id`=3617;

UPDATE `spell_dbc` SET `Attributes`=336,`CastingTimeIndex`=1,`ProcChance`=101,`DurationIndex`=21,`RangeIndex`=1,`Effect1`=6,`EffectImplicitTargetA1`=1,`EffectApplyAuraName1`=25,`DmgMultiplier2`=1,`DmgMultiplier2`=1,`DmgMultiplier3`=1,`Comment`= 'Pacified' WHERE `id`=7056;


DELETE FROM `creature` WHERE `id`=27925;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(152260,27925,571,1,1,0,0,4112.988,-417.6215,191.0509,1.727876,300,0,0,1,0,0,0,0,0,0);
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (6172,6177); -- Henze Faulk & Narm Faulk
DELETE FROM `script_texts` WHERE `npc_entry`=0 AND `entry`=-1000187;

SET @ENTRY := 6172;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - On spawn - add aura'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - set npcflags'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - On spawn - set phase 1'),
(@ENTRY,0,3,0,8,1,100,0,8593,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - On spellhit - run script (phase 1)'),

(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - set phase 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Henze Faulk - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Henze Faulk - Script - say text'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - set npcflags'),
(@ENTRY*100,9,4,0,0,0,100,0,120000,120000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - evade (reset script)');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Thank you, dear $C, you just saved my life.',0,7,100,1,0,0, 'Henze Faulk');

UPDATE `creature_template` SET `ScriptName`= '',`RegenHealth`=0 WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=@ENTRY;


SET @ENTRY := 6177;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 

(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - On spawn - add aura'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - set npcflags'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - On spawn - set phase 1'),
(@ENTRY,0,3,0,8,1,100,0,8593,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - On spellhit - run script (phase 1)'),

(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - set phase 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Narm Faulk - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Narm Faulk - Script - say text'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - set npcflags'),
(@ENTRY*100,9,4,0,0,0,100,0,120000,120000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - evade (reset script)');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Thank you, dear $C, you just saved my life.',0,7,100,1,0,0, 'Narm Faulk');

UPDATE `creature_template` SET `ScriptName`= '',`RegenHealth`=0 WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=@ENTRY;


SET @ENTRY := 33788;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8570.943,`position_y`=1008.467,`position_z`=548.2927 WHERE `guid`=85201;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,8,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 8 - run script'),
(@ENTRY,0,2,0,40,0,100,0,10,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 10 - run script'),
(@ENTRY,0,3,0,40,0,100,0,12,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 12 - run script'),
(@ENTRY,0,4,0,40,0,100,0,14,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 14 - run script'),
(@ENTRY,0,5,0,40,0,100,0,15,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 15 - run script'),
(@ENTRY,0,6,0,40,0,100,0,17,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 17 - run script'),
(@ENTRY,0,7,0,40,0,100,0,18,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 18 - run script'),
(@ENTRY,0,8,0,40,0,100,0,20,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 20 - run script'),
(@ENTRY,0,9,0,40,0,100,0,21,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 21 - run script'),
(@ENTRY,0,10,0,40,0,100,0,26,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 26 - run script'),
(@ENTRY,0,11,0,40,0,100,0,28,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 28 - run script'),
(@ENTRY,0,12,0,40,0,100,0,31,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 31 - run script'),
(@ENTRY,0,13,0,40,0,100,0,33,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 33 - run script'),
(@ENTRY,0,14,0,40,0,100,0,38,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 38 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Script - Pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,100,100,0,0,66,0,0,0,0,0,0,19,33787,0,0,0,0,0,0, 'Fhyron Shadesong - Script - turn to Tournament Druid Spell Target'),
(@ENTRY*100,9,2,0,0,0,100,0,100,100,0,0,11,63678,0,0,0,0,0,19,33787,0,0,0,0,0,0, 'Fhyron Shadesong - Script - Cast Earthliving Visual on Tournament Druid Spell Target'),
(@ENTRY*100,9,3,0,0,0,50,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Script - say text 0');

DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Help shield us from these cutting winds, little sapling.',0,7,100,2,0,0, 'Fhyron Shadesong'),
(@ENTRY,0,1, 'There you are',0,7,100,273,0,0, 'Fhyron Shadesong'),
(@ENTRY,0,2, 'Grow, little one.',0,7,100,273,0,0, 'Fhyron Shadesong');

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8567.44,973.9194,547.9177, 'Fhyron Shadesong'),
(@ENTRY,2,8568.162,947.0933,547.8038, 'Fhyron Shadesong'),
(@ENTRY,3,8566.031,913.37,548.2927, 'Fhyron Shadesong'),
(@ENTRY,4,8564.706,894.527,547.6705, 'Fhyron Shadesong'),
(@ENTRY,5,8567.681,876.0731,547.5937, 'Fhyron Shadesong'),
(@ENTRY,6,8578.911,863.8034,548.4218, 'Fhyron Shadesong'),
(@ENTRY,7,8590.869,849.7815,547.6718, 'Fhyron Shadesong'),
(@ENTRY,8,8603.909,853.178,548.1281, 'Fhyron Shadesong'),
(@ENTRY,9,8599.38,855.512,547.715, 'Fhyron Shadesong'),
(@ENTRY,10,8591.701,868.5342,549.3784, 'Fhyron Shadesong'),
(@ENTRY,11,8586.77,871.798,547.876, 'Fhyron Shadesong'),
(@ENTRY,12,8586.149,883.8123,549.2509, 'Fhyron Shadesong'),
(@ENTRY,13,8583.74,886.251,548.96, 'Fhyron Shadesong'),
(@ENTRY,14,8582.075,903.0688,550.0374, 'Fhyron Shadesong'),
(@ENTRY,15,8585.078,918.2136,548.6675, 'Fhyron Shadesong'),
(@ENTRY,16,8581.65,944.137,547.897, 'Fhyron Shadesong'),
(@ENTRY,17,8582.839,948.3386,547.6221, 'Fhyron Shadesong'),
(@ENTRY,18,8565.45,986.6495,549.3403, 'Fhyron Shadesong'),
(@ENTRY,19,8570.5,989.399,547.629, 'Fhyron Shadesong'),
(@ENTRY,20,8576.626,1006.561,549.2132, 'Fhyron Shadesong'),
(@ENTRY,21,8586.87,1008.438,548.1278, 'Fhyron Shadesong'),
(@ENTRY,22,8590.46,1005.12,547.563, 'Fhyron Shadesong'),
(@ENTRY,23,8599.41,1007.08,547.419, 'Fhyron Shadesong'),
(@ENTRY,24,8602.17,1013.39,548.185, 'Fhyron Shadesong'),
(@ENTRY,25,8604.88,1030.23,556.734, 'Fhyron Shadesong'),
(@ENTRY,26,8612.658,1035.293,558.3499, 'Fhyron Shadesong'),
(@ENTRY,27,8611.47,1039.23,558.735, 'Fhyron Shadesong'),
(@ENTRY,28,8613.692,1042.313,558.3265, 'Fhyron Shadesong'),
(@ENTRY,29,8603.88,1044.65,558.38, 'Fhyron Shadesong'),
(@ENTRY,30,8598.02,1072.57,557.923, 'Fhyron Shadesong'),
(@ENTRY,31,8602.397,1081.373,558.2934, 'Fhyron Shadesong'),
(@ENTRY,32,8597.45,1089.27,557.317, 'Fhyron Shadesong'),
(@ENTRY,33,8600.864,1092.901,557.4839, 'Fhyron Shadesong'),
(@ENTRY,34,8593.38,1084.72,556.817, 'Fhyron Shadesong'),
(@ENTRY,35,8578.9,1068.6,557.38, 'Fhyron Shadesong'),
(@ENTRY,36,8563.31,1065.51,554.057, 'Fhyron Shadesong'),
(@ENTRY,37,8549.85,1061.87,550.61, 'Fhyron Shadesong'),
(@ENTRY,38,8547.754,1051.273,550.2899, 'Fhyron Shadesong'),
(@ENTRY,39,8544.317,1042.702,549.2928, 'Fhyron Shadesong'),
(@ENTRY,40,8557.891,1029.923,548.1677, 'Fhyron Shadesong'),
(@ENTRY,41,8566.168,1017.246,548.1677, 'Fhyron Shadesong'),
(@ENTRY,42,8570.943,1008.467,548.2927, 'Fhyron Shadesong');

UPDATE `creature_template` SET `InhabitType`=1 WHERE `entry`=33787;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=61810;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`Comment`) VALUES
(17,0,61810,1,23,3576, 'Egg Rush! - Requires Azure Watch'), -- OR
(17,0,61810,2,23,186, 'Egg Rush! - Requires Dolanaar'), -- OR
(17,0,61810,3,23,87, 'Egg Rush! - Requires Goldshire'), -- OR
(17,0,61810,4,23,131, 'Egg Rush! - Requires Kharanos'), -- OR
(17,0,61810,5,23,222, 'Egg Rush! - Requires Bloodhoof Village'), -- OR
(17,0,61810,6,23,159, 'Egg Rush! - Requires Brill'), -- OR
(17,0,61810,7,23,2118, 'Egg Rush! - Requires Brill Town Hall'), -- OR
(17,0,61810,8,23,3665, 'Egg Rush! - Requires Falconwing Square'), -- OR
(17,0,61810,9,23,362, 'Egg Rush! - Requires Razor Hill'), -- OR
(17,0,61810,10,23,2337, 'Egg Rush! - Requires Razor Hill Barracks');


UPDATE `gameobject_template` SET `faction`=35 WHERE `entry` BETWEEN 113768 AND 113772; -- Brightly Colored Egg's
UPDATE `gameobject_template` SET `data1`=26884,`data7`=194047 WHERE `entry`=113772 AND `WDBVerified`=1; -- Brightly Colored Egg, made up GOB, no reason to be different from others


DELETE FROM `gameobject_loot_template` WHERE `entry`=4984;
DELETE FROM `item_loot_template` WHERE `entry`=45072;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(45072,44791,95,1,1,1,1), -- Noblegarden Chocolate
(45072,19028,0.2,1,1,1,1), -- Elegant Dress reminder of group 1
(45072,6833,0.9,1,1,1,1), -- White Tuxedo Shirt
(45072,6835,0.9,1,1,1,1), -- Black Tuxedo Pants
(45072,45073,0.6,1,1,1,1), -- Spring Flowers
(45072,44800,0.6,1,1,1,1), -- Spring Robes
(45072,44794,0.4,1,1,1,1), -- Spring Rabbit's Foot
(45072,44803,0.5,1,1,1,1), -- Spring Circlet
(45072,44792,0.9,1,1,1,1), -- Blossoming Branch
(45072,44806,-100,1,0,1,1); -- Brightly Colored Shell Fragment


UPDATE `creature_template` SET `equipment_id`=10102 WHERE `entry` =32836;
/* Spawn Brightly Colored Eggs */

SET @EVENT = 9; -- Noblegarden
SET @GUID = 151896; -- Gameobjects
SET @DESPAWN = 40; -- Eggs respawn time: 40 seconds ?
SET @POOL = 5699; -- Need 8

SET @A = 113768; -- Brightly Colored Egg
SET @B = 113769; -- Brightly Colored Egg
SET @C = 113770; -- Brightly Colored Egg
SET @D = 113771; -- Brightly Colored Egg
SET @E = 113772; -- Brightly Colored Egg

DELETE FROM `game_event` WHERE `eventEntry`=26;
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=26;


DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL AND @POOL+7;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOL+0,20, 'Noblegarden Eggs - Azure Watch'),
(@POOL+1,20, 'Noblegarden Eggs - Dolanaar'),
(@POOL+2,20, 'Noblegarden Eggs - Goldshire'),
(@POOL+3,20, 'Noblegarden Eggs - Kharanos'),
(@POOL+4,20, 'Noblegarden Eggs - Bloodhoof Village'),
(@POOL+5,20, 'Noblegarden Eggs - Brill'),
(@POOL+6,20, 'Noblegarden Eggs - Falconwing Square'),
(@POOL+7,20, 'Noblegarden Eggs - Razor Hill');

DELETE FROM `game_event_pool` WHERE `eventEntry`=@EVENT;
INSERT INTO `game_event_pool` (`eventEntry`,`pool_entry`) VALUES
(@EVENT,@POOL+0),(@EVENT,@POOL+1),
(@EVENT,@POOL+2),(@EVENT,@POOL+3),
(@EVENT,@POOL+4),(@EVENT,@POOL+5),
(@EVENT,@POOL+6),(@EVENT,@POOL+7);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+219 AND `pool_entry` BETWEEN @POOL AND @POOL+7;
INSERT INTO `pool_gameobject` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID+000,@POOL+0,0, 'Noblegarden Egg'),(@GUID+001,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+002,@POOL+0,0, 'Noblegarden Egg'),(@GUID+003,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+004,@POOL+0,0, 'Noblegarden Egg'),(@GUID+005,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+006,@POOL+0,0, 'Noblegarden Egg'),(@GUID+007,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+008,@POOL+0,0, 'Noblegarden Egg'),(@GUID+009,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+010,@POOL+0,0, 'Noblegarden Egg'),(@GUID+011,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+012,@POOL+0,0, 'Noblegarden Egg'),(@GUID+013,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+014,@POOL+0,0, 'Noblegarden Egg'),(@GUID+015,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+016,@POOL+0,0, 'Noblegarden Egg'),(@GUID+017,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+018,@POOL+0,0, 'Noblegarden Egg'),(@GUID+019,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+020,@POOL+0,0, 'Noblegarden Egg'),(@GUID+021,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+022,@POOL+0,0, 'Noblegarden Egg'),(@GUID+023,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+024,@POOL+0,0, 'Noblegarden Egg'),(@GUID+025,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+026,@POOL+0,0, 'Noblegarden Egg'),
(@GUID+027,@POOL+1,0, 'Noblegarden Egg'),(@GUID+028,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+029,@POOL+1,0, 'Noblegarden Egg'),(@GUID+030,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+031,@POOL+1,0, 'Noblegarden Egg'),(@GUID+032,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+033,@POOL+1,0, 'Noblegarden Egg'),(@GUID+034,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+035,@POOL+1,0, 'Noblegarden Egg'),(@GUID+036,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+037,@POOL+1,0, 'Noblegarden Egg'),(@GUID+038,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+039,@POOL+1,0, 'Noblegarden Egg'),(@GUID+040,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+041,@POOL+1,0, 'Noblegarden Egg'),(@GUID+042,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+043,@POOL+1,0, 'Noblegarden Egg'),(@GUID+044,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+045,@POOL+1,0, 'Noblegarden Egg'),(@GUID+046,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+047,@POOL+1,0, 'Noblegarden Egg'),(@GUID+048,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+049,@POOL+1,0, 'Noblegarden Egg'),(@GUID+050,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+051,@POOL+1,0, 'Noblegarden Egg'),
(@GUID+052,@POOL+2,0, 'Noblegarden Egg'),(@GUID+053,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+054,@POOL+2,0, 'Noblegarden Egg'),(@GUID+055,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+056,@POOL+2,0, 'Noblegarden Egg'),(@GUID+057,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+058,@POOL+2,0, 'Noblegarden Egg'),(@GUID+059,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+060,@POOL+2,0, 'Noblegarden Egg'),(@GUID+061,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+062,@POOL+2,0, 'Noblegarden Egg'),(@GUID+063,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+064,@POOL+2,0, 'Noblegarden Egg'),(@GUID+065,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+066,@POOL+2,0, 'Noblegarden Egg'),(@GUID+067,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+068,@POOL+2,0, 'Noblegarden Egg'),(@GUID+069,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+070,@POOL+2,0, 'Noblegarden Egg'),(@GUID+071,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+072,@POOL+2,0, 'Noblegarden Egg'),(@GUID+073,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+074,@POOL+2,0, 'Noblegarden Egg'),(@GUID+075,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+076,@POOL+2,0, 'Noblegarden Egg'),(@GUID+077,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+078,@POOL+2,0, 'Noblegarden Egg'),(@GUID+079,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+080,@POOL+2,0, 'Noblegarden Egg'),(@GUID+081,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+082,@POOL+2,0, 'Noblegarden Egg'),(@GUID+083,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+084,@POOL+2,0, 'Noblegarden Egg'),(@GUID+085,@POOL+2,0, 'Noblegarden Egg'),
(@GUID+086,@POOL+3,0, 'Noblegarden Egg'),(@GUID+087,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+088,@POOL+3,0, 'Noblegarden Egg'),(@GUID+089,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+090,@POOL+3,0, 'Noblegarden Egg'),(@GUID+091,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+092,@POOL+3,0, 'Noblegarden Egg'),(@GUID+093,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+094,@POOL+3,0, 'Noblegarden Egg'),(@GUID+095,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+096,@POOL+3,0, 'Noblegarden Egg'),(@GUID+097,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+098,@POOL+3,0, 'Noblegarden Egg'),(@GUID+099,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+100,@POOL+3,0, 'Noblegarden Egg'),(@GUID+101,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+102,@POOL+3,0, 'Noblegarden Egg'),(@GUID+103,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+104,@POOL+3,0, 'Noblegarden Egg'),(@GUID+105,@POOL+3,0, 'Noblegarden Egg'),
(@GUID+106,@POOL+4,0, 'Noblegarden Egg'),(@GUID+107,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+108,@POOL+4,0, 'Noblegarden Egg'),(@GUID+109,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+110,@POOL+4,0, 'Noblegarden Egg'),(@GUID+111,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+112,@POOL+4,0, 'Noblegarden Egg'),(@GUID+113,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+114,@POOL+4,0, 'Noblegarden Egg'),(@GUID+115,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+116,@POOL+4,0, 'Noblegarden Egg'),(@GUID+117,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+118,@POOL+4,0, 'Noblegarden Egg'),(@GUID+119,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+120,@POOL+4,0, 'Noblegarden Egg'),(@GUID+121,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+122,@POOL+4,0, 'Noblegarden Egg'),(@GUID+123,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+124,@POOL+4,0, 'Noblegarden Egg'),(@GUID+125,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+126,@POOL+4,0, 'Noblegarden Egg'),(@GUID+127,@POOL+4,0, 'Noblegarden Egg'),
(@GUID+128,@POOL+5,0, 'Noblegarden Egg'),(@GUID+129,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+130,@POOL+5,0, 'Noblegarden Egg'),(@GUID+131,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+132,@POOL+5,0, 'Noblegarden Egg'),(@GUID+133,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+134,@POOL+5,0, 'Noblegarden Egg'),(@GUID+135,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+136,@POOL+5,0, 'Noblegarden Egg'),(@GUID+137,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+138,@POOL+5,0, 'Noblegarden Egg'),(@GUID+139,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+140,@POOL+5,0, 'Noblegarden Egg'),(@GUID+141,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+142,@POOL+5,0, 'Noblegarden Egg'),(@GUID+143,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+144,@POOL+5,0, 'Noblegarden Egg'),(@GUID+145,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+146,@POOL+5,0, 'Noblegarden Egg'),(@GUID+147,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+148,@POOL+5,0, 'Noblegarden Egg'),(@GUID+149,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+150,@POOL+5,0, 'Noblegarden Egg'),(@GUID+151,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+152,@POOL+5,0, 'Noblegarden Egg'),(@GUID+153,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+154,@POOL+5,0, 'Noblegarden Egg'),(@GUID+155,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+156,@POOL+5,0, 'Noblegarden Egg'),(@GUID+157,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+158,@POOL+5,0, 'Noblegarden Egg'),(@GUID+159,@POOL+5,0, 'Noblegarden Egg'),
(@GUID+160,@POOL+5,0, 'Noblegarden Egg'),(@GUID+161,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+162,@POOL+6,0, 'Noblegarden Egg'),(@GUID+163,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+164,@POOL+6,0, 'Noblegarden Egg'),(@GUID+165,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+166,@POOL+6,0, 'Noblegarden Egg'),(@GUID+167,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+168,@POOL+6,0, 'Noblegarden Egg'),(@GUID+169,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+170,@POOL+6,0, 'Noblegarden Egg'),(@GUID+171,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+172,@POOL+6,0, 'Noblegarden Egg'),(@GUID+173,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+174,@POOL+6,0, 'Noblegarden Egg'),(@GUID+175,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+176,@POOL+6,0, 'Noblegarden Egg'),(@GUID+177,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+178,@POOL+6,0, 'Noblegarden Egg'),(@GUID+179,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+180,@POOL+6,0, 'Noblegarden Egg'),(@GUID+181,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+182,@POOL+6,0, 'Noblegarden Egg'),(@GUID+183,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+184,@POOL+6,0, 'Noblegarden Egg'),(@GUID+185,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+186,@POOL+6,0, 'Noblegarden Egg'),(@GUID+187,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+188,@POOL+6,0, 'Noblegarden Egg'),(@GUID+189,@POOL+6,0, 'Noblegarden Egg'),
(@GUID+190,@POOL+7,0, 'Noblegarden Egg'),(@GUID+191,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+192,@POOL+7,0, 'Noblegarden Egg'),(@GUID+193,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+194,@POOL+7,0, 'Noblegarden Egg'),(@GUID+195,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+196,@POOL+7,0, 'Noblegarden Egg'),(@GUID+197,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+198,@POOL+7,0, 'Noblegarden Egg'),(@GUID+199,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+200,@POOL+7,0, 'Noblegarden Egg'),(@GUID+201,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+202,@POOL+7,0, 'Noblegarden Egg'),(@GUID+203,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+204,@POOL+7,0, 'Noblegarden Egg'),(@GUID+205,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+206,@POOL+7,0, 'Noblegarden Egg'),(@GUID+207,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+208,@POOL+7,0, 'Noblegarden Egg'),(@GUID+209,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+210,@POOL+7,0, 'Noblegarden Egg'),(@GUID+211,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+212,@POOL+7,0, 'Noblegarden Egg'),(@GUID+213,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+214,@POOL+7,0, 'Noblegarden Egg'),(@GUID+215,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+216,@POOL+7,0, 'Noblegarden Egg'),(@GUID+217,@POOL+7,0, 'Noblegarden Egg'),
(@GUID+218,@POOL+7,0, 'Noblegarden Egg'),(@GUID+219,@POOL+7,0, 'Noblegarden Egg');

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT;
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(@EVENT,@GUID+000),(@EVENT,@GUID+001),(@EVENT,@GUID+002),
(@EVENT,@GUID+003),(@EVENT,@GUID+004),(@EVENT,@GUID+005),
(@EVENT,@GUID+006),(@EVENT,@GUID+007),(@EVENT,@GUID+008),
(@EVENT,@GUID+009),(@EVENT,@GUID+010),(@EVENT,@GUID+011),
(@EVENT,@GUID+012),(@EVENT,@GUID+013),(@EVENT,@GUID+014),
(@EVENT,@GUID+015),(@EVENT,@GUID+016),(@EVENT,@GUID+017),
(@EVENT,@GUID+018),(@EVENT,@GUID+019),(@EVENT,@GUID+020),
(@EVENT,@GUID+021),(@EVENT,@GUID+022),(@EVENT,@GUID+023),
(@EVENT,@GUID+024),(@EVENT,@GUID+025),(@EVENT,@GUID+026),
(@EVENT,@GUID+027),(@EVENT,@GUID+028),(@EVENT,@GUID+029),
(@EVENT,@GUID+030),(@EVENT,@GUID+031),(@EVENT,@GUID+032),
(@EVENT,@GUID+033),(@EVENT,@GUID+034),(@EVENT,@GUID+035),
(@EVENT,@GUID+036),(@EVENT,@GUID+037),(@EVENT,@GUID+038),
(@EVENT,@GUID+039),(@EVENT,@GUID+040),(@EVENT,@GUID+041),
(@EVENT,@GUID+042),(@EVENT,@GUID+043),(@EVENT,@GUID+044),
(@EVENT,@GUID+045),(@EVENT,@GUID+046),(@EVENT,@GUID+047),
(@EVENT,@GUID+048),(@EVENT,@GUID+049),(@EVENT,@GUID+050),
(@EVENT,@GUID+051),(@EVENT,@GUID+052),(@EVENT,@GUID+053),
(@EVENT,@GUID+054),(@EVENT,@GUID+055),(@EVENT,@GUID+056),
(@EVENT,@GUID+057),(@EVENT,@GUID+058),(@EVENT,@GUID+059),
(@EVENT,@GUID+060),(@EVENT,@GUID+061),(@EVENT,@GUID+062),
(@EVENT,@GUID+063),(@EVENT,@GUID+064),(@EVENT,@GUID+065),
(@EVENT,@GUID+066),(@EVENT,@GUID+067),(@EVENT,@GUID+068),
(@EVENT,@GUID+069),(@EVENT,@GUID+070),(@EVENT,@GUID+071),
(@EVENT,@GUID+072),(@EVENT,@GUID+073),(@EVENT,@GUID+074),
(@EVENT,@GUID+075),(@EVENT,@GUID+076),(@EVENT,@GUID+077),
(@EVENT,@GUID+078),(@EVENT,@GUID+079),(@EVENT,@GUID+080),
(@EVENT,@GUID+081),(@EVENT,@GUID+082),(@EVENT,@GUID+083),
(@EVENT,@GUID+084),(@EVENT,@GUID+085),(@EVENT,@GUID+086),
(@EVENT,@GUID+087),(@EVENT,@GUID+088),(@EVENT,@GUID+089),
(@EVENT,@GUID+090),(@EVENT,@GUID+091),(@EVENT,@GUID+092),
(@EVENT,@GUID+093),(@EVENT,@GUID+094),(@EVENT,@GUID+095),
(@EVENT,@GUID+096),(@EVENT,@GUID+097),(@EVENT,@GUID+098),
(@EVENT,@GUID+099),(@EVENT,@GUID+100),(@EVENT,@GUID+101),
(@EVENT,@GUID+102),(@EVENT,@GUID+103),(@EVENT,@GUID+104),
(@EVENT,@GUID+105),(@EVENT,@GUID+106),(@EVENT,@GUID+107),
(@EVENT,@GUID+108),(@EVENT,@GUID+109),(@EVENT,@GUID+110),
(@EVENT,@GUID+111),(@EVENT,@GUID+112),(@EVENT,@GUID+113),
(@EVENT,@GUID+114),(@EVENT,@GUID+115),(@EVENT,@GUID+116),
(@EVENT,@GUID+117),(@EVENT,@GUID+118),(@EVENT,@GUID+119),
(@EVENT,@GUID+120),(@EVENT,@GUID+121),(@EVENT,@GUID+122),
(@EVENT,@GUID+123),(@EVENT,@GUID+124),(@EVENT,@GUID+125),
(@EVENT,@GUID+126),(@EVENT,@GUID+127),(@EVENT,@GUID+128),
(@EVENT,@GUID+129),(@EVENT,@GUID+130),(@EVENT,@GUID+131),
(@EVENT,@GUID+132),(@EVENT,@GUID+133),(@EVENT,@GUID+134),
(@EVENT,@GUID+135),(@EVENT,@GUID+136),(@EVENT,@GUID+137),
(@EVENT,@GUID+138),(@EVENT,@GUID+139),(@EVENT,@GUID+140),
(@EVENT,@GUID+141),(@EVENT,@GUID+142),(@EVENT,@GUID+143),
(@EVENT,@GUID+144),(@EVENT,@GUID+145),(@EVENT,@GUID+146),
(@EVENT,@GUID+147),(@EVENT,@GUID+148),(@EVENT,@GUID+149),
(@EVENT,@GUID+150),(@EVENT,@GUID+151),(@EVENT,@GUID+152),
(@EVENT,@GUID+153),(@EVENT,@GUID+154),(@EVENT,@GUID+155),
(@EVENT,@GUID+156),(@EVENT,@GUID+157),(@EVENT,@GUID+158),
(@EVENT,@GUID+159),(@EVENT,@GUID+160),(@EVENT,@GUID+161),
(@EVENT,@GUID+162),(@EVENT,@GUID+163),(@EVENT,@GUID+164),
(@EVENT,@GUID+165),(@EVENT,@GUID+166),(@EVENT,@GUID+167),
(@EVENT,@GUID+168),(@EVENT,@GUID+169),(@EVENT,@GUID+170),
(@EVENT,@GUID+171),(@EVENT,@GUID+172),(@EVENT,@GUID+173),
(@EVENT,@GUID+174),(@EVENT,@GUID+175),(@EVENT,@GUID+176),
(@EVENT,@GUID+177),(@EVENT,@GUID+178),(@EVENT,@GUID+179),
(@EVENT,@GUID+180),(@EVENT,@GUID+181),(@EVENT,@GUID+182),
(@EVENT,@GUID+183),(@EVENT,@GUID+184),(@EVENT,@GUID+185),
(@EVENT,@GUID+186),(@EVENT,@GUID+187),(@EVENT,@GUID+188),
(@EVENT,@GUID+189),(@EVENT,@GUID+190),(@EVENT,@GUID+191),
(@EVENT,@GUID+192),(@EVENT,@GUID+193),(@EVENT,@GUID+194),
(@EVENT,@GUID+195),(@EVENT,@GUID+196),(@EVENT,@GUID+197),
(@EVENT,@GUID+198),(@EVENT,@GUID+199),(@EVENT,@GUID+200),
(@EVENT,@GUID+201),(@EVENT,@GUID+202),(@EVENT,@GUID+203),
(@EVENT,@GUID+204),(@EVENT,@GUID+205),(@EVENT,@GUID+206),
(@EVENT,@GUID+207),(@EVENT,@GUID+208),(@EVENT,@GUID+209),
(@EVENT,@GUID+210),(@EVENT,@GUID+211),(@EVENT,@GUID+212),
(@EVENT,@GUID+213),(@EVENT,@GUID+214),(@EVENT,@GUID+215),
(@EVENT,@GUID+216),(@EVENT,@GUID+217),(@EVENT,@GUID+218),
(@EVENT,@GUID+219); 

DELETE FROM `gameobject` WHERE `id` BETWEEN 113768 AND 113772;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GUID+000,@A,0,1,1,-5572.18,-462.293,402.306,4.1197,0,0,0.882777,-0.469792,@DESPAWN,0,1), 
(@GUID+001,@B,0,1,1,-5588.73,-514.072,404.096,5.47452,0,0,0.393407,-0.919364,@DESPAWN,0,1),
(@GUID+002,@C,0,1,1,-5657.99,-509.341,398.747,1.01738,0,0,0.487035,0.873382,@DESPAWN,0,1),
(@GUID+003,@D,0,1,1,-5679.2,-527.206,396.599,0.129883,0,0,0.0648957,0.997892,@DESPAWN,0,1),
(@GUID+004,@E,0,1,1,-5648.93,-500.956,396.669,5.91827,0,0,0.181445,-0.983401,@DESPAWN,0,1),
(@GUID+005,@A,0,1,1,-5606.29,-445.915,403.953,4.50064,0,0,0.777873,-0.628421,@DESPAWN,0,1),
(@GUID+006,@B,0,1,1,-5610.05,-425.467,403.297,4.33964,0,0,0.825888,-0.563834,@DESPAWN,0,1),
(@GUID+007,@C,0,1,1,-5549.5,-438.023,405.233,4.35534,0,0,0.821434,-0.570304,@DESPAWN,0,1),
(@GUID+008,@D,0,1,1,-5568.58,-417.381,416.157,3.67204,0,0,0.965034,-0.262126,@DESPAWN,0,1),
(@GUID+009,@E,0,1,1,-5597.9,-420.422,412.014,3.52674,0,0,0.981515,-0.191384,@DESPAWN,0,1),
(@GUID+010,@A,0,1,1,-5585,-427.035,424.522,4.22181,0,0,0.857652,-0.514231,@DESPAWN,0,1),
(@GUID+011,@B,0,1,1,-5531.16,-459.015,403.516,4.19039,0,0,0.865625,-0.500693,@DESPAWN,0,1),
(@GUID+012,@C,0,1,1,-5543.29,-475.611,397.919,4.41423,0,0,0.804289,-0.594238,@DESPAWN,0,1),
(@GUID+013,@D,0,1,1,-5539.12,-501.709,402.718,3.42463,0,0,0.990003,-0.141047,@DESPAWN,0,1),
(@GUID+014,@E,0,1,1,-5550.12,-499.479,401.691,1.09592,0,0,0.520947,0.853589,@DESPAWN,0,1),
(@GUID+015,@A,0,1,1,-5552.1,-528.526,403.379,0.699295,0,0,0.342566,0.939494,@DESPAWN,0,1),
(@GUID+016,@B,0,1,1,-5577.98,-516.152,404.097,2.76804,0,0,0.982608,0.185694,@DESPAWN,0,1),
(@GUID+017,@C,0,1,1,-5589.02,-499.368,400.114,3.61626,0,0,0.971968,-0.235114,@DESPAWN,0,1),
(@GUID+018,@D,0,1,1,-5595.03,-507.466,401.138,0.835169,0,0,0.405553,0.914071,@DESPAWN,0,1),
(@GUID+019,@E,0,1,1,-5615.28,-523.667,402.662,2.11537,0,0,0.87122,0.490892,@DESPAWN,0,1),
(@GUID+020,@A,0,1,1,-5615.63,-532.978,406.92,1.49097,0,0,0.678329,0.734758,@DESPAWN,0,1),
(@GUID+021,@B,0,1,1,-5639.01,-531.358,405.116,1.07471,0,0,0.511866,0.859065,@DESPAWN,0,1),
(@GUID+022,@C,0,1,1,-5645.02,-506.352,397.389,6.13267,0,0,0.0751855,-0.99717,@DESPAWN,0,1),
(@GUID+023,@D,0,1,1,-5629.9,-478.085,397.148,4.82499,0,0,0.666198,-0.745775,@DESPAWN,0,1),
(@GUID+024,@E,0,1,1,-5596.35,-454.242,402.532,5.13522,0,0,0.54298,-0.839746,@DESPAWN,0,1),
(@GUID+025,@A,0,1,1,-5584.47,-462.246,402.873,1.54203,0,0,0.696862,0.717205,@DESPAWN,0,1),
(@GUID+026,@B,0,1,1,-5591.92,-476.967,396.981,5.29231,0,0,0.475419,-0.87976,@DESPAWN,0,1),
(@GUID+027,@C,0,1,1,-9471.12,43.1883,56.5597,1.5067,0,0,0.684088,0.7294,@DESPAWN,0,1), 
(@GUID+028,@D,0,1,1,-9437.51,112.982,57.576,4.86507,0,0,0.651119,-0.758976,@DESPAWN,0,1),
(@GUID+029,@E,0,1,1,-9423.57,109.77,58.6395,1.88449,0,0,0.808879,0.587974,@DESPAWN,0,1),
(@GUID+030,@A,0,1,1,-9424.83,63.7018,57.5696,4.42918,0,0,0.799825,-0.600233,@DESPAWN,0,1),
(@GUID+031,@B,0,1,1,-9416.75,54.7442,59.1231,5.99605,0,0,0.143077,-0.989712,@DESPAWN,0,1),
(@GUID+032,@C,0,1,1,-9425.34,56.1924,57.1307,0.756653,0,0,0.369366,0.929284,@DESPAWN,0,1),
(@GUID+033,@D,0,1,1,-9455.38,38.8205,56.6227,4.03962,0,0,0.900876,-0.434077,@DESPAWN,0,1),
(@GUID+034,@E,0,1,1,-9452.97,27.2894,56.5301,2.98326,0,0,0.996868,0.0790825,@DESPAWN,0,1),
(@GUID+035,@A,0,1,1,-9437.04,39.389,57.0626,1.83658,0,0,0.794565,0.607179,@DESPAWN,0,1),
(@GUID+036,@B,0,1,1,-9454.61,17.6726,58.0491,2.26462,0,0,0.905396,0.424568,@DESPAWN,0,1),
(@GUID+037,@C,0,1,1,-9470.77,-9.74519,56.5758,1.7227,0,0,0.758722,0.651415,@DESPAWN,0,1),
(@GUID+038,@D,0,1,1,-9477.11,7.08912,56.7995,0.151903,0,0,0.0758784,0.997117,@DESPAWN,0,1),
(@GUID+039,@E,0,1,1,-9484.17,13.6372,56.8493,0.576018,0,0,0.284044,0.958811,@DESPAWN,0,1),
(@GUID+040,@A,0,1,1,-9477.59,39.3136,57.4807,0.316842,0,0,0.157759,0.987478,@DESPAWN,0,1),
(@GUID+041,@B,0,1,1,-9485.15,46.0046,57.2156,0.242232,0,0,0.12082,0.992674,@DESPAWN,0,1),
(@GUID+042,@C,0,1,1,-9513.08,35.1837,57.3331,0.0851526,0,0,0.0425635,0.999094,@DESPAWN,0,1),
(@GUID+043,@D,0,1,1,-9501.08,61.728,56.6617,5.84212,0,0,0.218747,-0.975782,@DESPAWN,0,1),
(@GUID+044,@E,0,1,1,-9504.1,68.101,56.7047,5.03709,0,0,0.583512,-0.812105,@DESPAWN,0,1),
(@GUID+045,@A,0,1,1,-9499.42,83.8596,57.4257,5.81071,0,0,0.234046,-0.972226,@DESPAWN,0,1),
(@GUID+046,@B,0,1,1,-9511.45,101.96,58.6933,3.55663,0,0,0.978546,-0.206031,@DESPAWN,0,1),
(@GUID+047,@C,0,1,1,-9473.96,119.593,57.1435,4.68367,0,0,0.717187,-0.696881,@DESPAWN,0,1),
(@GUID+048,@D,0,1,1,-9469.15,101.676,58.0043,0.693849,0,0,0.340007,0.940423,@DESPAWN,0,1),
(@GUID+049,@E,0,1,1,-9473.1,78.0493,57.4364,5.28843,0,0,0.477122,-0.878837,@DESPAWN,0,1),
(@GUID+050,@A,0,1,1,-9463.99,81.5619,57.0823,1.29076,0,0,0.601501,0.798872,@DESPAWN,0,1),
(@GUID+051,@B,0,1,1,-9454.56,77.5214,57.0453,2.07616,0,0,0.86143,0.507876,@DESPAWN,0,1),
(@GUID+052,@C,0,1,1,2265.24,273.786,35.1652,3.01138,0,0,0.997881,0.0650598,@DESPAWN,0,1), 
(@GUID+053,@D,0,1,1,2285.1,254.969,34.3626,4.85628,0,0,0.654447,-0.756108,@DESPAWN,0,1),
(@GUID+054,@E,0,1,1,2288.74,269.683,35.1812,5.66446,0,0,0.304454,-0.952527,@DESPAWN,0,1),
(@GUID+055,@A,0,1,1,2278.93,277.294,35.1826,6.10428,0,0,0.0893348,-0.996002,@DESPAWN,0,1),
(@GUID+056,@B,0,1,1,2217.46,260.101,34.3656,6.16319,0,0,0.0599639,-0.998201,@DESPAWN,0,1),
(@GUID+057,@C,0,1,1,2241.09,240.359,34.1166,6.0925,0,0,0.0951979,-0.995458,@DESPAWN,0,1),
(@GUID+058,@D,0,1,1,2238.64,254.641,36.0388,4.69843,0,0,0.712026,-0.702153,@DESPAWN,0,1),
(@GUID+059,@E,0,1,1,2242.84,256.763,34.1151,4.9851,0,0,0.604425,-0.796662,@DESPAWN,0,1),
(@GUID+060,@A,0,1,1,2257.66,267.047,35.0788,3.00197,0,0,0.997564,0.069754,@DESPAWN,0,1),
(@GUID+061,@B,0,1,1,2265.36,253.863,34.8159,3.9523,0,0,0.918962,-0.394345,@DESPAWN,0,1),
(@GUID+062,@C,0,1,1,2285.8,254.474,34.2964,3.24545,0,0,0.998652,-0.0519028,@DESPAWN,0,1),
(@GUID+063,@D,0,1,1,2306.67,255.891,35.0947,2.94307,0,0,0.995077,0.0991001,@DESPAWN,0,1),
(@GUID+064,@E,0,1,1,2319.59,261.456,35.1823,3.96408,0,0,0.916623,-0.399752,@DESPAWN,0,1),
(@GUID+065,@A,0,1,1,2327.93,292.866,35.1823,3.35147,0,0,0.994499,-0.104749,@DESPAWN,0,1),
(@GUID+066,@B,0,1,1,2385.44,323.192,38.5898,4.96547,0,0,0.612215,-0.790691,@DESPAWN,0,1),
(@GUID+067,@C,0,1,1,2369.98,347.343,38.1937,5.98648,0,0,0.147807,-0.989016,@DESPAWN,0,1),
(@GUID+068,@D,0,1,1,2345.9,323.965,36.1689,1.27017,0,0,0.593245,0.805022,@DESPAWN,0,1),
(@GUID+069,@E,0,1,1,2315.1,313.901,36.7118,4.96547,0,0,0.612216,-0.790691,@DESPAWN,0,1),
(@GUID+070,@A,0,1,1,2304.19,329.028,37.3369,4.01513,0,0,0.906123,-0.423014,@DESPAWN,0,1),
(@GUID+071,@B,0,1,1,2289.53,334.538,34.6499,6.25743,0,0,0.0128751,-0.999917,@DESPAWN,0,1),
(@GUID+072,@C,0,1,1,2249.87,335.382,35.1891,1.72569,0,0,0.759695,0.650279,@DESPAWN,0,1),
(@GUID+073,@D,0,1,1,2267.7,337.796,35.1685,3.85019,0,0,0.93789,-0.346934,@DESPAWN,0,1),
(@GUID+074,@E,0,1,1,2270.61,345.306,35.1892,4.16435,0,0,0.872071,-0.48938,@DESPAWN,0,1),
(@GUID+075,@A,0,1,1,2262.43,353.117,35.1892,5.36993,0,0,0.440922,-0.897545,@DESPAWN,0,1),
(@GUID+076,@B,0,1,1,2253.53,346.854,35.1891,6.17104,0,0,0.0560442,-0.998428,@DESPAWN,0,1),
(@GUID+077,@C,0,1,1,2234.79,324.935,36.5233,3.29962,0,0,0.99688,-0.078933,@DESPAWN,0,1),
(@GUID+078,@D,0,1,1,2244.76,336.054,35.1877,4.98587,0,0,0.604116,-0.796896,@DESPAWN,0,1),
(@GUID+079,@E,0,1,1,2205.68,326.787,34.9419,5.99903,0,0,0.141602,-0.989924,@DESPAWN,0,1),
(@GUID+080,@A,0,1,1,2213.65,331.877,35.1961,1.57331,0,0,0.707996,0.706217,@DESPAWN,0,1),
(@GUID+081,@B,0,1,1,2208.33,304.79,34.3426,5.39428,0,0,0.429966,-0.902845,@DESPAWN,0,1),
(@GUID+082,@C,0,1,1,2220.88,310.768,36.7282,0.210651,0,0,0.105131,0.994458,@DESPAWN,0,1),
(@GUID+083,@D,0,1,1,2230.58,301.918,36.5037,4.42039,0,0,0.802456,-0.596711,@DESPAWN,0,1),
(@GUID+084,@E,0,1,1,2223.24,303.344,35.1879,2.28803,0,0,0.910303,0.413943,@DESPAWN,0,1),
(@GUID+085,@A,0,1,1,2229.29,278.899,35.1555,0.332388,0,0,0.16543,0.986221,@DESPAWN,0,1),
(@GUID+086,@B,530,1,1,9510.57,-6804.62,17.073,1.8242,0,0,0.79079,0.612087,@DESPAWN,0,1), 
(@GUID+087,@C,530,1,1,9521.05,-6860.13,21.0781,0.130877,0,0,0.0653918,0.99786,@DESPAWN,0,1),
(@GUID+088,@D,530,1,1,9551.75,-6830.38,17.6104,4.12699,0,0,0.88106,-0.473005,@DESPAWN,0,1),
(@GUID+089,@E,530,1,1,9554.75,-6830.2,16.4929,3.1688,0,0,0.999907,-0.0136057,@DESPAWN,0,1),
(@GUID+090,@A,530,1,1,9545.42,-6851,17.3644,1.13069,0,0,0.535708,0.844403,@DESPAWN,0,1),
(@GUID+091,@B,530,1,1,9543.39,-6863.25,21.0009,0.482738,0,0,0.239032,0.971012,@DESPAWN,0,1),
(@GUID+092,@C,530,1,1,9516.05,-6858.05,16.5391,4.97522,0,0,0.608352,-0.793667,@DESPAWN,0,1),
(@GUID+093,@D,530,1,1,9502.24,-6843.39,16.56,5.42682,0,0,0.415217,-0.909723,@DESPAWN,0,1),
(@GUID+094,@E,530,1,1,9484.62,-6829.57,16.6185,1.74331,0,0,0.765395,0.643561,@DESPAWN,0,1),
(@GUID+095,@A,530,1,1,9483.2,-6824.64,16.7831,5.22262,0,0,0.505777,-0.862665,@DESPAWN,0,1),
(@GUID+096,@B,530,1,1,9477.32,-6816.1,16.8213,5.45824,0,0,0.400877,-0.916132,@DESPAWN,0,1),
(@GUID+097,@C,530,1,1,9475.34,-6803.15,16.4955,6.04336,0,0,0.119626,-0.992819,@DESPAWN,0,1),
(@GUID+098,@D,530,1,1,9456.02,-6798.33,17.8346,4.60608,0,0,0.743677,-0.668539,@DESPAWN,0,1),
(@GUID+099,@E,530,1,1,9465.68,-6770.04,16.5745,3.57721,0,0,0.976373,-0.216091,@DESPAWN,0,1),
(@GUID+100,@A,530,1,1,9491.99,-6764.23,16.5058,2.80359,0,0,0.985753,0.168197,@DESPAWN,0,1),
(@GUID+101,@B,530,1,1,9516.86,-6771.11,16.4938,2.97638,0,0,0.99659,0.0825122,@DESPAWN,0,1),
(@GUID+102,@C,530,1,1,9524.29,-6814.98,16.4936,4.54718,0,0,0.76304,-0.646351,@DESPAWN,0,1),
(@GUID+103,@D,530,1,1,9543.14,-6794.87,16.4834,3.05493,0,0,0.999061,0.0433192,@DESPAWN,0,1),
(@GUID+104,@E,530,1,1,9551.25,-6807.38,16.4899,3.45155,0,0,0.988015,-0.154361,@DESPAWN,0,1),
(@GUID+105,@A,530,1,1,9555.84,-6824.24,16.4953,5.61925,0,0,0.325903,-0.945403,@DESPAWN,0,1),
(@GUID+106,@B,530,1,1,-4179.49,-12498.6,44.3612,5.3454,0,0,0.451898,-0.89207,@DESPAWN,0,1), 
(@GUID+107,@C,530,1,1,-4193.3,-12458.3,45.7142,4.74457,0,0,0.695638,-0.718392,@DESPAWN,0,1),
(@GUID+108,@D,530,1,1,-4162.99,-12451.8,44.0466,2.34911,0,0,0.922517,0.385956,@DESPAWN,0,1),
(@GUID+109,@E,530,1,1,-4143.88,-12490,44.6714,3.43296,0,0,0.989407,-0.145167,@DESPAWN,0,1),
(@GUID+110,@A,530,1,1,-4140,-12518.8,45.7765,3.23896,0,0,0.998815,-0.0486653,@DESPAWN,0,1),
(@GUID+111,@B,530,1,1,-4141.64,-12533.2,45.3098,1.42862,0,0,0.655096,0.755546,@DESPAWN,0,1),
(@GUID+112,@C,530,1,1,-4154.66,-12537.1,45.5719,0.00704861,0,0,0.0035243,0.999994,@DESPAWN,0,1),
(@GUID+113,@D,530,1,1,-4168.66,-12542.6,45.3842,1.21656,0,0,0.571458,0.820632,@DESPAWN,0,1),
(@GUID+114,@E,530,1,1,-4183.33,-12564.4,40.1308,0.572535,0,0,0.282374,0.959304,@DESPAWN,0,1),
(@GUID+115,@A,530,1,1,-4207.6,-12559.9,40.677,0.541119,0,0,0.267271,0.963621,@DESPAWN,0,1),
(@GUID+116,@B,530,1,1,-4232.77,-12558.5,39.8764,5.32812,0,0,0.459588,-0.888132,@DESPAWN,0,1),
(@GUID+117,@C,530,1,1,-4233.57,-12534.1,45.78,0.462585,0,0,0.229236,0.973371,@DESPAWN,0,1),
(@GUID+118,@D,530,1,1,-4239.76,-12515.8,46.5776,1.43256,0,0,0.656582,0.754255,@DESPAWN,0,1),
(@GUID+119,@E,530,1,1,-4224.28,-12520.9,57.3901,5.37918,0,0,0.436767,-0.899575,@DESPAWN,0,1),
(@GUID+120,@A,530,1,1,-4219.7,-12506.3,45.4059,5.20247,0,0,0.514443,-0.857525,@DESPAWN,0,1),
(@GUID+121,@B,530,1,1,-4218.81,-12483.2,50.1845,1.57158,0,0,0.707385,0.706828,@DESPAWN,0,1),
(@GUID+122,@C,530,1,1,-4220.81,-12485,45.2711,3.44083,0,0,0.988828,-0.149061,@DESPAWN,0,1),
(@GUID+123,@D,530,1,1,-4227.3,-12471.5,45.7186,2.96173,0,0,0.995959,0.0898078,@DESPAWN,0,1),
(@GUID+124,@E,530,1,1,-4219.91,-12462.1,46.1824,4.96842,0,0,0.611046,-0.791595,@DESPAWN,0,1),
(@GUID+125,@A,530,1,1,-4215.75,-12440.2,44.6023,4.66605,0,0,0.723299,-0.690535,@DESPAWN,0,1),
(@GUID+126,@B,530,1,1,-4198.54,-12443.1,45.5096,5.7931,0,0,0.242598,-0.970127,@DESPAWN,0,1),
(@GUID+127,@C,530,1,1,-4186.59,-12437.9,43.6709,4.19482,0,0,0.864515,-0.502607,@DESPAWN,0,1),
(@GUID+128,@D,1,1,1,9834.42,996.991,1306.67,3.38578,0,0,0.992556,-0.121791,@DESPAWN,0,1), 
(@GUID+129,@E,1,1,1,9857.8,973.055,1304.8,0.638475,0,0,0.313843,0.949475,@DESPAWN,0,1),
(@GUID+130,@A,1,1,1,9866.01,985.069,1309.35,1.02725,0,0,0.491336,0.87097,@DESPAWN,0,1),
(@GUID+131,@B,1,1,1,9871.22,987.366,1309.17,1.77338,0,0,0.774983,0.631982,@DESPAWN,0,1),
(@GUID+132,@C,1,1,1,9888.79,968.334,1309.37,5.51187,0,0,0.376167,-0.926552,@DESPAWN,0,1),
(@GUID+133,@D,1,1,1,9894.91,964.248,1310.49,5.24091,0,0,0.497866,-0.867254,@DESPAWN,0,1),
(@GUID+134,@E,1,1,1,9906.85,945.62,1313.48,0.940855,0,0,0.453267,0.891375,@DESPAWN,0,1),
(@GUID+135,@A,1,1,1,9905.5,936.252,1313.62,5.27625,0,0,0.482465,-0.875915,@DESPAWN,0,1),
(@GUID+136,@B,1,1,1,9912.13,918.466,1316.43,5.68858,0,0,0.292941,-0.956131,@DESPAWN,0,1),
(@GUID+137,@C,1,1,1,9923.98,905.402,1317.22,0.0180063,0,0,0.00900304,0.999959,@DESPAWN,0,1),
(@GUID+138,@D,1,1,1,9892.76,918.799,1307.59,2.46845,0,0,0.943892,0.330254,@DESPAWN,0,1),
(@GUID+139,@E,1,1,1,9860.8,910.839,1306.14,3.37558,0,0,0.993164,-0.116729,@DESPAWN,0,1),
(@GUID+140,@A,1,1,1,9851.2,880.204,1310.25,4.59294,0,0,0.748052,-0.66364,@DESPAWN,0,1),
(@GUID+141,@B,1,1,1,9835.31,897.141,1308.78,2.44095,0,0,0.939263,0.343199,@DESPAWN,0,1),
(@GUID+142,@C,1,1,1,9824.87,900.498,1305.55,3.75649,0,0,0.953108,-0.30263,@DESPAWN,0,1),
(@GUID+143,@D,1,1,1,9824.11,920.98,1304.55,1.81263,0,0,0.787238,0.61665,@DESPAWN,0,1),
(@GUID+144,@E,1,1,1,9809.87,935.889,1307.93,1.35318,0,0,0.626136,0.779714,@DESPAWN,0,1),
(@GUID+145,@A,1,1,1,9825.82,943.887,1306.73,1.2118,0,0,0.569504,0.821989,@DESPAWN,0,1),
(@GUID+146,@B,1,1,1,9818.16,941.709,1308.82,5.04848,0,0,0.57888,-0.815412,@DESPAWN,0,1),
(@GUID+147,@C,1,1,1,9797.18,927.063,1306.86,3.00644,0,0,0.997718,0.0675235,@DESPAWN,0,1),
(@GUID+148,@D,1,1,1,9785.09,936.851,1307.38,1.35318,0,0,0.626138,0.779713,@DESPAWN,0,1),
(@GUID+149,@E,1,1,1,9809.68,977.31,1304.27,1.82676,0,0,0.791575,0.611072,@DESPAWN,0,1),
(@GUID+150,@A,1,1,1,9784.31,964.786,1309.44,3.73921,0,0,0.955688,-0.294381,@DESPAWN,0,1),
(@GUID+151,@B,1,1,1,9837.54,978.538,1307.14,4.27721,0,0,0.843082,-0.537785,@DESPAWN,0,1),
(@GUID+152,@C,1,1,1,9778.77,964.973,1306.69,6.20301,0,0,0.0400778,-0.999197,@DESPAWN,0,1),
(@GUID+153,@D,1,1,1,9738.77,984.013,1303.77,1.04137,0,0,0.497472,0.86748,@DESPAWN,0,1),
(@GUID+154,@E,1,1,1,9726.77,970.323,1294.58,5.7459,0,0,0.265423,-0.964132,@DESPAWN,0,1),
(@GUID+155,@A,1,1,1,9698.11,952.961,1291.53,0.185278,0,0,0.0925063,0.995712,@DESPAWN,0,1),
(@GUID+156,@B,1,1,1,9700.25,889.704,1298.97,5.08616,0,0,0.563413,-0.826176,@DESPAWN,0,1),
(@GUID+157,@C,1,1,1,9738.64,884.265,1295.69,5.848,0,0,0.215879,-0.97642,@DESPAWN,0,1),
(@GUID+158,@D,1,1,1,9785.18,883.167,1298.1,4.90553,0,0,0.635633,-0.771991,@DESPAWN,0,1),
(@GUID+159,@E,1,1,1,9778.44,884.651,1297.97,3.8099,0,0,0.944688,-0.327969,@DESPAWN,0,1),
(@GUID+160,@A,1,1,1,9767.38,886.362,1298.14,4.77201,0,0,0.685717,-0.727868,@DESPAWN,0,1),
(@GUID+161,@B,1,1,1,297.2,-4657.1,16.7732,6.04909,0,0,0.11678,-0.993158,@DESPAWN,0,1), 
(@GUID+162,@C,1,1,1,268.569,-4693.75,15.0267,5.3658,0,0,0.442777,-0.896632,@DESPAWN,0,1),
(@GUID+163,@D,1,1,1,266.882,-4717.16,15.0265,0.853685,0,0,0.413999,0.910277,@DESPAWN,0,1),
(@GUID+164,@E,1,1,1,273.893,-4729.49,13.5919,2.55407,0,0,0.957162,0.289553,@DESPAWN,0,1),
(@GUID+165,@A,1,1,1,273.773,-4777.38,11.8478,2.2085,0,0,0.893127,0.449805,@DESPAWN,0,1),
(@GUID+166,@B,1,1,1,297.468,-4797.06,10.145,5.99019,0,0,0.145974,-0.989288,@DESPAWN,0,1),
(@GUID+167,@C,1,1,1,284.923,-4810.53,11.9429,0.81442,0,0,0.396049,0.918229,@DESPAWN,0,1),
(@GUID+168,@D,1,1,1,289.461,-4840.14,10.9166,5.97841,0,0,0.151797,-0.988412,@DESPAWN,0,1),
(@GUID+169,@E,1,1,1,297.084,-4847.31,11.7787,2.48339,0,0,0.946333,0.323194,@DESPAWN,0,1),
(@GUID+170,@A,1,1,1,310.245,-4850.53,10.2372,2.31845,0,0,0.916494,0.400048,@DESPAWN,0,1),
(@GUID+171,@B,1,1,1,312.713,-4860.69,10.549,2.2517,0,0,0.902633,0.430411,@DESPAWN,0,1),
(@GUID+172,@C,1,1,1,332.089,-4843.46,12.0247,0.936158,0,0,0.451173,0.892437,@DESPAWN,0,1),
(@GUID+173,@D,1,1,1,345.731,-4852.46,10.3662,0.896889,0,0,0.433564,0.901123,@DESPAWN,0,1),
(@GUID+174,@E,1,1,1,338.115,-4858.18,10.3123,2.32239,0,0,0.917279,0.398244,@DESPAWN,0,1),
(@GUID+175,@A,1,1,1,337.55,-4834.48,9.99127,3.84999,0,0,0.937926,-0.346837,@DESPAWN,0,1),
(@GUID+176,@B,1,1,1,359.585,-4836.23,11.2313,4.3173,0,0,0.832134,-0.554575,@DESPAWN,0,1),
(@GUID+177,@C,1,1,1,341.753,-4809.21,10.2911,4.10917,0,0,0.88524,-0.465134,@DESPAWN,0,1),
(@GUID+178,@D,1,1,1,318.85,-4782.25,10.137,3.20596,0,0,0.999482,-0.032176,@DESPAWN,0,1),
(@GUID+179,@E,1,1,1,334.174,-4770.39,12.6355,4.27017,0,0,0.844969,-0.534816,@DESPAWN,0,1),
(@GUID+180,@A,1,1,1,366.98,-4754.08,11.812,4.71785,0,0,0.705173,-0.709035,@DESPAWN,0,1),
(@GUID+181,@B,1,1,1,367.509,-4719.81,13.5495,3.90497,0,0,0.928038,-0.372486,@DESPAWN,0,1),
(@GUID+182,@C,1,1,1,380.013,-4722.65,12.8458,3.27272,0,0,0.997851,-0.0655165,@DESPAWN,0,1),
(@GUID+183,@D,1,1,1,386.571,-4708.25,13.4001,3.43765,0,0,0.989064,-0.14749,@DESPAWN,0,1),
(@GUID+184,@E,1,1,1,364.009,-4699.68,14.6481,4.76497,0,0,0.688275,-0.72545,@DESPAWN,0,1),
(@GUID+185,@A,1,1,1,344.324,-4660.83,16.4647,6.01375,0,0,0.134308,-0.99094,@DESPAWN,0,1),
(@GUID+186,@B,1,1,1,316.132,-4664.03,16.0927,4.80424,0,0,0.673899,-0.738824,@DESPAWN,0,1),
(@GUID+187,@C,1,1,1,321.541,-4678.85,16.7263,0.951858,0,0,0.458164,0.888868,@DESPAWN,0,1),
(@GUID+188,@D,1,1,1,319.174,-4698.69,15.9669,2.43233,0,0,0.937775,0.347243,@DESPAWN,0,1),
(@GUID+189,@E,1,1,1,322.49,-4706.93,16.7168,3.99528,0,0,0.910278,-0.413999,@DESPAWN,0,1),
(@GUID+190,@A,1,1,1,-2318.7,-427.27,-5.00784,1.80544,0,0,0.785014,0.619479,@DESPAWN,0,1), 
(@GUID+191,@B,1,1,1,-2310.73,-453.481,28.0788,3.27413,0,0,0.997805,-0.0662205,@DESPAWN,0,1),
(@GUID+192,@C,1,1,1,-2281.93,-440.985,-7.68513,2.9207,0,0,0.993907,0.110221,@DESPAWN,0,1),
(@GUID+193,@D,1,1,1,-2282.04,-507.952,-9.42411,1.94367,0,0,0.825921,0.563786,@DESPAWN,0,1),
(@GUID+194,@E,1,1,1,-2240.59,-319.837,-9.42471,3.51842,0,0,0.982303,-0.1873,@DESPAWN,0,1),
(@GUID+195,@A,1,1,1,-2255.57,-331.142,-9.13563,0.961946,0,0,0.462642,0.886545,@DESPAWN,0,1),
(@GUID+196,@B,1,1,1,-2213.08,-373.327,-8.34503,3.49878,0,0,0.984094,-0.177647,@DESPAWN,0,1),
(@GUID+197,@C,1,1,1,-2239.43,-402.529,-9.42193,1.70022,0,0,0.751353,0.6599,@DESPAWN,0,1),
(@GUID+198,@D,1,1,1,-2245.06,-285.102,-9.42489,3.49878,0,0,0.984094,-0.177647,@DESPAWN,0,1),
(@GUID+199,@E,1,1,1,-2250.85,-256.279,-9.47737,3.22389,0,0,0.999153,-0.0411391,@DESPAWN,0,1),
(@GUID+200,@A,1,1,1,-2282.03,-257.974,-8.4252,3.20033,0,0,0.999569,-0.0293655,@DESPAWN,0,1),
(@GUID+201,@B,1,1,1,-2318.96,-265.509,-8.65507,4.93998,0,0,0.62224,-0.782827,@DESPAWN,0,1),
(@GUID+202,@C,1,1,1,-2334.42,-275.734,-8.54136,3.66764,0,0,0.965608,-0.260001,@DESPAWN,0,1),
(@GUID+203,@D,1,1,1,-2350.32,-305.64,-9.42338,4.88108,0,0,0.645024,-0.764162,@DESPAWN,0,1),
(@GUID+204,@E,1,1,1,-2384.46,-329.426,-9.56387,5.92172,0,0,0.179749,-0.983712,@DESPAWN,0,1),
(@GUID+205,@A,1,1,1,-2373.96,-317.655,-9.66495,0.235438,0,0,0.117447,0.993079,@DESPAWN,0,1),
(@GUID+206,@B,1,1,1,-2389.36,-349.159,-9.39815,1.51956,0,0,0.688762,0.724988,@DESPAWN,0,1),
(@GUID+207,@C,1,1,1,-2361.47,-364.775,-8.53755,2.54843,0,0,0.956342,0.292251,@DESPAWN,0,1),
(@GUID+208,@D,1,1,1,-2355.47,-364.996,-8.6927,0.522106,0,0,0.258098,0.966119,@DESPAWN,0,1),
(@GUID+209,@E,1,1,1,-2338.21,-367.223,-6.49505,2.64661,0,0,0.96953,0.244973,@DESPAWN,0,1),
(@GUID+210,@A,1,1,1,-2340.9,-352.75,-8.96522,2.37172,0,0,0.926822,0.3755,@DESPAWN,0,1),
(@GUID+211,@B,1,1,1,-2379.72,-322.666,2.84507,0.215802,0,0,0.107692,0.994184,@DESPAWN,0,1),
(@GUID+212,@C,1,1,1,-2361.47,-338.039,-8.82528,5.60756,0,0,0.331425,-0.943482,@DESPAWN,0,1),
(@GUID+213,@D,1,1,1,-2341.06,-317.455,-9.18516,4.56297,0,0,0.757911,-0.652358,@DESPAWN,0,1),
(@GUID+214,@E,1,1,1,-2325.19,-384.338,-8.10101,0.659543,0,0,0.323827,0.946116,@DESPAWN,0,1),
(@GUID+215,@A,1,1,1,-2296.58,-385.843,-9.01576,1.23288,0,0,0.578135,0.815941,@DESPAWN,0,1),
(@GUID+216,@B,1,1,1,-2306.12,-417.744,-8.10044,4.24096,0,0,0.852689,-0.522419,@DESPAWN,0,1),
(@GUID+217,@C,1,1,1,-2326.03,-440.102,-5.43827,4.10744,0,0,0.885641,-0.464371,@DESPAWN,0,1),
(@GUID+218,@D,1,1,1,-2330.82,-457.583,-6.74765,5.70572,0,0,0.284736,-0.958606,@DESPAWN,0,1),
(@GUID+219,@E,1,1,1,-2351.25,-495.771,-8.98241,3.82863,0,0,0.941576,-0.336801,@DESPAWN,0,1);
SET @GUID = 152261; 
SET @EVENT = 9; 

UPDATE `game_event` SET `start_time`='2011-04-24 00:02:00', `length`=11*24*60 WHERE `eventEntry`=@EVENT; 
DELETE FROM `game_event_creature_quest` WHERE `eventEntry`=@EVENT;

UPDATE `creature_template` SET `minlevel`=12,`maxlevel`=12 WHERE `entry` IN (32836,32837);
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75 WHERE `entry` IN (32798,32799);

DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(@EVENT, @GUID+00),(@EVENT, @GUID+01),
(@EVENT, @GUID+02),(@EVENT, @GUID+03),
(@EVENT, @GUID+04),(@EVENT, @GUID+05),
(@EVENT, @GUID+06),(@EVENT, @GUID+07),
(@EVENT, @GUID+08),(@EVENT, @GUID+09),
(@EVENT, @GUID+10),(@EVENT, @GUID+11),
(@EVENT, @GUID+12),(@EVENT, @GUID+13),
(@EVENT, @GUID+14),(@EVENT, @GUID+15);

DELETE FROM `creature` WHERE `id` IN (32798,32799,32836,32837);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+00,32798,0,1,1,0,0,2236.33,247.326,33.6595,2.84096,300,0,0,0,0,0,0,0,0,0), 
(@GUID+01,32798,1,1,1,0,0,323.943,-4703.51,15.8903,4.29373,300,0,0,0,0,0,0,0,0,0), 
(@GUID+02,32798,530,1,1,0,0,9495.4,-6841.51,16.986,0.807895,300,0,0,0,0,0,0,0,0,0), 
(@GUID+03,32798,1,1,1,0,0,-2336.63,-355.656,-8.74798,5.58244,300,0,0,0,0,0,0,0,0,0), 
(@GUID+04,32799,0,1,1,0,0,-5596.99,-506.959,401.155,2.73583,300,0,0,0,0,0,0,0,0,0), 
(@GUID+05,32799,1,1,1,0,0,9837.29,969.65,1308.21,0.383221,300,0,0,0,0,0,0,0,0,0), 
(@GUID+06,32799,0,1,1,0,0,-9453.86,44.7409,56.7139,1.45433,300,0,0,0,0,0,0,0,0,0), 
(@GUID+07,32799,530,1,1,0,0,-4150.79,-12492.3,44.6553,3.75029,300,0,0,0,0,0,0,0,0,0), 
(@GUID+08,32836,0,1,1,0,0,-5601.03,-512.86,401.492,1.56166,300,0,0,0,0,0,0,0,0,0),  
(@GUID+09,32836,1,1,1,0,0,9839.27,961.92,1308.29,0.271694,300,0,0,0,0,0,0,0,0,0),  
(@GUID+10,32836,0,1,1,0,0,-9451.26,42.2403,57.173,0.641447,300,0,0,0,0,0,0,0,0,0),  
(@GUID+11,32836,530,1,1,0,0,-4155.63,-12486.1,44.7758,3.96234,300,0,0,0,0,0,0,0,0,0),  
(@GUID+12,32837,0,1,1,0,0,2244.84,262.273,34.148,2.9156,300,0,0,0,0,0,0,0,0,0), 
(@GUID+13,32837,1,1,1,0,0,333.091,-4707.97,15.6644,4.12487,300,0,0,0,0,0,0,0,0,0), 
(@GUID+14,32837,530,1,1,0,0,9487.64,-6833.65,16.986,0.819677,300,0,0,0,0,0,0,0,0,0), 
(@GUID+15,32837,1,1,1,0,0,-2343.08,-364.618,-8.4062,5.82199,300,0,0,0,0,0,0,0,0,0); 

UPDATE `creature_template` SET `ScriptName`='npc_saronite_vapors' WHERE `entry`=33488; 
UPDATE `creature_template` SET `ScriptName`='npc_saronite_animus' WHERE `entry`=33524; 
update creature_template set ScriptName="npc_chromie_one" where entry=26527; 
update creature_template set ScriptName="npc_chromie_two" where entry=27915; 
update creature_template set ScriptName="mob_crate_bunny" where entry=30996;  
