#
# For simplicity's sake, in this exercise we will create a single table for storing items' data
# and will associate items to wishlists. But in a more-complex app, we could create a separate
# table for storing item data and thus this particular table here will actually store
# 'has-and-belongs-to-many' (HABTM) relations between wishlists and items.
#
# Also, this table has dual serial Primary Keys and UUIDs. See the file `2018-03-04-0340-02.sql`
# for more information on why this is done and how it would work in a production app.
#

CREATE TABLE `items` (
  `id` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` VARCHAR(36) NOT NULL UNIQUE,
  `wishlist_id` INT(10) unsigned NOT NULL,
  # column for bit flags; hard to read for humans, but keeps the table structure and data tidy
  `status` SMALLINT(5) unsigned DEFAULT 0,
  `title` VARCHAR(80) NOT NULL,
  `price` DECIMAL(4,2) DEFAULT NULL,
  `created` DATETIME DEFAULT NULL,
  `updated` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `wishlists_fk_1` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

