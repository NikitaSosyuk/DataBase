CREATE TABLE IF NOT EXISTS `employee_has_house` (
  `house_id` INT UNSIGNED NOT NULL,
  `employee_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`house_id`, `employee_id`),
  CONSTRAINT `employee_has_house_house_id_fk` FOREIGN KEY (`house_id`)
  REFERENCES `house` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employee_has_house_employee_id_fk` FOREIGN KEY (`employee_id`)
  REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE);
