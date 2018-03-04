#
# This table has dual serial Primary Keys and UUIDs, because of these posts:
# https://www.clever-cloud.com/blog/engineering/2015/05/20/why-auto-increment-is-a-terrible-idea/
# https://tomharrisonjr.com/uuid-or-guid-as-primary-keys-be-careful-7b2aa3dcb439
#
# For this exercise, we are using strings to represent the UUIDs, with 32 characters and four 
# hyphens. However, in a production environment, it would be good to store UUIDs in BINARY(16)
# fields, as per the optimization explained here:
# https://www.percona.com/blog/2014/12/19/store-uuid-optimized-way/
#

CREATE TABLE `wishlists` (
  `id` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` VARCHAR(36) NOT NULL UNIQUE,
  `user_id` INT(10) unsigned NOT NULL,
  # column for bit flags; hard to read for humans, but keeps the table structure and data tidy
  `status` SMALLINT(5) unsigned DEFAULT 0,
  `title` VARCHAR(80) NOT NULL,
  `created` DATETIME DEFAULT NULL,
  `updated` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
  # there should be a foreign key like the one commented below; however, we will not be
  # creating a users table in this exercise
  # CONSTRAINT `users_fk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

