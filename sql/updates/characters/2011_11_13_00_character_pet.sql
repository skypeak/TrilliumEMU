ALTER TABLE `character_pet`
	ADD COLUMN `resettalents_cost` INT(10) NULL DEFAULT '0' AFTER `savetime`;
ALTER TABLE `character_pet`
	ADD COLUMN `resettalents_time` INT(10) NULL DEFAULT '0' AFTER `resettalents_cost`;	
	