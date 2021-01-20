CREATE TABLE IF NOT EXISTS `work_hours` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `commercial_establishment_id` INT UNSIGNED NOT NULL,
  `open` TIME NOT NULL,
  `close` TIME NOT NULL,
  `break_start` TIME,
  `break_end` TIME,
  `day_of_week` ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `work_hours_commercial_establishment_id_fk` FOREIGN KEY (`commercial_establishment_id`)
  REFERENCES `commercial_establishment`(`id`) ON UPDATE CASCADE ON DELETE CASCADE);
