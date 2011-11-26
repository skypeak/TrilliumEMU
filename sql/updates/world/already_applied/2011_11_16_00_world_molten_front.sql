--PORTAL TO MOLTEN FRONT 208900

INSERT INTO spell_target_position VALUES (52091,861,1037.160,301.915,42.060,2.010);
INSERT INTO spell_linked_spell VALUES (99556,52091,0,'TELEPORT MOLTEN FRONT');


--PORTAL TO GET BACK 208552

INSERT INTO spell_target_position VALUES (99662,1,4440.729,-2093.263,1205.754,5.801);

--object placements

INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(208900, 1, 1, 1, 4416.96, -2075.82, 1210.32, 5.61028, 0, 0, 0.330141, -0.943932, 100, 0, 1);

INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(208552, 861, 1, 1, 1037.16, 301.915, 42.06, 2.01, 0, 0, 0.844162, 0.536088, 100, 0, 1);