DELETE FROM `creature_questrelation` WHERE `quest` = 24710;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 24710;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 24710;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37591, 24710);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 37591;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24710;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 24710;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38188, 24710);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=38188;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (24710, 2, 4813, 0, 78, 0, 80, 81, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 24498, 24711, 0, 24711, 8, 0, 0, 0, 'Deliverance from the Pit', 'We need to make our way up the main path and through the cave to Tyrannus\' rise. There, he will be forced to confront us there lest we make our way into the citadel proper.$B$BGo now, $c. My men and I will be there to stand by you when the confrontation with Tyrannus comes.', 'Kill Scourgelord Tyrannus.', 'Such a senseless waste! Arthas goes too far! I can only hope what we find in the Halls of Reflection makes this somehow worth it.$b$bIf what that vile gnome said is to be trusted, Frostmourne should be there, and with it, answers to confronting Arthas.', '', '', 'Speak to Lady Jaina Proudmoore at the rear of the Pit of Saron.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36658, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49426, 0, 0, 0, 2, 0, 0, 0, 1050, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296000, 264600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);+

DELETE FROM `creature_questrelation` WHERE `quest` = 24499;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 24499;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 24499;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37597, 24499);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 37597;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24499;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 24499;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38160, 24499);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=38160;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClassMask`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RepObjectiveFaction2`, `RepObjectiveValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `unk0`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (24499, 2, 4809, 0, 78, 0, 80, 81, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 24510, 24683, 0, 24683, 8, 0, 0, 0, 'Echoes of Tortured Souls', 'I cannot thank you enough for coming. We\'re severely undermanned to be risking a venture into the citadel, but opportunities like this are too rare to pass up.$B$BI\'m awaiting the arrival of champions from the coliseum, but if your reputation holds true, you should be more than equipped to fight through the forge yourself. Clear the way to the far side and secure the passage to the Pit of Saron. We will need to hold it to move our men further into the citadel.$B$BPlease hurry, $n. We\'re counting on you.', 'Kill Bronjahm and the Devourer of Souls to secure access to the Pit of Saron.', 'Just in time! Thank you, $N.$B$BThe Pit of Saron lies ahead, and if our scouts are correct, past that will be the Halls of Reflection. It is there that Arthas lets his guard down, and it is there that we hope to find a clue to his weakness... or maybe, just maybe, his redemption.', '', '', 'Speak to Lady Jaina Proudmoore at the rear of the Forge of Souls.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36497, 36502, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49426, 0, 0, 0, 2, 0, 0, 0, 1050, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296000, 264600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);

UPDATE `quest_template` SET `Method` = 0 WHERE `entry` = 12701; 
UPDATE `quest_template` SET `Method` = 0 WHERE `entry` = 24451; 
UPDATE `quest_template` SET `SrcItemId` = '49698' AND `SrcItemCount` = '1' WHERE `entry` = '24451';

REPLACE INTO `quest_template` VALUES
(6001, 2, -263, 0, 10, 0, 10, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 5931, 0, 0, 0, 5, 15208, 1, 0, 'Body and Heart', 'Directly east of Auberdine lay many moonkin caves.  The one closest to Auberdine has a Moonkin Stone inside it.  Lunaclaw, the defender of the stone, will face you only when Cenarion Moondust is applied to it.  Lunaclaw possesses within it a strength that you must use as one of the Claw.$B$BYou''ve earned the right to use this Cenarion Moondust, $N... now show me that you''ve earned the right to possess the strength of body and the strength of heart needed as a druid!', 'Use the Cenarion Moondust on the Moonkin Stone of Auberdine to bring forth Lunaclaw.  From there, you must face Lunaclaw and earn the strength of body and heart it possesses.$B$BSpeak with Mathrengyl Bearwalker in Darnassus when you are done.', 'You have finally taken your large step into a much larger world, $N. I sense the teaching of the Great Bear Spirit within you, and I sense that you have received the strength that Lunaclaw possessed.$B$BThere are no further obstacles in your way... let me now teach you what it means to be a $C of the Claw!', NULL, 'Face Lunaclaw and earn the strength of body and heart it possesses.', 'Return to Mathrengyl Bearwalker at Cenarion Enclave in Darnassus.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12138, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132300, 0, 19179, 112, 21600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '12138',`ReqCreatureOrGOCount1` = '1' WHERE `quest_template`.`entry` =6002;
REPLACE INTO `creature_template` VALUES
(12138, 0, 0, 0, 12138, 0, 9389, 0, 0, 0, 'Lunaclaw', '', '', 0, 12, 12, 0, 14, 14, 0, 1.14, 1.14286, 1, 0, 13, 19, 0, 5, 1.2, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 10, 15, 4, 7, 0, 12138, 0, 0, 0, 0, 0, 0, 0, 0, 3391, 18986, 0, 0, 0, 0, 0, 0, 0, 0, 16, 16, 'EventAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11723);
REPLACE INTO `creature_template_addon`VALUES(12138, 0, 0, 0, 4097, 0, NULL);

UPDATE `quest_template` SET `SrcItemId` = '40971',
`SrcItemCount` = '1' WHERE `quest_template`.`entry` =12926;

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '25814' WHERE `entry` =11712;
UPDATE `quest_template` SET `ReqSpellCast1` = '45980' WHERE `entry` =11712;

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `creature_template`.`entry` =25351;
REPLACE INTO `creature_ai_scripts` VALUES
(2535100, 25351, 8, 0, 100, 0, 45474, -1, 0, 0, 33, 25351, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'q11593 The Honored Dead');
REPLACE INTO `conditions` VALUES
(13, 0, 45474, 0, 18, 1, 25351, 0, 0, '', NULL);
UPDATE `quest_template` SET `ReqSpellCast1`=45474, `ReqSpellCast2`=45474 WHERE `entry`=11593;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '25351' WHERE `quest_template`.`entry` =11593;

UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '0',
`ReqCreatureOrGOCount1` = '0',
`ReqSpellCast1` = '0' WHERE `entry` =14096;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '0',
`ReqCreatureOrGOCount1` = '0' WHERE `entry` =14142;