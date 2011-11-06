-- Update template
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 39137;
UPDATE `creature_template` SET `unit_flags` = 0, `vehicleid` = 533 WHERE `entry` IN (36609, 39120, 39121, 39122);
UPDATE `creature_template` SET `modelid1` = 11686 WHERE `entry` IN (15214,36633, 39305, 39306, 39307);
UPDATE `creature_template` SET `mechanic_immune_mask` = 12582928 WHERE `entry` IN (36609, 39120, 39121, 39122);