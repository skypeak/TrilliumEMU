ALTER TABLE `characters`
  ADD COLUMN `conquestPoints` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `taxi_path`;