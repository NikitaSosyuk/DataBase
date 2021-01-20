CREATE TABLE IF NOT EXISTS `employee` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `villager_id` INT UNSIGNED UNIQUE NOT NULL,
  `salary` DECIMAL(9,2) NOT NULL,
  `profession_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,  
  CONSTRAINT `employee_villager_id_fk` FOREIGN KEY (`villager_id`)
  REFERENCES `villager`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `employee-profession_id_fk` FOREIGN KEY (`profession_id`)
  REFERENCES `employee_profession`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);