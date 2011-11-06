-- Fixed the Phases for Lieutenant Walden and his Dead Guards
UPDATE creature SET phaseMask = 3 WHERE id in (39095, 34863);

-- Who spawn the fucking Trees in Gilneas? xD
DELETE FROM gameobject WHERE id = 402362 AND map = 638;
DELETE FROM gameobject WHERE id = 401862 AND map = 638;
DELETE FROM gameobject WHERE id = 401863 AND map = 638;
DELETE FROM gameobject WHERE id = 402361 AND map = 638;
DELETE FROM gameobject WHERE id = 402363 AND map = 638;
DELETE FROM gameobject WHERE id = 206997 AND map = 638;