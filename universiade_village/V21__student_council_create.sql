CREATE TABLE IF NOT EXISTS `student_council` (
  `house_id` INT UNSIGNED NOT NULL,
  `student_id` INT UNSIGNED NOT NULL,
  `position_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`house_id`, `student_id`),
  CONSTRAINT `student_council_house_id_fk` FOREIGN KEY (`house_id`)
  REFERENCES `house` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_council_student_id_fk` FOREIGN KEY (`student_id`)
  REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_council_position_id_fk` FOREIGN KEY (`position_id`)
  REFERENCES `student_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE);
