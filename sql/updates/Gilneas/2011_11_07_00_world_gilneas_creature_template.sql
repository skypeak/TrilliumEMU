-- Level Change from Gwen Armstead
UPDATE creature_template SET minlevel = 1, maxlevel = 1 WHERE entry = 35840;

-- Level Change from Huntsman Blake
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35874;

-- Level Change from Baron <Huntsman Blake's Pet>
UPDATE creature_template SET minlevel = 3, maxlevel = 3 WHERE entry = 38832;

-- Level Change from Vitus Darkwalker
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35869;

-- Level Change from Loren the Fence
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35871;

-- Level Change from Sister Almyra
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35870;

-- Level Change from Celestine of the Harvest
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35873;

-- Level Change from Myriam Spellwalker
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35872;

-- Level Change from Sergeant Cleese
UPDATE creature_template SET minlevel = 5, maxlevel = 5 WHERE entry = 35839;

-- Creature_template_addon deleted Record from Captain Broderick
DELETE FROM `creature_template_addon` WHERE (`entry`='50371');

-- Level Change from Worgen Runt
UPDATE creature_template SET minlevel = 3, maxlevel = 4 WHERE entry = 35188;
UPDATE creature_template SET minlevel = 3, maxlevel = 4 WHERE entry = 35456;

-- Changed Creature_template_addon Query from Vincent Hersham
DELETE FROM creature_template_addon WHERE entry = 35123;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('35123', '8');

-- Insert STATE_READY2H Emote to Tobias Mistmantle
DELETE FROM creature_template_addon WHERE entry = 35124;
INSERT INTO `creature_template_addon` (`entry`, `emote`) VALUES ('35124', '375');