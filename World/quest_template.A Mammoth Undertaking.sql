UPDATE creature_template SET AIName='SmartAI' WHERE entry=28379;
DELETE FROM smart_scripts WHERE entryorguid=28379;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(28379,0,0,0,8,0,100,0,51659,0,2000,2000,29,1,180,28374,28374,0,0,7,0,0,0,0,0,0,0, 'Shattertusk Mammoth - Follow on harness Spell Hit'),
(28379,0,1,0,65,0,100,0,0,0,0,0,33,28374,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Shattertusk Mammoth - Quest Credit');