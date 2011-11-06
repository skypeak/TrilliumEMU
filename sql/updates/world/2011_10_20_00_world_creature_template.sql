-- Arreglo para misión 25881 / Fix for quest 25881
-- Nomarch Teneth
SET @ENTRY  := 46603;
SET @GOSSIP := 46603;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;

-- Sun Priest Asaris
SET @ENTRY  := 47715;
SET @GOSSIP := 47715;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;

-- Asaq
SET @ENTRY  := 47930;
SET @GOSSIP := 47930;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `AIName`= 'SmartAI', `npcflag` = 1 WHERE `entry`=@ENTRY;