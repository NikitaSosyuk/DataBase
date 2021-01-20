CREATE TABLE IF NOT EXISTS `student_has_association` (
  `student_id` INT UNSIGNED NOT NULL,
  `association_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`student_id`, `association_id`),
  CONSTRAINT `student_has_association_student_id_fk` FOREIGN KEY (`student_id`)
  REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_has_association_association_id_fk` FOREIGN KEY (`association_id`)
  REFERENCES `association` (`id`) ON DELETE CASCADE ON UPDATE CASCADE);