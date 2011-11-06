-- Arreglo para misión 25881 / Fix for quest 25881
-- Nomarch Teneth
SET @GOSSIP := 46603;
SET @QUEST := 28134;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@Gossip;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@Gossip,0,0,9,@QUEST,0,0,0,'','show gossip option if Player has Quest 28134 taken');

-- Sun Priest Asaris
SET @GOSSIP := 47715;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@Gossip;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@Gossip,0,0,9,@QUEST,0,0,0,'','show gossip option if Player has Quest 28134 taken');

-- Asaq
SET @GOSSIP := 47930;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@Gossip;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@Gossip,0,0,9,@QUEST,0,0,0,'','show gossip option if Player has Quest 28134 taken');