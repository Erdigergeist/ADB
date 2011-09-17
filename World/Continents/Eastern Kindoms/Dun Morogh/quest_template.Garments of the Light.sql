DELETE FROM creature_template where entry =12427;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (12427, 0, 0, 0, 0, 0, 12474, 0, 0, 0, 'Gebirgsj�ger Dolf', NULL, NULL, 0, 7, 7, 0, 55, 55, 0, 0.94, 1.14286, 1, 0, 9, 12, 0, 36, 1, 2000, 0, 1, 4096, 8, 0, 0, 0, 0, 0, 6, 8, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 2, 'npc_garments_of_quests', 12340);

DELETE FROM quest_template where entry in (5624,5625);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (5625, 2, -262, 0, 5, 0, 4, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 5626, 0, 0, 0, 4, 0, 0, 0, 'Gew�nder des Lichts', 'Normalerweise wird etwa zu dieser Zeit die Macht in einem von Euch gepr�ft, um zu sehen, ob er w�rdig genug ist, jene Roben zu tragen, die seinen Platz in der Kirche anzeigen. Doch um ehrlich zu sein, gibt es wichtigere Dinge, um die ich mich k�mmern muss. B�rger von Kharanos kamen gerade hierher und erz�hlten mir von einem verletzten Gebirgsj�ger direkt au�erhalb der Stadt im S�den - sein Name ist Dolf.$B$BWenn Ihr Dolf heilt und ihm \'Seelenst�rke\' gebt, werde ich das als erfolgreiche Pr�fung ansehen. Wie klingt das?', 'Sucht den Gebirgsj�ger Dolf und heilt seine Wunden mithilfe von \'Geringes Heilen\' (Rang 2). Belegt ihn danach mit \'Machtwort: Seelenst�rke\' und kehrt dann zu Maxan Anvol in Kharanos zur�ck.', 'Gut gemacht, $N. Ihr tragt das Licht in Euch, so viel ist klar.$B$BHier, nehmt diese Robe. Sie dient als Zeichen Eurer Rolle innerhalb der Kirche und wird den Leuten dabei helfen, Euch als $C zu erkennen - tragt sie, wann immer Ihr m�chtet.$B$BIhr werdet Euch sp�ter weiteren Pr�fungen unterziehen m�ssen. Tut, was Ihr k�nnt, um etwas �ber Eure F�higkeiten und Eure M�glichkeiten zu erfahren. Versucht Euch einmal allein an ein oder zwei K�mpfen und dann mit anderen Reisenden zusammen.$B$BUnd keine Sorge...in Euch steckt sehr viel Macht.', 'Have you found Dolf yet, $N?$B$BYou\'ve probably already learned this, but our ability to heal is very useful. Not only are we able to take care of the wounded, but we\'re vital to the survival of all those would-be heroes out there trying to make a name for themselves. With Fortitude to increase the amount of blows we can take, and our healing magic to keep them alive, there\'s nothing we can\'t overcome!', '', 'Kehrt zu Maxan Anvol in Kharanos in Dun Morogh zur�ck.', 'Heilt und st�rkt Gebirgsj�ger Dolf.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12427, 12427, 0, 0, 1, 1, 0, 0, 1244, 2052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16605, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (5624, 2, -262, 0, 5, 0, 4, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 5623, 0, 0, 0, 4, 0, 0, 0, 'Gew�nder des Lichts', 'Normalerweise stelle ich den Gefolgsleuten des Lichts eine kleine Herausforderung, um ihre Fertigkeiten zu pr�fen. Ich m�chte sehen, ob sie es wert sind, ihre ersten Roben zu tragen - sie sind ein Zeichen, dass die Kirche $Gden Priester:die Priesterin; nach au�en hin tr�gt und unterst�tzt.$B$BDoch hier ist die Situation etwas anders. Einer der B�rger von Goldhain sah eine verletzte Wache nahe dem See �stlich von hier. Er hei�t Roberts. Sucht ihn, heilt ihn, st�rkt seinen K�rper und kehrt hierher zur�ck. Wenn Ihr das f�r mich tun k�nnt, dann werde ich Eure Pr�fung als bestanden ansehen.', 'Sucht die Wache Roberts und heilt seine Wunden mithilfe von \'Geringes Heilen\' (Rang 2). Belegt ihn danach mit \'Machtwort: Seelenst�rke\' und kehrt dann zu Priesterin Josetta in Goldhain zur�ck.', 'Ausgezeichnet, $N. Mit einer weiteren gesunden Wache, die dort drau�en die Stadt unterst�tzt, werden wir viel sicherer sein. Ich freue mich zu sehen, dass Ihr bereits lernt, Eure F�higkeiten weise einzusetzen. Wenn Ihr irgendwann einmal glaubt, f�r eine weitere Ausbildung bereit zu sein, dann kommt bitte zu mir zur�ck. doch f�rs Erste nehmt diese Robe hier. Andere werden dann wissen, dass Ihr unserem Orden angeh�rt. Wenn Ihr sie nicht tragen wollt, ist auch das in Ordnung. Sp�ter wird es weitere Pr�fungen geben und diese Robe ist daf�r nicht erforderlich.', 'Wie Ihr vielleicht schon erfahren habt, ist unsere Heilmagie lebenswichtig f�r das �berleben unseres Volkes in diesen harten Zeiten... insbesondere f�r Abenteurer und Helden, die zu Waffen und Magie greifen, um die verschiedensten Gefahren zu bek�mpfen.$B$BIhr t�tet gut daran, Euch immer der Wichtigkeit dieser Fertigkeit zu erinnern. Dies, zusammen mit \'Seelenst�rke\', sorgt daf�r, dass Eure Kameraden im Kampf wesentlich f�higer sein werden, denn sie k�nnen dann eine gr��ere Anzahl Treffer aushalten.$B$BLasst keinen absch�tzig �ber die Macht Eurer Magie reden.', '', 'Kehrt zu Priesterin Josetta im Wald von Elwynn zur�ck.', 'St�rkt Wache Roberts', 'Heilt Wache Roberts.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12423, 12423, 0, 0, 1, 1, 0, 0, 2052, 1243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16605, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);