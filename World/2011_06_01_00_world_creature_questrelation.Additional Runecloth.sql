DELETE FROM `creature_involvedrelation` WHERE `id` = 14727 AND `quest` = 7824;
DELETE FROM `creature_involvedrelation` WHERE `id` = 14727 AND `quest` = 7832;
DELETE FROM `creature_involvedrelation` WHERE `id` = 14726 AND `quest` = 7836;
DELETE FROM `creature_involvedrelation` WHERE `id` = 14726 AND `quest` = 7837;

DELETE FROM `creature_questrelation` WHERE `id` = 14727 AND `quest` = 7824;
DELETE FROM `creature_questrelation` WHERE `id` = 14727 AND `quest` = 7832;
DELETE FROM `creature_questrelation` WHERE `id` = 14726 AND `quest` = 7836;
DELETE FROM `creature_questrelation` WHERE `id` = 14726 AND `quest` = 7837;

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14726, 7824);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14726, 7832);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14727, 7836);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (14727, 7837);

INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14726, 7824);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14727, 7836);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14727, 7837);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (14726, 7832);