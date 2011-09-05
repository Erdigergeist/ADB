INSERT IGNORE INTO `locales_gossip_menu_option` (`menu_id`, `id`) SELECT `menu_id`, `id` FROM `gossip_menu_option`;

UPDATE `locales_gossip_menu_option` SET `option_text_loc3` = NULL, box_text_loc3 = NULL;
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich möchte ein wenig in Euren Waren stöbern.' WHERE (`menu_id`='0' AND `id`='1');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich brauche einen Flug.' WHERE (`menu_id`='0' AND `id`='2');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich benötige eine Ausbildung.' WHERE (`menu_id`='0' AND `id`='3');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich möchte dieses Gasthaus zu meinem Heimatort machen.' WHERE (`menu_id`='0' AND `id`='6');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Wie gründe ich eine Gilde?' WHERE (`menu_id`='0' AND `id`='8');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich möchte ein Gilddenwappen herstellen.' WHERE (`menu_id`='0' AND `id`='9');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich möchte auf die Schlachtfelder.' WHERE (`menu_id`='0' AND `id`='10');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Zeigt mir eure Auktionen.' WHERE (`menu_id`='0' AND `id`='11');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich hätte gern einen Platz im Stall für meinen Begleiter.' WHERE (`menu_id`='0' AND `id`='12');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich möchte meine Talente verlernen.' WHERE (`menu_id`='0' AND `id`='14');
UPDATE `locales_gossip_menu_option` SET `option_text_loc3`='Ich möchte, dass mein Begleiter alles verlernt.' WHERE (`menu_id`='0' AND `id`='15');