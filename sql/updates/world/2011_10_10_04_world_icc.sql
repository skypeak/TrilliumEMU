-- Complete ICC redone.
-- Lich King teleport
UPDATE `spell_target_position` SET `target_position_z` =1041.859985 WHERE `id` = 70860;
-- Achievement criteria for The Lich King
-- The Frozen Throne (10 player) 
-- The Frozen Throne (25 player)
-- Bane of the Fallen King (10 player heroic)
-- The Light of Dawn (25 player heroic) 
-- Realm First! Fall of the Lich King (25 player heroic) 
DELETE FROM `achievement_criteria_data` where `criteria_id` IN (12764,12909,12825,12826,12818);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(12764, 12, 0, 0, ''),
(12909, 12, 1, 0, ''),
(12825, 12, 2, 0, ''),
(12826, 12, 3, 0, ''),
(12818, 12, 3, 0, '');

-- Additional Lich King Script Data
DELETE FROM `spell_linked_spell` WHERE `comment` IN ('The Lich King: Necrotic plague initial cast', 'The Lich King: Necrotic plague immun', 'The Lich King: Necrotic jump', 'The Lich King: Raging Spirit', 'The Licg King: Plague Siphon');

-- Spell
-- Linked spell
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-70337,70338,0, 'The Lich King: Necrotic plague initial cast'),
(-70337,72846,0, 'The Lich King: Necrotic plague immun'),
(-70338,70338,0, 'The Lich King: Necrotic jump'),
(-69200,69201,0, 'The Lich King: Raging Spirit'),
(-70338,74074,0, 'The Licg King: Plague Siphon'),
(70860, 39432,2, 'Gravity when Frozen tron teleport - prevent fall down player');

DELETE FROM `conditions` WHERE `Comment`='The Lich King - Plague Siphon';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,74074,0,18,1,36597,0,0, '', 'The Lich King - Plague Siphon');

DELETE FROM `spell_scripts`WHERE `id`=72429;
INSERT INTO `spell_scripts` VALUE
('72429','0','3','15','72423','0','0','0','0','0','0');

-- Spell Script Names
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_lich_king_defile', 'spell_lich_king_pain_and_suffering', 'spell_lich_king_harvest_soul', 'spell_lich_king_infection', 'spell_lich_king_necrotic_plague', 'spell_lich_king_winter', 
'spell_lich_king_pain_and_suffering_effect', 'spell_vile_spirit_distance_check', 'spell_vile_spirit_target_search', 'spell_lich_king_vile_spirit_summon', 'spell_lich_king_vile_spirit_summon_visual', 'spell_ice_burst_distance_check', 
'spell_lich_king_quake', 'spell_lich_king_play_movie', 'spell_valkyr_carry_can_cast', 'spell_valkyr_eject_passenger', 'spell_valkyr_target_search', 'spell_lich_king_valkyr_summon', 'spell_lich_king_tirion_mass_resurrection');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(72743,'spell_lich_king_defile'),
(74115,'spell_lich_king_pain_and_suffering'),
(68980,'spell_lich_king_harvest_soul'),
(74325,'spell_lich_king_harvest_soul'),
(74296, 'spell_lich_king_harvest_soul'),
(74297, 'spell_lich_king_harvest_soul'),
(70541,'spell_lich_king_infection'),
(73779,'spell_lich_king_infection'),
(73780,'spell_lich_king_infection'),
(73781,'spell_lich_king_infection'),
(70338,'spell_lich_king_necrotic_plague'),
(73785,'spell_lich_king_necrotic_plague'),
(73786,'spell_lich_king_necrotic_plague'),
(73787,'spell_lich_king_necrotic_plague'),
(72259,'spell_lich_king_winter'),
(74273,'spell_lich_king_winter'),
(74274,'spell_lich_king_winter'),
(74275,'spell_lich_king_winter'),
(72133,'spell_lich_king_pain_and_suffering_effect'),
(73789,'spell_lich_king_pain_and_suffering_effect'),
(73788,'spell_lich_king_pain_and_suffering_effect'),
(73790,'spell_lich_king_pain_and_suffering_effect'),
(70534,'spell_vile_spirit_distance_check'),
(70501,'spell_vile_spirit_target_search'),
(70498,'spell_lich_king_vile_spirit_summon'),
(70500,'spell_lich_king_vile_spirit_summon_visual'),
(69110,'spell_ice_burst_distance_check'),
(72262,'spell_lich_king_quake'),
(73159,'spell_lich_king_play_movie'),
(74506,'spell_valkyr_carry_can_cast'),
(68576,'spell_valkyr_eject_passenger'),
(69030,'spell_valkyr_target_search'),
(74361,'spell_lich_king_valkyr_summon'),
(72429,'spell_lich_king_tirion_mass_resurrection');

INSERT INTO `conditions` VALUES ('13', '0', '71614', '0', '18', '1', '38995', '0', '0', '', 'LichKing - Ice Lock');

UPDATE waypoint_scripts SET delay = 3 WHERE dataint = 38879 AND command = 15;
DELETE FROM `spell_scripts` WHERE id = 72429 AND command = 15;
INSERT INTO `spell_scripts` VALUE
('72429','0','3','15','72423','0','0','0','0','0','0');

-- Achievements
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12823, 13163, 13164, 13243, 13244, 13245, 13246, 13247);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(12823,12,0,0,''),
(12823,18,0,0,''),
(13243,12,1,0,''),
(13243,18,0,0,''),
(13163,12,2,0,''),
(13163,18,0,0,''),
(13164,12,3,0,''),
(13164,18,0,0,''),
(13244,12,1,0,''),
(13244,18,0,0,''),
(13245,12,3,0,''),
(13245,18,0,0,''),
(13246,12,0,0,''),
(13246,18,0,0,''),
(13247,12,2,0,''),
(13247,18,0,0,'');