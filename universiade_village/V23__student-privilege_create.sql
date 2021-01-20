CREATE TABLE IF NOT EXISTS `student_privilege` (
  `student_id` INT UNSIGNED NOT NULL,
  `privilege_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`student_id`, `privilege_id`),
  CONSTRAINT `student-privilege_student_id_fk` FOREIGN KEY (`student_id`)
    REFERENCES `student`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `student-privilege_privilege_id_fk` FOREIGN KEY (`privilege_id`)
    REFERENCES `privilege`(`id`) ON UPDATE CASCADE ON DELETE CASCADE);