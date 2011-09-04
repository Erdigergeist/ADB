DELETE FROM quest_template WHERE entry=9948;
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (9948, 2, 3518, 0, 65, 0, 67, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 'Findet die Überlebenden', 'Wenn ich etwas über Oger weiß, dann dass sie Ihr Essen frisch mögen. Das bedeutet, dass die Mag\'har, die sie gefangen haben, wahrscheinlich am Leben gehalten werden, bis sie verspeist werden sollen. Ich weiß, das ist ein grausamer Gedanke, aber wir müssen das zu unserem Vorteil ausnutzen.$B$BGeht zum Totschlägerhügel und sucht nach gefangenen Mag\'har. Wenn Ihr Gefangene gefunden habt, holt Euch die Schlüssel von den Totschlägern in der Nähe.$B$BTötet die Oger, um an die Schlüssel zu gelangen, und befreit die Gefangenen.', 'Ältester Ungriz bei der mag\'harischen Prozession in Nagrand möchte, dass Ihr 5 gefangene Mag\'har befreit.', 'Ihr habt geschafft, was keiner für möglich hielt und unsere vermissten Brüder und Schwestern zurückgebracht. Für die Mag\'har seid Ihr ein Held, $N. Alle werden Euren Namen kennen und wissen, was Ihr für uns getan habt.', '<Ungriz seufzt.>$B$BIch weiß, dass ich viel von Euch verlange, $N, aber bringt sie lebend zurück...', '', 'Kehrt zum Ältesten Yorley bei der Mag\'harischen Prozession in Nagrand zurück.', 'Gefangener Mag\'har befreit', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25604, 0, 0, 0, 5, -182490, 0, 0, 0, 5, 0, 0, 0, 32347, 0, 0, 0, 25778, 25779, 25780, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 941, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37000, 6900, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12340);

UPDATE gameobject SET id=182490 WHERE id in (
"182484",
"182486",
"182487",
"182488",
"182489",
"182490",
"182491",
"182492",
"182493",
"182494",
"182495",
"182496",
"182497",
"182498",
"182499",
"182500",
"182501",
"182502",
"182503",
"182504");
