CREATE TABLE IF NOT EXISTS `villager` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `building_id` INT UNSIGNED NOT NULL,
  `room` SMALLINT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `surname` VARCHAR(30) NOT NULL, 
  `age` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `name_surname_index` (`name`, `surname` ASC) VISIBLE,
  CONSTRAINT `villager_build_id_fk` FOREIGN KEY (`building_id`)
  REFERENCES `building`(`id`) ON UPDATE CASCADE ON DELETE CASCADE);
