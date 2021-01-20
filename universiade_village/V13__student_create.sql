CREATE TABLE IF NOT EXISTS `student` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `course` TINYINT UNSIGNED NOT NULL,
  `villager_id` INT UNSIGNED UNIQUE NOT NULL,
  `house_id` INT UNSIGNED NOT NULL,
  `score` DECIMAL(5,2) DEFAULT 0 NULL,
  `institute_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,  
  CONSTRAINT `student_house_id_fk` FOREIGN KEY (`house_id`)
  REFERENCES `house`(`id`) ON UPDATE CASCADE ON DELETE CASCADE, 
  CONSTRAINT `student_villager_id_fk` FOREIGN KEY (`villager_id`)
  REFERENCES `villager`(`id`) ON UPDATE CASCADE ON DELETE CASCADE, 
  CONSTRAINT `student_inastitute_id_fk` FOREIGN KEY (`institute_id`)
  REFERENCES `institute`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);