CREATE TABLE IF NOT EXISTS `student_event` (
  `student_id` INT UNSIGNED NOT NULL,
  `event_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`student_id` , `event_id`),
  CONSTRAINT `student-event_student_id_fk` FOREIGN KEY (`student_id`)
    REFERENCES `student`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `student-event_privilege_id_fk` FOREIGN KEY (`event_id`)
    REFERENCES `event`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);