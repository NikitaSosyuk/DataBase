CREATE TABLE IF NOT EXISTS `employee_profession` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `profession` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,  
  UNIQUE INDEX `profession_UNIQUE` (`profession` ASC) VISIBLE
);