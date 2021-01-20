CREATE TABLE IF NOT EXISTS `asdu` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` INT UNSIGNED UNIQUE NOT NULL,
  `position_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,  
  CONSTRAINT `asdu_student_id_fk` FOREIGN KEY (`student_id`)
  REFERENCES `student`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `student_position_id_fk1` FOREIGN KEY (`position_id`)
  REFERENCES `student_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE);