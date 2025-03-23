CREATE TABLE `task_timer` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `task_id` INT(11) NOT NULL,
  `user_id` INT(11) NOT NULL,
  `start_time` DATETIME NOT NULL,
  `end_time` DATETIME DEFAULT NULL,
  `status` ENUM('open','stopped') NOT NULL DEFAULT 'open',
  PRIMARY KEY (`id`)
);
