-- Arreglo para misión 27519 Under the Choking Sands / Fix for quest 27519 Under the Choking Sands
SET @ENTRY  := 45715;
DELETE FROM `creature_template_addon` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@ENTRY, 0, 0, 0, 64, '85704 0');