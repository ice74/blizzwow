--Античит AC2
REPLACE INTO `trinity_string` VALUES ('12006', 'Cheater DETECTED> %s  Reason> Mistiming', '', '', '', '', '', '', '', 'ЧИТЕР обнаружен> %s Причина> Расхождение времени');
REPLACE INTO `trinity_string` VALUES ('12001', 'Cheater DETECTED> %s  Reason> Antigravity', '', '', '', '', '', '', '', 'ЧИТЕР обнаружен> %s Причина> Антигравитация');
REPLACE INTO `trinity_string` VALUES ('12002', 'Cheater DETECTED> %s  Reason> MultiJamp', '', '', '', '', '', '', '', 'ЧИТЕР обнаружен> %s Причина> Мультиприжки');
REPLACE INTO `trinity_string` VALUES ('12003', 'Cheater DETECTED> %s  Reason> Speed/Tele hack', '', '', '', '', '', '', '', 'ЧИТЕР обнаружен> %s Причина> СХ/ТХ');
REPLACE INTO `trinity_string` VALUES ('12004', 'Cheater DETECTED> %s  Reason> Fly hack', '', '', '', '', '', '', '', 'ЧИТЕР обнаружен> %s Причина> ФХ');
REPLACE INTO `trinity_string` VALUES ('12005', 'Cheater DETECTED> %s  Reason> Waterwalk', '', '', '', '', '', '', '', 'ЧИТЕР обнаружен> %s Причина> Хождение по воде');

--Серебряный турнир AT
DELETE FROM `creature_questrelation` WHERE `quest`=13668;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33817, 13668);
UPDATE `creature_template` SET IconName='vehichleCursor' WHERE entry IN (33842,33796,33798,33791,33792,33799);
UPDATE `creature_template` SET `VehicleId`=349 WHERE entry IN (33320,33321,33322,33323,33324);
UPDATE creature_template SET speed_run = 1.571429 WHERE entry IN (33844, 33320, 33321, 33322, 33323, 33324);
UPDATE `creature_template` SET `spell1`=62544, `spell2`=62575, `spell3`=62960, `spell4`=62552, `spell5`=64077 WHERE `entry` IN (33844, 33320, 33321, 33322, 33323, 33324);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` | 2 WHERE `entry` IN (33844, 33320, 33321, 33322, 33323, 33324);

DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (33842,33796,33798,33791,33792,33799);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(33842, 63791, 13668, 1, 13680, 1, 0, 0, 0), -- Aspirant
(33799, 62783, 13726, 0, 0, 1, 0, 0, 0), -- Champion Of Orgrimmar
(33799, 62783, 13691, 0, 0, 1, 0, 0, 0), -- A Valiant Of Orgrimmar
(33799, 62783, 13707, 0, 0, 1, 0, 0, 0), -- Valiant Of Orgrimmar
(33796, 62784, 13727, 0, 0, 1, 0, 0, 0), -- Champion Of Sen'jin
(33796, 62784, 13693, 0, 0, 1, 0, 0, 0), -- A Valiant Of Sen'jin
(33796, 62784, 13708, 0, 0, 1, 0, 0, 0), -- Valiant Of Sen'jin
(33792, 62785, 13728, 0, 0, 1, 0, 0, 0), -- Champion Of Thunder Bluff
(33792, 62785, 13694, 0, 0, 1, 0, 0, 0), -- A Valiant Of Thunder Bluff
(33792, 62785, 13709, 0, 0, 1, 0, 0, 0), -- Valiant Of Thunder Bluff
(33798, 62787, 13729, 0, 0, 1, 0, 0, 0), -- Champion Of Undercity
(33798, 62787, 13695, 0, 0, 1, 0, 0, 0), -- A Valiant Of Undercity
(33798, 62787, 13710, 0, 0, 1, 0, 0, 0), -- Valiant Of Undercity
(33791, 62786, 13731, 0, 0, 1, 0, 0, 0), -- Champion Of Silvermoon
(33791, 62786, 13696, 0, 0, 1, 0, 0, 0), -- A Valiant Of Silvermoon
(33791, 62786, 13711, 0, 0, 1, 0, 0, 0); -- Valiant Of Silvermoon


UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13668;
UPDATE `quest_template` SET `PrevQuestId`=13668, `NextQuestId`=13678, `ExclusiveGroup`=-13829, `NextQuestInChain`=0 WHERE `entry` IN (13829, 13839, 13838);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13680 WHERE `entry`=13678;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=13673, `NextQuestInChain`=0 WHERE `entry`=13673;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=13673, `NextQuestInChain`=0 WHERE `entry`=13675;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=13673, `NextQuestInChain`=0 WHERE `entry`=13674;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13676;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13677;
UPDATE `quest_template` SET `PrevQuestId`=13678, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13680;
UPDATE `quest_template` SET `PrevQuestId`=13680 WHERE `entry` IN (13691, 13693, 13694, 13695, 13696);

UPDATE `quest_template` SET `RequiredRaces`=2, `NextQuestId`=13697, `NextQuestInChain`=13697, `ExclusiveGroup`=13691 WHERE `entry`=13691;
UPDATE `quest_template` SET `RequiredRaces`=128, `NextQuestId`=13719, `NextQuestInChain`=13719, `ExclusiveGroup`=13693 WHERE `entry`=13693;
UPDATE `quest_template` SET `RequiredRaces`=32, `NextQuestId`=13720, `NextQuestInChain`=13720, `ExclusiveGroup`=13694 WHERE `entry`=13694;
UPDATE `quest_template` SET `RequiredRaces`=16, `NextQuestId`=13721, `NextQuestInChain`=13721, `ExclusiveGroup`=13695 WHERE `entry`=13695;
UPDATE `quest_template` SET `RequiredRaces`=512, `NextQuestId`=13722, `NextQuestInChain`=13722, `ExclusiveGroup`=13696 WHERE `entry`=13696;


UPDATE `quest_template` SET `PrevQuestId`=13701 WHERE `entry` IN (13707, 13708, 13709, 13710, 13711); -- TOScript into the core (check of 13687)

UPDATE `quest_template` SET `NextQuestId`=13697, `NextQuestInChain`=13697, `ExclusiveGroup`=13691 WHERE `entry`=13707;
UPDATE `quest_template` SET `NextQuestId`=13719, `NextQuestInChain`=13719, `ExclusiveGroup`=13693 WHERE `entry`=13708;
UPDATE `quest_template` SET `NextQuestId`=13720, `NextQuestInChain`=13720, `ExclusiveGroup`=13694 WHERE `entry`=13709;
UPDATE `quest_template` SET `NextQuestId`=13721, `NextQuestInChain`=13721, `ExclusiveGroup`=13695 WHERE `entry`=13710;
UPDATE `quest_template` SET `NextQuestId`=13722, `NextQuestInChain`=13722, `ExclusiveGroup`=13696 WHERE `entry`=13711;

UPDATE `quest_template` SET `PrevQuestId`=0, `ExclusiveGroup`=0 WHERE `entry` IN (13697, 13719, 13720, 13721, 13722);

UPDATE `quest_template` SET `NextQuestId`=13726, `NextQuestInChain`=13726 WHERE `entry`=13697;
UPDATE `quest_template` SET `NextQuestId`=13727, `NextQuestInChain`=13727  WHERE `entry`=13719;
UPDATE `quest_template` SET `NextQuestId`=13728, `NextQuestInChain`=13728  WHERE `entry`=13720;
UPDATE `quest_template` SET `NextQuestId`=13729, `NextQuestInChain`=13729  WHERE `entry`=13721;
UPDATE `quest_template` SET `NextQuestId`=13731, `NextQuestInChain`=13731  WHERE `entry`=13722;

UPDATE `quest_template` SET `PrevQuestId`=-13697, `NextQuestId`=0, `ExclusiveGroup`=13762, `NextQuestInChain`=0 WHERE `entry` IN (13762, 13763, 13764);
UPDATE `quest_template` SET `PrevQuestId`=-13719, `NextQuestId`=0, `ExclusiveGroup`=13768, `NextQuestInChain`=0 WHERE `entry` IN (13768, 13769, 13770);
UPDATE `quest_template` SET `PrevQuestId`=-13720, `NextQuestId`=0, `ExclusiveGroup`=13773, `NextQuestInChain`=0 WHERE `entry` IN (13773, 13774, 13775);
UPDATE `quest_template` SET `PrevQuestId`=-13721, `NextQuestId`=0, `ExclusiveGroup`=13778, `NextQuestInChain`=0 WHERE `entry` IN (13778, 13779, 13780);
UPDATE `quest_template` SET `PrevQuestId`=-13722, `NextQuestId`=0, `ExclusiveGroup`=13783, `NextQuestInChain`=0 WHERE `entry` IN (13783, 13784, 13785);

UPDATE `quest_template` SET `PrevQuestId`=-13697, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13765, 13767, 13856);
UPDATE `quest_template` SET `PrevQuestId`=-13719, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13771, 13772, 13857);
UPDATE `quest_template` SET `PrevQuestId`=-13720, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13776, 13777, 13858);
UPDATE `quest_template` SET `PrevQuestId`=-13721, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13781, 13782, 13860);
UPDATE `quest_template` SET `PrevQuestId`=-13722, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13786, 13787, 13859);

UPDATE `quest_template` SET `PrevQuestId`=13697, `NextQuestId`=13736, `ExclusiveGroup`=0, `NextQuestInChain`=13736 WHERE `entry`=13726;
UPDATE `quest_template` SET `PrevQuestId`=13719, `NextQuestId`=13737, `ExclusiveGroup`=0, `NextQuestInChain`=13737 WHERE `entry`=13727;
UPDATE `quest_template` SET `PrevQuestId`=13720, `NextQuestId`=13738, `ExclusiveGroup`=0, `NextQuestInChain`=13738 WHERE `entry`=13728;
UPDATE `quest_template` SET `PrevQuestId`=13721, `NextQuestId`=13739, `ExclusiveGroup`=0, `NextQuestInChain`=13739 WHERE `entry`=13729;
UPDATE `quest_template` SET `PrevQuestId`=13722, `NextQuestId`=13740, `ExclusiveGroup`=0, `NextQuestInChain`=13740 WHERE `entry`=13731;

UPDATE `quest_template` SET `PrevQuestId`=13726, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13736;
UPDATE `quest_template` SET `PrevQuestId`=13727, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13737;
UPDATE `quest_template` SET `PrevQuestId`=13728, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13738;
UPDATE `quest_template` SET `PrevQuestId`=13729, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13739;
UPDATE `quest_template` SET `PrevQuestId`=13740, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13740;


UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (13697, 13719, 13720, 13721, 13722);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (13726, 13727, 13728, 13729, 13731);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (13736, 13737, 13738, 13739, 13740);
	

DELETE FROM `creature_questrelation` WHERE `quest`=13667;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33817, 13667);

UPDATE `creature_template` SET IconName='vehichleCursor' WHERE `entry` IN (33843,33794,33800,33793,33795,33790);

UPDATE `creature_template` SET `VehicleId`=349 WHERE `entry` IN (33319,33317,33318,33217,33316);

UPDATE `creature_template` SET `speed_run`= 1.571429 WHERE `entry` IN (33845, 33319, 33317, 33318, 33217, 33316);

UPDATE `creature_template` SET `spell1`=62544, `spell2`=62575, `spell3`=62960, `spell4`=62552, `spell5`=64077 WHERE `entry` IN (33845, 33319, 33317, 33318, 33217, 33316);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` | 2 WHERE `entry` IN (33845, 33319, 33317, 33318, 33217, 33316);
DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (33843,33800,33795,33790,33793,33794);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(33843, 63792, 13667, 1, 13679, 1, 0, 0, 0), -- Aspirant
(33794, 62782, 13725, 0, 0, 1, 0, 0, 0), -- Champion Of Darnassus
(33794, 62782, 13689, 0, 0, 1, 0, 0, 0), -- A Valiant Of Darnassus
(33794, 62782, 13706, 0, 0, 1, 0, 0, 0), -- Valiant Of Darnassus
(33800, 62774, 13699, 0, 0, 1, 0, 0, 0), -- Champion Of Sen'jin
(33800, 62774, 13593, 0, 0, 1, 0, 0, 0), -- A Valiant Of Sen'jin
(33800, 62774, 13684, 0, 0, 1, 0, 0, 0), -- Valiant Of Sen'jin
(33793, 62780, 13723, 0, 0, 1, 0, 0, 0), -- Champion Of Thunder Bluff
(33793, 62780, 13688, 0, 0, 1, 0, 0, 0), -- A Valiant Of Thunder Bluff
(33793, 62780, 13704, 0, 0, 1, 0, 0, 0), -- Valiant Of Thunder Bluff
(33795, 62779, 13713, 0, 0, 1, 0, 0, 0), -- Champion Of Forgefer
(33795, 62779, 13685, 0, 0, 1, 0, 0, 0), -- A Valiant Of Undercity
(33795, 62779, 13703, 0, 0, 1, 0, 0, 0), -- Valiant Of Forgefer
(33790, 62781, 13724, 0, 0, 1, 0, 0, 0), -- Champion Of Exodar
(33790, 62781, 13690, 0, 0, 1, 0, 0, 0), -- A Valiant Of Exodar
(33790, 62781, 13705, 0, 0, 1, 0, 0, 0); -- Valiant Of Exodar



UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13667;
UPDATE `quest_template` SET `PrevQuestId`=13667, `NextQuestId`=13672, `ExclusiveGroup`=-13828, `NextQuestInChain`=0 WHERE `entry` IN (13828, 13837, 13835);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13679 WHERE `entry`=13672;

UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=13666, `NextQuestInChain`=0 WHERE `entry`=13666;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=13666, `NextQuestInChain`=0 WHERE `entry`=13670;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=13666, `NextQuestInChain`=0 WHERE `entry`=13669;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13671;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13625;

UPDATE `quest_template` SET `PrevQuestId`=13672, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13679;

UPDATE `quest_template` SET `PrevQuestId`=13679 WHERE `entry` IN (13684, 13685, 13689, 13688, 13690);

UPDATE `quest_template` SET `RequiredRaces`=1, `NextQuestId`=13718, `NextQuestInChain`=13718, `ExclusiveGroup`=13684 WHERE `entry`=13684;
UPDATE `quest_template` SET `RequiredRaces`=4, `NextQuestId`=13714, `NextQuestInChain`=13714, `ExclusiveGroup`=13685 WHERE `entry`=13685;
UPDATE `quest_template` SET `RequiredRaces`=8, `NextQuestId`=13717, `NextQuestInChain`=13717, `ExclusiveGroup`=13689 WHERE `entry`=13689;
UPDATE `quest_template` SET `RequiredRaces`=64, `NextQuestId`=13715, `NextQuestInChain`=13715, `ExclusiveGroup`=13688 WHERE `entry`=13688;
UPDATE `quest_template` SET `RequiredRaces`=1024, `NextQuestId`=13716, `NextQuestInChain`=13716, `ExclusiveGroup`=13690 WHERE `entry`=13690;

UPDATE `quest_template` SET `PrevQuestId`=13700 WHERE `entry` IN (13593, 13703, 13706, 13704, 13705); -- TOScript into the core (check of 13686)

UPDATE `quest_template` SET `NextQuestId`=13718, `NextQuestInChain`=13718, `ExclusiveGroup`=13718 WHERE `entry`=13593;
UPDATE `quest_template` SET `NextQuestId`=13714, `NextQuestInChain`=13714, `ExclusiveGroup`=13714 WHERE `entry`=13703;
UPDATE `quest_template` SET `NextQuestId`=13717, `NextQuestInChain`=13717, `ExclusiveGroup`=13717 WHERE `entry`=13706;
UPDATE `quest_template` SET `NextQuestId`=13715, `NextQuestInChain`=13715, `ExclusiveGroup`=13715 WHERE `entry`=13704;
UPDATE `quest_template` SET `NextQuestId`=13716, `NextQuestInChain`=13716, `ExclusiveGroup`=13716 WHERE `entry`=13705;

UPDATE `quest_template` SET `PrevQuestId`=0, `ExclusiveGroup`=0 WHERE `entry` IN (13718, 13714, 13717, 13715, 13716);

UPDATE `quest_template` SET `NextQuestId`=13699, `NextQuestInChain`=13699 WHERE `entry`=13718;
UPDATE `quest_template` SET `NextQuestId`=13713, `NextQuestInChain`=13713  WHERE `entry`=13714;
UPDATE `quest_template` SET `NextQuestId`=13725, `NextQuestInChain`=13725  WHERE `entry`=13717;
UPDATE `quest_template` SET `NextQuestId`=13723, `NextQuestInChain`=13723  WHERE `entry`=13715;
UPDATE `quest_template` SET `NextQuestId`=13724, `NextQuestInChain`=13724  WHERE `entry`=13716;

UPDATE `quest_template` SET `PrevQuestId`=-13718, `NextQuestId`=0, `ExclusiveGroup`=13603, `NextQuestInChain`=0 WHERE `entry` IN (13603, 13600, 13616);
UPDATE `quest_template` SET `PrevQuestId`=-13714, `NextQuestId`=0, `ExclusiveGroup`=13741, `NextQuestInChain`=0 WHERE `entry` IN (13741, 13742, 13743);
UPDATE `quest_template` SET `PrevQuestId`=-13717, `NextQuestId`=0, `ExclusiveGroup`=13757, `NextQuestInChain`=0 WHERE `entry` IN (13757, 13758, 13759);
UPDATE `quest_template` SET `PrevQuestId`=-13715, `NextQuestId`=0, `ExclusiveGroup`=13746, `NextQuestInChain`=0 WHERE `entry` IN (13746, 13747, 13748);
UPDATE `quest_template` SET `PrevQuestId`=-13716, `NextQuestId`=0, `ExclusiveGroup`=13752, `NextQuestInChain`=0 WHERE `entry` IN (13752, 13753, 13754);

