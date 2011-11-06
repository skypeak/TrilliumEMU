-- Deleted the Creature_template_addon Query for Entry 35232 (Gilnean Royal Guard)
DELETE FROM `creature_template_addon` WHERE (`entry`='35232');

-- Set Dynamicflags = 0 from Wounded Guards
UPDATE `creature_template` SET `dynamicflags`='0' WHERE (`entry`='47091');

-- Set Injured Citizen Emote to Dead for the Druid and Priest Quest :) !
DELETE FROM creature_template_addon WHERE entry = 35912;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('35912', '0', '0', '7', '0', '65', NULL);;

-- Set Wounded Guard to Kneel
DELETE FROM creature_template_addon WHERE entry = 47091;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('47091', '0', '0', '8', '0', '0', NULL);

-- Set Emote from Huntsman Blake (Hunter Traine) to STATE_READYRIFLE
DELETE FROM creature_template_addon WHERE entry = 35874;
INSERT INTO `creature_template_addon` (`entry`, `bytes2`, `emote`) VALUES ('35874', '2', '214');

-- Set Emote from Sister Almyra (Priest Trainer) to Kneel
DELETE FROM creature_template_addon WHERE entry = 35870;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('35870', '8');

INSERT INTO `creature_template_addon` (`entry`, `emote`) VALUES ('35873', '416');

-- Set Emote from Loren the Fence (Rogue Trainer) to STATE_STEALTH_STAND and give her the spell Stealth
DELETE FROM creature_template_addon WHERE entry = 35871;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('35871', '0', '0', '0', '1', '433', '1784 0');

-- Set Visual Aura from Vitus Darkwalker to Summon Visual Aura
DELETE FROM creature_template_addon WHERE entry = 35869;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('35869', '30540 0');