CREATE TABLE IF NOT EXISTS `address` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `city` VARCHAR(15) NOT NULL, 
  `district` VARCHAR(30) NOT NULL,
  `street` VARCHAR(50) NOT NULL,
  `number_of_building` VARCHAR(5) UNIQUE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);