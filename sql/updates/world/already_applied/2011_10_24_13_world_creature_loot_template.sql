#############
#Bastion of Twilligt#
#############

-- Halfus Wyrmbreaker Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='46209',`difficulty_entry_2`='46210',`difficulty_entry_3`='46211' WHERE (`entry`='44600');

-- 10er Hero Loot
SET @entry := 46210; -- Halfus Wyrmbreaker
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Halfus Wyrmbreaker
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65135', '0', '1', '0', '1', '1'), 
(@entry, '65138', '0', '1', '0', '1', '1'), 
(@entry, '65144', '0', '1', '0', '1', '1'), 
(@entry, '65136', '0', '1', '0', '1', '1'), 
(@entry, '65141', '0', '1', '0', '1', '1'), 
(@entry, '65142', '0', '1', '0', '1', '1'), 
(@entry, '65143', '0', '1', '0', '1', '1'),
(@entry, '65137', '0', '1', '0', '1', '1'), 
(@entry, '65134', '0', '1', '0', '1', '1'), 
(@entry, '65140', '0', '1', '0', '1', '1'),
(@entry, '65133', '0', '1', '0', '1', '1'),
(@entry, '67423', '0', '1', '0', '1', '1'),
(@entry, '67424', '0', '1', '0', '1', '1'),
(@entry, '67425', '0', '1', '0', '1', '1'),
(@entry, '65139', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 46211; -- Halfus Wyrmbreaker
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Halfus Wyrmbreaker
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65135', '0', '1', '0', '1', '3'), 
(@entry, '65138', '0', '1', '0', '1', '3'), 
(@entry, '65144', '0', '1', '0', '1', '3'), 
(@entry, '65136', '0', '1', '0', '1', '2'), 
(@entry, '65141', '0', '1', '0', '1', '3'), 
(@entry, '65142', '0', '1', '0', '1', '3'), 
(@entry, '65143', '0', '1', '0', '1', '2'),
(@entry, '65137', '0', '1', '0', '1', '3'), 
(@entry, '65134', '0', '1', '0', '1', '3'), 
(@entry, '65140', '0', '1', '0', '1', '2'),
(@entry, '65133', '0', '1', '0', '1', '2'),
(@entry, '67423', '0', '1', '0', '1', '3'),
(@entry, '67424', '0', '1', '0', '1', '3'),
(@entry, '67425', '0', '1', '0', '1', '3'),
(@entry, '65139', '0', '1', '0', '1', '3');

-- Valiona Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='49897',`difficulty_entry_2`='49898',`difficulty_entry_3`='49899' WHERE (`entry`='45992');

-- Theralion Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='49903',`difficulty_entry_2`='49904',`difficulty_entry_3`='49905' WHERE (`entry`='45993');

-- 10er Hero Loot - Valiona
SET @entry := 49898; -- Valiona
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Valiona
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65094', '0', '1', '0', '1', '1'), 
(@entry, '65096', '0', '1', '0', '1', '1'), 
(@entry, '65109', '0', '1', '0', '1', '1'), 
(@entry, '65095', '0', '1', '0', '1', '1'), 
(@entry, '65107', '0', '1', '0', '1', '1'), 
(@entry, '65106', '0', '1', '0', '1', '1'); 

-- 10er Hero Loot - Theralion
SET @entry := 49904; -- Theralion
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Theralion
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65112', '0', '1', '0', '1', '1'), 
(@entry, '65093', '0', '1', '0', '1', '1'), 
(@entry, '65108', '0', '1', '0', '1', '1'), 
(@entry, '65105', '0', '1', '0', '1', '1'), 
(@entry, '65091', '0', '1', '0', '1', '1'), 
(@entry, '65092', '0', '1', '0', '1', '1'); 

-- 25er Hero Loot - Valiona
SET @entry := 49899; -- Valiona
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Valiona
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65094', '0', '1', '0', '1', '2'), 
(@entry, '65096', '0', '1', '0', '1', '2'), 
(@entry, '65109', '0', '1', '0', '1', '3'), 
(@entry, '65095', '0', '1', '0', '1', '2'), 
(@entry, '65107', '0', '1', '0', '1', '2'), 
(@entry, '65106', '0', '1', '0', '1', '2'); 

-- 25er Hero Loot - Theralion
SET @entry := 49905; -- Theralion
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Theralion
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65112', '0', '1', '0', '1', '2'), 
(@entry, '65093', '0', '1', '0', '1', '2'), 
(@entry, '65108', '0', '1', '0', '1', '2'), 
(@entry, '65105', '0', '1', '0', '1', '3'), 
(@entry, '65091', '0', '1', '0', '1', '3'), 
(@entry, '65092', '0', '1', '0', '1', '1'); 

-- Elementium Monstrosity Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='49619',`difficulty_entry_2`='49620',`difficulty_entry_3`='49621' WHERE (`entry`='43735');

-- 10er Hero Loot
SET @entry := 49620; -- Elementium Monstrosity
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Elementium Monstrosity
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65117', '0', '1', '0', '1', '1'), 
(@entry, '65116', '0', '1', '0', '1', '1'), 
(@entry, '65113', '0', '1', '0', '1', '1'), 
(@entry, '65122', '0', '1', '0', '1', '1'), 
(@entry, '65120', '0', '1', '0', '1', '1'), 
(@entry, '65114', '0', '1', '0', '1', '1'), 
(@entry, '65115', '0', '1', '0', '1', '1'),
(@entry, '65119', '0', '1', '0', '1', '1'), 
(@entry, '65121', '0', '1', '0', '1', '1'), 
(@entry, '65118', '0', '1', '0', '1', '1'),
(@entry, '65110', '0', '1', '0', '1', '1'),
(@entry, '65111', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 49621; -- Elementium Monstrosity
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Elementium Monstrosity
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65117', '0', '1', '0', '1', '1'), 
(@entry, '65116', '0', '1', '0', '1', '1'), 
(@entry, '65113', '0', '1', '0', '1', '1'), 
(@entry, '65122', '0', '1', '0', '1', '1'), 
(@entry, '65120', '0', '1', '0', '1', '1'), 
(@entry, '65114', '0', '1', '0', '1', '1'), 
(@entry, '65115', '0', '1', '0', '1', '1'),
(@entry, '65119', '0', '1', '0', '1', '1'), 
(@entry, '65121', '0', '1', '0', '1', '1'), 
(@entry, '65118', '0', '1', '0', '1', '1'),
(@entry, '65110', '0', '1', '0', '1', '1'),
(@entry, '65111', '0', '1', '0', '1', '1');

-- Cho'gall Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='50131',`difficulty_entry_2`='50132',`difficulty_entry_3`='50133' WHERE (`entry`='43324');

-- 10er Hero Loot
SET @entry := 50132; -- Cho'gall
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Cho'gall
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65126', '0', '1', '0', '1', '1'), 
(@entry, '65129', '0', '1', '0', '1', '1'), 
(@entry, '65128', '0', '1', '0', '1', '1'), 
(@entry, '65132', '0', '1', '0', '1', '1'), 
(@entry, '65125', '0', '1', '0', '1', '1'), 
(@entry, '65130', '0', '1', '0', '1', '1'), 
(@entry, '65131', '0', '1', '0', '1', '1'),
(@entry, '65127', '0', '1', '0', '1', '1'), 
(@entry, '65123', '0', '1', '0', '1', '1'), 
(@entry, '65124', '0', '1', '0', '1', '1'),
(@entry, '65088', '0', '1', '0', '1', '1'),
(@entry, '65087', '0', '1', '0', '1', '1'),
(@entry, '65089', '0', '1', '0', '1', '1'),
(@entry, '68600', '0', '1', '0', '1', '1'),
(@entry, '65145', '0', '1', '0', '1', '1'),
(@entry, '65090', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 50133; -- Cho'gall
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Cho'gall
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65126', '0', '1', '0', '1', '1'), 
(@entry, '65129', '0', '1', '0', '1', '1'), 
(@entry, '65128', '0', '1', '0', '1', '1'), 
(@entry, '65132', '0', '1', '0', '1', '1'), 
(@entry, '65125', '0', '1', '0', '1', '1'), 
(@entry, '65130', '0', '1', '0', '1', '1'), 
(@entry, '65131', '0', '1', '0', '1', '1'),
(@entry, '65127', '0', '1', '0', '1', '1'), 
(@entry, '65123', '0', '1', '0', '1', '2'), 
(@entry, '65124', '0', '1', '0', '1', '1'),
(@entry, '65088', '0', '1', '0', '1', '2'),
(@entry, '65087', '0', '1', '0', '1', '3'),
(@entry, '65089', '0', '1', '0', '1', '3'),
(@entry, '68600', '0', '1', '0', '1', '1'),
(@entry, '65145', '0', '1', '0', '1', '1'),
(@entry, '65090', '0', '1', '0', '1', '2');

#############
#Blackwingdescent#
#############

-- Magmaw Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='51101',`difficulty_entry_2`='51102',`difficulty_entry_3`='51103' WHERE (`entry`='41570');

-- 10er Hero Loot
SET @entry := 51102; -- Magmaw
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Magmaw
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65020', '0', '1', '0', '1', '1'), 
(@entry, '65044', '0', '1', '0', '1', '1'), 
(@entry, '65045', '0', '1', '0', '1', '1'), 
(@entry, '65050', '0', '1', '0', '1', '1'), 
(@entry, '65046', '0', '1', '0', '1', '1'), 
(@entry, '65049', '0', '1', '0', '1', '1'), 
(@entry, '65042', '0', '1', '0', '1', '1'),
(@entry, '65051', '0', '1', '0', '1', '1'), 
(@entry, '65048', '0', '1', '0', '1', '1'), 
(@entry, '67429', '0', '1', '0', '1', '1'),
(@entry, '67430', '0', '1', '0', '1', '1'),
(@entry, '67431', '0', '1', '0', '1', '1'),
(@entry, '65047', '0', '1', '0', '1', '1'),
(@entry, '65007', '0', '1', '0', '1', '1'),
(@entry, '65041', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 51103; -- Magmaw
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Magmaw
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65020', '0', '1', '0', '1', '3'), 
(@entry, '65044', '0', '1', '0', '1', '3'), 
(@entry, '65045', '0', '1', '0', '1', '3'), 
(@entry, '65050', '0', '1', '0', '1', '2'), 
(@entry, '65046', '0', '1', '0', '1', '2'), 
(@entry, '65049', '0', '1', '0', '1', '2'), 
(@entry, '65042', '0', '1', '0', '1', '2'),
(@entry, '65051', '0', '1', '0', '1', '2'), 
(@entry, '65048', '0', '1', '0', '1', '2'), 
(@entry, '67429', '0', '1', '0', '1', '3'),
(@entry, '67430', '0', '1', '0', '1', '3'),
(@entry, '67431', '0', '1', '0', '1', '3'),
(@entry, '65047', '0', '1', '0', '1', '2'),
(@entry, '65007', '0', '1', '0', '1', '3'),
(@entry, '65041', '0', '1', '0', '1', '3');

-- Ommotron Defense System Hero Loot

-- 10er Hero Loot
SET @entry := 49051; -- Toxitron
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Toxitron
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65076', '0', '1', '0', '1', '1'), 
(@entry, '65004', '0', '1', '0', '1', '1'), 
(@entry, '65080', '0', '1', '0', '1', '1'), 
(@entry, '65077', '0', '1', '0', '1', '1'), 
(@entry, '65078', '0', '1', '0', '1', '1'), 
(@entry, '65079', '0', '1', '0', '1', '1'); 

-- 25er Hero Loot
SET @entry := 49052; -- Toxitron
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Toxitron
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65076', '0', '1', '0', '1', '3'), 
(@entry, '65004', '0', '1', '0', '1', '1'), 
(@entry, '65080', '0', '1', '0', '1', '1'), 
(@entry, '65077', '0', '1', '0', '1', '1'), 
(@entry, '65078', '0', '1', '0', '1', '1'), 
(@entry, '65079', '0', '1', '0', '1', '1');

-- 10er Hero Loot
SET @entry := 49054; -- Magmatron
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Magmatron
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65082', '0', '1', '0', '1', '1'), 
(@entry, '65084', '0', '1', '0', '1', '1'), 
(@entry, '65081', '0', '1', '0', '1', '1'), 
(@entry, '65083', '0', '1', '0', '1', '1'), 
(@entry, '65085', '0', '1', '0', '1', '1'), 
(@entry, '65086', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 49055; -- Magmatron
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Magmatron
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65082', '0', '1', '0', '1', '2'), 
(@entry, '65084', '0', '1', '0', '1', '1'), 
(@entry, '65081', '0', '1', '0', '1', '1'), 
(@entry, '65083', '0', '1', '0', '1', '2'), 
(@entry, '65085', '0', '1', '0', '1', '1'), 
(@entry, '65086', '0', '1', '0', '1', '1');

-- Maloriak Hero Loot

-- 10er Hero Loot
SET @entry := 49980; -- Maloriak
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Maloriak
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65035', '0', '1', '0', '1', '1'), 
(@entry, '65034', '0', '1', '0', '1', '1'), 
(@entry, '65032', '0', '1', '0', '1', '1'), 
(@entry, '65039', '0', '1', '0', '1', '1'), 
(@entry, '65030', '0', '1', '0', '1', '1'), 
(@entry, '65037', '0', '1', '0', '1', '1'), 
(@entry, '65033', '0', '1', '0', '1', '1'),
(@entry, '65038', '0', '1', '0', '1', '1'), 
(@entry, '65031', '0', '1', '0', '1', '1'), 
(@entry, '65040', '0', '1', '0', '1', '1'),
(@entry, '67428', '0', '1', '0', '1', '1'),
(@entry, '67427', '0', '1', '0', '1', '1'),
(@entry, '67426', '0', '1', '0', '1', '1'),
(@entry, '65029', '0', '1', '0', '1', '1'),
(@entry, '65036', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 49986; -- Maloriak
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Maloriak
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65035', '0', '1', '0', '1', '2'), 
(@entry, '65034', '0', '1', '0', '1', '3'), 
(@entry, '65032', '0', '1', '0', '1', '2'), 
(@entry, '65039', '0', '1', '0', '1', '2'), 
(@entry, '65030', '0', '1', '0', '1', '2'), 
(@entry, '65037', '0', '1', '0', '1', '3'), 
(@entry, '65033', '0', '1', '0', '1', '2'),
(@entry, '65038', '0', '1', '0', '1', '1'), 
(@entry, '65031', '0', '1', '0', '1', '2'), 
(@entry, '65040', '0', '1', '0', '1', '2'),
(@entry, '67428', '0', '1', '0', '1', '3'),
(@entry, '67427', '0', '1', '0', '1', '3'),
(@entry, '67426', '0', '1', '0', '1', '3'),
(@entry, '65029', '0', '1', '0', '1', '2'),
(@entry, '65036', '0', '1', '0', '1', '2');

-- Chimaeron Hero Loot

-- 10er Hero Loot
SET @entry := 47775; -- Maloriak
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Chimaeron
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65065', '0', '1', '0', '1', '1'), 
(@entry, '65069', '0', '1', '0', '1', '1'), 
(@entry, '65021', '0', '1', '0', '1', '1'), 
(@entry, '65073', '0', '1', '0', '1', '1'), 
(@entry, '65068', '0', '1', '0', '1', '1'), 
(@entry, '65028', '0', '1', '0', '1', '1'), 
(@entry, '65067', '0', '1', '0', '1', '1'),
(@entry, '65071', '0', '1', '0', '1', '1'), 
(@entry, '65075', '0', '1', '0', '1', '1'), 
(@entry, '65070', '0', '1', '0', '1', '1'),
(@entry, '65072', '0', '1', '0', '1', '1'),
(@entry, '65064', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 47776; -- Chimaeron
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Chimaeron
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65065', '0', '1', '0', '1', '3'), 
(@entry, '65069', '0', '1', '0', '1', '3'), 
(@entry, '65021', '0', '1', '0', '1', '2'), 
(@entry, '65073', '0', '1', '0', '1', '3'), 
(@entry, '65068', '0', '1', '0', '1', '2'), 
(@entry, '65028', '0', '1', '0', '1', '3'), 
(@entry, '65067', '0', '1', '0', '1', '2'),
(@entry, '65071', '0', '1', '0', '1', '2'), 
(@entry, '65075', '0', '1', '0', '1', '3'), 
(@entry, '65070', '0', '1', '0', '1', '2'),
(@entry, '65072', '0', '1', '0', '1', '3'),
(@entry, '65064', '0', '1', '0', '1', '3');

-- Atramedes Hero Loot

-- 10er Hero Loot
SET @entry := 49584; -- Atramedes
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Atramedes
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65054', '0', '1', '0', '1', '1'), 
(@entry, '65056', '0', '1', '0', '1', '1'), 
(@entry, '65066', '0', '1', '0', '1', '1'), 
(@entry, '65060', '0', '1', '0', '1', '1'), 
(@entry, '65055', '0', '1', '0', '1', '1'), 
(@entry, '65063', '0', '1', '0', '1', '1'), 
(@entry, '65062', '0', '1', '0', '1', '1'),
(@entry, '65061', '0', '1', '0', '1', '1'), 
(@entry, '65059', '0', '1', '0', '1', '1'), 
(@entry, '65053', '0', '1', '0', '1', '1'),
(@entry, '65058', '0', '1', '0', '1', '1'),
(@entry, '65052', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 49585; -- Atramedes
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Atramedes
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65054', '0', '1', '0', '1', '2'), 
(@entry, '65056', '0', '1', '0', '1', '2'), 
(@entry, '65066', '0', '1', '0', '1', '2'), 
(@entry, '65060', '0', '1', '0', '1', '3'), 
(@entry, '65055', '0', '1', '0', '1', '2'), 
(@entry, '65063', '0', '1', '0', '1', '2'), 
(@entry, '65062', '0', '1', '0', '1', '3'),
(@entry, '65061', '0', '1', '0', '1', '2'), 
(@entry, '65059', '0', '1', '0', '1', '2'), 
(@entry, '65053', '0', '1', '0', '1', '3'),
(@entry, '65058', '0', '1', '0', '1', '3'),
(@entry, '65052', '0', '1', '0', '1', '3');

-- Nefarian Difficulty_entry and Hero Loot
UPDATE `creature_template` SET `difficulty_entry_1`='51104',`difficulty_entry_2`='51105',`difficulty_entry_3`='51106' WHERE (`entry`='41376');

-- 10er Hero Loot
SET @entry := 51105; -- Nefarian
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Nefarian
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65018', '0', '1', '0', '1', '1'), 
(@entry, '65043', '0', '1', '0', '1', '1'), 
(@entry, '65019', '0', '1', '0', '1', '1'), 
(@entry, '65057', '0', '1', '0', '1', '1'), 
(@entry, '65074', '0', '1', '0', '1', '1'), 
(@entry, '65027', '0', '1', '0', '1', '1'), 
(@entry, '65022', '0', '1', '0', '1', '1'),
(@entry, '65025', '0', '1', '0', '1', '1'), 
(@entry, '65026', '0', '1', '0', '1', '1'), 
(@entry, '65001', '0', '1', '0', '1', '1'),
(@entry, '65000', '0', '1', '0', '1', '1'),
(@entry, '65002', '0', '1', '0', '1', '1'),
(@entry, '65024', '0', '1', '0', '1', '1'),
(@entry, '65003', '0', '1', '0', '1', '1'),
(@entry, '65017', '0', '1', '0', '1', '1'),
(@entry, '65023', '0', '1', '0', '1', '1');

-- 25er Hero Loot
SET @entry := 51106; -- Nefarian
DELETE FROM `creature_loot_template` WHERE `entry` = @entry; -- Nefarian
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
(@entry, '65018', '0', '1', '0', '1', '1'), 
(@entry, '65043', '0', '1', '0', '1', '1'), 
(@entry, '65019', '0', '1', '0', '1', '1'), 
(@entry, '65057', '0', '1', '0', '1', '1'), 
(@entry, '65074', '0', '1', '0', '1', '1'), 
(@entry, '65027', '0', '1', '0', '1', '2'), 
(@entry, '65022', '0', '1', '0', '1', '2'),
(@entry, '65025', '0', '1', '0', '1', '1'), 
(@entry, '65026', '0', '1', '0', '1', '1'), 
(@entry, '65001', '0', '1', '0', '1', '1'),
(@entry, '65000', '0', '1', '0', '1', '2'),
(@entry, '65002', '0', '1', '0', '1', '1'),
(@entry, '65024', '0', '1', '0', '1', '1'),
(@entry, '65003', '0', '1', '0', '1', '1'),
(@entry, '65017', '0', '1', '0', '1', '1'),
(@entry, '65023', '0', '1', '0', '1', '1');
