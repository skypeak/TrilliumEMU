-- Remove wrong flag for creature Rockjaw Invader (http://www.wowhead.com/npc=37070)
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`='37070';