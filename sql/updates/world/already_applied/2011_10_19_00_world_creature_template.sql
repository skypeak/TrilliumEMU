-- Arreglo para misión 27519 Under the Choking Sands / Fix for quest 27519 Under the Choking Sands
SET @ENTRY  := 45715;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;