CREATE TABLE IF NOT EXISTS `student_position` (
  `id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
  `position` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`), 
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);