UPDATE `quest_template` SET `PrevQuestId`=-13718, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13592, 13665, 13847);
UPDATE `quest_template` SET `PrevQuestId`=-13714, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13744, 13745, 13851);
UPDATE `quest_template` SET `PrevQuestId`=-13717, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13760, 13761, 13855);
UPDATE `quest_template` SET `PrevQuestId`=-13715, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13749, 13750, 13852);
UPDATE `quest_template` SET `PrevQuestId`=-13716, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13755, 13756, 13854);

UPDATE `quest_template` SET `PrevQuestId`=13718, `NextQuestId`=13702, `ExclusiveGroup`=0, `NextQuestInChain`=13702 WHERE `entry`=13699;
UPDATE `quest_template` SET `PrevQuestId`=13714, `NextQuestId`=13732, `ExclusiveGroup`=0, `NextQuestInChain`=13732 WHERE `entry`=13713;
UPDATE `quest_template` SET `PrevQuestId`=13717, `NextQuestId`=13735, `ExclusiveGroup`=0, `NextQuestInChain`=13735 WHERE `entry`=13725;
UPDATE `quest_template` SET `PrevQuestId`=13715, `NextQuestId`=13733, `ExclusiveGroup`=0, `NextQuestInChain`=13733 WHERE `entry`=13723;
UPDATE `quest_template` SET `PrevQuestId`=13716, `NextQuestId`=13734, `ExclusiveGroup`=0, `NextQuestInChain`=13734 WHERE `entry`=13724;

UPDATE `quest_template` SET `PrevQuestId`=13699, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13702;
UPDATE `quest_template` SET `PrevQuestId`=13713, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13732;
UPDATE `quest_template` SET `PrevQuestId`=13725, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13735;
UPDATE `quest_template` SET `PrevQuestId`=13723, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13733;
UPDATE `quest_template` SET `PrevQuestId`=13734, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13734;

UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (13718, 13714, 13717, 13715, 13716);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (13699, 13713, 13725, 13723, 13724);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (13702, 13732, 13735, 13733, 13734);


UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=13641, `ExclusiveGroup`=13633, `NextQuestInChain`=13641 WHERE `entry` IN (13633, 13634);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13643 WHERE `entry`=13641;
UPDATE `quest_template` SET `PrevQuestId`=13641, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13654 WHERE `entry`=13643;
UPDATE `quest_template` SET `PrevQuestId`=13643, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13663 WHERE `entry`=13654;
UPDATE `quest_template` SET `PrevQuestId`=13654, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13664 WHERE `entry`=13663;
UPDATE `quest_template` SET `PrevQuestId`=13663, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=14016 WHERE `entry`=13664;
UPDATE `quest_template` SET `PrevQuestId`=13664, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=14017 WHERE `entry`=14016;
UPDATE `quest_template` SET `PrevQuestId`=14016, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=14017;

UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13794; -- Eadric the Pure -- Works yet, but might bug with The Scourgebane
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13795; -- The Scourgebane

UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13790; -- Alliance Among The Champions
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13793; -- Alliance DK Among The Champions
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13811; -- Horde Among The Champions
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13814; -- Horde DK Among The Champions

UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13861; -- Alliance Battle Before The Citadel
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13864; -- Alliance DK Battle Before The Citadel
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13862; -- Horde Battle Before The Citadel
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13863; -- Horde DK Battle Before The Citadel

UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13789; -- Alliance Taking Battle To The Enemy
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13791; -- Alliance DK Taking Battle To The Enemy
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13810; -- Horde Taking Battle To The Enemy
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13813; -- Horde DK Taking Battle To The Enemy

UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13682; -- Alliance Threat From Above
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13788; -- Alliance DK Threat From Above
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13809; -- Horde Threat From Above
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13812; -- Horde DK Threat From Above

UPDATE `quest_template` SET `ExclusiveGroup`=14102, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14102, 14101, 14104, 14105);

UPDATE `quest_template` SET `ExclusiveGroup`=14107, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14107, 14108, 14095);

UPDATE `quest_template` SET `PrevQuestId`=13700, `RequiredMinRepFaction`=1094, `RequiredMinRepValue`=42000, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14112, 14076, 14090, 14096, 14152, 14080, 14077, 14074); -- Alliance
UPDATE `quest_template` SET `PrevQuestId`=13701, `RequiredMinRepFaction`=1124, `RequiredMinRepValue`=42000, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14145, 14092, 14141, 14142, 14136, 14140, 14144, 14143); -- Horde
UPDATE `quest_template` SET `ExclusiveGroup`=14112 WHERE `entry` IN (14112, 14145, 14076, 14092, 14090, 14141); -- A1, H1, A2, H2, A3, H3
UPDATE `quest_template` SET `ExclusiveGroup`=14152 WHERE `entry` IN (14152, 14136, 14080, 14140, 14077, 14144, 14074, 14143); -- A1, H1, A2, H2, A3, H3, A4, H4
UPDATE `quest_template` SET `NextQuestId`=13846, `ExclusiveGroup`=13700 WHERE `entry` IN (13700, 13701); -- Alliance, Horde
UPDATE `quest_template` SET `RequiredMaxRepFaction`=1106, `RequiredMaxRepValue`=42000 WHERE `entry`=13846;
DELETE FROM `creature_questrelation` WHERE `quest` IN (13820, 13681, 13627);
UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry` IN (13795, 13791, 13813, 13788, 13812, 13793, 13814, 13864, 13863);
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry` IN (13794, 13788, 13789, 13810, 13682, 13809, 13790, 13811, 13861, 13862);

DELETE FROM `spell_target_position` WHERE `id` IN (63986,63987);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(63986,571,8574.87,700.595,547.29,5.48),
(63987,571,8460,700,547.4,3.839);

UPDATE `creature_template` SET `Armor_mod`=0 WHERE `entry` IN (33243, 33272, 33229);

UPDATE `creature_template` SET `ScriptName`='npc_quest_givers_argent_tournament' WHERE `entry` IN (33593, 33592, 33225, 33312, 33335, 33379, 33373, 33361, 33403, 33372);
UPDATE `creature_template` SET `ScriptName`='npc_quest_givers_for_crusaders' WHERE `entry` IN (34882, 35094);
UPDATE `creature_template` SET `ScriptName`='npc_crusader_rhydalla' WHERE `entry`=33417;
UPDATE `creature_template` SET `ScriptName`='npc_eadric_the_pure' WHERE `entry`=33759;
UPDATE `creature_template` SET `ScriptName`='npc_crok_scourgebane' WHERE `entry`=33762;
UPDATE `creature_template` SET `ScriptName`='npc_valis_windchaser' WHERE `entry`=33974;
UPDATE `creature_template` SET `ScriptName`='npc_rugan_steelbelly' WHERE `entry`=33972;
UPDATE `creature_template` SET `ScriptName`='npc_jeran_lockwood' WHERE `entry`=33973;
UPDATE `creature_template` SET `ScriptName`='npc_training_dummy_argent' WHERE `entry`=33229;
UPDATE `creature_template` SET `ScriptName`='npc_training_dummy_argent' WHERE `entry`=33272;
UPDATE `creature_template` SET `ScriptName`='npc_training_dummy_argent' WHERE `entry`=33243;

DELETE FROM `creature_questrelation` WHERE `quest` IN (13828, 13672, 13679, 13684, 13685, 13689, 13688, 13690);
INSERT `creature_questrelation` (`id`, `quest`) VALUES (33625, 13828), (33625, 13672), (33625, 13679), (33625, 13684), (33625, 13685), (33625,13689), (33625, 13688), (33625, 13690);

DELETE FROM `creature_questrelation` WHERE `quest` IN (13691, 13693, 13694, 13695, 13696, 13829, 13680, 13678);
INSERT `creature_questrelation` (`id`, `quest`) VALUES (33542, 13691), (33542, 13693), (33542, 13694), (33542, 13695), (33542, 13696), (33542,13829), (33542, 13680), (33542, 13678);

UPDATE `creature_template` SET `ScriptName` = 'npc_lake_frog' WHERE `creature_template`.`entry` =33211 LIMIT 1 ;
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1, `ScriptName` = 'npc_maiden_of_ashwood_lake' WHERE `creature_template`.`entry` =33220;
UPDATE creature_template SET speed_run = 1 WHERE entry = 33211;
UPDATE creature_template SET speed_walk = 1.6 WHERE entry = 33211;

DELETE FROM creature WHERE guid = '336364';
INSERT INTO creature VALUES  (336364,33289,571,1,1,0,0,5136.74,-83.3769,347.326,1.44434,300,0,0,12600,3994,0,0);
DELETE FROM `creature_loot_template` WHERE `entry`=33289 AND `item`=45005;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (33289, 45005, -100);

DELETE FROM `script_texts` WHERE `entry` IN (-1850000,-1850001,-1850002,-1850003);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc2`,`comment`) VALUES
(0, -1850000, 'Oh, ce sont des jacinthes d\'hiver ? Pour moi ?', 'Oh, ce sont des jacinthes d\'hiver ? Pour moi ?',''),
(0, -1850001, 'On ne m\'avait pas apport? de fleurs ici depuis si longtemps.', 'On ne m\'avait pas apport? de fleurs ici depuis si longtemps.',''),
(0, -1850002, 'Le lac est un endroit bien solitaire depuis quelques ann?es. Les voyageurs n\'y viennent plus, et le mal en a envahi les eaux.', 'Le lac est un endroit bien solitaire depuis quelques ann?es. Les voyageurs n\'y viennent plus, et le mal en a envahi les eaux.',''),
(0, -1850003, 'Votre cadeau r?v?le une rare bont?, voyageur. Je vous en prie, prenez cette lame en gage de ma gratitude. Il y a bien longtemps, c\'est un autre voyageur qui l\'avait laiss?e ici, mais je n\'en ai pas l\'utilit?.', 'Votre cadeau r?v?le une rare bont?, voyageur. Je vous en prie, prenez cette lame en gage de ma gratitude. Il y a bien longtemps, c\'est un autre voyageur qui l\'avait laiss?e ici, mais je n\'en ai pas l\'utilit?.','');
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES (20990, 0, 10, 33273, 42000, 4602.977, -1600.141, 156.7834, 0.7504916);
UPDATE `creature_template` SET `InhabitType`=5, `ScriptName`='npc_maiden_of_drak_mar' WHERE `entry`=33273;
DELETE FROM `creature_template_addon` WHERE `entry`=33273;
INSERT INTO `creature_template_addon` (`entry`, `emote`) VALUES (33273, 13); -- 13 = EMOTE_STATE_SIT

UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE entry IN (29720,29719,29722);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(NULL, 29720, 571, 1, 1, 0, 0, 8562.48, 2771.93, 759.958, 6.10672, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8584.64, 2760.8, 759.958, 2.59599, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8617.49, 2735.11, 759.958, 2.32895, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8420.8, 2688.71, 759.957, 1.33806, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8417.11, 2641.07, 759.957, 1.57604, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8435.89, 2596.91, 759.957, 2.30577, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8477.25, 2565.16, 759.957, 2.51783, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8522.14, 2556.99, 759.957, 3.11709, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8571.58, 2559.95, 759.957, 4.05564, 300, 0, 0, 12600, 0, 0, 0),
(NULL, 29720, 571, 1, 1, 0, 0, 8609.24, 2589.19, 759.958, 0.155352, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8637.35, 2651.77, 759.958, 4.15303, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8636.85, 2679.47, 759.958, 4.93842, 300, 15, 0, 12175, 0, 0, 1);

DELETE FROM `script_texts` WHERE `entry` IN (-1850000,-1850001,-1850002,-1850003);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc2`,`comment`) VALUES
(0, -1850004, 'Tenez-vous pr?t !', 'Tenez-vous pr?t !',''),
(0, -1850005, 'Que le combat commence !', 'Que le combat commence !',''),
(0, -1850006, 'Pr?parez-vous !', 'Pr?parez-vous !',''),
(0, -1850007, 'Vous pensez avoir la vaillance en vous ? Nous verrons.', 'Vous pensez avoir la vaillance en vous ? Nous verrons.',''),
(0, -1850008, 'Impressionnante d?monstration. Je pense que vous ?tes tout ? fait en mesure de rejoindre les rangs des vaillants.', 'Impressionnante d?monstration. Je pense que vous ?tes tout ? fait en mesure de rejoindre les rangs des vaillants.',''),
(0, -1850009, 'J\'ai gagn?. Vous aurez sans doute plus de chance la prochaine fois.', 'J\'ai gagn?. Vous aurez sans doute plus de chance la prochaine fois.',''),
(0, -1850010, 'Je suis vaincue. Joli combat !', 'Je suis vaincue. Joli combat !',''),
(0, -1850011, 'On dirait que j\'ai sous-estim? vos comp?tences. Bien jou?.', 'On dirait que j\'ai sous-estim? vos comp?tences. Bien jou?.',''),
(0, -1850012, 'J\'ai gagn?. Vous aurez sans doute plus de chance la prochaine fois.', 'J\'ai gagn?. Vous aurez sans doute plus de chance la prochaine fois.','');

