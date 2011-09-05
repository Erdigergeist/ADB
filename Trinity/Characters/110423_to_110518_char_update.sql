ALTER TABLE `guild_rank` CHANGE `rname` `rname` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' NOT NULL;
ALTER TABLE `character_stats` ADD `resilience` INT UNSIGNED NOT NULL DEFAULT 0;
