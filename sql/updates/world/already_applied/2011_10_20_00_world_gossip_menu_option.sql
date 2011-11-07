-- Arreglo para misión 25881 / Fix for quest 25881
-- Nomarch Teneth
SET @GOSSIP := 46603;
SET @TEXTO := 'King Phaoris sent me to ask you about Neferset activity.';
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP,'0','0',@TEXTO,'1','1','0','0','0','0','0',NULL);

-- Sun Priest Asaris
SET @GOSSIP := 47715;
SET @TEXTO := 'I might be able to help. Where the Neferset behind this?';
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP,'0','0',@TEXTO,'1','1','0','0','0','0','0',NULL);

-- Asaq
SET @GOSSIP := 47930;
SET @TEXTO := 'The king wishes to be informed about recent Neferset activity.';
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP,'0','0',@TEXTO,'1','1','0','0','0','0','0',NULL);
