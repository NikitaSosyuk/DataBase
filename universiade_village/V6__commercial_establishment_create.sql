CREATE TABLE IF NOT EXISTS `commercial_establishment` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `building_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `type_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE, 
  CONSTRAINT `commercial_establishment_building_id_fk` FOREIGN KEY (`building_id`)
  REFERENCES `building`(`id`) ON UPDATE CASCADE ON DELETE CASCADE, 
  CONSTRAINT `commercial_establishment_commercial_type_fk` FOREIGN KEY (`type_id`)
  REFERENCES `commercial_type`(`id`) ON UPDATE CASCADE ON DELETE CASCADE);
