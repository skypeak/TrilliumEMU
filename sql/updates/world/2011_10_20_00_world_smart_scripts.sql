-- Arreglo para misión 25881 / Fix for quest 25881
-- Nomarch Teneth
SET @ENTRY  := 46603;
SET @GOSSIP := 46603;
SET @KILLC := 47932;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Nomarch Teneth - On gossip option select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@KILLC,0,0,0,0,0,7,0,0,0,0,0,0,0,'Nomarch Teneth - Kill Credit');

-- Sun Priest Asaris
SET @ENTRY  := 47715;
SET @GOSSIP := 47715;
SET @KILLC := 47933;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sun Priest Asaris - On gossip option select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@KILLC,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sun Priest Asaris - Kill Credit');

-- Asaq
SET @ENTRY  := 47930;
SET @GOSSIP := 47930;
SET @KILLC := 47936;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Asaq - On gossip option select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@KILLC,0,0,0,0,0,7,0,0,0,0,0,0,0,'Asaq - Kill Credit');