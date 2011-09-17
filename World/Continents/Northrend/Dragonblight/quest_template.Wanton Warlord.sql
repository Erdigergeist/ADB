DELETE FROM quest_template WHERE entry=12151;
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (12151, 2, 65, 0, 72, 0, 74, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 128, 0, 0, 0, 0, 0, 12150, 0, 0, 0, 7, 36864, 1, 0, 'R�cksichtsloser Kriegsherr', 'Es gibt keinen Grund daran zu zweifeln, dass Dregmars Worte wahr sind. Ob nun Grom\'thar Euch unterliegt oder Ihr von ihm besiegt werdet... Es macht keinen Unterschied: Er wird sich seine H�nde reinwaschen k�nnen.$B$BFolgt seinen Anweisungen... nehmt das Horn, das Ihr mir zuvor gebracht habt, geht zum Fackelring s�dlich des Azurdrachenschreins und sto�t zum Zeichen der Herausforderung hinein.$B$BT�tet anschlie�end Grom\'thar den Donnerbringer und bringt mir seinen Kopf.', 'Geht zum Fackelring s�dlich des Azurdrachenschreins und sto�t in das geschm�ckte Kriegshorn. Besiegt Grom\'thar den Donnerbringer und bringt seinen Kopf zur�ck zu Aurastrasza im Wyrmruhtempel.', 'Wirklich beeindruckend.$B$BNun da Grom\'thar der Donnerbringer nicht mehr ist, k�nnen wir die restlichen Magnatauren sich gegenseitig bek�mpfen lassen und unsere Aufmerksamkeit gr��eren Gefahren zuwenden.$B$BBeeindruckende Arbeit, $C.', 'Habt Ihr diese Gefahr endg�ltig aus der Welt schaffen k�nnen?', '', 'Kehrt zu Aurastrasza in der Dracheneisw�ste in der Drachen�de zur�ck.', '', '', '', '', 0, 36853, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 36864, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38156, 38157, 38155, 38154, 38130, 38224, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1091, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168000, 149400, 0, 0, 0, 0, 571, 2721.28, 426.48, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);

DELETE FROM event_scripts WHERE id=17767;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (17767, 0, 10, 27002, 120000, 0, 2724.21, 456.273, 67.0381, 2.38044);