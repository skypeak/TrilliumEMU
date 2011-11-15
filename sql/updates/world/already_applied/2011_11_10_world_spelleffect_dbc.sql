DROP TABLE IF EXISTS `spelleffect_dbc`;
CREATE TABLE `spelleffect_dbc` (
	`Id` INT UNSIGNED NOT NULL DEFAULT '0',
	`effect` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectAmplitude` FLOAT NOT NULL DEFAULT '0',
	`effectAura` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectAuraPeriod` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectBasePoints` INT NOT NULL DEFAULT '0',
	`effectUnk_320` FLOAT NOT NULL DEFAULT '0',
	`effectChainAmplitude` FLOAT NOT NULL DEFAULT '0',
	`effectChainTargets` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectDieSides` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectItemType` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectMechanic` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectMiscValue` INT NOT NULL DEFAULT '0',
	`effectMiscValueB` INT NOT NULL DEFAULT '0',
	`effectPointsPerCombo` FLOAT NOT NULL DEFAULT '0',
	`effectRadiusIndex` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectRadiusMaxIndex` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectRealPointsPerLevel` FLOAT NOT NULL DEFAULT '0',
	`effectSpellClassMask_1` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectSpellClassMask_2` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectSpellClassMask_3` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectTriggerSpell` INT NOT NULL DEFAULT '0',
	`implicitTargetA` INT UNSIGNED NOT NULL DEFAULT '0',
	`implicitTargetB` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectSpellId` INT UNSIGNED NOT NULL DEFAULT '0',
	`effectIndex` INT UNSIGNED NOT NULL DEFAULT '0',
	`newField` INT UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='';
