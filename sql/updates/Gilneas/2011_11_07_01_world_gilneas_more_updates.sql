-- Set PrevQuests for Gwen Armstead Phase 4
UPDATE quest_template SET PrevQuestId = 14099 WHERE entry in
(14277, 14278, 14273, 14275, 14269, 14280, 14265);

-- Set PrevQuestid for Lord Godfrey
UPDATE quest_template SET NextQuestId = 24930 WHERE entry in 
(14285, 14286, 14287, 14288, 14289, 14290, 14291);

-- Set PrevQuestId for By the Skin of His Teeth
UPDATE quest_template SET PrevQuestId = 28850 WHERE entry = 14154;

-- Deleted Cellar door and implemented a New
DELETE FROM gameobject WHERE id = 195621 AND map = 638;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('195621', '638', '1', '15', '-1790.09', '1435.52', '21.8738', '1.70391', '0', '0', '0.752568', '0.658514', '300', '0', '1');

-- Insert the Worgen Josiah Phase 8
DELETE FROM creature WHERE id = 35370 AND map = 638;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('35370', '638', '1', '8', '0', '0', '-1813.66', '1428.2', '12.4644', '3.7281', '300', '0', '0', '156', '0', '0', '0', '0', '0', '0');

-- Creature_template_addon Query for Lorna Crowley
UPDATE creature_template_addon SET emote = 213 WHERE entry 35378;