--ОЛО Wintergrasp
DELETE FROM `trinity_string` WHERE entry IN (756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,780,781);
REPLACE INTO `trinity_string` VALUES ('756', 'Battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва началась');
REPLACE INTO `trinity_string` VALUES ('757', '%s has successfully defended the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s успешно защитил(а) крепость!');
REPLACE INTO `trinity_string` VALUES ('758', '%s has taken over the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s захватил(а) крепость');
REPLACE INTO `trinity_string` VALUES ('759', 'The %s siege workshop has been damaged by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('760', 'The %s siege workshop has been destroyed by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('761', 'The %s tower has been damaged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s башня повреждена');
REPLACE INTO `trinity_string` VALUES ('762', 'The %s tower has been destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s башня уничтожена!');
REPLACE INTO `trinity_string` VALUES ('763', 'Wintergrasp fortress is under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('764', 'Wintergrasp is now under the control of the %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('765', 'Wintergrasp timer set to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('766', 'Wintergrasp battle started.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('767', 'Wintergrasp battle finished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('768', 'Wintergrasp info: %s controlled. Timer: %s. Wartime: %s. Number of Players: (Horde: %u, Alliance: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('769', 'Wintergrasp outdoorPvP is disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('770', 'Wintergrasp outdoorPvP is enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('771', 'You have reached Rank 1: Corporal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы достигли Ранга 1: Капрал');
REPLACE INTO `trinity_string` VALUES ('772', 'You have reached Rank 2: First Lieutenant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы достигли Ранга 2: Лейтенант');
REPLACE INTO `trinity_string` VALUES ('780', 'Before the Battle of  Wintergrasp left 30 minutes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'До битвы на  Озере Ледяных Оков осталось 30 минут!');
REPLACE INTO `trinity_string` VALUES ('781', 'Before the Battle of  Wintergrasp left 10 minutes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'До битвы на  Озере Ледяных Оков осталось 10 минут!');
REPLACE INTO `trinity_string` VALUES ('782', 'The battle for Wintergrasp  has stopped! Not enough defenders. Wintergrasp Fortress remains  Attackers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва за Озеро Ледяных Оков Остановлена. Не хватает защитников. Крепость переходит атакующей  стороне.');
REPLACE INTO `trinity_string` VALUES ('783', 'The battle for Wintergrasp  has stopped! Not enough attackers. Wintergrasp Fortress remains  Defenders.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва за Озеро Ледяных Оков Остановлена. Не хватает нападающих. Крепость остается защитникам.');

DELETE FROM `command` WHERE name IN ('wg','wg enable','wg start','wg status','wg stop','wg switch','wg timer');
REPLACE INTO `command` VALUES ('wg', '3', 'Syntax: .wg $subcommand.');
REPLACE INTO `command` VALUES ('wg enable', '3', 'Syntax: .wg enable [on/off] Enable/Disable Wintergrasp outdoorPvP.');
REPLACE INTO `command` VALUES ('wg start', '3', 'Syntax: .wg start\r\nForce Wintergrasp battle start.');
REPLACE INTO `command` VALUES ('wg status', '3', 'Syntax: .wg status\r\nWintergrasp info, defender, timer, wartime.');
REPLACE INTO `command` VALUES ('wg stop', '3', 'Syntax: .wg stop\r\nForce Wintergrasp battle stop (No rewards).');
REPLACE INTO `command` VALUES ('wg switch', '3', 'Syntax: .wg switch\r\nSwitchs Wintergrasp defender team.');
REPLACE INTO `command` VALUES ('wg timer', '3', 'Syntax: .wg timer $minutes\r\nChange the current timer. Min value = 1, Max value 60 (Wartime), 1440 (Not Wartime)');



DELETE FROM gameobject WHERE id IN ('194323', '194162');

DELETE FROM `gameobject` WHERE `id`=192829;

UPDATE `gameobject_template` SET `faction` = 0, `flags` = 6553632 WHERE `entry` IN (190356,190357,190358);

REPLACE INTO `spell_target_position` VALUES ('59096', '571', '5325.06', '2843.36', '409.285', '3.20278');
REPLACE INTO `spell_target_position` VALUES ('58632', '571', '5097.79', '2180.29', '365.61', '2.41');
REPLACE INTO `spell_target_position` VALUES ('58633', '571', '5026.80', '3676.69', '362.58', '3.94');

REPLACE INTO `spell_linked_spell` VALUES ('54640','54643','0','Defender\'s Portal Activate Proper Spell');

REPLACE INTO `spell_area` VALUES ('58730', '4197', '0', '0', '0', '0', '0', '2', '1');

UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

UPDATE creature_template SET faction_A = '1802', faction_H = '1802' WHERE entry IN (30499,28312,28319);
UPDATE creature_template SET faction_A = '1801', faction_H = '1801' WHERE entry IN (30400,32629,32627);
UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

REPLACE INTO `outdoorpvp_template` VALUES ('7', 'outdoorpvp_wg', 'Wintergrasp');
UPDATE `creature_template` SET `ScriptName` = 'npc_demolisher_engineerer' WHERE `entry` IN (30400,30499);

REPLACE INTO `conditions` VALUES ('13', '0', '56663', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56575', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61408', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56661', '0', '18', '1', '27852', '0', '0', '', null);

UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` IN (192028,192029,192030,192031,192032,192033);

REPLACE INTO `spell_area` VALUES (58730,4584,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4581,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4585,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4612,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4582,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4611,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4578,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4576,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4538,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (57940, 65, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 66, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 67, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 206, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 210, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 394, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 395, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 1196, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 2817, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3456, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3477, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3537, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3711, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4100, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4196, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4228, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4264, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4265, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4272, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4273, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4395, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4415, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4416, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4493, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4494, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4603, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (58045, 4197, 0, 0, 0, 0, 0, 2, 1);
DELETE FROM `trinity_string` WHERE entry IN (756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,780,781);
REPLACE INTO `trinity_string` VALUES ('756', 'Battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва началась');
REPLACE INTO `trinity_string` VALUES ('757', '%s has successfully defended the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s успешно защитил(а) крепость!');
REPLACE INTO `trinity_string` VALUES ('758', '%s has taken over the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s захватил(а) крепость');
REPLACE INTO `trinity_string` VALUES ('759', 'The %s siege workshop has been damaged by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('760', 'The %s siege workshop has been destroyed by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('761', 'The %s tower has been damaged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s башня повреждена');
REPLACE INTO `trinity_string` VALUES ('762', 'The %s tower has been destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s башня уничтожена!');
REPLACE INTO `trinity_string` VALUES ('763', 'Wintergrasp fortress is under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('764', 'Wintergrasp is now under the control of the %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('765', 'Wintergrasp timer set to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('766', 'Wintergrasp battle started.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('767', 'Wintergrasp battle finished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('768', 'Wintergrasp info: %s controlled. Timer: %s. Wartime: %s. Number of Players: (Horde: %u, Alliance: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('769', 'Wintergrasp outdoorPvP is disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('770', 'Wintergrasp outdoorPvP is enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `trinity_string` VALUES ('771', 'You have reached Rank 1: Corporal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы достигли Ранга 1: Капрал');
REPLACE INTO `trinity_string` VALUES ('772', 'You have reached Rank 2: First Lieutenant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы достигли Ранга 2: Лейтенант');
REPLACE INTO `trinity_string` VALUES ('780', 'Before the Battle of  Wintergrasp left 30 minutes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'До битвы на  Озере Ледяных Оков осталось 30 минут!');
REPLACE INTO `trinity_string` VALUES ('781', 'Before the Battle of  Wintergrasp left 10 minutes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'До битвы на  Озере Ледяных Оков осталось 10 минут!');
REPLACE INTO `trinity_string` VALUES ('782', 'The battle for Wintergrasp  has stopped! Not enough defenders. Wintergrasp Fortress remains  Attackers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва за Озеро Ледяных Оков Остановлена. Не хватает защитников. Крепость переходит атакующей  стороне.');
REPLACE INTO `trinity_string` VALUES ('783', 'The battle for Wintergrasp  has stopped! Not enough attackers. Wintergrasp Fortress remains  Defenders.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва за Озеро Ледяных Оков Остановлена. Не хватает нападающих. Крепость остается защитникам.');

DELETE FROM `command` WHERE name IN ('wg','wg enable','wg start','wg status','wg stop','wg switch','wg timer');
REPLACE INTO `command` VALUES ('wg', '3', 'Syntax: .wg $subcommand.');
REPLACE INTO `command` VALUES ('wg enable', '3', 'Syntax: .wg enable [on/off] Enable/Disable Wintergrasp outdoorPvP.');
REPLACE INTO `command` VALUES ('wg start', '3', 'Syntax: .wg start\r\nForce Wintergrasp battle start.');
REPLACE INTO `command` VALUES ('wg status', '3', 'Syntax: .wg status\r\nWintergrasp info, defender, timer, wartime.');
REPLACE INTO `command` VALUES ('wg stop', '3', 'Syntax: .wg stop\r\nForce Wintergrasp battle stop (No rewards).');
REPLACE INTO `command` VALUES ('wg switch', '3', 'Syntax: .wg switch\r\nSwitchs Wintergrasp defender team.');
REPLACE INTO `command` VALUES ('wg timer', '3', 'Syntax: .wg timer $minutes\r\nChange the current timer. Min value = 1, Max value 60 (Wartime), 1440 (Not Wartime)');


DELETE FROM gameobject WHERE id IN ('194323', '194162');

DELETE FROM `gameobject` WHERE `id`=192829;

UPDATE `gameobject_template` SET `faction` = 0, `flags` = 6553632 WHERE `entry` IN (190356,190357,190358);

REPLACE INTO `spell_target_position` VALUES ('59096', '571', '5325.06', '2843.36', '409.285', '3.20278');
REPLACE INTO `spell_target_position` VALUES ('58632', '571', '5097.79', '2180.29', '365.61', '2.41');
REPLACE INTO `spell_target_position` VALUES ('58633', '571', '5026.80', '3676.69', '362.58', '3.94');

REPLACE INTO `spell_linked_spell` VALUES ('54640','54643','0','Defender\'s Portal Activate Proper Spell');

REPLACE INTO `spell_area` VALUES ('58730', '4197', '0', '0', '0', '0', '0', '2', '1');

UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

UPDATE creature_template SET faction_A = '1802', faction_H = '1802' WHERE entry IN (30499,28312,28319);
UPDATE creature_template SET faction_A = '1801', faction_H = '1801' WHERE entry IN (30400,32629,32627);
UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

REPLACE INTO `outdoorpvp_template` VALUES ('7', 'outdoorpvp_wg', 'Wintergrasp');
UPDATE `creature_template` SET `ScriptName` = 'npc_demolisher_engineerer' WHERE `entry` IN (30400,30499);

REPLACE INTO `conditions` VALUES ('13', '0', '56663', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56575', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61408', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56661', '0', '18', '1', '27852', '0', '0', '', null);

UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` IN (192028,192029,192030,192031,192032,192033);

REPLACE INTO `spell_area` VALUES (58730,4584,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4581,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4585,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4612,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4582,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4611,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4578,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4576,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (58730,4538,0,0,0,0,0,2,1);
REPLACE INTO `spell_area` VALUES (57940, 65, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 66, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 67, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 206, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 210, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 394, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 395, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 1196, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 2817, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3456, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3477, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3537, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 3711, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4100, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4196, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4228, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4264, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4265, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4272, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4273, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4395, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4415, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4416, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4493, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4494, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (57940, 4603, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `spell_area` VALUES (58045, 4197, 0, 0, 0, 0, 0, 2, 1);

--Остров завоеваний IOC
UPDATE gameobject_template SET size=2.151325 WHERE entry=195451;
UPDATE gameobject_template SET size=2.151325 WHERE entry=195452;
UPDATE gameobject_template SET size=3.163336 WHERE entry=195223;
UPDATE creature_template SET speed_run=1.142857 WHERE entry=36154;
UPDATE creature_template SET speed_run=1.142857 WHERE entry=36169;

UPDATE `creature_template` SET `spell1`=69495,`VehicleId`='452' WHERE `entry` =34929;

UPDATE `creature_template` SET `spell1`=68825,`VehicleId`='453' WHERE `entry` =34935;

UPDATE `creature_template` SET `VehicleId`=160,`spell1`=67452,`spell2`='68169' WHERE `entry` =34944;

UPDATE `creature_template` SET `VehicleId`=438,`spell1`=66218,`spell2`=66296 WHERE `entry`=34793;

UPDATE `creature_template` SET `VehicleId`='509',`spell1`='67442',`spell2`='68068' WHERE `entry` =34775;

UPDATE `creature_template` SET `VehicleId`=447,`spell1`=67816,`spell2`=69502 WHERE `entry`=34776;

UPDATE `creature_template` SET `VehicleId`=436,`spell1`=67816,`spell2`=69502 WHERE `entry`=35069;

UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=34802;

UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=35273;

UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =34778;

UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36356;

UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=34777;

UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36355;

UPDATE creature_template SET `speed_run`=2.428571,`speed_walk`=2.8 WHERE `entry`=34793;

UPDATE creature_template SET `ScriptName`='boss_isle_of_conquest' WHERE `entry` IN (34924,34922);
	
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(12039, 'le donjon de l''alliance', NULL, 'le donjon de l''alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12038, 'le donjon de la Horde', NULL, 'le donjon de la Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12037, 'L''Alliance a pris le donjon de la Horde !', NULL, 'L''Alliance a pris le donjon de la Horde !', NULL, NULL, NULL, NULL, NULL, NULL),
(12036, 'La Horde a pris le donjon de l''Alliance !', NULL, 'La Horde a pris le donjon de l''Alliance !', NULL, NULL, NULL, NULL, NULL, NULL),
(12035, '%s l''emporte !', NULL, '%s l''emporte !', NULL, NULL, NULL, NULL, NULL, NULL),
(12034, '%s a attaquй le donjon de la Horde !', NULL, '%s a attaquй le donjon de la Horde !', NULL, NULL, NULL, NULL, NULL, NULL),
(12033, '%s a attaquй le donjon de l''Alliance !', NULL, '%s a attaquй le donjon de l''Alliance !', NULL, NULL, NULL, NULL, NULL, NULL),
(12032, 'La porte ouest du donjon de la Horde est dйtruite !', NULL, 'La porte ouest du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12031, 'La porte est du donjon de la Horde est dйtruite !', NULL, 'La porte est du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12030, 'La porte sud du donjon de la Horde est dйtruite !', NULL, 'La porte sud du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12029, 'La porte ouest du donjon de l''Alliance est dйtruite !', NULL, 'La porte ouest du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12028, 'La porte est du donjon de l''Alliance est dйtruite !', NULL, 'La porte est du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12027, 'La porte nord du donjon de l''Alliance est dйtruite !', NULL, 'La porte nord du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12026, 'The battle will begin in 15 seconds!', NULL, 'La bataille commencera dans 15 secondes.', NULL, NULL, NULL, NULL, NULL, NULL),
(12025, '$n has assaulted the %s', '', '$n a attaquй %s !', '', '', '', '', '', ''),
(12024, '$n has defended the %s', '', '$n a dйfendu %s', '', '', '', '', '', ''),
(12023, '$n claims the %s! If left unchallenged, the %s will control it in 1 minute!', NULL, '$n а attaquй %s! Si rien n\'est fait, %s le contrфlera dans 1 minute!', NULL, NULL, NULL, NULL, NULL, NULL),
(12022, 'Alliance', NULL, 'L''Alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12021, 'Horde', NULL, 'La Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12020, 'The %s has taken the %s', NULL, '%s a pris %s', NULL, NULL, NULL, NULL, NULL, NULL),
(12019, 'Workshop', NULL, 'l''atelier', NULL, NULL, NULL, NULL, NULL, NULL),
(12018, 'Docks', NULL, 'les docks', NULL, NULL, NULL, NULL, NULL, NULL),
(12017, 'Refinery', NULL, 'la raffinerie', NULL, NULL, NULL, NULL, NULL, NULL),
(12016, 'Quarry', NULL, 'la carriиre', NULL, NULL, NULL, NULL, NULL, NULL),
(12015, 'Hangar', NULL, 'le hangar', NULL, NULL, NULL, NULL, NULL, NULL),
(12014, 'The battle has begun!', NULL, 'Que la bataille commence !', NULL, NULL, NULL, NULL, NULL, NULL),
(12013, 'The battle will begin in 30 seconds!', NULL, 'La bataille commencera dans 30 secondes.', NULL, NULL, NULL, NULL, NULL, NULL),
(12012, 'The battle will begin in one minute!', NULL, 'La bataille commencera dans 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL),
(12011, 'The battle will begin in two minutes!', NULL, 'La bataille commencera dans 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(66548, 66550, 0, 'Isle of Conquest (OUT>IN)'),
(66549, 66550, 0, 'Isle of Conquest (IN>OUT)'),
(66550, -66549, 2, 'Isle of Conquest Teleport (OUT>IN) Debuff limit'),
(66550, -66548, 2, 'Isle of Conquest Teleport (IN>OUT) Debuff limit');
UPDATE gameobject_template SET size=2.151325 WHERE entry=195451;
UPDATE gameobject_template SET size=2.151325 WHERE entry=195452;
UPDATE gameobject_template SET size=3.163336 WHERE entry=195223;
UPDATE creature_template SET speed_run=1.142857 WHERE entry=36154;
UPDATE creature_template SET speed_run=1.142857 WHERE entry=36169;

UPDATE `creature_template` SET `spell1`=69495,`VehicleId`='452' WHERE `entry` =34929;

UPDATE `creature_template` SET `spell1`=68825,`VehicleId`='453' WHERE `entry` =34935;

UPDATE `creature_template` SET `VehicleId`=160,`spell1`=67452,`spell2`='68169' WHERE `entry` =34944;

UPDATE `creature_template` SET `VehicleId`=438,`spell1`=66218,`spell2`=66296 WHERE `entry`=34793;

UPDATE `creature_template` SET `VehicleId`='509',`spell1`='67442',`spell2`='68068' WHERE `entry` =34775;

UPDATE `creature_template` SET `VehicleId`=447,`spell1`=67816,`spell2`=69502 WHERE `entry`=34776;

UPDATE `creature_template` SET `VehicleId`=436,`spell1`=67816,`spell2`=69502 WHERE `entry`=35069;

UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=34802;

UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=35273;

UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =34778;

UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36356;

UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=34777;

UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36355;

UPDATE creature_template SET `speed_run`=2.428571,`speed_walk`=2.8 WHERE `entry`=34793;

UPDATE creature_template SET `ScriptName`='boss_isle_of_conquest' WHERE `entry` IN (34924,34922);
	
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(12039, 'le donjon de l''alliance', NULL, 'le donjon de l''alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12038, 'le donjon de la Horde', NULL, 'le donjon de la Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12037, 'L''Alliance a pris le donjon de la Horde !', NULL, 'L''Alliance a pris le donjon de la Horde !', NULL, NULL, NULL, NULL, NULL, NULL),
(12036, 'La Horde a pris le donjon de l''Alliance !', NULL, 'La Horde a pris le donjon de l''Alliance !', NULL, NULL, NULL, NULL, NULL, NULL),
(12035, '%s l''emporte !', NULL, '%s l''emporte !', NULL, NULL, NULL, NULL, NULL, NULL),
(12034, '%s a attaquй le donjon de la Horde !', NULL, '%s a attaquй le donjon de la Horde !', NULL, NULL, NULL, NULL, NULL, NULL),
(12033, '%s a attaquй le donjon de l''Alliance !', NULL, '%s a attaquй le donjon de l''Alliance !', NULL, NULL, NULL, NULL, NULL, NULL),
(12032, 'La porte ouest du donjon de la Horde est dйtruite !', NULL, 'La porte ouest du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12031, 'La porte est du donjon de la Horde est dйtruite !', NULL, 'La porte est du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12030, 'La porte sud du donjon de la Horde est dйtruite !', NULL, 'La porte sud du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12029, 'La porte ouest du donjon de l''Alliance est dйtruite !', NULL, 'La porte ouest du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12028, 'La porte est du donjon de l''Alliance est dйtruite !', NULL, 'La porte est du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12027, 'La porte nord du donjon de l''Alliance est dйtruite !', NULL, 'La porte nord du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12026, 'The battle will begin in 15 seconds!', NULL, 'La bataille commencera dans 15 secondes.', NULL, NULL, NULL, NULL, NULL, NULL),
(12025, '$n has assaulted the %s', '', '$n a attaquй %s !', '', '', '', '', '', ''),
(12024, '$n has defended the %s', '', '$n a dйfendu %s', '', '', '', '', '', ''),
(12023, '$n claims the %s! If left unchallenged, the %s will control it in 1 minute!', NULL, '$n а attaquй %s! Si rien n\'est fait, %s le contrфlera dans 1 minute!', NULL, NULL, NULL, NULL, NULL, NULL),
(12022, 'Alliance', NULL, 'L''Alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12021, 'Horde', NULL, 'La Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12020, 'The %s has taken the %s', NULL, '%s a pris %s', NULL, NULL, NULL, NULL, NULL, NULL),
(12019, 'Workshop', NULL, 'l''atelier', NULL, NULL, NULL, NULL, NULL, NULL),
(12018, 'Docks', NULL, 'les docks', NULL, NULL, NULL, NULL, NULL, NULL),
(12017, 'Refinery', NULL, 'la raffinerie', NULL, NULL, NULL, NULL, NULL, NULL),
(12016, 'Quarry', NULL, 'la carriиre', NULL, NULL, NULL, NULL, NULL, NULL),
(12015, 'Hangar', NULL, 'le hangar', NULL, NULL, NULL, NULL, NULL, NULL),
(12014, 'The battle has begun!', NULL, 'Que la bataille commence !', NULL, NULL, NULL, NULL, NULL, NULL),
(12013, 'The battle will begin in 30 seconds!', NULL, 'La bataille commencera dans 30 secondes.', NULL, NULL, NULL, NULL, NULL, NULL),
(12012, 'The battle will begin in one minute!', NULL, 'La bataille commencera dans 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL),
(12011, 'The battle will begin in two minutes!', NULL, 'La bataille commencera dans 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(66548, 66550, 0, 'Isle of Conquest (OUT>IN)'),
(66549, 66550, 0, 'Isle of Conquest (IN>OUT)'),
(66550, -66549, 2, 'Isle of Conquest Teleport (OUT>IN) Debuff limit'),
(66550, -66548, 2, 'Isle of Conquest Teleport (IN>OUT) Debuff limit');

--Арена даларана
UPDATE `world`.`gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` =192642 LIMIT 1 ;
UPDATE `world`.`gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` =192643 LIMIT 1 ;
UPDATE `world`.`battleground_template` SET `MinPlayersPerTeam` = '0', `MaxPlayersPerTeam` = '2' WHERE `battleground_template`.`id` =10 LIMIT 1 ;
DELETE FROM `disables` WHERE `entry` = 10 ;
UPDATE `world`.`gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` =192642 LIMIT 1 ;
UPDATE `world`.`gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` =192643 LIMIT 1 ;
UPDATE `world`.`battleground_template` SET `MinPlayersPerTeam` = '0', `MaxPlayersPerTeam` = '2' WHERE `battleground_template`.`id` =10 LIMIT 1 ;
DELETE FROM `disables` WHERE `entry` = 10 ;

--ЦЛК ICC
-- Cleanup
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (SELECT `id` FROM `creature` WHERE `map` = 631);

-- GameObject
UPDATE `gameobject_template` SET `ScriptName` = 'go_icecrown_teleporter' WHERE `entry` IN (202223,202235,202242,202243,202244,202245,202246);
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` IN (202235,202242,202243,202244,202245,202246);
UPDATE `gameobject_template` SET `flags` = 52 WHERE `entry` = 202223;
UPDATE `gameobject_template` SET `ScriptName` = '', `data10` = 70308 WHERE `entry` = 201584;
UPDATE `gameobject` SET `phaseMask` = '1' WHERE `id` IN (202242,202243,202244,202245,202235,202223,202246);
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (201614,201613);
UPDATE `gameobject` SET `state` = '0' WHERE `id` IN (201375);
UPDATE gameobject SET phaseMask = 17 WHERE id IN (201375,201374);
-- test platform destruction
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 202161;
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (202161);

-- Boss
UPDATE `creature_template` SET `ScriptName`='boss_lord_marrowgar' WHERE `entry` = 36612;
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry` = 36855;
UPDATE `creature_template` SET `ScriptName`='boss_saurfang' WHERE `entry` = 37813;
UPDATE `creature_template` SET `ScriptName`='boss_festergut' WHERE `entry` = 36626;
UPDATE `creature_template` SET `ScriptName`='boss_rotface' WHERE `entry`= 36627;
UPDATE `creature_template` SET `ScriptName`='boss_professor_putricide' WHERE `entry` = 36678;
UPDATE `creature_template` SET `ScriptName`='boss_blood_elf_valanar_icc' WHERE `entry` = 37970;
UPDATE `creature_template` SET `ScriptName`='boss_blood_elf_keleset_icc' WHERE `entry` = 37972;
UPDATE `creature_template` SET `ScriptName`='boss_blood_elf_taldaram_icc' WHERE `entry` = 37973;
UPDATE `creature_template` SET `ScriptName`='boss_blood_queen_lanathel' WHERE `entry` = 37955;
UPDATE `creature_template` SET `ScriptName`='boss_valithria' WHERE `entry` = 36789;
UPDATE `creature_template` SET `ScriptName`='boss_sindragosa' WHERE `entry` = 36853;
UPDATE `creature_template` SET `ScriptName`='boss_the_lich_king' WHERE `entry` = 36597;

-- Mobs
UPDATE `creature_template` SET `ScriptName`='npc_tirion_icc' WHERE `entry`= 38995;
UPDATE `creature_template` SET `ScriptName`='npc_swarming_shadows' WHERE `entry` = 38163;
UPDATE `creature_template` SET `ScriptName`='npc_bloodbeast' WHERE `entry` = 38508;
UPDATE `creature_template` SET `ScriptName`='npc_cold_flame' WHERE `entry` = 36672;
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry` = 36619;
UPDATE `creature_template` SET `ScriptName`='npc_volatile_ooze' WHERE `entry` = 37697;
UPDATE `creature_template` SET `ScriptName`='npc_valkyr_icc' WHERE `entry` = 36609;
UPDATE `creature_template` SET `ScriptName`='npc_vile_spirit_icc' WHERE `entry`= 37799;
UPDATE `creature_template` SET `ScriptName`='npc_ooze_little' WHERE `entry`= 36897;
UPDATE `creature_template` SET `ScriptName`='npc_ooze_big' WHERE `entry`= 36899;
UPDATE `creature_template` SET `ScriptName`='npc_shade' WHERE `entry` = 38222;
UPDATE `creature_template` SET `ScriptName`='npc_dreamcloud_icc' WHERE `entry` = 37985;
UPDATE `creature_template` SET `ScriptName`='npc_dreamportal_icc' WHERE `entry` IN (38186,37945,38429,38430);
UPDATE `creature_template` SET `ScriptName`='npc_cult_fanatic_and_adherent' WHERE `entry` IN (37949,38010,38136,37890,38009,38135);
UPDATE `creature_template` SET `ScriptName`='npc_rimefang' WHERE `entry`= 37533;
UPDATE `creature_template` SET `ScriptName`='npc_spinestalker' WHERE `entry`= 37534;
UPDATE `creature_template` SET `ScriptName`='npc_ice_tomb' WHERE `entry`= 36980;
UPDATE `creature_template` SET `ScriptName`='npc_frost_bomb' WHERE `entry`= 37186;
UPDATE `creature_template` SET `ScriptName`='npc_icc_puddle_stalker' WHERE `entry`= 37824;
UPDATE `creature_template` SET `ScriptName`='npc_ooze_explode_stalker' WHERE `entry` = 38107;
UPDATE `creature_template` SET `ScriptName`='npc_gas_cloud_icc' WHERE `entry` = 37562;
UPDATE `creature_template` SET `ScriptName`='npc_bomb_icc' WHERE `entry` = 38159;
UPDATE `creature_template` SET `ScriptName`='npc_stinky_icc' WHERE `entry` = 37025;
UPDATE `creature_template` SET `ScriptName`='npc_precious_icc' WHERE `entry` = 37217;
UPDATE `creature_template` SET `ScriptName`='npc_icc_combat_stalker' WHERE `entry` = 38752;
UPDATE `creature_template` SET `ScriptName`='npc_valithria_alternative' WHERE `entry` = 37950;
UPDATE `creature_template` SET `ScriptName`='boss_blood_council_controller' WHERE `entry`=38008;
UPDATE `creature_template` SET `ScriptName`='npc_blood_queen_lana_thel' WHERE `entry`=38004;
UPDATE `creature_template` SET `ScriptName`='npc_kinetic_bomb' WHERE `entry`=38454;
UPDATE `creature_template` SET `ScriptName`='npc_dark_nucleus' WHERE `entry`=38369;
UPDATE `creature_template` SET `ScriptName`='npc_ball_of_flame' WHERE `entry` IN (38332,38451);

-- Other
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33554434, `type_flags` = 1024 WHERE `entry` = 36672;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 37950;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 0, type_flags = 0, `VehicleId` = 533 WHERE `entry` IN (36619,38233,38459,38460);
UPDATE `creature_template` SET `faction_A`=2068, `faction_H`=2068 WHERE `entry` IN (36899,38123,3689902,3689903);
UPDATE `creature_template` SET `faction_A` = 21, `faction_H` = 21, `unit_flags` = 33600, `vehicleId` = 639 WHERE `entry` IN (37813,38402,38582,38583);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `type_flags` = 67113036 WHERE `entry` IN (36789,38174);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `minlevel` = 80, `maxlevel` = 80 WHERE `entry` IN (37006,37013,37986,38107,38548,36659,37690,37562,38159);
UPDATE `creature_template` SET `vehicleId` = 318 WHERE `entry` IN (36609,39120,39121,39122);
UPDATE `creature_model_info` SET `bounding_radius` = 5,`combat_reach` = 5 WHERE `modelid` = 31119;
UPDATE `creature_template` SET `mechanic_immune_mask` = 634339327 WHERE `entry` IN (36855,38106,38296,38297);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` IN (37007,38301);
UPDATE `creature_template` SET `spell1` = 70360, `spell2`= 70539, `spell3`= 70542, `VehicleId` = 591 WHERE `entry`= 37672;
UPDATE `creature_template` SET `spell1` = 72527, `spell2`= 72457, `spell3`= 70542, `VehicleId` = 591 WHERE `entry`= 38285;
UPDATE `creature_template` SET `dynamicflags` = 8, `npcflag` = 0, `unit_flags` = 32832 WHERE `entry` = 38995;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` IN (36899,38123);
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN(37985,37799,39284,39285,39286);
UPDATE `creature_template` SET `InhabitType`=5,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=30298;
UPDATE `creature_template` SET `InhabitType`=5,`minlevel`=82,`maxlevel`=82,`faction_A`=14,`faction_H`=14,`speed_walk`=0.142857 WHERE `entry` IN (38454,38775,38776,38777); -- Kinetic Bomb
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38458; -- Kinetic Bomb Target
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38422; -- Shock Vortex
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`speed_walk`=1.57143,`unit_flags`=33554432,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38332; -- Ball of Flame
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`speed_walk`=1.57143,`unit_flags`=33554432,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38451; -- Ball of Inferno Flame
UPDATE `creature_template` SET `unit_flags`=536904000,`RegenHealth`=0,`equipment_id`=10092,`speed_run`=1.428571,`speed_walk`=1.6 WHERE `entry` IN (37970,38401,38784,38785); -- Prince Valanar
UPDATE `creature_template` SET `unit_flags`=536904000,`RegenHealth`=0,`equipment_id`=10077,`speed_run`=1.428571,`speed_walk`=1.6 WHERE `entry` IN (37972,38399,38769,38770); -- Prince Keleseth
UPDATE `creature_template` SET `unit_flags`=536904000,`RegenHealth`=0,`equipment_id`=10091,`speed_run`=1.428571,`speed_walk`=1.6 WHERE `entry` IN (37973,38400,38771,38772); -- Prince Taldaram
UPDATE `creature_model_info` SET `bounding_radius`=0.5425,`combat_reach`=1.75 WHERE `modelid` IN (30856,30857,30858);
UPDATE `creature_template` SET `RegenHealth`=0 WHERE `entry`=38369; -- Dark Nucleus
UPDATE `creature_template` SET  `dynamicflags` = 8 WHERE entry IN (37970, 38401, 38784, 38785);
UPDATE `creature_template` SET `RegenHealth` = '0' WHERE `entry` =38174;

-- Spell

DELETE FROM `spell_script_names` WHERE `spell_id` IN(69783,69057,69140,72705,69147,69075,70834,70835,70836,70903,71236);

-- Not attackable and disable move flag
UPDATE `creature_template` SET `unit_flags` = 33555204 WHERE `entry` IN (37986,37824,38234,38317,36659,38548,37186,37006,37918,37690,38068,27880);
UPDATE `creature_template` SET `unit_flags` = 33587972 WHERE `entry` = 37013;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` IN (37986,38234,38317,36659,38548,37186,37013);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 38234;
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 38569;

-- Instance
UPDATE `instance_template` SET `script`='instance_icecrown_citadel' WHERE `map` = 631;

-- Creature addon template

DELETE FROM `creature_addon` WHERE `guid` IN (136107,104365);
DELETE FROM `creature_template_addon` WHERE `entry` IN (37690,37672,36659,38186,37945,38429,38430,37918,37006);

INSERT INTO creature_addon (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(136107, 0, 0, 0, 1, 0, '18950 0 18950 1 72242 0');

INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES
(104365,0x03000000); -- Blood Queen Lana'Thel

INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(37690, 0, 0, 0, 0, 0, '70345 0  70343 0'),
(37672, 0, 0, 0, 0, 0, '70385 0 70405 0'),
(38186, 0, 0, 0, 0, 0, '71304 0'),
(37945, 0, 0, 0, 0, 0, '70763 0'),
(38429, 0, 0, 0, 0, 0, '71986 0'),
(38430, 0, 0, 0, 0, 0, '71994 0'),
(37918, 0, 0, 0, 0, 0, '70715 0'),
(37006, 0, 0, 0, 0, 0, '69776 0');

-- Thanks YTDB

-- Conditions

DELETE FROM `conditions` WHERE `SourceEntry` IN (69508,70881,70360,36659,70781,70856,70857,70858,70859,70860,70861,69157,71614,70588);
DELETE FROM `conditions` WHERE `ConditionValue2` IN (SELECT `id` FROM `creature` WHERE `map` = 631);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (70952,70982,70981,70983,71070,71081,71080);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=21 AND `SourceGroup` IN (37672,38285);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,70360,0,18,1,37690,0,0, '', ''),
(13,0,69157,0,18,1,36659,0,0, '', 'Festergut - Gaseous Blight'),
(13,0,69162,0,18,1,36659,0,0, '', 'Festergut - Gaseous Blight'),
(13,0,69164,0,18,1,36659,0,0, '', 'Festergut - Gaseous Blight'),
(13,0,71614,0,18,1,38995,0,0, '', 'LichKing - Ice Lock'),
(13,0,70588,0,18,1,36789,0,0, '', 'Valithria - Suppression'),
(13,0,70588,0,18,1,38174,0,0, '', 'Valithria - Suppression'),
(13,0,71617,0,18,1,38317,0,0, '', 'Putricide - Tear Gas'),
(13,0,69125,0,18,1,37013,0,0, '', ''),
(21,37672,71516,0,3,49888,0,0,0, '', 'Mutated Abomination - Unholy Infusion'),
(21,38285,71516,0,3,49888,0,0,0, '', 'Mutated Abomination - Unholy Infusion'),
(13,0,70952,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood'),
(13,0,70982,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood'),
(13,0,70981,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood'),
(13,0,70983,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood beam'),
(13,0,70983,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood beam'),
(13,0,70983,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood beam'),
(13,0,71070,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood visual'),
(13,0,71081,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood visual'),
(13,0,71080,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood visual');

-- creature

DELETE FROM `creature` WHERE `id` IN(37813, 37013, 36659,37950);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(48969,37013,631,1,1,11686,0,4291.18,3092.92,372.97,2.33874,300,0,0,25200,0,0,0,0,0,0), -- puddle stalker
(48971,37013,631,1,1,11686,0,4312.14,3112.98,372.97,2.51327,300,0,0,25200,0,0,0,0,0,0),
(48973,37013,631,1,1,11686,0,4244.04,3092.66,372.97,0.97738,300,0,0,25200,0,0,0,0,0,0),
(48976,37013,631,1,1,11686,0,4223.47,3113.58,372.97,0.76794,300,0,0,25200,0,0,0,0,0,0),
(48981,37013,631,1,1,11686,0,4222.44,3161.69,372.97,5.53269,300,0,0,25200,0,0,0,0,0,0),
(48983,37013,631,1,1,11686,0,4243.89,3181.74,372.97,5.44543,300,0,0,25200,0,0,0,0,0,0),
(48989,37013,631,1,1,11686,0,4312.36,3160.84,372.97,3.80482,300,0,0,25200,0,0,0,0,0,0),
(48990,37013,631,1,1,11686,0,4291.45,3181.25,372.97,4.10152,300,0,0,25200,0,0,0,0,0,0),
(93955,36659,631,15,1,11686,0,4267.87,3137.33,360.469,0,300,0,0,25200,0,0,0,0,0,0),
(136107,37813,631,15,1,30790,0,-493.905,2211.35,541.114,3.18037,300,0,0,12299490,0,0,0,0,0,0), -- saurfang
(1000000,37950,631,15,16,0,0,4203.65,2483.89,390.961,5.51524,604800,0,0,6000003,0,0,0,0,33540,8);

-- Linked spell

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (72202,70117);
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN(72202,69166,70347,72380,69706,70702,70311, 69291, 70338,72846,69201);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(70360,70347,0,'Eat Ooze'),
(72379,72380,0,'Blood Nova'),
(72380,72202,0,'Blood Nova 10N'),
(72438,72202,0,'Blood Nova 25N'),
(72439,72202,0,'Blood Nova 10H'),
(72440,72202,0,'Blood Nova 25H'),
(72409,72202,0,'Rune of Blood 25N'),
(72447,72202,0,'Rune of Blood 10H'),
(72448,72202,0,'Rune of Blood 25H'),
(72449,72202,0,'Rune of Blood 25H'),
(69195,69166,0,'Pungent Blight 10N'),
(71279,69166,0,'Pungent Blight 25N'),
(73031,69166,0,'Pungent Blight 10H'),
(73032,69166,0,'Pungent Blight 25H'),
(70117,70122,0,'Sindragosa: Blistering Cold dummy'),
(70715,70702,0,'?'),
(-69674,69706,0, 'Rotface: Mutated Infection Summon'),
(-71224,69706,0, 'Rotface: Mutated Infection Summon'),
(-73022,69706,0, 'Rotface: Mutated Infection Summon'),
(-73023,69706,0, 'Rotface: Mutated Infection Summon'),
(-70337,70338,0, 'The Lich King: Necrotic plague initial cast'),
(-70337,72846,0, 'The Lich King: Necrotic plague immun'),
(-70338,70338,0, 'The Lich King: Necrotic jump'),
(-69200,69201,0, 'The Lich King: Raging Spirit');

-- Linked Respawn

DELETE FROM `creature_linked_respawn` WHERE `guid` IN (136104,136105,136107,67608,67614,67901,77641,77642,77643,115558);
INSERT INTO `creature_linked_respawn` (`guid`,`linkedGuid`) VALUES
(136104,136104), -- Lord Marrowgar
(136105,136105), -- Lady Deathwhisper
(136107,136107), -- Deathbringer Saurfang
(67608,67608), -- Festergut
(67614,67614), -- Rotface
(67901,67901), -- Professor Putricide
(77641,77641), -- Prince Keleseth
(77642,77642), -- Prince Taldaram
(77643,77643), -- Prince Valanar
(115558,115558); -- Blood-Queen Lana'thel

-- Npc spell click spell

DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (37945,38430);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(37945,70766,0,0,0,3,0,0,0),
(38430,70766,0,0,0,3,0,0,0);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (70405,72508,72509,72510) AND `ScriptName`='spell_putricide_mutated_transformation_dismiss';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70311,71503) AND `ScriptName`='spell_putricide_mutated_transformation';
DELETE FROM `spell_script_names` WHERE `spell_id`=70308 AND `ScriptName`='spell_putricide_mutation_init';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71412,71415) AND `ScriptName`='spell_putricide_ooze_summon';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72262) AND `ScriptName`='spell_lich_king_quake';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (74361) AND `ScriptName`='spell_lich_king_valkyr_summon';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70541,73779,73780,73781) AND `ScriptName`='spell_lich_king_infection';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70338,73785,73786,73787) AND `ScriptName`='spell_lich_king_necrotic_plague';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69075,70834,70835,70836) AND `ScriptName`='spell_lord_marrowgar_bone_storm';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70157) AND `ScriptName`='spell_sindragosa_ice_tomb';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70127,72528,72529,72530) AND `ScriptName`='spell_sindragosa_mystic_buffet';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69766) AND `ScriptName`='spell_sindragosa_unchained_magic';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72219,72551,72552,72553) AND `ScriptName`='spell_festergut_gastric_bloat';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69558) AND `ScriptName`='spell_rotface_unstable_explosion';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68981,74270,74271,74272) AND `ScriptName`='spell_lich_king_winter';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70534) AND `ScriptName`='spell_vile_spirit_distance_check';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69110) AND `ScriptName`='spell_ice_burst_distance_check';
DELETE FROM `spell_script_names` WHERE `spell_id`=71598 AND `ScriptName`='spell_creature_permanent_feign_death';
DELETE FROM `spell_script_names` WHERE `spell_id`=71806 AND `ScriptName`='spell_taldaram_glittering_sparks';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71718,72040) AND `ScriptName`='spell_taldaram_summon_flame_ball';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (55891,55947) AND `ScriptName`='spell_taldaram_flame_ball_visual';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71756,72782,72783,72784) AND `ScriptName`='spell_taldaram_ball_of_inferno_flame';
DELETE FROM `spell_script_names` WHERE `spell_id`=72080 AND `ScriptName`='spell_valanar_kinetic_bomb';
DELETE FROM `spell_script_names` WHERE `spell_id`=72087 AND `ScriptName`='spell_valanar_kinetic_bomb_knockback';
DELETE FROM `spell_script_names` WHERE `spell_id`=73001 AND `ScriptName`='spell_blood_council_shadow_prison';
DELETE FROM `spell_script_names` WHERE `spell_id`=72999 AND `ScriptName`='spell_blood_council_shadow_prison_damage';
DELETE FROM `spell_script_names` WHERE `spell_id`=69538 AND `ScriptName`='spell_rotface_little_ooze_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69553 AND `ScriptName`='spell_rotface_large_ooze_combine';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_festergut_blighted_spores';

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(71412,'spell_putricide_ooze_summon'),
(71415,'spell_putricide_ooze_summon'),
(72510,'spell_putricide_mutated_transformation_dismiss'),
(72509,'spell_putricide_mutated_transformation_dismiss'),
(72508,'spell_putricide_mutated_transformation_dismiss'),
(70405,'spell_putricide_mutated_transformation_dismiss'),
(70308,'spell_putricide_mutation_init'),
(70311,'spell_putricide_mutated_transformation'),
(71503,'spell_putricide_mutated_transformation'),
(74361,'spell_lich_king_valkyr_summon'),
(70541,'spell_lich_king_infection'),
(73779,'spell_lich_king_infection'),
(73780,'spell_lich_king_infection'),
(73781,'spell_lich_king_infection'),
(70338,'spell_lich_king_necrotic_plague'),
(73785,'spell_lich_king_necrotic_plague'),
(73786,'spell_lich_king_necrotic_plague'),
(73787,'spell_lich_king_necrotic_plague'),
(69075,'spell_lord_marrowgar_bone_storm'),
(70834,'spell_lord_marrowgar_bone_storm'),
(70835,'spell_lord_marrowgar_bone_storm'),
(70836,'spell_lord_marrowgar_bone_storm'),
(70157,'spell_sindragosa_ice_tomb'),
(70127,'spell_sindragosa_mystic_buffet'),
(72528,'spell_sindragosa_mystic_buffet'),
(72529,'spell_sindragosa_mystic_buffet'),
(72530,'spell_sindragosa_mystic_buffet'),
(69766,'spell_sindragosa_unchained_magic'),
(72219,'spell_festergut_gastric_bloat'),
(72551,'spell_festergut_gastric_bloat'),
(72552,'spell_festergut_gastric_bloat'),
(72553,'spell_festergut_gastric_bloat'),
(69558,'spell_rotface_unstable_explosion'),
(68981,'spell_lich_king_winter'),
(74270,'spell_lich_king_winter'),
(74271,'spell_lich_king_winter'),
(74272,'spell_lich_king_winter'),
(70534,'spell_vile_spirit_distance_check'),
(69110,'spell_ice_burst_distance_check'),
(72262,'spell_lich_king_quake'),
(71598,'spell_creature_permanent_feign_death'),
(71806,'spell_taldaram_glittering_sparks'),
(71718,'spell_taldaram_summon_flame_ball'),
(72040,'spell_taldaram_summon_flame_ball'),
(55891,'spell_taldaram_flame_ball_visual'),
(55947,'spell_taldaram_flame_ball_visual'),
(71756,'spell_taldaram_ball_of_inferno_flame'),
(72782,'spell_taldaram_ball_of_inferno_flame'),
(72783,'spell_taldaram_ball_of_inferno_flame'),
(72784,'spell_taldaram_ball_of_inferno_flame'),
(72080,'spell_valanar_kinetic_bomb'),
(72087,'spell_valanar_kinetic_bomb_knockback'),
(73001,'spell_blood_council_shadow_prison'),
(72999,'spell_blood_council_shadow_prison_damage'),
(69538,'spell_rotface_little_ooze_combine'),
(69553,'spell_rotface_large_ooze_combine'),
(69290,'spell_festergut_blighted_spores'),
(71222,'spell_festergut_blighted_spores'),
(73033,'spell_festergut_blighted_spores'),
(73034,'spell_festergut_blighted_spores');

-- ***_scripts table

UPDATE waypoint_scripts SET delay = 3 WHERE dataint = 38879 AND command = 15;
DELETE FROM `spell_scripts` WHERE id = 72429 AND command = 15;
INSERT INTO `spell_scripts` VALUE
('72429','0','3','15','72423','0','0','0','0','0','0');

SET @LIGHT_S_HAMMER := 70781;
SET @ORATORY_OF_THE_DAMNED := 70856;
SET @RAMPART_OF_SKULLS := 70857;
SET @DEATHBRINGER_S_RISE := 70858;
SET @UPPER_SPIRE := 70859;
SET @SINDRAGOSA_S_LAIR := 70861;
SET @FROZEN_THRONE := 70860;

-- Delete conditions (no longer valid)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@LIGHT_S_HAMMER,@ORATORY_OF_THE_DAMNED,@RAMPART_OF_SKULLS,@DEATHBRINGER_S_RISE,@UPPER_SPIRE,@SINDRAGOSA_S_LAIR,@FROZEN_THRONE);

-- Add target coords
DELETE FROM `spell_target_position` WHERE `id` IN (@LIGHT_S_HAMMER,@ORATORY_OF_THE_DAMNED,@RAMPART_OF_SKULLS,@DEATHBRINGER_S_RISE,@UPPER_SPIRE,@SINDRAGOSA_S_LAIR,@FROZEN_THRONE);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(@LIGHT_S_HAMMER,631,-17.0711,2211.47,30.0546,3.14159),
(@ORATORY_OF_THE_DAMNED,631,-503.593,2211.47,62.7621,3.14159),
(@RAMPART_OF_SKULLS,631,-615.146,2211.47,199.909,0.0),
(@DEATHBRINGER_S_RISE,631,-549.073,2211.29,539.223,0.0),
(@UPPER_SPIRE,631,4199.484,2769.323,351.3722,3.124139),
(@SINDRAGOSA_S_LAIR,631,4356.580,2565.75,220.402,4.71238),
(@FROZEN_THRONE,631,529.3969,-2124.66,1041.37,3.14159);

-- Event AI Thanks Heisei Project!
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (37868,36791,37863,37886,37934,38068,37698,36701);
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (37868,36791,37863,37886,37934,38068,37698,36701);
INSERT INTO `creature_ai_scripts` VALUES
('85021059','37868','0','0','100','7','15000','15000','27000','27000','11','71179','4','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Mana Void'),
('85021060','37868','0','0','100','25','15000','15000','27000','27000','11','71741','4','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Mana Void'),
('85021061','37868','0','0','100','3','10000','10000','18000','22000','11','70759','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021062','37868','0','0','100','9','10000','10000','18000','22000','11','71889','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021063','37868','0','0','100','5','10000','10000','18000','22000','11','72015','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021064','37868','0','0','100','17','10000','10000','18000','22000','11','72016','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021065','37868','0','0','100','31','18000','18000','28000','28000','11','70602','4','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Corruption'),
('85021066','38068','0','0','100','30','30000','30000','0','0','37','0','0','1','0','0','0','0','0','0','0','0', 'Mana Void - Self Destruct'),
('80021007','36791','0','0','100','7','8000','8000','22000','25000','11','69325','0','1','0','0','0','0','0','0','0','0','Blazing Skeleton - Casts Lay Waste'),
('80021008','36791','0','0','100','25','8000','8000','22000','25000','11','71730','0','1','0','0','0','0','0','0','0','0','Blazing Skeleton - Casts Lay Waste'),
('80021009','36791','0','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Stop Movement on Aggro'),
('80021010','36791','4','0','100','6','0','0','0','0','11','70754','1','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball and Set Phase 1 on Aggro'),
('80021011','36791','3','0','100','6','15','0','0','0','21','1','0','0','22','5','0','0','0','0','0','0','Blazing Skeleton - Start Movement and Set Phase 2 when Mana is at 15%'),
('80021012','36791','0','6','100','7','0','0','1500','3000','11','70754','1','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball above 15% Mana (Phase 1)'),
('80021013','36791','3','5','100','6','100','28','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
('80021014','36791','9','0','100','7','30','50','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Start Movement Beyond 30 Yards'),
('80021015','36791','7','0','100','6','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - On Evade set Phase to 0'),
('80021016','36791','0','0','100','24','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Stop Movement on Aggro'),
('80021017','36791','4','0','100','24','0','0','0','0','11','71748','1','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball and Set Phase 1 on Aggro'),
('80021018','36791','3','0','100','24','15','0','0','0','21','1','0','0','22','5','0','0','0','0','0','0','Blazing Skeleton - Start Movement and Set Phase 2 when Mana is at 15%'),
('80021019','36791','0','6','100','25','0','0','1500','3000','11','71748','1','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball above 15% Mana (Phase 1)'),
('80021020','36791','3','5','100','24','100','28','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
('80021021','36791','9','0','100','25','30','50','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Start Movement Beyond 30 Yards'),
('80021022','36791','7','0','100','24','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - On Evade set Phase to 0'),
('86021086','37863','4','0','100','30','0','0','0','0','11','70588','1','0','0','0','0','0','0','0','0','0','Suppresser - Cast Suppression'),
('82021033','37886','0','0','100','7','10000','11000','22000','28000','11','70633','4','0','0','0','0','0','0','0','0','0','Gluttonous Abomination - Casts Gut Spray'),
('82021034','37886','0','0','100','25','10000','11000','22000','28000','11','71283','4','0','0','0','0','0','0','0','0','0','Gluttonous Abomination - Casts Gut Spray'),
('82021035','37886','6','0','100','30','0','0','0','0','11','70675','0','2','0','0','0','0','0','0','0','0', 'Gluttonous Abomination - Casts on death Summon Rot Worm'),
('80021026','37934','2','0','100','7','10','0','12300','14900','11','70744','0','0','0','0','0','0','0','0','0','0','Blistering Zombie - Casts Acid Burst at 10% HP'),
('80021027','37934','2','0','100','25','10','0','12300','14900','11','71733','0','0','0','0','0','0','0','0','0','0','Blistering Zombie - Casts Acid Burst at 10% HP'),
('85021075','37698','2','0','100','6','25','0','0','0','11','72143','0','0','1','-106','0','0','0','0','0','0','Shambling Horror - Casts Enrage at 25% HP'),
('85021076','37698','2','0','100','24','25','0','0','0','11','72146','0','0','1','-106','0','0','0','0','0','0','Shambling Horror - Casts Enrage at 25% HP'),
('85021077','37698','0','0','100','7','7000','9000','15000','17000','11','72149','0','0','0','0','0','0','0','0','0','0','Shambling Horror - Casts Shockwave'),
('85021078','37698','0','0','100','25','7000','9000','15000','17000','11','73794','0','0','0','0','0','0','0','0','0','0','Shambling Horror - Casts Shockwave'),
('85021054','36701','0','0','100','7','10000','10000','25000','35000','11','69242','0','0','0','0','0','0','0','0','0','0','Raging Spirit - Cast Soul Shriek'),
('85021055','36701','0','0','100','25','10000','10000','25000','35000','11','73800','0','0','0','0','0','0','0','0','0','0','Raging Spirit - Cast Soul Shriek');

DELETE FROM script_texts WHERE entry <= -1665902 AND entry >= -1666080;
DELETE FROM script_texts WHERE entry <= -1810001 AND entry >= -1810032;

# 1
DELETE FROM script_texts WHERE `npc_entry` = 36612;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36612,-1631000,'This is the beginning AND the end, mortals. None may enter the master''s sanctum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Смертные, ваш путь закончится так и не начавшись! Никто не смеет входить  в Обитель Господина!',16950,1,0,0,'SAY_ENTER_ZONE'),
(36612,-1631001,'The Scourge will wash over this world as a swarm of death and destruction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Плеть накроет этот мир волной смерти и разрушения!',16941,1,0,0,'SAY_AGGRO'),
(36612,-1631002,'BONE STORM!',NULL,NULL, NULL,NULL,NULL,NULL,NULL,'ВИХРЬ КОСТЕЙ!',16946,1,0,0,'SAY_BONE_STORM'),
(36612,-1631003,'Bound by bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Костяная хватка!',16947,1,0,0, 'SAY_BONESPIKE_1'),
(36612,-1631004,'Stick Around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Постой-ка тут!',16948,1,0,0,'SAY_BONESPIKE_2'),
(36612,-1631005,'The only escape is death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Единственный выход - это СМЕРТЬ!',16949,1,0,0,'SAY_BONESPIKE_3'),
(36612,-1631006,'More bones for the offering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Кости, для жертвоприношений!',16942,1,0,0,'SAY_KILL_1'),
(36612,-1631007,'Languish in damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Сгинь в вечных муках!',16943,1,0,0,'SAY_KILL_2'),
(36612,-1631008,'I see... only darkness...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Я вижу... лишь тьму',16944,1,0,0,'SAY_DEATH'),
(36612,-1631009,'THE MASTER''S RAGE COURSES THROUGH ME!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Во мне бушует ярость господина!',16945,1,0,0,'SAY_BERSERK'),
(36612,-1631010,'Lord Marrowgar creates a whirling storm of bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Лорд Ребрад распадается, и его кости начинают вращаться',0,3,0,0,'SAY_BONE_STORM_EMOTE');

#2
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631028 AND -1631011;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36855,-1631011, 'You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17272,1,0,0, 'SAY_INTRO_1'),
(36855,-1631012, 'You can see through the fog that hangs over this world like a shroud, and grasp where true power lies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17273,1,0,0, 'SAY_INTRO_2'),
(36855,-1631013, 'Fix your eyes upon your crude hands: the sinew, the soft meat, the dark blood coursing within.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16878,1,0,0, 'SAY_INTRO_3'),
(36855,-1631014, 'It is a weakness; a crippling flaw.... A joke played by the Creators upon their own creations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17268,1,0,0, 'SAY_INTRO_4'),
(36855,-1631015, 'The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17269,1,0,0, 'SAY_INTRO_5'),
(36855,-1631016, 'Through our Master, all things are possible. His power is without limit, and his will unbending.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17270,1,0,0, 'SAY_INTRO_6'),
(36855,-1631017, 'Those who oppose him will be destroyed utterly, and those who serve -- who serve wholly, unquestioningly, with utter devotion of mind and soul -- elevated to heights beyond your ken.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17271,1,0,0, 'SAY_INTRO_7'),
(36855,-1631018, 'What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16868,1,0,0, 'SAY_AGGRO'),
(36855,-1631019, 'Enough! I see I must take matters into my own hands!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16877,1,0,0, 'SAY_PHASE_2'),
(36855,-1631020, 'Lady Deathwhisper''s Mana Barrier shimmers and fades away!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_PHASE_2_EMOTE'),
(36855,-1631021, 'You are weak, powerless to resist my will!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16876,1,0,0, 'SAY_DOMINATE_MIND'),
(36855,-1631022, 'Take this blessing and show these intruders a taste of our master''s power.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16873,1,0,0, 'SAY_DARK_EMPOWERMENT'),
(36855,-1631023, 'I release you from the curse of flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16874,1,0,0, 'SAY_DARK_TRANSFORMATION'),
(36855,-1631024, 'Arise and exult in your pure form!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16875,1,0,0, 'SAY_ANIMATE_DEAD'),
(36855,-1631025, 'Do you yet grasp of the futility of your actions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16869,1,0,0, 'SAY_KILL_1'),
(36855,-1631026, 'Embrace the darkness... Darkness eternal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16870,1,0,0, 'SAY_KILL_2'),
(36855,-1631027, 'This charade has gone on long enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16872,1,0,0, 'SAY_BERSERK'),
(36855,-1631028, 'All part of the masters plan! Your end is... inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16871,1,0,0, 'SAY_DEATH');

# 3
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1665919,'Thank the spirits for you, brothers and sisters. The Skybreaker has already left. Quickly now, to Orgrim''s Hammer! If you leave soon, you may be able to catch them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,''),
(0,-1665920,'This should be helpin''ya!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,''),
(0,-1665921,'Aka''Magosh, brave warriors. The alliance is in great number here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665922,'Captain Saurfang will be pleased to see you aboard Orgrim''s Hammer. Make haste, we will secure the area until you are ready for take-off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665923,'A screeching cry pierces the air above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665924,'A Spire Frostwyrm lands just before Orgrim''s Hammer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665925,'Rise up, sons and daughters of the Horde! Today we battle a hated enemy of the Horde! LOK''TAR OGAR! Kor''kron, take us out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665926,'What is that?! Something approaching in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665927,'ALLIANCE GUNSHIP! ALL HANDS ON DECK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665928,'Move yer jalopy or we''ll blow it out of the sky, orc! The Horde''s got no business here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665929,'You will know our business soon! KOR''KRON, ANNIHILATE THEM!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665930,'Marines, Sergeants, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665931,'You DARE board my ship? Your death will come swiftly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665932,'Riflemen, shoot faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665933,'Mortar team, reload!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665934,'We''re taking hull damage, get a sorcerer out here to shut down those cannons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665935,'The Alliance falter. Onward to the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665936,'Damage control! Put those fires out! You haven''t seen the last of the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665937,'Thank goodness you arrived when you did, heroes. Orgrim''s Hammer has already left. Quickly now, to The Skybreaker! If you leave soon, you may be able to catch them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665938,'This ought to help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665939,'Skybreaker Sorcerer summons a Skybreaker Battle Standard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665940,'You have my thanks. We were outnumbered until you arrived.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665941,'Captain Muradin is waiting aboard The Skybreaker. We''ll secure the area until you are ready for take off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665942,'Skybreaker infantry, hold position!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665943,'A screeching cry pierces the air above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665944,'A Spire Frostwyrm lands just before The Skybreaker. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665945,'Fire up the engines! We got a meetin with destiny, lads!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665946,'Hold on to yer hats!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665947,'What in the world is that? Grab me spyglass, crewman!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665948,'By me own beard! HORDE SAILIN IN FAST N HOT!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665949,'EVASIVE ACTION! MAN THE GUNS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665950,'Cowardly dogs! Ye blindsighted us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665951,'This is not your battle, dwarf. Back down or we will be forced to destroy your ship.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665952,'Not me battle? I dunnae who ye? think ye are, mister, but I got a score to settle with Arthas and yer not gettin in me way! FIRE ALL GUNS! FIRE! FIRE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665953,'Reavers, Sergeants, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665954,'What''s this then?! Ye won''t be takin this son o Ironforge''s vessel without a fight!.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665955,'Axethrowers, hurl faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665956,'Rocketeers, reload!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665957,'We''re taking hull damage, get a battle-mage out here to shut down those cannons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665958,'Don''t say I didn''t warn ya, scoundrels! Onward, brothers and sisters!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665959,'Captain Bartlett, get us out of here! We''re taken too much damage to stay afloat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

# 4
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631077 AND -1631029;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(37200,-1631029, 'Let''s get a move on then! Move ou...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16974,1,0,0, 'SAY_INTRO_ALLIANCE_1'),
(37813,-1631030, 'For every Horde soldier that you killed -- for every Alliance dog that fell, the Lich King''s armies grew. Even now the val''kyr work to raise your fallen as Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16701,1,0,0, 'SAY_INTRO_ALLIANCE_2'),
(37813,-1631031, 'Things are about to get much worse. Come, taste the power that the Lich King has bestowed upon me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16702,1,0,0, 'SAY_INTRO_ALLIANCE_3'),
(37200,-1631032, 'A lone orc against the might of the Alliance???',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16970,1,0,0, 'SAY_INTRO_ALLIANCE_4'),
(37200,-1631033, 'Charge!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16971,1,0,0, 'SAY_INTRO_ALLIANCE_5'),
(37813,-1631034, 'Dwarves...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16703,1,0,0, 'SAY_INTRO_ALLIANCE_6'),
(37813,-1631035, 'Deathbringer Saurfang immobilizes Muradin and his guards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_INTRO_ALLIANCE_7'),
(37187,-1631036, 'Kor''kron, move out! Champions, watch your backs. The Scourge have been...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17103,1,0,22, 'SAY_INTRO_HORDE_1'),
(37813,-1631037, 'Join me, father. Join me and we will crush this world in the name of the Scourge -- for the glory of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16704,1,0,0, 'SAY_INTRO_HORDE_2'),
(37187,-1631038, 'My boy died at the Wrath Gate. I am here only to collect his body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17097,0,0,397, 'SAY_INTRO_HORDE_3'),
(37813,-1631039, 'Stubborn and old. What chance do you have? I am stronger, and more powerful than you ever were.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16705,1,0,5, 'SAY_INTRO_HORDE_4'),
(37187,-1631040, 'We named him Dranosh. It means "Heart of Draenor" in orcish. I would not let the warlocks take him. My boy would be safe, hidden away by the elders of Garadar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17098,0,0,1, 'SAY_INTRO_HORDE_5'),
(37187,-1631041, 'I made a promise to his mother before she died; that I would cross the Dark Portal alone - whether I lived or died, my son would be safe. Untainted...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17099,0,0,1, 'SAY_INTRO_HORDE_6'),
(37187,-1631042, 'Today, I fulfill that promise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17100,0,0,397, 'SAY_INTRO_HORDE_7'),
(37187,-1631043, 'High Overlord Saurfang charges!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17104,2,0,53, 'SAY_INTRO_HORDE_8'),
(37813,-1631044, 'Pathetic old orc. Come then heroes. Come and face the might of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16706,1,0,15, 'SAY_INTRO_HORDE_9'),
(37813,-1631045, 'BY THE MIGHT OF THE LICH KING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16694,1,0,0, 'SAY_AGGRO'),
(37813,-1631046, 'The ground runs red with your blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16699,1,0,0, 'SAY_MARK_OF_THE_FALLEN_CHAMPION'),
(37813,-1631047, 'Feast, my minions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16700,1,0,0, 'SAY_BLOOD_BEASTS'),
(37813,-1631048, 'You are nothing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16695,1,0,0, 'SAY_KILL_1'),
(37813,-1631049, 'Your soul will find no redemption here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16696,1,0,0, 'SAY_KILL_2'),
(37813,-1631050, 'Deathbringer Saurfang goes into frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_FRENZY'),
(37813,-1631051, 'I have become...DEATH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16698,1,0,0, 'SAY_BERSERK'),
(37813,-1631052, 'I... Am... Released.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16697,1,0,0, 'SAY_DEATH'),
(37200,-1631053, 'Muradin Bronzebeard gasps for air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16975,2,0,0, 'SAY_OUTRO_ALLIANCE_1'),
(37200,-1631054, 'That was Saurfang''s boy - the Horde commander at the Wrath Gate. Such a tragic end...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16976,0,0,0, 'SAY_OUTRO_ALLIANCE_2'),
(37200,-1631055, 'What in the... There, in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16977,0,0,0, 'SAY_OUTRO_ALLIANCE_3'),
(    0,-1631056, 'A Horde Zeppelin flies up to the rise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_4'),
(37200,-1631057, 'Soldiers, fall in! Looks like the Horde are comin'' to take another shot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16978,1,0,0, 'SAY_OUTRO_ALLIANCE_5'),
(    0,-1631058, 'The Zeppelin docks, and High Overlord Saurfang hops out, confronting the Alliance soldiers and Muradin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_6'),
(37200,-1631059, 'Don''t force me hand, orc. We can''t let ye pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16972,0,0,0, 'SAY_OUTRO_ALLIANCE_7'),
(37187,-1631060, 'Behind you lies the body of my only son. Nothing will keep me from him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17094,0,0,0, 'SAY_OUTRO_ALLIANCE_8'),
(37200,-1631061, 'I... I can''t do it. Get back on yer ship and we''ll spare yer life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16973,0,0,0, 'SAY_OUTRO_ALLIANCE_9'),
(    0,-1631062, 'A mage portal from Stormwind appears between the two and Varian Wrynn and Jaina Proudmoore emerge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_10'),
(37879,-1631063, 'Stand down, Muradin. Let a grieving father pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16690,0,0,0, 'SAY_OUTRO_ALLIANCE_11'),
(37187,-1631064, 'High Overlord Saurfang walks over to his son and kneels before his son''s body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_12'),
(37187,-1631065, '[Orcish] No''ku kil zil''nok ha tar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17096,0,0,0, 'SAY_OUTRO_ALLIANCE_13'),
(37187,-1631066, 'Higher Overlord Saurfang picks up the body of his son and walks over towards Varian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_14'),
(37187,-1631067, 'I will not forget this... kindness. I thank you, Highness',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17095,0,0,0, 'SAY_OUTRO_ALLIANCE_15'),
(37879,-1631068, 'I... I was not at the Wrath Gate, but the soldiers who survived told me much of what happened. Your son fought with honor. He died a hero''s death. He deserves a hero''s burial.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16691,0,0,0, 'SAY_OUTRO_ALLIANCE_16'),
(37188,-1631069, 'Lady Jaina Proudmoore cries.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16651,2,0,18, 'SAY_OUTRO_ALLIANCE_17'),
(37879,-1631070, 'Jaina? Why are you crying?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16692,0,0,0, 'SAY_OUTRO_ALLIANCE_18'),
(37188,-1631071, 'It was nothing, your majesty. Just... I''m proud of my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16652,0,0,0, 'SAY_OUTRO_ALLIANCE_19'),
(37879,-1631072, 'Bah! Muradin, secure the deck and prepare our soldiers for an assault on the upper citadel. I''ll send out another regiment from Stormwind.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16693,0,0,0, 'SAY_OUTRO_ALLIANCE_20'),
(37200,-1631073, 'Right away, yer majesty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16979,0,0,0, 'SAY_OUTRO_ALLIANCE_21'),
(37187,-1631074, 'High Overlord Saurfang coughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17105,2,0,0, 'SAY_OUTRO_HORDE_1'),
(37187,-1631075, 'High Overlord Saurfang weeps over the corpse of his son.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17106,2,0,15, 'SAY_OUTRO_HORDE_2'),
(37187,-1631076, 'You will have a proper ceremony in Nagrand next to the pyres of your mother and ancestors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17101,0,0,0, 'SAY_OUTRO_HORDE_3'),
(37187,-1631077, 'Honor, young heroes... no matter how dire the battle... Never forsake it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17102,0,0,0, 'SAY_OUTRO_HORDE_4');

# 5
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631090 AND -1631078;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36626,-1631078, 'NOOOO! You kill Stinky! You pay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16907,1,0,0, 'SAY_STINKY_DEAD'),
(36626,-1631079, 'Fun time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16901,1,0,0, 'SAY_AGGRO'),
(36678,-1631080, 'Just an ordinary gas cloud. But watch out, because that''s no ordinary gas cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17119,1,0,432, 'SAY_GASEOUS_BLIGHT'),
(36626,-1631081, 'Festergut farts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16911,2,0,0, 'EMOTE_GAS_SPORE'),
(36626,-1631082, 'Festergut releases Gas Spores!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'EMOTE_WARN_GAS_SPORE'),
(36626,-1631083, 'Gyah! Uhhh, I not feel so good...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16906,1,0,0, 'SAY_PUNGENT_BLIGHT'),
(36626,-1631084, 'Festergut begins to cast |cFFFF7F00Pungent Blight!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'EMOTE_WARN_PUNGENT_BLIGHT'),
(36626,-1631085, 'Festergut vomits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_PUNGENT_BLIGHT'),
(36626,-1631086, 'Daddy, I did it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16902,1,0,0, 'SAY_KILL_1'),
(36626,-1631087, 'Dead, dead, dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16903,1,0,0, 'SAY_KILL_2'),
(36626,-1631088, 'Fun time over!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16905,1,0,0, 'SAY_BERSERK'),
(36626,-1631089, 'Da ... Ddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16904,1,0,0, 'SAY_DEATH'),
(36678,-1631090, 'Oh, Festergut. You were always my favorite. Next to Rotface. The good news is you left behind so much gas, I can practically taste it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17124,1,0,0, 'SAY_FESTERGUT_DEATH');

# 6
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631103 AND -1631091;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631091,'Great news, everyone! The slime is flowing again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17126,1,0,1,'SAY_ROTFACE_OOZE_FLOOD1'),
(36678,-1631092,'Good news, everyone! I''ve fixed the poison slime pipes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17123,1,0,1,'SAY_ROTFACE_OOZE_FLOOD2'),
(36678,-1631093,'Terrible news, everyone, Rotface is dead! But great news everyone, he left behind plenty of ooze for me to use! Whaa...? I''m a poet, and I didn''t know it? Astounding!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17146,1,0,0,'SAY_ROTFACE_DEATH'),
(36627,-1631094,'What? Precious? Noooooooooo!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16993,1,0,0,'SAY_PRECIOUS_DIES'),
(36627,-1631095,'WEEEEEE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16986,1,0,0,'SAY_AGGRO'),
(36627,-1631096,'%s begins to cast Slime Spray!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_SLIME_SPRAY'),
(36627,-1631097,'Icky sticky.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16991,1,0,0,'SAY_SLIME_SPRAY'),
(36627,-1631098,'|TInterface\Icons\spell_shadow_unstableaffliction_2.blp:16|t%s begins to cast |cFFFF0000Unstable Ooze Explosion!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPLOSION'),
(36627,-1631099,'I think I made an angry poo-poo. It gonna blow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16992,1,0,0,'SAY_UNSTABLE_EXPLOSION'),
(36627,-1631100,'Daddy make toys out of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16988,1,0,0,'SAY_KILL_1'),
(36627,-1631101,'I brokes-ded it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16987,1,0,0,'SAY_KILL_2'),
(36627,-1631102,'Sleepy Time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16990,1,0,0,'SAY_BERSERK'),
(36627,-1631103,'Bad news daddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16989,1,0,0,'SAY_DEATH');

# 7
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631114 AND -1631104;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631104,'Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17114,1,0,0,'SAY_AGGRO'),
(36678,-1631105,'%s begins to cast Unstable Experiment!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPERIMENT'),
(36678,-1631106,'Two oozes, one room! So many delightful possibilities...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17122,1,0,0,'SAY_PHASE_TRANSITION_HEROIC'),
(36678,-1631107,'Hmm. I don''t feel a thing. Whaa...? Where''d those come from?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17120,1,0,15,'SAY_TRANSFORM_1'),
(36678,-1631108,'Tastes like... Cherry! Oh! Excuse me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17121,1,0,15,'SAY_TRANSFORM_2'),
(36678,-1631109,'|TInterface\Icons\inv_misc_herb_evergreenmoss.blp:16|t%s cast |cFF00FF00Malleable Goo!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_MALLEABLE_GOO'),
(36678,-1631110,'%s cast |cFFFF7F00Choking Gas Bomb!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_CHOKING_GAS_BOMB'),
(36678,-1631111,'Hmm... Interesting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17115,1,0,0,'SAY_KILL_1'),
(36678,-1631112,'That was unexpected!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17116,1,0,0,'SAY_KILL_2'),
(36678,-1631113,'Great news, everyone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17118,1,0,0,'SAY_BERSERK'),
(36678,-1631114,'Bad news, everyone! I don''t think I''m going to make it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17117,1,0,0,'SAY_DEATH');

# 8
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631139 AND -1631115;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(38004,-1631115,'Foolish mortals. You thought us defeated so easily? The San''layn are the Lich King''s immortal soldiers! Now you shall face their might combined!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16795,1,0,1,'SAY_INTRO_1'),
(38004,-1631116,'Rise up, brothers, and destroy our enemies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16796,1,0,0,'SAY_INTRO_2'),
(37972,-1631117,'Such wondrous power! The Darkfallen Orb has made me INVINCIBLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16727,1,0,0,'SAY_KELESETH_INVOCATION'),
(37972,-1631118,'Invocation of Blood jumps to Prince Keleseth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_KELESETH_INVOCATION'),
(37972,-1631119,'Blood will flow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16728,1,0,0,'SAY_KELESETH_SPECIAL'),
(37972,-1631120,'Were you ever a threat?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16723,1,0,0,'SAY_KELESETH_KILL_1'),
(37972,-1631121,'Truth is found in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16724,1,0,0,'SAY_KELESETH_KILL_2'),
(37972,-1631122,'%s cackles maniacally!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16726,2,0,0,'EMOTE_KELESETH_BERSERK'),
(37972,-1631123,'My queen... they come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16725,1,0,0,'SAY_KELESETH_DEATH'),
(37973,-1631124,'Tremble before Taldaram, mortals, for the power of the orb flows through me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16857,1,0,0,'SAY_TALDARAM_INVOCATION'),
(37973,-1631125,'Invocation of Blood jumps to Prince Taldaram!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TALDARAM_INVOCATION'),
(37973,-1631126,'Delight in the pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16858,1,0,0,'SAY_TALDARAM_SPECIAL'),
(37973,-1631127,'Inferno Flames speed toward $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TALDARAM_FLAME'),
(37973,-1631128,'Worm food.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16853,1,0,0,'SAY_TALDARAM_KILL_1'),
(37973,-1631129,'Beg for mercy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16854,1,0,0,'SAY_TALDARAM_KILL_2'),
(37973,-1631130,'%s laughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16856,2,0,0,'EMOTE_TALDARAM_BERSERK'),
(37973,-1631131,'%s gurgles and dies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16855,2,0,0,'EMOTE_TALDARAM_DEATH'),
(37970,-1631132,'Naxxanar was merely a setback! With the power of the orb, Valanar will have his vengeance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16685,1,0,0,'SAY_VALANAR_INVOCATION'),
(37970,-1631133,'Invocation of Blood jumps to Prince Valanar!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_VALANAR_INVOCATION'),
(37970,-1631134,'My cup runneth over.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16686,1,0,0,'SAY_VALANAR_SPECIAL'),
(37970,-1631135,'%s begins casting Empowered Schock Vortex!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_VALANAR_SHOCK_VORTEX'),
(37970,-1631136,'Dinner... is served.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16681,1,0,0,'SAY_VALANAR_KILL_1'),
(37970,-1631137,'Do you see NOW the power of the Darkfallen?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16682,1,0,0,'SAY_VALANAR_KILL_2'),
(37970,-1631138,'BOW DOWN BEFORE THE SAN''LAYN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16684,1,0,0,'SAY_VALANAR_BERSERK'),
(37970,-1631139,'...why...?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16683,1,0,0,'SAY_VALANAR_DEATH');

# 9
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(37955,-1666054,'You have made an... unwise... decision.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16782,1,0,0,''),
(37955,-1666055,'Just a taste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16783,1,0,0,''),
(37955,-1666056,'Know my hunger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16784,1,0,0,''),
(37955,-1666057,'SUFFER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16786,1,0,0,''),
(37955,-1666058,'Can you handle this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16787,1,0,0,''),
(37955,-1666059,'Yes... feed my precious one! You''re mine now! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16790,1,0,0,''),
(37955,-1666060,'Here it comes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16788,1,0,0,''),
(37955,-1666061,'THIS ENDS NOW!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16793,1,0,0,''),
(37955,-1666062,'But... we were getting along... so well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16794,1,0,0,'');

# 10
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36789,-1666063,'Heroes, lend me your aid! I... I cannot hold them off much longer! You must heal my wounds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17064,1,0,0,''),
(36789,-1666064,'I have opened a portal into the Emerald Dream. Your salvation lies within, heroes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17068,1,0,0,''),
(36789,-1666065,'My strength is returning! Press on, heroes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17070,1,0,0,''),
(36789,-1666066,'I will not last much longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17069,1,0,0,''),
(36789,-1666067,'Forgive me for what I do! I... cannot... stop... ONLY NIGHTMARES REMAIN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17072,1,0,0,''),
(36789,-1666068,'A tragic loss...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17066,1,0,0,''),
(36789,-1666069,'FAILURES!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17067,1,0,0,''),
(36789,-1666070,'I am renewed! Ysera grants me the favor to lay these foul creatures to rest!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17071,1,0,0,'');

# 11
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36853,-1666071,'You are fools to have come to this place! The icy winds of Northrend will consume your souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17007,1,0,0,''),
(36853,-1666072,'Suffer, mortals, as your pathetic magic betrays you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17014,1,0,0,''),
(36853,-1666073,'Can you feel the cold hand of death upon your heart?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17013,1,0,0,''),
(36853,-1666074,'Aaah! It burns! What sorcery is this?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17015,1,0,0,''),
(36853,-1666075,'Your incursion ends here! None shall survive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17012,1,0,0,''),
(36853,-1666076,'Now feel my master''s limitless power and despair!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17016,1,0,0,''),
(36853,-1666077,'Perish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17008,1,0,0,''),
(36853,-1666078,'A flaw of mortality...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17009,1,0,0,''),
(36853,-1666079,'Enough! I tire of these games!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17011,1,0,0,''),
(36853,-1666080,'Free...at last...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17010,1,0,0,'');

# 12
INSERT INTO script_texts (entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound,type,language,emote,comment)VALUES
(-1810001, 'So...the Light''s vaunted justice has finally arrived. Shall I lay down Frostmourne and throw myself at your mercy, Fordring?',null,null,null,null,null,null,null,null,17349,1,0,0,''),
(-1810002, 'We will grant you a swift death, Arthas. More than can be said for the thousands you''ve tortured and slain.',null,null,null,null,null,null,null,null,17390,1,0,0,''),
(-1810003, 'You will learn of that first hand. When my work is complete, you will beg for mercy -- and I will deny you. Your anguished cries will be testament to my unbridled power.',null,null,null,null,null,null,null,null,17350,1,0,0,''),
(-1810004, 'So be it. Champions, attack!',null,null,null,null,null,null,null,null,17391,1,0,0,''),
(-1810005, 'I''ll keep you alive to witness the end, Fordring. I would not want the Light''s greatest champion to miss seeing this wretched world remade in my image.',null,null,null,null,null,null,null,null,17351,1,0,0,''),
(-1810006, 'Come then champions, feed me your rage!',null,null,null,null,null,null,null,null,17352,1,0,0,''),
(-1810007, 'I will freeze you from within until all that remains is an icy husk!',null,null,null,null,null,null,null,null,17369,1,0,0,''),
(-1810008, 'Apocalypse!',null,null,null,null,null,null,null,null,17371,1,0,0,''),
(-1810009, 'Bow down before your lord and master!',null,null,null,null,null,null,null,null,17372,1,0,0,''),
(-1810010, 'Hope wanes!',null,null,null,null,null,null,null,null,17363,1,0,0,''),
(-1810011, 'The end has come!',null,null,null,null,null,null,null,null,17364,1,0,0,''),
(-1810012, 'Face now your tragic end!',null,null,null,null,null,null,null,null,17365,1,0,0,''),
(-1810013, 'No question remains unanswered. No doubts linger. You are Azeroth''s greatest champions! You overcame every challenge I laid before you. My mightiest servants have fallen before your relentless onslaught, your unbridled fury... Is it truly righteousness that drives you? I wonder.',null,null,null,null,null,null,null,null,17353,1,0,0,''),
(-1810014, 'You trained them well, Fordring. You delivered the greatest fighting force this world has ever known... right into my hands -- exactly as I intended. You shall be rewarded for your unwitting sacrifice.',null,null,null,null,null,null,null,null,17355,1,0,0,''),
(-1810015, 'Watch now as I raise them from the dead to become masters of the Scourge. They will shroud this world in chaos and destruction. Azeroth''s fall will come at their hands -- and you will be the first to die.',null,null,null,null,null,null,null,null,17356,1,0,0,''),
(-1810016, 'I delight in the irony.',null,null,null,null,null,null,null,null,17357,1,0,0,''),
(-1810017, 'LIGHT, GRANT ME ONE FINAL BLESSING. GIVE ME THE STRENGTH... TO SHATTER THESE BONDS!',null,null,null,null,null,null,null,null,17392,1,0,0,''),
(-1810018, 'Impossible...',null,null,null,null,null,null,null,null,17358,1,0,0,''),
(-1810020, 'No more, Arthas! No more lives will be consumed by your hatred!',null,null,null,null,null,null,null,null,17393,1,0,0,''),
(-1810021, 'Free at last! It is over, my son. This is the moment of reckoning.',null,null,null,null,null,null,null,null,17397,1,0,0,''),
(-1810022, 'The Lich King must fall!',null,null,null,null,null,null,null,null,17389,1,0,0,''),
(-1810023, 'Rise up, champions of the Light!',null,null,null,null,null,null,null,null,17398,1,0,0,''),
(-1810024, 'Now I stand, the lion before the lambs... and they do not fear.',null,null,null,null,null,null,null,null,17361,1,0,0,''),
(-1810025, 'They cannot fear.',null,null,null,null,null,null,null,null,17362,1,0,0,''),
(-1810026, 'Argh... Frostmourne, obey me!',null,null,null,null,null,null,null,null,17367,1,0,0,''),
(-1810027, 'Frostmourne hungers...',null,null,null,null,null,null,null,null,17366,1,0,0,''),
(-1810028, 'Frostmourne feeds on the soul of your fallen ally!',null,null,null,null,null,null,null,null,17368,1,0,0,''),
(-1810029, 'Val''kyr, your master calls!',null,null,null,null,null,null,null,null,17373,1,0,0,''),
(-1810030, 'Watch as the world around you collapses!',null,null,null,null,null,null,null,null,17370,1,0,0,''),
(-1810031, 'You gnats actually hurt me! Perhaps I''ve toyed with you long enough, now taste the vengeance of the grave!',null,null,null,null,null,null,null,null,17359,1,0,0,''),
(-1810032, 'The Lich King begins to cast Defile',null,null,null,null,null,null,null,null,0,3,0,0,'');

# Locale

# Леди

UPDATE `script_texts` SET `content_loc8`='Вы здесь потому, что наделены особым знанием: вы понимаете, что на мир пало проклятье слепоты!' WHERE `entry`=-1631011;
UPDATE `script_texts` SET `content_loc8`='Вам удалось сквозь пелену лжи разглядеть источник истиной силы!' WHERE `entry`=-1631012;
UPDATE `script_texts` SET `content_loc8`='Посмотрите на свои руки, задумайтесь над нелепостью их строения!' WHERE `entry`=-1631013;
UPDATE `script_texts` SET `content_loc8`='Кожа, мускулы, кровь, что пульсирует в жилах, все это говорит о вашем не совершенстве, вашей слабостью. Создатели жестоко пошутили над вами!' WHERE `entry`=-1631014;
UPDATE `script_texts` SET `content_loc8`='Чем раньше вы осознаете собственную ущербность, тем скорее выберете иной путь!' WHERE `entry`=-1631015;
UPDATE `script_texts` SET `content_loc8`='Для нашего господина нет ничего невозможного, его сила не знает границ, ничто не может сломить его волю!' WHERE `entry`=-1631016;
UPDATE `script_texts` SET `content_loc8`='Тот, кто откажется повиноваться будет уничтожен. Тот же, кто будет служить ему верой и правдой, достигнет таких высот, о которых вы не в силах даже помыслить!' WHERE `entry`=-1631017;
UPDATE `script_texts` SET `content_loc8`='Как вы смеете ступать в эти священные покои, это место станет вашей могилой!' WHERE `entry`=-1631018;
UPDATE `script_texts` SET `content_loc8`='Довольно! Пришла пора взять все в свои руки!' WHERE `entry`=-1631019;
UPDATE `script_texts` SET `content_loc8`='Прими это благословение и покажи чужакам мощь нашего господина!' WHERE `entry`=-1631022;
UPDATE `script_texts` SET `content_loc8`='Я освобождаю тебя от проклятья плоти, мой верный слуга!' WHERE `entry`=-1631023;
UPDATE `script_texts` SET `content_loc8`='Восстань и обрети истинную форму!' WHERE `entry`=-1631024;
UPDATE `script_texts` SET `content_loc8`='Ты не в силах противится моей воле!' WHERE `entry`=-1631021;
UPDATE `script_texts` SET `content_loc8`='Мне надоел этот фарс!' WHERE `entry`=-1631027;
UPDATE `script_texts` SET `content_loc8`='На все воля господина...Ваша смерть неизбежна...' WHERE `entry`=-1631028;
UPDATE `script_texts` SET `content_loc8`='Вы осознали бессмысленность своих действий?' WHERE `entry`=-1631025;
UPDATE `script_texts` SET `content_loc8`='Ступай во тьму... Вечную тьму!' WHERE `entry`=-1631026;

# Саурфанг

UPDATE `script_texts` SET `content_loc8`='ВО ИМЯ КОРОЛЯ-ЛИЧА!' WHERE `entry`=-1631045;
UPDATE `script_texts` SET `content_loc8`='Земля обагрится вашей кровью!' WHERE `entry`=-1631046;
UPDATE `script_texts` SET `content_loc8`='Веселитесь, слуги мои!' WHERE `entry`=-1631047;
UPDATE `script_texts` SET `content_loc8`='Ты ничтожество!' WHERE `entry`=-1631048;
UPDATE `script_texts` SET `content_loc8`='Твоя душа не обретет покоя!' WHERE `entry`=-1631049;
UPDATE `script_texts` SET `content_loc8`='Я... Cтал СМЕРТЬЮ!' WHERE `entry`=-1631051;
UPDATE `script_texts` SET `content_loc8`='Я... Освободился.' WHERE `entry`=-1631052;
UPDATE `script_texts` SET `content_loc8`='Все павшие войны Орды. Все дохлые псы Альянса. Все пополнят Армию Короля-лича. Даже сейчас Валь`киры воскрешают ваших покойников, чтобы те стали частью Плети!' WHERE `entry`=-1631030;
UPDATE `script_texts` SET `content_loc8`='Сейчас всё будет ещё хуже. Идите сюда, я покажу вам какой силой меня наделил Король-лич!' WHERE `entry`=-1631031;
UPDATE `script_texts` SET `content_loc8`='Ха-ха-ха! Дворфы...' WHERE `entry`=-1631034;
UPDATE `script_texts` SET `content_loc8`='Присоеденись ко мне, отец. Перейди на мою сторону, и вместе мы разрушим этот мир во имя Плети и во славу Короля-лича!' WHERE `entry`=-1631037;
UPDATE `script_texts` SET `content_loc8`='Старый упрямец. У тебя нет шансов! Я сильнее и могущественнее, чем ты можешь представить!' WHERE `entry`=-1631039;
UPDATE `script_texts` SET `content_loc8`='Жалкий старик! Ну что ж, герои. Хотите узнать, сколь могущественна Плеть?' WHERE `entry`=-1631044;
UPDATE `script_texts` SET `content_loc8`='Один орк против мощи Альянса?' WHERE `entry`=-1631032;
UPDATE `script_texts` SET `content_loc8`='Кор''крон, выдвигайтесь! Герои, будьте начеку. Плеть только что...' WHERE `entry`=-1631036;
UPDATE `script_texts` SET `content_loc8`='Мой мальчик погиб у Врат Гнева. Я здесь, чтобы забрать его тело.' WHERE `entry`=-1631038;
UPDATE `script_texts` SET `content_loc8`='Мы назвали его Дранош - на орочьем это значит "Сердце Дренора". Я бы не позволил чернокнижникам збрать его. Он был бы в безопасности в Гарадаре под защитой старейшин.' WHERE `entry`=-1631040;
UPDATE `script_texts` SET `content_loc8`='Я пообещал его матери, когда она умирала, что пройду через Темный Портал один. неважно, умер бы я или выжил - мой сын остался бы цел. И чист...' WHERE `entry`=-1631041;
UPDATE `script_texts` SET `content_loc8`='Сегодня я исполню это обещание.' WHERE `entry`=-1631042;
UPDATE `script_texts` SET `content_loc8`='Мы похороним тебя как подобает, в Награнде, рядом с матерью и предками...' WHERE `entry`=-1666002;
UPDATE `script_texts` SET `content_loc8`='Помните о чести, герои... какой бы жестокой не была битва... никогда не трекайтесь от неё.' WHERE `entry`=-1666003;
UPDATE `script_texts` SET `content_loc8`='Мурадин защищай палубу, и приготовь солдат к штурму верхних этажей Цитадели. Я вызову из Штормграда подкрепление.' WHERE `entry`=-1665998;
UPDATE `script_texts` SET `content_loc8`='Отступи, Мурадин. Позволь пройти скорбящему отцу.' WHERE `entry`=-1631063;
UPDATE `script_texts` SET `content_loc8`='Я... Я не был у Врат Гнева. Но многое узнал от выживших солдат. Твой сын сражался достойно. Он пал смертью героя. И заслуживает погребения с почестями.' WHERE `entry`=-1631068;
UPDATE `script_texts` SET `content_loc8`='Джайна, почему ты плачешь?' WHERE `entry`=-1631070;

# Гниломорд

UPDATE `script_texts` SET `content_loc8`='Что? Прелесть? Нееееееееееееет!!!' WHERE `entry`=-1631094;
UPDATE `script_texts` SET `content_loc8`='УУИИИИИИ!' WHERE `entry`=-1631095;
UPDATE `script_texts` SET `content_loc8`='Отличные новости, народ! Слизь снова потелка!' WHERE `entry`=-1631091;
UPDATE `script_texts` SET `content_loc8`='Отличные новости, народ! Я починил трубы для подачи ядовитой слизи!' WHERE `entry`=-1631092;
UPDATE `script_texts` SET `content_loc8`='Папочка сделает новые игрушки из вас!' WHERE `entry`=-1631100;
UPDATE `script_texts` SET `content_loc8`='Я это заломал...' WHERE `entry`=-1631101;
UPDATE `script_texts` SET `content_loc8`='Папочка, не огорчайся…' WHERE `entry`=-1631103;
UPDATE `script_texts` SET `content_loc8`='Я сделал очень злую каку! Сейчас взорвется!' WHERE `entry`=-1631099;

# Тухлопуз

UPDATE `script_texts` SET `content_loc8`='Тухлопуз, ты всегда был моим любимчиком, как и Гниломорд! Молодец, что оставил столько газа. Я его даже чувствую!' WHERE `entry`=-1631090;
UPDATE `script_texts` SET `content_loc8`='Нет! Вы убили Вонючку! Сейчас получите!' WHERE `entry`=-1631078;
UPDATE `script_texts` SET `content_loc8`='Повеселимся?' WHERE `entry`=-1631079;
UPDATE `script_texts` SET `content_loc8`='Что-то мне нехорошо...' WHERE `entry`=-1631083;
UPDATE `script_texts` SET `content_loc8`='Веселью конец!' WHERE `entry`=-1631088;
UPDATE `script_texts` SET `content_loc8`='Па-па...' WHERE `entry`=-1631089;
UPDATE `script_texts` SET `content_loc8`='Мер-твец, мер-твец, мер-твец!' WHERE `entry`=-1631087;
UPDATE `script_texts` SET `content_loc8`='Папочка! У меня получилось!' WHERE `entry`=-1631086;
UPDATE `script_texts` SET `content_loc8`='Это обычное облаго газа, только будьте осторожны, не такое уж оно и обычное!' WHERE `entry`=-1631080;

# Профессор Мерзоцоид

UPDATE `script_texts` SET `content_loc8`='Отличные новости, народ! Я усовершенствовал штамм чумы, которая уничтожит весь Азерот!' WHERE `entry`=-1666026;
UPDATE `script_texts` SET `content_loc8`='Хм, что-то я ничего не чувствую. Что?! Это еще откуда?' WHERE `entry`=-1666029;
UPDATE `script_texts` SET `content_loc8`='На вкус, как вишенка! ОЙ! Извиниите!' WHERE `entry`=-1666030;
UPDATE `script_texts` SET `content_loc8`='Плохие новости, народ… Похоже, у меня ничего не выйдет…' WHERE `entry`=-1666034;
UPDATE `script_texts` SET `content_loc8`='Герои, вы должны мне помочь! Мои силы... на исходе. Залечите мои раны...' WHERE `entry`=-1666063;
UPDATE `script_texts` SET `content_loc8`='Я открыла портал в Изумруднй Сон. Там вы найдете спасение, герои.' WHERE `entry`=-1666064;
UPDATE `script_texts` SET `content_loc8`='Силы возвращаются ко мне. Герои, ещё немного!' WHERE `entry`=-1666065;
UPDATE `script_texts` SET `content_loc8`='Я долго не продержусь!' WHERE `entry`=-1666066;
UPDATE `script_texts` SET `content_loc8`='Прискорбная потеря...' WHERE `entry`=-1666068;
UPDATE `script_texts` SET `content_loc8`='Простите меня! Я... не могу... оста... ВСЁ ВО ВЛАСТИ КОШМАРА!' WHERE `entry`=-1666067;
UPDATE `script_texts` SET `content_loc8`='НЕУДАЧНИКИ!' WHERE `entry`=-16660690;
UPDATE `script_texts` SET `content_loc8`='Я ИЗЛЕЧИЛАСЬ! Изера, даруй мне силу покончить с этими нечистивыми тварями.' WHERE `entry`=-1666070;

# Синдрагоса

UPDATE `script_texts` SET `content_loc8`='Глупцы, зачем вы сюда явились! Ледяные ветра Нордскола унесут ваши души!' WHERE `entry`=-1666071;
UPDATE `script_texts` SET `content_loc8`='Трепещите, смертные, ибо ваша жалкая магия теперь бессильна!' WHERE `entry`=-1666072;
UPDATE `script_texts` SET `content_loc8`='Вы чувствуете?' WHERE `entry`=-1666073;
UPDATE `script_texts` SET `content_loc8`='Ааах! Жжется! Что это за магия?!' WHERE `entry`=-1666074;
UPDATE `script_texts` SET `content_loc8`='Сейчас вы почуствуете всю мощь нашего господина!' WHERE `entry`=-1666076;
UPDATE `script_texts` SET `content_loc8`='Погибни!' WHERE `entry`=-1666077;
UPDATE `script_texts` SET `content_loc8`='Удел смертных...' WHERE `entry`=-1666078;
UPDATE `script_texts` SET `content_loc8`='Довольно! Я устала от этих игр!' WHERE `entry`=-1666079;
UPDATE `script_texts` SET `content_loc8`='Наконец-то...свободна...' WHERE `entry`=-1666080;

# КОРОЛЬ-ЛИЧ

UPDATE `script_texts` SET `content_loc8`='Неужели прибыли наконец хваленые силы Света? Мне бросить Ледяную Скорбь и сдаться на твою милось, Фордринг?' WHERE `entry`=-1810001;
UPDATE `script_texts` SET `content_loc8`='Мы даруем тебе быструю смерть, Артас. Более быструю, чем ты заслуживаешь за то, что замучал и погубил десятки тысяч душ' WHERE `entry`=-1810002;
UPDATE `script_texts` SET `content_loc8`='Ты пройдешь через эти мучения сам. И будешь МОЛИТЬ о пощаде, но я не буду слушать. Твои отчаянные крики послужат доказательством моей безграничной мощи.' WHERE `entry`=-1810003;
UPDATE `script_texts` SET `content_loc8`='Да будет так. Чемпионы, в атаку!' WHERE `entry`=-1810004;
UPDATE `script_texts` SET `content_loc8`='Я оставлю тебя в живых, чтобы ты увидел финал. Не могу допустить, чтобы величайший служитель Света пропустил рождение МОЕГО МИРА.' WHERE `entry`=-1810005;
UPDATE `script_texts` SET `content_loc8`='Я проморожу вас насквозь - и вы разлетитесь на ледяные осколки.' WHERE `entry`=-1810007;
UPDATE `script_texts` SET `content_loc8`='КОНЕЦ СВЕТА!' WHERE `entry`=-1810008;
UPDATE `script_texts` SET `content_loc8`='Склонись перед своим господином и повелителем!.' WHERE `entry`=-1810009;
UPDATE `script_texts` SET `content_loc8`='Надежда тает!' WHERE `entry`=-1810010;
UPDATE `script_texts` SET `content_loc8`='Пришел КОНЕЦ!' WHERE `entry`=-1810011;
UPDATE `script_texts` SET `content_loc8`='Встречайте трагический финал!' WHERE `entry`=-1810012;
UPDATE `script_texts` SET `content_loc8`='Сомнений нет, вы величайшие герои Азерота! Вы преодолели все препятствия, которые я воздвиг перед вами. Сильнейшие из моих слуг пали под вашим натиском, сгорели в пламени вашей ярости!' WHERE `entry`=-1810013;
UPDATE `script_texts` SET `content_loc8`='Ты отлично их обучил, Фордринг! ' WHERE `entry`=-1810014;
UPDATE `script_texts` SET `content_loc8`='Смотри, как я буду всокрешать их, и превращать в воинов Плети! Они повергнут этот мир в пучину хаоса. Азерот падет от их рук! и ты станешь первой жертвой.' WHERE `entry`=-1810015;
UPDATE `script_texts` SET `content_loc8`='Мне по душе эта ирония.' WHERE `entry`=-1810016;
UPDATE `script_texts` SET `content_loc8`='СВЕТ, ДАРУЙ МНЕ ПОСЛЕДНЕЕ БЛАГОСЛОВЛЕНИЕ... ДАЙ МНЕ СИЛЫ РАЗБИТЬ ЭТИ ОКОВЫ!' WHERE `entry`=-1810017;
UPDATE `script_texts` SET `content_loc8`='Невозможно...' WHERE `entry`=-1810018;
UPDATE `script_texts` SET `content_loc8`='Аах! Вы меня и правда ранили. Я слишком долго с вами играл! Испытайте на себе Возмездие СМЕРТИ!' WHERE `entry`=-1666080;
UPDATE `script_texts` SET `content_loc8`='И вот я стою как лев пред агнцами... И не дрожат они.' WHERE `entry`=-1810024;
UPDATE `script_texts` SET `content_loc8`='Им неведом страх.' WHERE `entry`=-1810025;
UPDATE `script_texts` SET `content_loc8`='Ну же герои, в вашей ярости моя сила!' WHERE `entry`=-1810006;
UPDATE `script_texts` SET `content_loc8`='Ледяная Скорбь жаждет крови!' WHERE `entry`=-1810027;
UPDATE `script_texts` SET `content_loc8`='Ледяная Скорбь поглотит душу вашего товарища.' WHERE `entry`=-1810028;
UPDATE `script_texts` SET `content_loc8`='Смотрите как мир рушится вокруг вас!' WHERE `entry`=-1810030;
UPDATE `script_texts` SET `content_loc8`='Валь''кира, твой гсоподин зовет!' WHERE `entry`=-1810029;
UPDATE `script_texts` SET `content_loc8`='Хватит, Артас! Твоя ненависть не заберет больше ни одной жизни!' WHERE `entry`=-1810020;
UPDATE `script_texts` SET `content_loc8`='Вы пришли, что бы вершить суд над Артасом? Что бы уничтожить Короля-лича?' WHERE `entry`=-1666080;
UPDATE `script_texts` SET `content_loc8`='Вы не должны оказаться во власти Ледяной Скорби. Иначе, как и я, будете навек порабощены этим проклятым клинком!' WHERE `entry`=-1666080;
UPDATE `script_texts` SET `content_loc8`='Помогите мне уничтожить эти истерзанные души! Вместе мы вытянем силу из Ледяной Скорби и ослабим Короля-лича!' WHERE `entry`=-1666080;
UPDATE `script_texts` SET `content_loc8`='Наконец я свободен! Всё кончено, сын мой... Настал час расплаты!' WHERE `entry`=-1810021;
UPDATE `script_texts` SET `content_loc8`='Поднимитесь, Воины Света!' WHERE `entry`=-1810023;
UPDATE `script_texts` SET `content_loc8`='Король-лич падет!' WHERE `entry`=-1810022;

DELETE FROM `spell_proc_event` WHERE `entry` IN (70107);
INSERT INTO `spell_proc_event` VALUES (70107, 0x08, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000054, 0x00000000, 0, 20, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (69762);
INSERT INTO `spell_proc_event` VALUES (69762, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 101, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72178);
INSERT INTO `spell_proc_event` VALUES (72178, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00055510, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72176);
INSERT INTO `spell_proc_event` VALUES (72176, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00051154, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (70602);
INSERT INTO `spell_proc_event` VALUES (70602, 0x20, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x000AAA20, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (71494);
INSERT INTO `spell_proc_event` VALUES (71494, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 101, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72176);
INSERT INTO `spell_proc_event` VALUES (72176, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00051154, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72178);
INSERT INTO `spell_proc_event` VALUES (72178, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00055510, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (71604);
INSERT INTO `spell_proc_event` VALUES (71604, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (70001);
INSERT INTO `spell_proc_event` VALUES (70001, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (71971);
INSERT INTO `spell_proc_event` VALUES (71971, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72256);
INSERT INTO `spell_proc_event` VALUES (72256, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72408);
INSERT INTO `spell_proc_event` VALUES (72408, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (70672);
INSERT INTO `spell_proc_event` VALUES (70672, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72455);
INSERT INTO `spell_proc_event` VALUES (72455, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72832);
INSERT INTO `spell_proc_event` VALUES (72832, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (72833);
INSERT INTO `spell_proc_event` VALUES (72833, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);

--Рубиновое святилище RS
DELETE FROM `script_texts` WHERE `entry` <= -1752008 AND `entry` >= -1752016;
DELETE FROM `script_texts` WHERE `entry` <= -1752001 AND `entry` >= -1752006;
DELETE FROM `script_texts` WHERE `entry` <= -1752017 AND `entry` >= -1752036;

INSERT INTO `script_texts` (`entry`, `content_default`, `npc_entry`, `content_loc3`, `sound`, `type`, `language`) VALUES
('-1752008', 'Help! I am trapped within this tree! I require aid!', '0', '', '17490', '1', '0'),        
('-1752009', 'Thank you! I could not have held out for much longer.... A terrible thing has happened here.', '0', '', '17491', '1', '0'),       
('-1752010', 'We believed the Sanctum was well-fortified, but we were not prepared for the nature of this assault.', '0', '', '17492', '0', '0'),       
('-1752011', 'The Black dragonkin materialized from thin air, and set upon us before we could react.', '0', '', '17493', '0', '0'),     
('-1752012', 'We did not stand a chance. As my brethren perished around me, I managed to retreat here and bar the entrance.', '0', '', '17494', '0', '0'),      
('-1752013', 'They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the Sanctum.', '0', '', '17495', '0', '0'),     
('-1752014', 'The commander of the forces on the ground here is a cruel brute named Zarithrian, but I fear there are greater powers at work.', '0', '', '17496', '0', '0'),     
('-1752015', 'In their initial assault, I caught a glimpse of their true leader, a fearsome full-grown twilight dragon.', '0', '', '17497', '0', '0'),  
('-1752016', 'I know not the extent of their plans, heroes, but I know this: They cannot be allowed to succeed!', '0', '', '17498', '0', '0'),

( -1752001, "Ah, the entertainment has arrived.", 0, "", 17520, 1, 0),
( -1752002, "Baltharus leaves no survivors!", 0, "", 17521, 1, 0),
( -1752003, "This world has enough heroes.", 0, "", 17522, 1, 0),
( -1752004, "I..Didn''t saw...that coming...", 0, "", 17523, 1, 0),
( -1752005, "Twice the pain and half the fun.", 0, "", 17524, 1, 0),
( -1752006, "Your power wanes, ancient one.... Soon you will join your friends.", 0, "", 17525, 1, 0),

( -1752017, "Alexstrasza has chosen capable allies... A pity that I must END YOU!", 0, "", 17512, 1, 0),
( -1752018, "You thought you stood a chance?", 0, "", 17513, 1, 0),
( -1752019, "It''s for the best.", 0, "", 17514, 1, 0),
( -1752020, "HALION! I...", 0, "", 17515, 1, 0),
( -1752021, "Turn them to ashes, minions!", 0, "", 17516, 1, 0),

( -1752022, "You will sssuffer for this intrusion!", 0, "", 17528, 1, 0),
( -1752023, "As it should be...", 0, "", 17529, 1, 0),
( -1752024, "Halion will be pleased", 0, "", 17530, 1, 0),
( -1752025, "Hhrr...Grr..", 0, "", 17531, 1, 0),
( -1752026, "Burn in the master's flame!", 0, "", 17532, 1, 0),

(-1752027, 'Insects! You''re too late. The Ruby Sanctum is lost.',NULL,NULL,17499,0,0),
(-1752028, 'Your world teeters on the brink of annihilation. You will ALL bear witness to the coming of a new age of DESTRUCTION!',NULL,NULL,17500,0,0),
(-1752029, 'Another hero falls.',NULL,NULL,17501,0,0),
(-1752030, 'Hahahahaha.',NULL,NULL,17502,0,0),
(-1752031, 'Relish this victory, mortals, for it will be your last! This world will burn with the master''s return!',NULL,NULL,17503,0,0),
(-1752032, 'Not good enough.',NULL,NULL,17504,0,0),
(-1752033, 'The heavens burn!',NULL,NULL,17505,0,0),
(-1752034, 'Beware the shadow!',NULL,NULL,17506,0,0),
(-1752035, 'You will find only suffering within the realm of twilight! Enter if you dare!',NULL,NULL,17507,0,0),
(-1752036, 'I am the light and the darkness! Cower, mortals, before the herald of Deathwing!',NULL,NULL,17508,0,0);

UPDATE `instance_template` SET `script`='instance_ruby_sanctum' WHERE (`map`='724');
UPDATE `creature_template` SET `ScriptName` = 'boss_baltharus' WHERE `entry` = '39751';
UPDATE `creature_template` SET `ScriptName` = 'boss_baltharus_summon' WHERE `entry` = '39899';
UPDATE `creature_template` SET `ScriptName` = 'npc_xerestrasza' WHERE `entry` = '40429';
UPDATE `creature_template` SET `ScriptName` = 'boss_zarithrian' WHERE `entry` = '39746';
UPDATE `creature_template` SET `ScriptName` = 'boss_ragefire' WHERE `entry` = '39747';
UPDATE `creature_template` SET `ScriptName` = 'boss_halion' WHERE `entry`= '39863';


DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-74562') AND (`spell_effect`='74610');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-74792') AND (`spell_effect`='74800');
INSERT INTO `spell_linked_spell` VALUES (-74562, 74610, 0, 'Fiery Combustion removed -> Combustion');
INSERT INTO `spell_linked_spell` VALUES (-74792, 74800, 0, 'Soul Consumption removed -> Consumption');

DELETE FROM `creature` WHERE `id`=39863 AND `map`=724;
INSERT INTO `creature` VALUES (null,39863,724,15,1,0,0,3144.93,527.233,72.8887,0.110395,300,0,0,11156000,0,0,0);

REPLACE `spell_script_names` SET `ScriptName` = 'spell_halion_portal', `spell_id`=74812;

UPDATE `gameobject_template` SET `data10`=74807 WHERE `entry`=202794;
UPDATE `gameobject_template` SET `data10`=74812 WHERE `entry`=202796;


