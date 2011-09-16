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