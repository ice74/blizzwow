--Античит AC2
DELETE FROM `trinity_string` WHERE `entry` IN (12001,12002,12003,12004,12005,12006);
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
INSERT INTO creature VALUES  (336364,33289,571,1,1,0,0,5136.74,-83.3769,347.326,1.44434,300,0,0,12600,3994,0,0,0,0,0);
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

--ОЛО WG
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


/* Temp removed gameobject stopping you getting to the relic
* 60070 - [Wintergrasp Keep Collision Wall X:5396.209961 Y:2840.010010 Z:432.268005 MapId:571
* 60476 - [Doodad_WG_Keep_Door01_collision01 X:5397.109863 Y:2841.540039 Z:425.901001 MapId:571]*/
DELETE FROM gameobject WHERE id IN ('194323', '194162');

/* Titan Relic remove */
DELETE FROM `gameobject` WHERE `id`=192829;

/* Towers */
UPDATE `gameobject_template` SET `faction` = 0, `flags` = 6553632 WHERE `entry` IN (190356,190357,190358);

/* Teleport WG SPELLs*/
REPLACE INTO `spell_target_position` VALUES ('59096', '571', '5325.06', '2843.36', '409.285', '3.20278');
REPLACE INTO `spell_target_position` VALUES ('58632', '571', '5097.79', '2180.29', '365.61', '2.41');
REPLACE INTO `spell_target_position` VALUES ('58633', '571', '5026.80', '3676.69', '362.58', '3.94');

/* Defender's Portal Activate Proper Spell */
REPLACE INTO `spell_linked_spell` VALUES ('54640','54643','0','Defender\'s Portal Activate Proper Spell');

/*For wg antifly */
REPLACE INTO `spell_area` VALUES ('58730', '4197', '0', '0', '0', '0', '0', '2', '1');

/*Spirit healer FIX */
UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

/* Creature template */
UPDATE creature_template SET faction_A = '1802', faction_H = '1802' WHERE entry IN (30499,28312,28319);
UPDATE creature_template SET faction_A = '1801', faction_H = '1801' WHERE entry IN (30400,32629,32627);
UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

/* WG scriptname */
REPLACE INTO `outdoorpvp_template` VALUES ('7', 'outdoorpvp_wg', 'Wintergrasp');
UPDATE `creature_template` SET `ScriptName` = 'npc_demolisher_engineerer' WHERE `entry` IN (30400,30499);

/* spell target for build vehicles */
REPLACE INTO `conditions` VALUES ('13', '0', '56663', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56575', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61408', '0', '18', '1', '27852', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '56661', '0', '18', '1', '27852', '0', '0', '', null);

/* Workshop */
UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` IN (192028,192029,192030,192031,192032,192033);

/*WG Spell area Data */
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

-- Canon de la canonniиre de l'Alliance
-- http://fr.wowhead.com/npc=34929
UPDATE `creature_template` SET `spell1`=69495,`VehicleId`='452' WHERE `entry` =34929;

-- Canon de la canonniиre de la Horde
-- http://fr.wowhead.com/npc=34935
UPDATE `creature_template` SET `spell1`=68825,`VehicleId`='453' WHERE `entry` =34935;

-- Canon du donjon
-- http://fr.wowhead.com/npc=34944
UPDATE `creature_template` SET `VehicleId`=160,`spell1`=67452,`spell2`='68169' WHERE `entry` =34944;

-- Catapulte
-- http://fr.wowhead.com/npc=34793
UPDATE `creature_template` SET `VehicleId`=438,`spell1`=66218,`spell2`=66296 WHERE `entry`=34793;

-- Dйmolisseur
-- http://fr.wowhead.com/npc=34775
UPDATE `creature_template` SET `VehicleId`='509',`spell1`='67442',`spell2`='68068' WHERE `entry` =34775;

-- Engin de siиge
-- http://fr.wowhead.com/npc=34776
UPDATE `creature_template` SET `VehicleId`=447,`spell1`=67816,`spell2`=69502 WHERE `entry`=34776;

-- Engin de siиge
-- http://fr.wowhead.com/npc=35069
UPDATE `creature_template` SET `VehicleId`=436,`spell1`=67816,`spell2`=69502 WHERE `entry`=35069;

-- Lanceur de glaive
-- http://fr.wowhead.com/npc=34802
UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=34802;

-- Lanceur de glaive
-- http://fr.wowhead.com/npc=35273
UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=35273;

-- Tourelle de flammes
-- http://fr.wowhead.com/npc=34778

UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =34778;
-- Tourelle de flammes
-- http://fr.wowhead.com/npc=36356
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36356;

-- Tourelle de siиge
-- http://fr.wowhead.com/npc=34777
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=34777;

-- Tourelle de siиge
-- http://fr.wowhead.com/npc=36355
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36355;

-- Catapult speed
UPDATE creature_template SET `speed_run`=2.428571,`speed_walk`=2.8 WHERE `entry`=34793;

-- Overlord Agmar &   script
UPDATE creature_template SET `ScriptName`='boss_isle_of_conquest' WHERE `entry` IN (34924,34922);
	
INSERT IGNORE `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
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

INSERT IGNORE `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(66548, 66550, 0, 'Isle of Conquest (OUT>IN)'),
(66549, 66550, 0, 'Isle of Conquest (IN>OUT)'),
(66550, -66549, 2, 'Isle of Conquest Teleport (OUT>IN) Debuff limit'),
(66550, -66548, 2, 'Isle of Conquest Teleport (IN>OUT) Debuff limit');


-- Alliance Gunship Cannon
-- http://www.wowhead.com/npc=34929
UPDATE `creature_template` SET `spell1`=66518 WHERE `entry` =34929;
UPDATE `creature_template` SET `spell1`=69495 WHERE `entry` =35410;

-- Horde Gunship Cannon
-- http://www.wowhead.com/npc=34935
-- непонятно почему `VehicleId`='453' пока убрал
-- спелл 66529 может быть кривой
UPDATE `creature_template` SET `spell1`=66529 WHERE `entry` =34935;
UPDATE `creature_template` SET `spell1`=68825 WHERE `entry` =35427;

-- Keep Cannon
-- http://www.wowhead.com/npc=34944
-- непонятно почему `VehicleId`=160 пока убрал
UPDATE `creature_template` SET `spell1`=68170,`spell2`='66541' WHERE `entry` =34944;
UPDATE `creature_template` SET `spell1`=67452,`spell2`='68169' WHERE `entry` =35429;

-- Catapult
-- http://www.wowhead.com/npc=34793
-- `VehicleId`=438 убрал
-- на вовхеде нет героик спелов
UPDATE `creature_template` SET `spell1`=66218,`spell2`=66296 WHERE `entry`=34793;
UPDATE `creature_template` SET `spell1`=66218,`spell2`=66296 WHERE `entry`=35413;

-- Demolisher
-- http://www.wowhead.com/npc=34775
-- убрал `VehicleId`='509'
UPDATE `creature_template` SET `spell1`='67440',`spell2`='67441' WHERE `entry` =34775;
UPDATE `creature_template` SET `spell1`='68068',`spell2`='67442' WHERE `entry` =35415;

-- Siege Engine
-- http://www.wowhead.com/npc=34776
-- `VehicleId`=447 убрал
UPDATE `creature_template` SET `spell1`=67796,`spell2`=67797 WHERE `entry`=34776;
UPDATE `creature_template` SET `spell1`=67816,`spell2`=69502 WHERE `entry`=35431;

-- Siege Engine
-- http://www.wowhead.com/npc=35069
-- `VehicleId`=436, убрал 
UPDATE `creature_template` SET `spell1`=67796,`spell2`=67797 WHERE `entry`=35069;
UPDATE `creature_template` SET `spell1`=67816,`spell2`=69502 WHERE `entry`=35433;

-- Glaive Thrower
-- http://www.wowhead.com/npc=34802
-- `VehicleId`=447 убрал
UPDATE `creature_template` SET `spell1`=66456,`spell2`=67195 WHERE `entry`=34802;
UPDATE `creature_template` SET `spell1`=68827,`spell2`=69515 WHERE `entry`=35419;

-- Glaive Thrower
-- http://www.wowhead.com/npc=35273
-- `VehicleId`=447, убрал
UPDATE `creature_template` SET `spell1`=67034,`spell2`=67195 WHERE `entry`=35273;
UPDATE `creature_template` SET `spell1`=68826,`spell2`=69515 WHERE `entry`=35421;

-- Flame Turret
-- http://www.wowhead.com/npc=34778
-- нет героик спела
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =34778;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =35417;

-- Flame Turret
-- http://www.wowhead.com/npc=36356
-- нет героик спела
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36356;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36358;

-- Siege Turret
-- http://www.wowhead.com/npc=34777
-- нет героик спела
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=34777;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=35436;

-- Siege Turret
-- http://www.wowhead.com/npc=36355
-- нет героик спела
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36355;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36357;

DELETE FROM `creature` WHERE `guid` IN (250194,250214,250212,250210,250208,250206,250203,250198,250196,250182,250182,250180,250186);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(250194, 23472, 628, 3, 1, 0, 0, 1139.92, -780.212, 48.6757, 3.16908, 300, 0, 0, 4120, 0, 0, 0),
(250214, 22515, 628, 3, 1, 0, 0, 323.214, -884.536, 48.9155, 1.59435, 300, 0, 0, 4120, 0, 0, 0),
(250212, 22515, 628, 3, 1, 0, 0, 325.953, -782.401, 48.9163, 4.65741, 300, 0, 0, 4120, 0, 0, 0),
(250210, 22515, 628, 3, 1, 0, 0, 393.258, -858.941, 48.9161, 3.22484, 300, 0, 0, 4120, 0, 0, 0),
(250208, 22515, 628, 3, 1, 0, 0, 1233.08, -840.021, 48.9176, 1.51268, 300, 0, 0, 4120, 0, 0, 0),
(250206, 22515, 628, 3, 1, 0, 0, 1162.9, -746.146, 48.6285, 6.1536, 300, 0, 0, 4120, 0, 0, 0),
(250203, 22515, 628, 3, 1, 0, 0, 1235.15, -689.807, 49.1079, 1.52132, 300, 0, 0, 4120, 0, 0, 0),
(250198, 23472, 628, 3, 1, 0, 0, 1235.61, -863.124, 48.9713, 4.7171, 300, 0, 0, 4120, 0, 0, 0),
(250196, 23472, 628, 3, 1, 0, 0, 1236.6, -663.616, 47.8887, 3.00572, 300, 0, 0, 4120, 0, 0, 0),
(250182, 23472, 628, 3, 1, 0, 0, 324.262, -745.282, 49.4923, 1.55901, 300, 0, 0, 4120, 0, 0, 0),
(250180, 23472, 628, 3, 1, 0, 0, 311.937, -918.894, 48.6856, 4.76736, 300, 0, 0, 4120, 0, 0, 0),
(250186, 23472, 628, 3, 1, 0, 0, 430.61, -857.491, 48.198, 0.074609, 300, 0, 0, 4120, 0, 0, 0);

--Арена даларана
UPDATE `gameobject_template` SET `flags` = '36' WHERE `entry` =192642 LIMIT 1 ;
UPDATE `gameobject_template` SET `flags` = '36' WHERE `entry` =192643 LIMIT 1 ;
UPDATE `battleground_template` SET `MinPlayersPerTeam` = '0', `MaxPlayersPerTeam` = '2' WHERE `id` =10 LIMIT 1 ;
DELETE FROM `disables` WHERE `entry` = 10 ;
UPDATE `gameobject_template` SET `flags` = '36' WHERE `entry` =192642 LIMIT 1 ;
UPDATE `gameobject_template` SET `flags` = '36' WHERE `entry` =192643 LIMIT 1 ;
UPDATE `battleground_template` SET `MinPlayersPerTeam` = '0', `MaxPlayersPerTeam` = '2' WHERE `id` =10 LIMIT 1 ;
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

--Испытание чемпиона
UPDATE `instance_template` SET `script`='instance_trial_of_the_champion' WHERE `map`=650;
UPDATE `creature_template` SET `ScriptName`='npc_announcer_toc5' WHERE `entry`IN (35004,35005);

-- Moturas
DELETE FROM `vehicle_accessory` WHERE `entry` in (35491,33299,33418,33409,33300,33408,33301,33414,33297,33416,33298);
INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(35491,35451,0,0, 'Black Knight'),
(33299,35323,0,1, 'Darkspear Raptor'),
(33418,35326,0,1, 'Silvermoon Hawkstrider'),
(33409,35314,0,1, 'Orgrimmar Wolf'),
(33300,35325,0,1, 'Thunder Bluff Kodo'),
(33408,35329,0,1, 'Ironforge Ram'),
(33301,35331,0,1, 'Gnomeregan Mechanostrider'),
(33414,35327,0,1, 'Forsaken Warhorse'),
(33297,35328,0,1, 'Stormwind Steed'),
(33416,35330,0,1, 'Exodar Elekk'),
(33298,35332,0,1, 'Darnassian Nightsaber');

-- Arreglo de doble montura YTDB  y grнmpola de valeroso mбs otros spells http://es.wowhead.com/search?q=Gr%C3%ADmpola+de+Valeroso
-- Addons
-- Argent
DELETE FROM `creature_template_addon` WHERE `entry` IN (35309, 35310, 35305, 35306, 35307, 35308, 35119, 35518, 34928, 35517);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(35309, 1, '63501 0'),
(35310, 1, '63501 0'),
(35305, 1, '63501 0'),
(35306, 1, '63501 0'),
(35307, 1, '63501 0'),
(35308, 1, '63501 0'),
(35119, 1, '63501 0'),
(35518, 1, '63501 0'),
(34928, 1, '63501 0'),
(35517, 1, '63501 0');
-- Faction_champ
DELETE FROM `creature_template_addon` WHERE `entry` IN (34701, 34657, 34705, 35570, 35569, 35332,35330,33299,35328,35327,35331,35329,35325,35314,35326,35323, 35572, 35571, 34703, 34702, 35617);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(35323, 1, '63399 0 62852 0 64723 0'),
(35570, 1, '63399 0 62852 0 64723 0'),
(35326, 1, '63403 0 62852 0 64723 0'),
(35569, 1, '63403 0 62852 0 64723 0'),
(35314, 1, '63433 0 62852 0 64723 0'),
(35572, 1, '63433 0 62852 0 64723 0'),
(35325, 1, '63436 0 62852 0 64723 0'),
(35571, 1, '63436 0 62852 0 64723 0'),
(35329, 1, '63427 0 62852 0 64723 0'),
(34703, 1, '63427 0 62852 0 64723 0'),
(35331, 1, '63396 0 62852 0 64723 0'),
(34702, 1, '63396 0 62852 0 64723 0'),
(35327, 1, '63430 0 62852 0 64723 0'),
(35617, 1, '63430 0 62852 0 64723 0'),
(35328, 1, '62594 0 62852 0 64723 0'),
(34705, 1, '62594 0 62852 0 64723 0'),
(35330, 1, '63423 0 62852 0 64723 0'),
(34701, 1, '63423 0 62852 0 64723 0'),
(35332, 1, '63406 0 62852 0 64723 0'),
(34657, 1, '63406 0 62852 0 64723 0');

-- Textos originales.
DELETE FROM `script_texts` WHERE `entry` <= -1999926 and `entry` >= -1999956;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1999926, 'Coming out of the gate Grand Champions other faction.  ' ,0,0,0,1, 'SAY_START' ),
(0,-1999927, 'Good work! You can get your award from Crusader\'s Coliseum chest!.  ' ,0,1,0,1, 'Win' ),
(0,-1999928, 'You spoiled my grand entrance. Rat.' ,16256,1,0,5, 'SAY_AGGRO' ),
(0,-1999929, 'Did you honestly think an agent if the Kich King would be bested on the field of your pathetic little tournament?' ,16257,1,0,5, 'SAY_AGGRO_1' ),
(0,-1999930, 'I have come to finish my task ' ,16258,1,0,5, 'SAY_AGGRO_2' ),
(0,-1999931, 'This farce ends here!' ,16259,1,0,5, 'SAY_AGGRO_3' ),
(0,-1999932, '[Zombie]Brains.... .... ....' ,0,1,0,5, 'SAY_SLAY' ),
(0,-1999933, 'My roting flash was just getting in the way!' ,16262,1,0,5, 'SAY_DEATH_1' ),
(0,-1999934, 'I have no need for bones to best you!' ,16263,1,0,5, 'SAY_DEATH_2' ),
(0,-1999935, 'No! I must not fail...again...' ,16264,1,0,5, 'SAY_DEATH_3' ),
(0,-1999936, 'What\'s that. up near the rafters ?' ,0,1,0,5, 'detected' ),
(0,-1999937, 'Please change your weapon! Next battle will be start now!' ,0,3,0,5, 'nx' ),
(0,-1999939, 'Excellent work!' ,0,1,0,1, 'work' ),
(0,-1999940, 'Coming out of the gate Crusader\'s Coliseum Champion.' ,0,0,0,1, 'SAY_START3' ),
(0,-1999941, 'Excellent work! You are win Argent champion!' ,0,3,0,0, 'win' ),
(0,-1999942, 'The Sunreavers are proud to present their representatives in this trial by combat.' ,0,0,0,1, 'an1' ),
(0,-1999943, 'Welcome, champions. Today, before the eyes of your leeders and peers, you will prove youselves worthy combatants.' ,0,0,0,1, 'an2' ),
(0,-1999944, 'Fight well, Horde! Lok\'tar Ogar!' ,0,1,0,5, 'Thrall' ),
(0,-1999945, 'Finally, a fight worth watching.' ,0,1,0,5, 'Garrosh' ),
(0,-1999946, 'I did not come here to watch animals tear at each other senselessly, Tirion' ,0,1,0,5, 'King' ),
(0,-1999947, 'You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.' ,0,1,0,5, 'Hightlord' ),
(0,-1999948, 'Will tought! You next challenge comes from the Crusade\'s own ranks. You will be tested against their consederable prowess.' ,0,1,0,5, 'Hightlord2' ),
(0,-1999949, 'You may begin!' ,0,0,0,5, 'text' ),
(0,-1999950, 'Well, then. Let us begin.' ,0,1,0,5, 'pal agro' ),
(0,-1999951, 'Take this time to consider your past deeds.' ,16248,1,0,5, 'palsum' ),
(0,-1999952, 'What is the meaning of this?' ,0,1,0,5, 'dk_hightlord' ),
(0,-1999953, 'No...I\'m still too young' ,0,1,0,5, 'die' ),
(0,-1999954, 'Excellent work! You are win Argent champion!' ,0,3,0,0, 'win' );


-- actualizaciуn nueva de todos los npc relacionado a prueba del campeуn
-- Update mob's stats
-- Memory's Stats
-- Health, mana, vehicle id, etc...
-- Equipment
-- Faction for Vehicle
DELETE FROM `creature_template` WHERE `entry` IN 
(33297, 33298, 33299, 33300, 33301, 33408, 33409, 33414, 33416, 33418, 34657, 34658, 34701, 34702, 34703, 34705, 34928, 34942, 35028, 35029, 
35030, 35031, 35032, 35033, 35034, 35035, 35036, 35037, 35038, 35039, 35040, 35041, 35042, 35043, 35044, 35045, 35046, 35047, 35048, 35049, 
35050, 35051, 35052, 35119, 0000, 0000, 0000, 0000, 0000, 0000, 35314, 35323, 35325, 35326, 35327, 35328, 35329, 35330, 35331, 35332, 
35451, 35490, 35517, 35518, 35519, 35520, 35521, 35522, 35523, 35524, 35525, 35527, 35528, 35529, 35530, 35531, 35532, 35533, 35534, 35535, 
35536, 35537, 35538, 35539, 35541, 35542, 35543, 35544, 35545, 35564, 35568, 35569, 35570, 35571, 35572, 35590, 35617, 35633, 35634, 35635, 
35636, 35637, 35638, 35640, 35641, 35644, 35717, 35768, 36082, 36083, 36084, 36085, 36086, 36087, 36088, 36089, 36090, 36091, 36558);


INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
('33297','0','0','0','0','0','28912','0','0','0','Stormwind Steed','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('33298','0','0','0','0','0','29256','0','0','0','Darnassian Nightsaber','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11723'),
('33299','0','0','0','0','0','29261','0','0','0','Darkspear Raptor','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33300','0','0','0','0','0','29259','0','0','0','Thunder Bluff Kodo','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33301','0','0','0','0','0','28571','0','0','0','Gnomeregan Mechanostrider','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('33408','0','0','0','0','0','29258','0','0','0','Ironforge Ram','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('33409','0','0','0','0','0','29260','0','0','0','Orgrimmar Wolf','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33414','0','0','0','0','0','29257','0','0','0','Forsaken Warhorse','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33416','0','0','0','0','0','29255','0','0','0','Exodar Elekk','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11403'),
('33418','0','0','0','0','0','29262','0','0','0','Silvermoon Hawkstrider','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('34657','36086','0','0','0','0','28735','0','28735','0','Jaelyne Evensong','Grand Champion of Darnassus','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2095','617297499','0','boss_hunter_toc5','1'),
('34658','0','0','0','0','0','9991','0','0','0','Jaelyne Evensong\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('34701','36083','0','0','0','0','28736','0','28736','0','Colosos','Grand Champion of the Exodar','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67529','67530','67528','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2096','617297499','0','boss_shaman_toc5','1'),
('34702','36082','0','0','0','0','28586','0','28586','0','Ambrose Boltspark','Grand Champion of Gnomeregan','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','64','0','0','0','0','0','0','0','0','0','66044','66042','66045','66043','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','0','617297499','0','boss_mage_toc5','1'),
('34703','36087','0','0','0','0','28564','0','28564','0','Lana Stouthammer','Grand Champion of Ironforge','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67709','67706','67701','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','441','1','2093','617297499','0','boss_rouge_toc5','1'),
('34705','36088','0','0','0','0','28560','0','28560','0','Marshal Jacob Alerius','Grand Champion of Stormwind','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2092','617297499','0','boss_warrior_toc5','1'),
('34928','35517','0','0','0','0','29490','0','29490','0','Argent Confessor Paletress','','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','14.5','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66546','66536','66515','66537','0','0','0','0','0','0','0','0','','0','3','8','20','1','0','0','0','0','0','0','0','151','1','235','805257215','0','boss_paletress','1'),
('34942','35531','0','0','0','0','29525','0','29525','0','Memory of Hogger','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35028','35541','0','0','0','0','29536','0','29536','0','Memory of VanCleef','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35029','35538','0','0','0','0','29556','0','29556','0','Memory of Mutanus','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35030','35530','0','0','0','0','29537','0','29537','0','Memory of Herod','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35031','35536','0','0','0','0','29562','0','29562','0','Memory of Lucifron','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','66619','66552','0','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35032','0','0','0','0','0','14992','0','14992','0','Memory of Thunderaan','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35033','35521','0','0','0','0','14367','0','14367','0','Memory of Chromaggus','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35034','35528','0','0','0','0','29540','0','29540','0','Memory of Hakkar','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35035','0','0','0','0','0','29888','0','0','0','Barrett Ramsey','Argent Coliseum Master','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','768','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','11723'),
('35036','35543','0','0','0','0','29541','0','29541','0','Memory of Vek\'nilash','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35037','35535','0','0','0','0','29542','0','29542','0','Memory of Kalithresh','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66552','66620','66619','0','0','0','0','0','0','0','0','0','','0','3','29.2313','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35038','35537','0','0','0','0','29543','0','29543','0','Memory of Malchezaar','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35039','35527','0','0','0','0','18698','0','18698','0','Memory of Gruul','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35040','35542','0','0','0','0','29545','0','0','0','Memory of Vashj','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35041','35520','0','0','0','0','29546','0','29546','0','Memory of Archimonde','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35042','35533','0','0','0','0','29547','0','29547','0','Memory of Illidan','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35043','35523','0','0','0','0','18699','0','18699','0','Memory of Delrissa','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35044','35525','0','0','0','0','23428','0','23428','0','Memory of Entropius','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35045','35534','0','0','0','0','29558','0','29558','0','Memory of Ingvar','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35046','35522','0','0','0','0','29549','0','29549','0','Memory of Cyanigosa','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35047','35524','0','0','0','0','26644','0','26644','0','Memory of Eck','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35048','35539','0','0','0','0','21401','0','21401','0','Memory of Onyxia','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35049','35529','0','0','0','0','29557','0','29557','0','Memory of Heigan','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35050','35532','0','0','0','0','29185','0','29185','0','Memory of Ignis','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','5','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35051','35544','0','0','0','0','28548','0','28548','0','Memory of Vezax','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35052','35519','0','0','0','0','29553','0','29553','0','Memory of Algalon','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','4','72','0','0','0','0','0','0','0','0','0','67679','67678','67677','0','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35119','35518','0','0','0','0','29616','0','29616','0','Eadric the Pure','Grand Champion of the Argent Crusade','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','14.5','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66865','66863','66867','66935','0','0','0','0','0','0','0','0','','0','3','42.5','20','1','0','0','0','0','0','0','0','151','1','834','805257215','0','boss_eadric','1'),
('35314','0','0','0','0','0','29090','0','0','0','Orgrimmar Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35323','0','0','0','0','0','28702','0','0','0','Sen\'jin Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35325','0','0','0','0','0','28864','0','0','0','Thunder Bluff Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','35325','0','0','0','0','0','0','0','0','63010','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','12340'),
('35326','0','0','0','0','0','28862','0','0','0','Silvermoon Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','35305','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35327','0','0','0','0','0','28865','0','0','0','Undercity Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35328','0','0','0','0','0','28863','0','0','0','Stormwind Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35329','0','0','0','0','0','28860','0','0','0','Ironforge Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35330','0','0','0','0','0','28858','0','0','0','Exodar Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35331','0','0','0','0','0','28859','0','0','0','Gnomeregan Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35332','0','0','0','0','0','28857','0','0','0','Darnassus Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35451','35490','0','0','0','0','29837','0','29837','0','The Black Knight','','','0','80','80','2','14','14','0','1','1','1','1','420','630','0','158','11.8','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','35451','0','0','0','0','0','0','0','0','67724','67745','67718','67725','0','0','0','0','0','0','9530','9530','','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','0','805257215','0','boss_black_knight','1'),
('35490','0','0','0','0','0','29837','0','29837','0','The Black Knight','','','0','80','80','0','14','14','0','1','1','1','1','420','630','0','158','17.6','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','35490','0','0','0','0','0','0','0','0','67884','68306','67881','67883','0','0','0','0','0','0','10700','10700','','0','3','37.7387','1','1','0','0','0','0','0','0','0','0','1','0','805257215','1','','1'),
('35517','0','0','0','0','0','29490','0','29490','0','Argent Confessor Paletress','','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','22.4','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66546','67674','66515','67675','0','0','0','0','0','0','0','0','','0','3','8','20','1','0','0','0','0','0','0','0','151','1','235','805257215','1','','1'),
('35518','0','0','0','0','0','29616','0','29616','0','Eadric the Pure','Grand Champion of the Argent Crusade','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','22.4','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66865','66863','66867','66935','0','0','0','0','0','0','0','0','','0','3','42.5','20','1','0','0','0','0','0','0','0','151','1','834','805257215','1','','1'),
('35519','0','0','0','0','0','29553','0','29553','0','Memory of Algalon','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','4','72','0','0','0','0','0','0','0','0','0','67679','67678','67677','0','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35520','0','0','0','0','0','29546','0','29546','0','Memory of Archimonde','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35521','0','0','0','0','0','14367','0','14367','0','Memory of Chromaggus','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35522','0','0','0','0','0','29549','0','29549','0','Memory of Cyanigosa','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35523','0','0','0','0','0','18699','0','18699','0','Memory of Delrissa','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35524','0','0','0','0','0','26644','0','26644','0','Memory of Eck','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35525','0','0','0','0','0','23428','0','23428','0','Memory of Entropius','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35527','0','0','0','0','0','18698','0','18698','0','Memory of Gruul','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35528','0','0','0','0','0','29540','0','29540','0','Memory of Hakkar','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35529','0','0','0','0','0','29557','0','29557','0','Memory of Heigan','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35530','0','0','0','0','0','29537','0','29537','0','Memory of Herod','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35531','0','0','0','0','0','29525','0','29525','0','Memory of Hogger','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35532','0','0','0','0','0','29185','0','29185','0','Memory of Ignis','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','5','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35533','0','0','0','0','0','29547','0','29547','0','Memory of Illidan','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35534','0','0','0','0','0','29558','0','29558','0','Memory of Ingvar','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35535','0','0','0','0','0','29542','0','29542','0','Memory of Kalithresh','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66552','66620','66619','0','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35536','0','0','0','0','0','29562','0','29562','0','Memory of Lucifron','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','66619','66552','0','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35537','0','0','0','0','0','29543','0','29543','0','Memory of Malchezaar','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35538','0','0','0','0','0','29556','0','29556','0','Memory of Mutanus','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35539','0','0','0','0','0','21401','0','21401','0','Memory of Onyxia','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35541','0','0','0','0','0','29536','0','29536','0','Memory of VanCleef','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35542','0','0','0','0','0','29545','0','29545','0','Memory of Vashj','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35543','0','0','0','0','0','29541','0','29541','0','Memory of Vek\'nilash','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35544','0','0','0','0','0','28548','0','28548','0','Memory of Vezax','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35545','0','0','0','0','0','25528','0','25528','0','Risen Jaeren Sunsworn','Black Knight\'s Minion','','0','80','80','2','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','2.5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_risen_ghoul','1'),
('35564','35568','0','0','0','0','25528','0','25528','0','Risen Arelas Brightstar','Black Knight\'s Minion','','0','80','80','2','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','2.5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_risen_ghoul','1'),
('35568','0','0','0','0','0','25528','0','25528','0','Risen Arelas Brightstar','Black Knight\'s Minion','','0','80','80','0','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67879','67886','67880','0','0','0','0','0','0','0','0','0','','0','3','9.43467','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','1'),
('35569','36085','0','0','0','0','28637','0','28637','0','Eressea Dawnsinger','Grand Champion of Silvermoon','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','66044','66042','66045','66043','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2021','617297499','0','boss_mage_toc5','1'),
('35570','36091','0','0','0','0','28588','0','28588','0','Zul\'tore','Grand Champion of Sen\'jin','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2019','617297499','0','boss_hunter_toc5','1'),
('35571','36090','0','0','0','0','28597','0','28597','0','Runok Wildmane','Grand Champion of the Thunder Bluff','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67529','67530','67528','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2025','617297499','0','boss_shaman_toc5','1'),
('35572','36089','0','0','0','0','28587','0','28587','0','Mokra the Skullcrusher','Grand Champion of Orgrimmar','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','441','1','2018','617297499','0','boss_warrior_toc5','1'),
('35590','35717','0','0','0','0','24996','24999','24997','0','Risen Champion','Black Knight\'s Minion','','0','80','80','2','14','14','0','1','1','1','0','420','630','0','158','1','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','1.5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','1'),
('35617','36084','0','0','0','0','28589','0','28589','0','Deathstalker Visceri','Grand Champion of Undercity','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67709','67706','67701','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2020','617297499','0','boss_rouge_toc5','1'),
('35633','0','0','0','0','0','28571','0','0','0','Ambrose Boltspark\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35634','0','0','0','0','0','10718','0','0','0','Deathstalker Visceri\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35635','0','0','0','0','0','28607','0','0','0','Eressea Dawnsinger\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35636','0','0','0','0','0','2787','0','0','0','Lana Stouthammer\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35637','0','0','0','0','0','29284','0','0','0','Marshal Jacob Alerius\' Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35638','0','0','0','0','0','29879','0','0','0','Mokra the Skullcrusher\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35640','0','0','0','0','0','29880','0','0','0','Runok Wildmane\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35641','0','0','0','0','0','29261','0','0','0','Zul\'tore\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35644','0','0','0','0','0','28918','0','0','0','Argent Warhorse','','vehichleCursor','0','80','80','2','35','35','0','1','2','1','0','10000','20000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','10','0','0','0','0','0','0','0','0','0','0','62544','62575','63010','66482','0','0','0','0','0','486','0','0','','0','3','40','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','11723'),
('35717','0','0','0','0','0','24996','24999','24997','0','Risen Champion','Black Knight\'s Minion','','0','80','80','0','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','7.076','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','1'),
('35768','0','0','0','0','0','29255','0','0','0','Colosos\' Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('36082','0','0','0','0','0','28586','0','28586','0','Ambrose Boltspark','Grand Champion of Gnomeregan','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','64','0','0','0','0','0','0','0','0','0','68312','68310','66045','68311','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','0','617297499','1','','1'),
('36083','0','0','0','0','0','28736','0','28736','0','Colosos','Grand Champion of the Exodar','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','17','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68319','67530','68318','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2096','617297499','1','','1'),
('36084','0','0','0','0','0','28589','0','28589','0','Deathstalker Visceri','Grand Champion of Undercity','','0','80','80','0','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67709','67706','67701','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','0','1','2020','617297499','1','','1'),
('36085','0','0','0','0','0','28637','0','28637','0','Eressea Dawnsinger','Grand Champion of Silvermoon','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68312','68310','66045','68311','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2021','617297499','1','','1'),
('36086','0','0','0','0','0','28735','0','28735','0','Jaelyne Evensong','Grand Champion of Darnassus','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2095','617297499','1','','1'),
('36087','0','0','0','0','0','28564','0','28564','0','Lana Stouthammer','Grand Champion of Ironforge','','0','80','80','0','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','441','1','2093','617297499','1','','1'),
('36088','0','0','0','0','0','28560','0','28560','0','Marshal Jacob Alerius','Grand Champion of Stormwind','','0','80','80','0','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','0','1','2092','617297499','1','','1'),
('36089','0','0','0','0','0','28587','0','28587','0','Mokra the Skullcrusher','Grand Champion of Orgrimmar','','0','80','80','0','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','441','1','2018','617297499','1','','1'),
('36090','0','0','0','0','0','28597','0','28597','0','Runok Wildmane','Grand Champion of the Thunder Bluff','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68319','67530','67528','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2025','617297499','1','','1'),
('36091','0','0','0','0','0','28588','0','28588','0','Zul\'tore','Grand Champion of Sen\'jin','','0','80','80','0','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','0','1','2019','617297499','1','','1'),
('36558','0','0','0','0','0','29283','0','0','0','Argent Battleworg','','vehichleCursor','0','80','80','2','35','35','0','1','2','1','0','10000','20000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','10','0','0','0','0','0','0','0','0','0','0','62544','62575','63010','66482','0','0','0','0','0','486','0','0','','0','3','40','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','11723');

-- Equipment
UPDATE `creature_template` SET `equipment_id`=2049 WHERE `entry` in (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332);
UPDATE `creature_template` SET `equipment_id`=2025 WHERE `entry` in (35571,36090);
UPDATE `creature_template` SET `equipment_id`=2021 WHERE `entry` in (35569,36085);
UPDATE `creature_template` SET `equipment_id`=2018 WHERE `entry` in (35572,36089);
UPDATE `creature_template` SET `equipment_id`=2020 WHERE `entry` in (35617,36084);
UPDATE `creature_template` SET `equipment_id`=2019 WHERE `entry` in (35570,36091);
UPDATE `creature_template` SET `equipment_id`=2096 WHERE `entry` in (34701,36803);
UPDATE `creature_template` SET `equipment_id`=2093 WHERE `entry` in (34703,36087);
UPDATE `creature_template` SET `equipment_id`=2095 WHERE `entry` in (34657,36086);
UPDATE `creature_template` SET `equipment_id`=2092 WHERE `entry` in (34705,36088);
UPDATE `creature_template` SET `equipment_id`=834 WHERE `entry` in (35119,35518);
UPDATE `creature_template` SET `equipment_id`=235 WHERE `entry` in (34928,35517);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (35451,35490);

-- Immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1073741823 WHERE `entry` IN
(35309,35310, -- Argent Lightwielder
35305,35306, -- Argent Monk
35307,35308); -- Argent Priestess

-- Anuncios al comienzo del evento.
DELETE FROM `creature_template` WHERE `entry` in (35591,35592);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35591, 0, 0, 0, 0, 0, 29894, 0, 0, 0, 'Jaeren Sunsworn', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart'),
(35592, 0, 0, 0, 0, 0, 29893, 0, 0, 0, 'Arelas Brightstar', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart');


-- Fountain of Light
DELETE FROM `creature_template` WHERE `entry`=35311;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35311, 0, 0, 0, 0, 0, 27769, 0, 0, 0, 'Fountain of Light', '', '', 0, 79, 80, 0, 14, 14, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');


-- Grifo esquelйtico del Caballero Negro http://es.wowhead.com/npc=35491
DELETE FROM `creature_template` WHERE `entry`=35491;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35491, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 4, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_black_knight_skeletal_gryphon');
DELETE FROM `script_waypoint` WHERE `entry`=35491;
INSERT INTO `script_waypoint` VALUES
(35491,1,781.513062, 657.989624, 466.821472,0,''),
(35491,2,759.004639, 665.142029, 462.540771,0,''),
(35491,3,732.936646, 657.163879, 452.678284,0,''),
(35491,4,717.490967, 646.008545, 440.136902,0,''),
(35491,5,707.570129, 628.978455, 431.128632,0,''),
(35491,6,705.164063, 603.628418, 422.956635,0,''),
(35491,7,716.350891, 588.489746, 420.801666,0,''),
(35491,8,741.702881, 580.167725, 420.523010,0,''),
(35491,9,761.634033, 586.382690, 422.206207,0,''),
(35491,10,775.982666, 601.991943, 423.606079,0,''),
(35491,11,769.051025, 624.686157, 420.035126,0,''),
(35491,12,756.582214, 631.692322, 412.529785,0,''),
(35491,13,744.841,634.505,411.575,0,'');
-- Grifo esquelйtico del Caballero Negro antes de comenzar la batalla
DELETE FROM `creature_template` WHERE `entry` in (35492);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35492, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_gr');
DELETE FROM `script_waypoint` WHERE `entry`=35492;
INSERT INTO `script_waypoint` VALUES
(35492,1,741.067078, 634.471558, 411.569366,0,''),
(35492,2,735.726196, 639.247498, 414.725555,0,''),
(35492,3,730.187256, 653.250977, 418.913269,0,''),
(35492,4,734.517700, 666.071350, 426.259247,0,''),
(35492,5,739.638489, 675.339417, 438.226776,0,''),
(35492,6,741.833740, 698.797302, 456.986328,0,''),
(35492,7,734.647339, 711.084778, 467.165314,0,''),
(35492,8,715.388489, 723.820862, 470.333588,0,''),
(35492,9,687.178711, 730.140503, 470.569336,0,'');



-- Spawn Announcer in normal/heroic mode
DELETE FROM `creature` WHERE `id`=35004;
DELETE FROM `creature` WHERE `guid`=130961;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(130961, 35004, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0);

-- Daсo
UPDATE `creature_template` SET `dmg_multiplier`= (dmg_multiplier*1.40) WHERE `entry` IN (SELECT `id` FROM creature WHERE `map`=650);
-- El Caballero Negro 35451 11.8 - 35490 17.6p
UPDATE `creature_template` SET `dmg_multiplier`= (dmg_multiplier*2) WHERE `entry`= 35451;
UPDATE `creature_template` SET `dmg_multiplier`= (dmg_multiplier*2) WHERE `entry`= 35490;

-- CREATURES SPAWN TRIAL OF CHAMPION MAP 650
DELETE FROM `creature` WHERE `map`=650;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 

-- monturas
-- phaseMask 64
-- http://es.wowhead.com/npc=36558 Huargo de batalla Argenta
(130958, 36558, 650, 3, 1, 0, 0, 726.826, 661.201, 412.472, 4.66003, 86400, 0, 0, 1, 0, 0, 0),
(130960, 36558, 650, 3, 1, 0, 0, 716.665, 573.495, 412.475, 0.977384, 86400, 0, 0, 1, 0, 0, 0), 
(130962, 36558, 650, 3, 1, 0, 0, 705.497, 583.944, 412.476, 0.698132, 86400, 0, 0, 1, 0, 0, 0), 
(130964, 36558, 650, 3, 1, 0, 0, 770.486, 571.552, 412.475, 2.05949, 86400, 0, 0, 1, 0, 0, 0), 
(130966, 36558, 650, 3, 1, 0, 0, 717.443, 660.646, 412.467, 4.92183, 86400, 0, 0, 1, 0, 0, 0), 
(130968, 36558, 650, 3, 1, 0, 0, 700.531, 591.927, 412.475, 0.523599, 86400, 0, 0, 1, 0, 0, 0), 
(130970, 36558, 650, 3, 1, 0, 0, 790.177, 589.059, 412.475, 2.56563, 86400, 0, 0, 1, 0, 0, 0), 
(130972, 36558, 650, 3, 1, 0, 0, 702.165, 647.267, 412.475, 5.68977, 86400, 0, 0, 1, 0, 0, 0), 
(130974, 36558, 650, 3, 1, 0, 0, 773.097, 660.733, 412.467, 4.45059, 86400, 0, 0, 1, 0, 0, 0), 
(130976, 36558, 650, 3, 1, 0, 0, 793.052, 642.851, 412.474, 3.63029, 86400, 0, 0, 1, 0, 0, 0), 
(130978, 36558, 650, 3, 1, 0, 0, 778.741, 576.049, 412.476, 2.23402, 86400, 0, 0, 1, 0, 0, 0), 
(130980, 36558, 650, 3, 1, 0, 0, 788.016, 650.788, 412.475, 3.80482, 86400, 0, 0, 1, 0, 0, 0),
-- phaseMask 128
-- http://es.wowhead.com/npc=35644 Caballo de guerra Argenta
(130982, 35644, 650, 3, 1, 0, 0, 704.943, 651.33, 412.475, 5.60251, 86400, 0, 0, 1, 0, 0, 0),
(130984, 35644, 650, 3, 1, 0, 0, 774.898, 573.736, 412.475, 2.14675, 86400, 0, 0, 1, 0, 0, 0), 
(130986, 35644, 650, 3, 1, 0, 0, 699.943, 643.37, 412.474, 5.77704, 86400, 0, 0, 1, 0, 0, 0), 
(130988, 35644, 650, 3, 1, 0, 0, 712.594, 576.26, 412.476, 0.890118, 86400, 0, 0, 1, 0, 0, 0), 
(130990, 35644, 650, 3, 1, 0, 0, 793.009, 592.667, 412.475, 2.6529, 86400, 0, 0, 1, 0, 0, 0), 
(130992, 35644, 650, 3, 1, 0, 0, 702.967, 587.649, 412.475, 0.610865, 86400, 0, 0, 1, 0, 0, 0), 
(130994, 35644, 650, 3, 1, 0, 0, 768.255, 661.606, 412.47, 4.55531, 86400, 0, 0, 1, 0, 0, 0), 
(130996, 35644, 650, 3, 1, 0, 0, 720.569, 571.285, 412.475, 1.06465, 86400, 0, 0, 1, 0, 0, 0), 
(130998, 35644, 650, 3, 1, 0, 0, 787.439, 584.969, 412.476, 2.47837, 86400, 0, 0, 1, 0, 0, 0), 
(131000, 35644, 650, 3, 1, 0, 0, 722.363, 660.745, 412.468, 4.83456, 86400, 0, 0, 1, 0, 0, 0), 
(131002, 35644, 650, 3, 1, 0, 0, 790.49, 646.533, 412.474, 3.71755, 86400, 0, 0, 1, 0, 0, 0), 
(131004, 35644, 650, 3, 1, 0, 0, 777.564, 660.3, 412.467, 4.34587, 86400, 0, 0, 1, 0, 0, 0),

-- http://es.wowhead.com/npc=35004 anunciador del evento Jaeren Sunsworn
(130961, 35591, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0),

-- http://es.wowhead.com/npc=35016 [ph] Argent Raid Spectator - Generic Bunny
(115948, 35016, 650, 3, 1, 0, 0, 746.524, 615.868, 411.172, 0, 180, 0, 0, 1, 0, 0, 0),
(115949, 35016, 650, 3, 1, 0, 0, 795.549, 618.25, 412.477, 0, 180, 0, 0, 1, 0, 0, 0),
(115950, 35016, 650, 3, 1, 0, 0, 782.12, 583.21, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115951, 35016, 650, 3, 1, 0, 0, 791.972, 638.01, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(115952, 35016, 650, 3, 1, 0, 0, 780.436, 654.406, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115953, 35016, 650, 3, 1, 0, 0, 697.285, 618.253, 412.476, 0, 180, 0, 0, 1, 0, 0, 0),
(115954, 35016, 650, 3, 1, 0, 0, 714.486, 581.722, 412.476, 0, 180, 0, 0, 1, 0, 0, 0),
(115955, 35016, 650, 3, 1, 0, 0, 703.884, 596.601, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115956, 35016, 650, 3, 1, 0, 0, 746.977, 618.793, 411.971, 0, 180, 0, 0, 1, 0, 0, 0),
(115957, 35016, 650, 3, 1, 0, 0, 748.884, 616.462, 411.174, 0, 180, 0, 0, 1, 0, 0, 0),
(115958, 35016, 650, 3, 1, 0, 0, 702.274, 638.76, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(115959, 35016, 650, 3, 1, 0, 0, 792.259, 598.224, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(115960, 35016, 650, 3, 1, 0, 0, 712.413, 653.931, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115961, 35016, 650, 3, 1, 0, 0, 747.375, 619.109, 411.971, 0, 180, 0, 0, 1, 0, 0, 0),

-- phaseMask was in 1 now is 65535
-- espectadores
-- http://es.wowhead.com/npc=34856 Espectador del coliseo enano
(131040, 34856, 650, 3, 65535, 0, 0, 810.378, 600.961, 438.781, 2.85266, 300, 0, 0, 1, 0, 0, 0), 
(131041, 34856, 650, 3, 65535, 0, 0, 803.7, 601.271, 435.419, 2.93905, 300, 0, 0, 1, 0, 0, 0),
(131042, 34856, 650, 3, 65535, 0, 0, 803.254, 599.097, 435.419, 2.93512, 300, 0, 0, 1, 0, 0, 0),
(131043, 34856, 650, 3, 65535, 0, 0, 801.833, 592.214, 435.419, 2.66809, 300, 0, 0, 1, 0, 0, 0),
(131044, 34856, 650, 3, 65535, 0, 0, 803.01, 588.849, 436.921, 2.53849, 300, 0, 0, 1, 0, 0, 0),
(131045, 34856, 650, 3, 65535, 0, 0, 808.849, 591.522, 438.762, 2.78589, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34857 Espectador del coliseo trol
(131080, 34857, 650, 3, 65535, 0, 0, 691.338, 593.985, 435.421, 0.463489, 300, 0, 0, 1, 0, 0, 0),
(131081, 34857, 650, 3, 65535, 0, 0, 686.892, 594.635, 436.913, 0.310337, 300, 0, 0, 1, 0, 0, 0),
(131082, 34857, 650, 3, 65535, 0, 0, 682.889, 596.325, 438.744, 0.212162, 300, 0, 0, 1, 0, 0, 0),
(131083, 34857, 650, 3, 65535, 0, 0, 689.73, 599.11, 435.42, 0.341752, 300, 0, 0, 1, 0, 0, 0),
(131084, 34857, 650, 3, 65535, 0, 0, 678.56, 600.035, 440.169, 0.141476, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34858 Espectador del coliseo tauren
(131075, 34858, 650, 3, 65535, 0, 0, 697.235, 584.177, 435.421, 0.58129, 300, 0, 0, 1, 0, 0, 0),
(131076, 34858, 650, 3, 65535, 0, 0, 697.667, 578.208, 436.925, 0.600927, 300, 0, 0, 1, 0, 0, 0),
(131077, 34858, 650, 3, 65535, 0, 0, 689.247, 585.204, 438.779, 0.467415, 300, 0, 0, 1, 0, 0, 0),
(131078, 34858, 650, 3, 65535, 0, 0, 690.431, 576.641, 440.185, 0.565586, 300, 0, 0, 1, 0, 0, 0),
(131079, 34858, 650, 3, 65535, 0, 0, 686.422, 588.876, 438.766, 0.479192, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34859 Espectador del coliseo orco
(131085, 34859, 650, 3, 65535, 0, 0, 689.458, 604.899, 435.417, 0.180746, 300, 0, 0, 1, 0, 0, 0),
(131086, 34859, 650, 3, 65535, 0, 0, 686.041, 601.491, 436.916, 0.255361, 300, 0, 0, 1, 0, 0, 0),
(131087, 34859, 650, 3, 65535, 0, 0, 681.72, 605.995, 438.765, 0.290703, 300, 0, 0, 1, 0, 0, 0),
(131088, 34859, 650, 3, 65535, 0, 0, 689.472, 629.279, 435.417, 6.20476, 300, 0, 0, 1, 0, 0, 0),
(131089, 34859, 650, 3, 65535, 0, 0, 686.241, 634.227, 436.924, 6.11444, 300, 0, 0, 1, 0, 0, 0),
(131090, 34859, 650, 3, 65535, 0, 0, 682.425, 633.087, 438.772, 6.01626, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34860 Espectador del coliseo Renegado
(131096, 34860, 650, 3, 65535, 0, 0, 699.635, 654.463, 435.421, 5.85133, 300, 0, 0, 1, 0, 0, 0),
(131097, 34860, 650, 3, 65535, 0, 0, 695.174, 654.18, 436.925, 5.61964, 300, 0, 0, 1, 0, 0, 0),
(131098, 34860, 650, 3, 65535, 0, 0, 689.259, 651.278, 438.771, 5.79242, 300, 0, 0, 1, 0, 0, 0),
(131099, 34860, 650, 3, 65535, 0, 0, 688.07, 655.691, 440.196, 5.7885, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34861 Espectador del coliseo elfo de sangre
(131091, 34861, 650, 3, 65535, 0, 0, 690.616, 639.017, 435.42, 6.08695, 300, 0, 0, 1, 0, 0, 0),
(131092, 34861, 650, 3, 65535, 0, 0, 692.094, 643.788, 435.42, 5.92201, 300, 0, 0, 1, 0, 0, 0),
(131093, 34861, 650, 3, 65535, 0, 0, 687.286, 642.438, 436.921, 5.97699, 300, 0, 0, 1, 0, 0, 0),
(131094, 34861, 650, 3, 65535, 0, 0, 686.736, 647.02, 438.783, 5.78849, 300, 0, 0, 1, 0, 0, 0),
(131095, 34861, 650, 3, 65535, 0, 0, 680.065, 642.334, 440.188, 6.08302, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34868 Espectador del coliseo draenei
(131046, 34868, 650, 3, 65535, 0, 0, 796.164, 584.956, 435.421, 2.44032, 300, 0, 0, 1, 0, 0, 0),
(131047, 34868, 650, 3, 65535, 0, 0, 798.57, 588.261, 435.421, 2.53064, 300, 0, 0, 1, 0, 0, 0),
(131048, 34868, 650, 3, 65535, 0, 0, 792.513, 579.865, 435.421, 2.43639, 300, 0, 0, 1, 0, 0, 0),
(131049, 34868, 650, 3, 65535, 0, 0, 796.131, 579.051, 436.927, 2.52671, 300, 0, 0, 1, 0, 0, 0),
(131050, 34868, 650, 3, 65535, 0, 0, 801.093, 579.5, 438.752, 2.511, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34869 Espectador del coliseo gnomo
(131029, 34869, 650, 3, 65535, 0, 0, 809.105, 643.482, 438.774, 3.50385, 300, 0, 0, 1, 0, 0, 0),
(131030, 34869, 650, 3, 65535, 0, 0, 802.657, 640.241, 435.419, 3.41353, 300, 0, 0, 1, 0, 0, 0),
(131031, 34869, 650, 3, 65535, 0, 0, 806.511, 638.859, 436.923, 3.33892, 300, 0, 0, 1, 0, 0, 0),
(131032, 34869, 650, 3, 65535, 0, 0, 803.337, 635.024, 435.419, 3.3507, 300, 0, 0, 1, 0, 0, 0),
(131033, 34869, 650, 3, 65535, 0, 0, 810.526, 635.597, 438.772, 3.37874, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34870 Espectador del coliseo humano
(131034, 34870, 650, 3, 65535, 0, 0, 804.269, 629.575, 435.418, 3.29627, 300, 0, 0, 1, 0, 0, 0),
(131035, 34870, 650, 3, 65535, 0, 0, 807.446, 632.568, 436.922, 3.41015, 300, 0, 0, 1, 0, 0, 0),
(131036, 34870, 650, 3, 65535, 0, 0, 811.982, 626.887, 438.773, 3.31983, 300, 0, 0, 1, 0, 0, 0),
(131037, 34870, 650, 3, 65535, 0, 0, 812.287, 608.857, 438.76, 2.92321, 300, 0, 0, 1, 0, 0, 0),
(131038, 34870, 650, 3, 65535, 0, 0, 804.13, 606.65, 435.418, 2.91143, 300, 0, 0, 1, 0, 0, 0),
(131039, 34870, 650, 3, 65535, 0, 0, 807.288, 603.803, 436.927, 2.8054, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34871 Espectador del coliseo elfo de la noche
(131024, 34871, 650, 3, 65535, 0, 0, 795.766, 651.07, 435.421, 3.73555, 300, 0, 0, 1, 0, 0, 0),
(131025, 34871, 650, 3, 65535, 0, 0, 797.19, 655.396, 436.93, 3.89263, 300, 0, 0, 1, 0, 0, 0),
(131026, 34871, 650, 3, 65535, 0, 0, 804.537, 650.886, 438.767, 3.7434, 300, 0, 0, 1, 0, 0, 0),
(131027, 34871, 650, 3, 65535, 0, 0, 802.272, 648.233, 436.923, 3.52898, 300, 0, 0, 1, 0, 0, 0),
(131028, 34871, 650, 3, 65535, 0, 0, 800.747, 644.155, 435.421, 3.6413, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34966 Espectador de la Cruzada Argenta
(131067, 34966, 650, 3, 65535, 0, 0, 726.498, 554.757, 438.775, 1.33527, 300, 0, 0, 1, 0, 0, 0),
(131068, 34966, 650, 3, 65535, 0, 0, 725.875, 561.87, 435.421, 1.29992, 300, 0, 0, 1, 0, 0, 0),
(131069, 34966, 650, 3, 65535, 0, 0, 720.481, 559.718, 436.92, 1.05252, 300, 0, 0, 1, 0, 0, 0),
(131070, 34966, 650, 3, 65535, 0, 0, 720.483, 564.132, 435.421, 1.08394, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34970 Espectador de la Cruzada Argenta
(131060, 34970, 650, 3, 65535, 0, 0, 757.896, 560.428, 435.417, 1.73189, 300, 0, 0, 1, 0, 0, 0),
(131061, 34970, 650, 3, 65535, 0, 0, 763.526, 558.026, 436.932, 1.73189, 300, 0, 0, 1, 0, 0, 0),
(131062, 34970, 650, 3, 65535, 0, 0, 761.724, 553.669, 438.767, 1.78686, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34974 Espectador de la Cruzada Argenta
(131051, 34974, 650, 3, 65535, 0, 0, 785.952, 572.827, 435.421, 2.13401, 300, 0, 0, 1, 0, 0, 0),
(131052, 34974, 650, 3, 65535, 0, 0, 781.002, 569.334, 435.421, 2.09474, 300, 0, 0, 1, 0, 0, 0),
(131053, 34974, 650, 3, 65535, 0, 0, 780.854, 565.183, 436.924, 2.08296, 300, 0, 0, 1, 0, 0, 0),
(131054, 34974, 650, 3, 65535, 0, 0, 786.776, 565.04, 438.765, 2.2204, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34975 Espectador de la Cruzada Argenta
(131055, 34975, 650, 3, 65535, 0, 0, 775.647, 565.757, 435.421, 2.03191, 300, 0, 0, 1, 0, 0, 0),
(131056, 34975, 650, 3, 65535, 0, 0, 766.964, 561.534, 435.421, 1.81828, 300, 0, 0, 1, 0, 0, 0),
(131057, 34975, 650, 3, 65535, 0, 0, 767.925, 557.983, 436.914, 1.72796, 300, 0, 0, 1, 0, 0, 0),
(131058, 34975, 650, 3, 65535, 0, 0, 772.597, 559.445, 436.919, 2.02249, 300, 0, 0, 1, 0, 0, 0),
(131059, 34975, 650, 3, 65535, 0, 0, 777.127, 559.035, 438.781, 2.10495, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34977 Espectador de la Cruzada Argenta
(131063, 34977, 650, 3, 65535, 0, 0, 735.978, 560.676, 435.417, 1.4727, 300, 0, 0, 1, 0, 0, 0),
(131064, 34977, 650, 3, 65535, 0, 0, 733.086, 557.001, 436.916, 1.32347, 300, 0, 0, 1, 0, 0, 0),
(131065, 34977, 650, 3, 65535, 0, 0, 733.016, 549.424, 440.174, 1.2253, 300, 0, 0, 1, 0, 0, 0),
(131066, 34977, 650, 3, 65535, 0, 0, 728.087, 558.086, 436.927, 1.39023, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34979 Espectador de la Cruzada Argenta
(131071, 34979, 650, 3, 65535, 0, 0, 716.195, 558.771, 438.769, 1.02897, 300, 0, 0, 1, 0, 0, 0),
(131072, 34979, 650, 3, 65535, 0, 0, 713.858, 563.841, 436.914, 0.938649, 300, 0, 0, 1, 0, 0, 0),
(131073, 34979, 650, 3, 65535, 0, 0, 711.956, 569.633, 435.421, 1.00148, 300, 0, 0, 1, 0, 0, 0),
(131074, 34979, 650, 3, 65535, 0, 0, 702.138, 563.997, 440.192, 0.962211, 300, 0, 0, 1, 0, 0, 0),

-- http://es.wowhead.com/npc=34883 [ph] Argent Raid Spectator - FX - Horde
(131106, 34883, 650, 3, 65535, 0, 0, 735.931, 560.084, 435.416, 1.3216, 300, 0, 0, 1, 0, 0, 0),
(131107, 34883, 650, 3, 65535, 0, 0, 726.508, 554.731, 438.774, 1.3805, 300, 0, 0, 1, 0, 0, 0),
(131108, 34883, 650, 3, 65535, 0, 0, 713.509, 563.346, 436.897, 1.11347, 300, 0, 0, 1, 0, 0, 0),
(131109, 34883, 650, 3, 65535, 0, 0, 701.499, 563.425, 440.137, 0.944606, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34901 [ph] Argent Raid Spectator - FX - Orc
(131116, 34901, 650, 3, 65535, 0, 0, 681.404, 606.01, 438.753, 0.186696, 300, 0, 0, 1, 0, 0, 0),
(131117, 34901, 650, 3, 65535, 0, 0, 682.044, 633.089, 438.758, 6.26568, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34902 [ph] Argent Raid Spectator - FX - Troll
(131114, 34902, 650, 3, 65535, 0, 0, 690.713, 593.896, 435.421, 0.504781, 300, 0, 0, 1, 0, 0, 0),
(131115, 34902, 650, 3, 65535, 0, 0, 678.504, 599.937, 440.17, 0.159205, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34903 [ph] Argent Raid Spectator - FX - Tauren
(131110, 34903, 650, 3, 65535, 0, 0, 697.341, 577.798, 436.911, 0.665789, 300, 0, 0, 1, 0, 0, 0),
(131111, 34903, 650, 3, 65535, 0, 0, 696.432, 583.914, 435.421, 0.563687, 300, 0, 0, 1, 0, 0, 0),
(131112, 34903, 650, 3, 65535, 0, 0, 689.846, 576.178, 440.141, 0.461585, 300, 0, 0, 1, 0, 0, 0),
(131113, 34903, 650, 3, 65535, 0, 0, 688.993, 584.588, 438.755, 0.669715, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34904 [ph] Argent Raid Spectator - FX - Blood Elf
(131118, 34904, 650, 3, 65535, 0, 0, 687.376, 642.417, 436.923, 6.03791, 300, 0, 0, 1, 0, 0, 0),
(131119, 34904, 650, 3, 65535, 0, 0, 691.9, 643.825, 435.421, 5.83764, 300, 0, 0, 1, 0, 0, 0),
(131120, 34904, 650, 3, 65535, 0, 0, 686.635, 646.976, 438.781, 5.81407, 300, 0, 0, 1, 0, 0, 0),
-- http://es.wowhead.com/npc=34905 [ph] Argent Raid Spectator - FX - Undead
(131121, 34905, 650, 3, 65535, 0, 0, 688.937, 651.509, 438.754, 5.74731, 300, 0, 0, 1, 0, 0, 0),
(131122, 34905, 650, 3, 65535, 0, 0, 699.036, 654.459, 435.421, 5.67271, 300, 0, 0, 1, 0, 0, 0),
(131123, 34905, 650, 3, 65535, 0, 0, 694.682, 654.335, 436.912, 5.7748, 300, 0, 0, 1, 0, 0, 0);

-- cajas que las spawnea el core
DELETE FROM `gameobject_template` WHERE `entry` IN (195709, 195374, 195323); -- modo normal
DELETE FROM `gameobject_template` WHERE `entry` IN (195710, 195375, 195324); -- modo heroico
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES 
('195323','3','9069','Confessor\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195323','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195324','3','9069','Confessor\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195324','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195374','3','9069','Eadric\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195374','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195375','3','9069','Eadric\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195375','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195709','3','9069','Champion\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195709','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195710','3','9069','Champion\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195710','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723');

-- GAMEOBJECTS SPAWN TRIAL OF CHAMPION MAP 650
DELETE FROM `gameobject` WHERE `map`=650;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
('150063','196398','650','3','1','801.663','624.806','412.344','-1.3439','0','0','0','0','0','0','0'),
('150064','196398','650','3','1','784.533','660.238','412.389','-0.715585','0','0','0','0','0','0','0'),
('150065','196398','650','3','1','710.325','660.708','412.387','0.698132','0','0','0','0','0','0','0'),
('150066','196398','650','3','1','692.127','610.575','412.347','1.85005','0','0','0','0','0','0','0'),
('150067','195477','650','3','1','813.13','617.632','413.039','0','0','0','0','0','0','0','0'),
('150068','195486','650','3','1','813.12','617.59','413.031','0','0','0','0','0','0','0','0'),
('150069','195481','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150070','195480','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150071','195479','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150072','195478','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150075','195485','650','3','1','844.685','623.408','159.109','0','0','0','0','0','0','0','0'),
('150081','195647','650','3','1','746.698','677.469','412.339','1.5708','0','0','1','0','0','0','1'),
('150074','195649','650','3','65535','685.625','617.977','412.285','6.28137','0','0','0.000909718','-1','25','0','1'),
('150078','180723','650','3','1','779.951','655.656','421.818','-2.35619','0','0','0','0','0','0','0'),
('150079','180723','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150073','195648','650','3','65535','746.561','557.002','412.393','1.57292','0','0','0.707856','0.706357','25','0','1'),
('150076','195650','650','3','65535','807.66','618.091','412.394','3.12015','0','0','0.999943','0.0107224','25','0','0'),
('150082','180708','650','3','1','712.521','655.648','424.593','-0.767944','0','0','0','0','0','0','0'),
('150083','180708','650','3','1','704.793','600.736','429.519','0.436332','0','0','0','0','0','0','0'),
('150084','180708','650','3','1','704.302','636.326','425.136','-0.418879','0','0','0','0','0','0','0'),
('150085','180703','650','3','1','712.521','655.648','424.593','-0.767944','0','0','0','0','0','0','0'),
('150086','180703','650','3','1','714.158','585.533','425.579','0.715585','0','0','0','0','0','0','0'),
('150087','180703','650','3','1','704.793','600.736','429.519','0.436332','0','0','0','0','0','0','0'),
('150088','180730','650','3','1','714.158','585.533','425.579','0.715585','0','0','0','0','0','0','0'),
('150089','180730','650','3','1','704.793','600.736','429.519','0.436332','0','0','0','0','0','0','0'),
('150090','180736','650','3','1','792.309','598.457','424.636','2.70526','0','0','0','0','0','0','0'),
('150091','180736','650','3','1','794.441','638.306','425.7','-2.77507','0','0','0','0','0','0','0'),
('150092','180736','650','3','1','779.951','655.656','421.818','-2.35619','0','0','0','0','0','0','0'),
('150093','180736','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150094','180720','650','3','1','779.951','655.656','421.818','-2.35619','0','0','0','0','0','0','0'),
('150095','180720','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150096','180738','650','3','1','794.441','638.306','425.7','-2.77507','0','0','0','0','0','0','0'),
('150097','180738','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150098','180728','650','3','1','704.302','636.326','425.136','-0.418879','0','0','0','0','0','0','0'),
('150099','180728','650','3','1','714.158','585.533','425.579','0.715585','0','0','0','0','0','0','0'),
('150100','180728','650','3','1','712.521','655.648','424.593','-0.767944','0','0','0','0','0','0','0');
DELETE FROM `gameobject` WHERE `id` IN (195709, 195374, 195323, 195710, 195375, 195324); -- objetos spawneados en ctdb, no deberian estar


-- DROPS (thanks misimouse from SiOm Project)
-- delete not used reference_loot_template
DELETE FROM `reference_loot_template` WHERE `entry` IN (47497, 47177);
-- drop and conditions
DELETE FROM `conditions` WHERE `SourceGroup` IN (35451, 35490, 195323, 195324, 195374, 195375, 195709, 195710); 
INSERT INTO `conditions` VALUES
(1, 35451, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(1, 35490, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195323, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195324, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195374, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195375, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195709, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195710, 43228, 0, 1, 57940, 0, 0, 0, '', NULL);

-- The Black Knight
-- http://www.wowhead.com/npc=35451/el-caballero-negro#drops:mode=normal:0+1-15
-- Normal
-- Fix drops rates
DELETE FROM `creature_loot_template` WHERE (`entry`=35451);
INSERT INTO `creature_loot_template` VALUES 
(35451, 47216, 16.666, 1, 2, 1, 1),
(35451, 47215, 16.666, 1, 2, 1, 1),
(35451, 47226, 16.666, 1, 2, 1, 1),
(35451, 47227, 16.666, 1, 2, 1, 1),
(35451, 47229, 16.666, 1, 2, 1, 1),
(35451, 47232, 16.666, 1, 2, 1, 1),
(35451, 47222, 16.666, 1, 1, 1, 1),
(35451, 47221, 16.666, 1, 1, 1, 1),
(35451, 47228, 16.666, 1, 1, 1, 1),
(35451, 47220, 16.666, 1, 1, 1, 1),
(35451, 47230, 16.666, 1, 1, 1, 1),
(35451, 47231, 16.666, 1, 1, 1, 1),
(35451, 43228, 28, 1, 0, 3, 3);

-- http://www.wowhead.com/npc=35451/el-caballero-negro#drops:mode=heroic:0+1-15
-- Hero
-- Fix rates and drops and some missing
DELETE FROM `creature_loot_template` WHERE (`entry`=35490);
INSERT INTO `creature_loot_template` VALUES 
(35490, 47565, 14.285, 1, 2, 1, 1),
(35490, 47568, 14.285, 1, 2, 1, 1),
(35490, 47569, 14.285, 1, 2, 1, 1),
(35490, 47564, 14.285, 1, 2, 1, 1),
(35490, 47567, 14.285, 1, 2, 1, 1),
(35490, 47560, 14.285, 1, 2, 1, 1),
(35490, 49682, 14.285, 1, 2, 1, 1),
(35490, 47566, 16.666, 1, 1, 1, 1),
(35490, 47562, 16.666, 1, 1, 1, 1),
(35490, 47529, 16.666, 1, 1, 1, 1),
(35490, 47561, 16.666, 1, 1, 1, 1),
(35490, 47563, 16.666, 1, 1, 1, 1),
(35490, 47527, 16.666, 1, 1, 1, 1),
(35490, 43228, 2, 1, 0, 4, 4),
(35490, 43102, 100, 1, 0, 1, 1),
(35490, 48418, -100, 1, 0, 1, 1),
(35490, 47241, 100, 1, 0, 1, 1),
(35490, 44990, 47, 1, 0, 1, 1),
(35490, 34057, 1.3, 1, 0, 1, 2);

-- Confessor's Cache
-- http://www.wowhead.com/object=195323#contains:mode=normal:0+1-15
-- Normal (Entry: 195323)
-- fix drops rates and groups
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195323);
INSERT INTO `gameobject_loot_template` VALUES 
(195323, 43228, 100, 1, 0, 3, 3),
(195323, 47176, 8.333, 1, 1, 1, 1),
(195323, 47177, 8.333, 1, 1, 1, 1),
(195323, 47178, 8.333, 1, 1, 1, 1),
(195323, 47181, 8.333, 1, 1, 1, 1),
(195323, 47185, 8.333, 1, 1, 1, 1),
(195323, 47211, 8.333, 1, 1, 1, 1),
(195323, 47212, 8.333, 1, 1, 1, 1),
(195323, 47213, 8.333, 1, 1, 1, 1),
(195323, 47214, 8.333, 1, 1, 1, 1),
(195323, 47217, 8.333, 1, 1, 1, 1),
(195323, 47218, 8.333, 1, 1, 1, 1),
(195323, 47219, 8.333, 1, 1, 1, 1);

-- http://www.wowhead.com/object=195323#contains:mode=heroic:0+1-15
-- Heroic (Entry: 195324)
-- Fix rates and groups
UPDATE `gameobject_template` SET `data1`='195324' WHERE entry='195324';
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195324);
INSERT INTO `gameobject_loot_template` VALUES 
(195324, 47514, 8.333, 1, 1, 1, 1),
(195324, 47512, 8.333, 1, 1, 1, 1),
(195324, 47511, 8.333, 1, 1, 1, 1),
(195324, 47510, 8.333, 1, 1, 1, 1),
(195324, 47500, 8.333, 1, 1, 1, 1),
(195324, 47245, 8.333, 1, 1, 1, 1),
(195324, 47522, 8.333, 1, 1, 1, 1),
(195324, 47498, 8.333, 1, 1, 1, 1),
(195324, 47497, 8.333, 1, 1, 1, 1),
(195324, 47496, 8.333, 1, 1, 1, 1),
(195324, 47495, 8.333, 1, 1, 1, 1),
(195324, 47494, 8.333, 1, 1, 1, 1),
(195324, 47241, 100, 1, 0, 1, 1),
(195324, 44990, 40, 1, 0, 1, 1),
(195324, 43228, 23, 1, 0, 4, 4),
(195324, 34057, 1.3, 1, 0, 1, 2);

-- Eadric's Cache
-- http://www.wowhead.com/object=195374#contains:mode=normal:0+1-15
-- Normal (entry: 195374)
-- Fix groups and drops
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195374);
INSERT INTO `gameobject_loot_template` VALUES 
(195374, 47176, 8.333, 1, 1, 1, 1),
(195374, 47200, 8.333, 1, 1, 1, 1),
(195374, 47178, 8.333, 1, 1, 1, 1),
(195374, 47201, 8.333, 1, 1, 1, 1),
(195374, 47213, 8.333, 1, 1, 1, 1),
(195374, 47181, 8.333, 1, 1, 1, 1),
(195374, 47197, 8.333, 1, 1, 1, 1),
(195374, 47177, 8.333, 1, 1, 1, 1),
(195374, 47202, 8.333, 1, 1, 1, 1),
(195374, 47199, 8.333, 1, 1, 1, 1),
(195374, 47185, 8.333, 1, 1, 1, 1),
(195374, 43228, 21, 1, 0, 3, 3),
(195374, 47210, 8.333, 1, 1, 1, 1);

-- http://www.wowhead.com/object=195374#contains:mode=heroic:0+1-15
-- Hero (Entry: 195375)
-- Fix groups and rates
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195375);
INSERT INTO `gameobject_loot_template` VALUES 
(195375, 47509, 8.333, 1, 1, 1, 1),
(195375, 47508, 8.333, 1, 1, 1, 1),
(195375, 47504, 8.333, 1, 1, 1, 1),
(195375, 47503, 8.333, 1, 1, 1, 1),
(195375, 47502, 8.333, 1, 1, 1, 1),
(195375, 47501, 8.333, 1, 1, 1, 1),
(195375, 47500, 8.333, 1, 1, 1, 1),
(195375, 47498, 8.333, 1, 1, 1, 1),
(195375, 47497, 8.333, 1, 1, 1, 1),
(195375, 47496, 8.333, 1, 1, 1, 1),
(195375, 47495, 8.333, 1, 1, 1, 1),
(195375, 47494, 8.333, 1, 1, 1, 1),
(195375, 47241, 100, 1, 0, 1, 1),
(195375, 44990, 40, 1, 0, 1, 1),
(195375, 43228, 23, 1, 0, 4, 4),
(195375, 34057, 1.3, 1, 0, 1, 2);

-- Champion's Cache
-- http://www.wowhead.com/object=195709#contains:mode=normal:0+1-15
-- Normal (Entry: 195709)
-- Fix rates
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195709);
INSERT INTO `gameobject_loot_template` VALUES 
(195709, 43228, 24, 1, 0, 3, 3),
(195709, 47172, 16.666, 1, 1, 1, 1),
(195709, 47171, 16.666, 1, 1, 1, 1),
(195709, 47170, 16.666, 1, 1, 1, 1),
(195709, 47174, 16.666, 1, 1, 1, 1),
(195709, 47173, 16.666, 1, 1, 1, 1),
(195709, 47175, 16.666, 1, 1, 1, 1);

-- http://www.wowhead.com/object=195709#contains:mode=heroic:0+1-15
-- (Entry: 195710)
-- Fix rates
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195710);
INSERT INTO `gameobject_loot_template` VALUES 
(195710, 44990, 43, 1, 0, 1, 1),
(195710, 47241, 100, 1, 0, 1, 1),
(195710, 34057, 1.3, 1, 0, 1, 1),
(195710, 43228, 24, 1, 0, 4, 4),
(195710, 47243, 16.666, 1, 1, 1, 1),
(195710, 47244, 16.666, 1, 1, 1, 1),
(195710, 47493, 16.666, 1, 1, 1, 1),
(195710, 47248, 16.666, 1, 1, 1, 1),
(195710, 47249, 16.666, 1, 1, 1, 1),
(195710, 47250, 16.666, 1, 1, 1, 1);

-- Loot for creature Thunder Bluff Champion
-- http://www.wowhead.com/npc=35305#drops:mode=normal
DELETE FROM `creature_loot_template` WHERE (`entry`=35305);
INSERT INTO `creature_loot_template` VALUES 
(35305, 47172, 20, 1, 0, 1, 7),
(35305, 47170, 14, 1, 0, 1, 1);

-- Thunder Bluff Champion
-- Some one, a very nice person, delete this lines for give to us a double work :P
DELETE FROM `creature_loot_template` WHERE (`entry`=35325);
INSERT INTO `creature_loot_template` VALUES 
(35325, 47172, 33, 1, 0, 1, 2),
(35325, 47170, 25, 1, 0, 1, 1);

--Испытание крестоносца
DELETE FROM `gameobject` WHERE `map`=649;
INSERT INTO `gameobject` VALUES
(500000,195527,649,15,1,563.678,177.284,398.621,1.57047,0,0,0,0,0,100,0), -- Argent Coliseum Floor 
(500001,195647,649,15,1,563.678,199.329,394.766,1.58619,0,0,0,0,0,100,1), -- Main Gate 
(500002,195650,649,15,1,624.656,139.342,395.261,0.00202179,0,0,0,0,0,100,1), -- South Portcullis 
(500003,195648,649,15,1,563.671,78.459,395.261,4.69083,0,0,0,0,0,100,0), -- East Portcullis 
(500004,195649,649,15,1,502.674,139.302,395.26,3.14933,0,0,0,0,0,100,1), -- North Portcullis 
(500046,195594,649,1,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1), -- Portal 10 normal 
(500048,195595,649,2,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1), -- Portal 25 normal 
(500050,195596,649,8,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1), -- Portal 25 hc 
(500052,195593,649,4,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1); -- Portal 10 hc 

-- Creatures 
DELETE FROM `creature` WHERE `map`=649;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(604905,34990,649,15,1,0,0,624.633,139.386,418.209,3.15008,300,0,0,8367000,0,0,0), -- King Varian Wrynn 
(604903,34996,649,15,1,0,547,563.697,78.3457, 418.21,1.55937,300,0,0,13945000,4258,0,0), -- Hight Lord Tirion Fordring 
(604907,34995,649,15,1,0,0,502.825,139.407,418.211,0.0163429,300,0,0,1394500,0,0,0), -- Garrosh Hellscream 
(604911,34816,649,15,1,0,0,556.27,89.0785,395.241,1.05514,300,0,0,126000,0,0,0), -- Barrett Ramsey 
(504913,34564,649,15,1,0,0,783.237,133.477,142.576,3.06614,300,0,0,4183500,0,0,0); -- Anubarak 

-- Texts (yells) 
SET @id := -1760000;
DELETE FROM `script_texts` WHERE `entry` BETWEEN @id-76 AND @id;
INSERT INTO `script_texts` (npc_entry, entry, content_default, sound, type, language, emote, comment) VALUES
(34995, @id, "Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.", 16036, 1, 0, 0, "Trial of the Crusader - welcome"),
(36095, @id-1, "Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!", 16038, 1, 0, 0, "Gormok the Impaler - intro"),
(36095, @id-2, "Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!", 16039, 1, 0, 0, "Acidmaw and Dreadscale - intro"),
(34799, @id-3, "At its companion perishes, %s becomes enraged!", 0, 3, 0, 0, "Acidmaws adn dreadscales enrage emote"),
(36095, @id-4, "The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!", 16040, 1, 0, 0, "Icehowl - intro"),
(34995, @id-5, "The monstrous menagerie has been vanquished!", 16041, 1, 0, 0, "Beasts of Northrend - victory"),
(36095, @id-6, "Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.", 16042, 1, 0, 0, "Raid wipe"),
(36095, @id-7, "Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!", 16043, 1, 0, 0, "Lord Jaraxxus - intro"),
(35458, @id-8, "Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!", 16268, 1, 0, 0, "Lord Jaraxxus - intro2"),
(35458, @id-9, "Prepare for oblivion!", 16269, 1, 0, 0, "Wilfred Fizzlebang - summoning"),
(35458, @id-10, "Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!", 16270, 1, 0, 0, "Lord Jaraxxus - portal"),
(34780, @id-11, "Trifling gnome, your arrogance will be your undoing!", 16143, 1, 0, 0, "Lord Jaraxxus - intro3"),
(35458, @id-12, "But I'm in charge her-", 16271, 1, 0, 0, "Wilfred Fizzlebang - die"),
(36095, @id-13, "Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!", 16044, 1, 0, 0, "Lord Jaraxxus - intro4"),
(34780, @id-14, "You face Jaraxxus, eredar lord of the Burning Legion!", 16144, 1, 0, 0, "Lord Jaraxxus - aggro"),
(34780, @id-15, "FLESH FROM BONE!", 16149, 1, 0, 0, "Lord Jaraxxus - Incinerate Flesh"),
(34780, @id-16, "$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!", 0, 3, 0, 0, "Lord Jaraxxus - incinerate flesh's emote for players"),
(34780, @id-17, "Come forth, sister! Your master calls!", 16150, 1, 0, 0, "Lord Jaraxxus - Summoning Mistress of Pain"),
(34780, @id-18, "INFERNO!", 16151, 1, 0, 0, "Lord Jaraxxus - Summoning Infernals"),
(34780, @id-19, "Insignificant gnat!", 16145, 1, 0, 0, "Lord Jaraxxus - killing a player1"),
(34780, @id-20, "Banished to the Nether!", 16146, 1, 0, 0, "Lord Jaraxxus - killing a player2"),
(34780, @id-21, "Another will take my place. Your world is doomed.", 16147, 1, 0, 0, "Lord Jaraxxus - death"),
(36095, @id-22, "The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.", 16045, 1, 0, 0, "Lord Jaraxxus - outro"),
(34995, @id-23, "Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!", 16021, 1, 0, 0, "Garrosh Hellscream - Jaraxxus outro"),
(34990, @id-24, "The Alliance doesn't need the help of a demon lord to deal with Horde filth. Come, pig!", 16064, 1, 0, 0, "Varian Wrynn - Jaraxxus outro"),
(36095, @id-25, "Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!", 16046, 1, 0, 0, "Lord Jaraxxus - intro"),
(36095, @id-26, "The next battle will be against the Argent Crusade's most powerful knights! Only by defeating them will you be deemed worthy...", 16047, 1, 0, 0, "Faction Champions - intro"),
(34995, @id-27, "The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!", 16023, 1, 0, 0, "Faction Champions - intro2, Ally"),
(34990, @id-28, "Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!", 16066, 1, 0, 0, "Faction Champions - intro2, Horda"),
(36095, @id-29, "Very well, I will allow it. Fight with honor!", 16048, 1, 0, 0, "Faction Champions - intro3"),
(34995, @id-30, "Show them no mercy, Horde champions! LOK'TAR OGAR!", 16022, 1, 0, 0, "Faction Champions - intro4, Ally"),
(34995, @id-31, "Fight for the glory of the Alliance, heroes! Honor your king and your people!", 16065, 1, 0, 0, "Faction Champions - intro4, Horda"),
(34995, @id-32, "Weakling!", 16017, 1, 0, 0, "Faction Champions - killing an alliance player1"),
(34995, @id-33, "Pathetic!", 16018, 1, 0, 0, "Faction Champions - killing an alliance player2"),
(34995, @id-34, "Overpowered.", 16019, 1, 0, 0, "Faction Champions - killing an alliance player3"),
(34995, @id-35, "Lok'tar!", 16020, 1, 0, 0, "Faction Champions - killing an alliance player4"),
(34990, @id-36, "HAH!", 16060, 1, 0, 0, "Faction Champions - killing an horde player1"),
(34990, @id-37, "Hardly a challenge!", 16061, 1, 0, 0, "Faction Champions - killing an horde player2"),
(34990, @id-38, "Worthless scrub.", 16062, 1, 0, 0, "Faction Champions - killing an horde player3"),
(34990, @id-39, "Is this the best the Horde has to offer?", 16063, 1, 0, 0, "Faction Champions - killing an horde player4"),
(34990, @id-40, "Glory to the Alliance!", 16067, 1, 0, 0, "Faction Champions - victory as ally"),
(34995, @id-41, "That was just a taste of what the future brings. FOR THE HORDE!", 16024, 1, 0, 0, "Faction Champions - victory as horde"),
(36095, @id-42, "A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.", 16049, 1, 0, 0, "Faction Champions - outro"),
(36095, @id-43, "Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourge's most powerful lieutenants: fearsome val'kyr, winged harbingers of the Lich King!", 16050, 1, 0, 0, "Twin Valkyrs - intro"),
(36095, @id-44, "Let the games begin!", 16037, 1, 0, 0, "Twin Valkyrs - intro2"),
(34497, @id-45, "In the name of our dark master. For the Lich King. You. Will. Die.", 16272, 1, 0, 0, "Fjola - aggro"),
(34496, @id-46, "In the name of our dark master. For the Lich King. You. Will. Die.", 16272, 1, 0, 0, "Eydis - aggro"),
(34497, @id-47, "CHAOS!", 16274, 1, 0, 0, "Fjola - casting twins pact"),
(34496, @id-48, "CHAOS!", 16274, 1, 0, 0, "Eydis - casting twins pact"),
(34497, @id-49, "Let the dark consume you!", 16278, 1, 0, 0, "Fjola - casting dark vortex"),
(34496, @id-50, "Let the dark consume you!", 16278, 1, 0, 0, "Eydis - casting dark vortex"),
(34497, @id-51, "Let the light consume you!", 16279, 1, 0, 0, "Fjola - casting light vortex"),
(34496, @id-52, "Let the light consume you!", 16279, 1, 0, 0, "Eydis - casting light vortex"),
(34497, @id-53, "UNWORTHY!", 16277, 1, 0, 0, "Fjola - killing a player1"),
(34496, @id-54, "UNWORTHY!", 16277, 1, 0, 0, "Eydis - kiling a player1"),
(34497, @id-56, "You have been measured, and found wanting!", 16276, 1, 0, 0, "Fjola - killing a player2"),
(34496, @id-57, "You have been measured, and found wanting!", 16276, 1, 0, 0, "Eydis - kiling a player2"),
(34497, @id-58, "You are finished!", 16273, 1, 0, 0, "Fjola - berserk"),
(34496, @id-59, "You are finished!", 16273, 1, 0, 0, "Eydis - berserk"),
(34497, @id-60, "The Scourge cannot be stopped...", 16275, 1, 0, 0, "Fjola - death"),
(34496, @id-61, "The Scourge cannot be stopped...", 16275, 1, 0, 0, "Eydis - death"),
(34995, @id-62, "Do you still question the might of the Horde, paladin? We will take on all comers!", 16025, 1, 0, 0, "Twin Valkyrs - victory as horde"),
(34990, @id-63, "Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!", 16068, 1, 0, 0, "Twin Valkyrs - victory as alliance"),
(36095, @id-64, "A mighty blow has been dealt to the Lich King! You have proven yourselves as able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!", 16051, 1, 0, 0, "Anub'arak - intro1"),
(35877, @id-65, "You will have your challenge, Fordring.", 16321, 1, 0, 0, "Anub'arak - intro2"),
(36095, @id-66, "Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.", 16052, 1, 0, 0, "Anub'arak - intro3"),
(35877, @id-67, "The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.", 16322, 1, 0, 0, "Anub'arak - intro4"),
(35877, @id-68, "The souls of your fallen champions will be mine, Fordring.", 16323, 1, 0, 0, "Anub'arak - intro5"),
(34564, @id-69, "Ahhh... Our guests arrived, just as the master promised.", 16235, 1, 0, 0, "Anub'arak - intro6"),
(34564, @id-70, "This place will serve as your tomb!", 16234, 1, 0, 0, "Anub'arak - aggro"),
(34564, @id-71, "Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...", 16240, 1, 0, 0, "Anub'arak - submerge"),
(34564, @id-72, "The swarm shall overtake you!", 16241, 1, 0, 0, "Anub'arak - leeching swarm"),
(34564, @id-73, "F-lakkh shir!", 16236, 1, 0, 0, "Anub'arak - killing a player1"),
(34564, @id-74, "Another soul to sate the host.", 16237, 1, 0, 0, "Anub'arak - killing a player2"),
(34564, @id-75, "I have failed you, master....", 16238, 1, 0, 0, "Anub'arak - death"),
(36095, @id-76, "Champions, you're alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!", 0, 1, 0, 0, "Anub'arak - outro");

-- Creature/Instance Templates 
UPDATE creature_template SET ScriptName="boss_gormok_the_impaler" WHERE entry=34796; -- gormok the impaler
UPDATE creature_template SET ScriptName="boss_acidmaw" WHERE entry=35144; -- acidmaw
UPDATE creature_template SET ScriptName="boss_dreadscale" WHERE entry=34799; -- dreascale
UPDATE creature_template SET scriptname="mob_slime_pool" WHERE entry = 35176; -- slime pool - acidmaw's and dreadscale's add
UPDATE creature_template SET ScriptName="boss_icehowl" WHERE entry=34797; -- icehowl
UPDATE creature_template SET ScriptName="mob_snobold" WHERE entry=34800; -- Snobold
UPDATE creature_template SET ScriptName="boss_lord_jaraxxus" WHERE entry=34780; -- Lord Jaraxxus 
UPDATE creature_template SET scriptname="mob_misstress_of_pain" WHERE entry=34826; -- Misstress of pain (Jaraxxus' add)
UPDATE creature_template SET scriptname="mob_felflame_infernal" WHERE entry=34815; -- Felflame Infernal (Jaraxxus' add)
UPDATE creature_template SET scriptname="mob_jaraxxus_vulcan" WHERE entry=34813; -- Vulcan, summoned by Lord Jaraxxus, summoning Felflame Infernals
UPDATE creature_template SET scriptname="mob_jaraxxus_portal" WHERE entry=34825; -- Nether Portal, summoned by Lord Jaraxxus, summonig Misstress of pain
UPDATE creature_template SET scriptname="mob_legion_flame" WHERE entry = 34784; -- Jaraxxus' spell's effect - summon legion fire, deal damage every sec

UPDATE creature_template SET scriptname="mob_toc_warrior" WHERE entry IN (34475,34453);
UPDATE creature_template SET scriptname="mob_toc_mage" WHERE entry IN (34468,34449);
UPDATE creature_template SET scriptname="mob_toc_shaman" WHERE entry IN (34470,34444);
UPDATE creature_template SET scriptname="mob_toc_enh_shaman" WHERE entry IN (34463,34455);
UPDATE creature_template SET scriptname="mob_toc_hunter" WHERE entry IN (34467,34448);
UPDATE creature_template SET scriptname="mob_toc_rogue" WHERE entry IN (34472,34454);
UPDATE creature_template SET scriptname="mob_toc_priest" WHERE entry IN (34466,34447);
UPDATE creature_template SET scriptname="mob_toc_shadow_priest" WHERE entry IN (34473,34441);
UPDATE creature_template SET scriptname="mob_toc_dk" WHERE entry IN (34461,34458);
UPDATE creature_template SET scriptname="mob_toc_paladin" WHERE entry IN (34465,34445);
UPDATE creature_template SET scriptname="mob_toc_retro_paladin" WHERE entry IN (34471,34456);
UPDATE creature_template SET scriptname="mob_toc_druid" WHERE entry IN (34469,34459);
UPDATE creature_template SET scriptname="mob_toc_boomkin" WHERE entry IN (34460,34451);
UPDATE creature_template SET scriptname="mob_toc_warlock" where entry IN (34474,34450);
UPDATE creature_template SET scriptname="mob_toc_pet_warlock" WHERE entry IN (35465);
UPDATE creature_template SET scriptname="mob_toc_pet_hunter" WHERE entry IN (35610);

UPDATE creature_template SET ScriptName="boss_light_twin" WHERE entry=34497; -- Fjola Lightbane 
UPDATE creature_template SET ScriptName="boss_dark_twin" WHERE entry=34496; -- Eydis Darkbane 
UPDATE creature_template SET ScriptName="light_essence" WHERE entry=34568; -- Light Essence (twins' fight) 
UPDATE creature_template SET ScriptName="dark_essence" WHERE entry=34567; -- Dark Essence (twins' fight) 
UPDATE creature_template SET ScriptName="mob_concetrated_light" WHERE entry=34630; -- Concentrated Light (twins' fight) 
UPDATE creature_template SET ScriptName="mob_concetrated_dark" WHERE entry=34628; -- Concentrated Dark (twins' fight) 
UPDATE creature_template SET ScriptName="boss_anubarak_trial" WHERE entry=34564; -- Anubarak 
UPDATE creature_template SET ScriptName="mob_swarm_scarab" WHERE entry=34605; -- Anub's adds 
UPDATE creature_template SET ScriptName="mob_nerubian_burrower" WHERE entry=34607; -- Anub's adds 
UPDATE creature_template SET scriptname="mob_anubarak_spike" WHERE entry=34660;
UPDATE creature_template SET ScriptName="mob_frost_sphere" WHERE entry = 34606;
UPDATE creature_template SET ScriptName="toc_tirion_fordring" WHERE entry=34996; -- Tirion Fordring 
UPDATE creature_template SET ScriptName="toc_barrett_ramsey" WHERE entry=34816; -- Barrett Ramsey (Arena Master) 
UPDATE instance_template SET script="instance_trial_of_the_crusader" WHERE map=649; -- Instance 

-- Additional 
UPDATE creature_template SET npcflag=1 WHERE entry IN(34816, 3481601, 3481602, 3481603, 34568, 3456801, 3456802, 3456803, 34567, 3456701, 3456702, 3456703); -- Make Barrett Ramsey, Dark and Light Essenes gossip creatures 
UPDATE creature_template SET IconName="Interact" WHERE entry IN(34568, 3456801, 3456802, 3456803, 34567, 3456701, 3456702, 3456703); -- Change white chat bubble on interaction wheel when mouse-overing Light and Dark Essences 
UPDATE creature_template SET unit_flags=4 WHERE entry IN(34813, 3481301, 3481302, 3481303, 34825, 3482501, 3482502, 3482503); -- Disable move for Jaraxxus' portals and vulcans 
UPDATE creature_template SET unit_flags=unit_flags|4 WHERE entry in (34784, 3478401, 3478402, 3478403); -- Disable move for Jaraxxus' spell's Legion Fire 
UPDATE creature_template SET modelid1=30039, modelid2=30039 where entry IN (348125, 3482501, 3482502, 3482503);  -- Set correct model for Jaraxxus' portal 
UPDATE creature_template SET faction_A=189, faction_H=189 WHERE entry IN (34605, 3460501, 3460502, 3460503); -- Make swarm scarab's neutral for players, faction switch implemented in anub's script 
UPDATE creature_template SET flags_extra=2 WHERE entry IN (34630, 3463001, 3463002, 3463003, 34628, 3462801, 3462802, 3462803); -- Makes Concentraded Energies ignore aggro 

-- Loot and Tribute Chests (from TC forum, thanks Gyullo) 
-- Chest Templates (this are for 10 Heroic)
DELETE FROM `gameobject_loot_template` WHERE entry IN (195665,195666,195667,195668,195669,195670,195671,195672);
DELETE FROM `gameobject_template` WHERE entry IN (195665,195666,195667,195668);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
(195665, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27514, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195666, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27515, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195667, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27516, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195668, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27513, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723);

-- Chest Templates (this are for 25 Heroic)
DELETE FROM `gameobject_template` WHERE entry IN (195669,195670,195671,195672);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
(195669, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27512, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195670, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27517, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195671, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27518, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195672, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27511, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723);

-- 10H mode (1-24 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27513;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27513,47242,100,1,0,2,2), -- 2 Trophys
(27513,47556,100,1,0,1,1); -- 1 Crusader Orb

-- 10H mode (25-44 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27514;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27514,47242,100,1,0,2,2), -- 2 Trophys
(27514,47556,100,1,0,1,1), -- 1 Crusader Orb
-- Alliance Loot (Handdle by conditions)
(27514,48713,0,1,1,1,1),
(27514,48711,0,1,1,1,1),
(27514,48712,0,1,1,1,1),
(27514,48714,0,1,1,1,1),
(27514,48709,0,1,1,1,1),
(27514,48710,0,1,1,1,1),
(27514,48708,0,1,1,1,1),
-- Horde Loot (Handdle by conditions)
(27514,48695,0,1,2,1,1),
(27514,48697,0,1,2,1,1),
(27514,48703,0,1,2,1,1),
(27514,48699,0,1,2,1,1),
(27514,48693,0,1,2,1,1),
(27514,48705,0,1,2,1,1),
(27514,48701,0,1,2,1,1);

-- 10H mode (45-49 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27515;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27515,47242,100,1,0,4,4), -- 4 Trophys
(27515,47556,100,1,0,1,1), -- 1 Crusader Orb
-- Alliance Loot (Handdle by conditions)
(27515,48713,0,1,1,1,1),
(27515,48711,0,1,1,1,1),
(27515,48712,0,1,1,1,1),
(27515,48714,0,1,1,1,1),
(27515,48709,0,1,1,1,1),
(27515,48710,0,1,1,1,1),
(27515,48708,0,1,1,1,1),
-- Horde Loot (Handdle by conditions)
(27515,48695,0,1,2,1,1),
(27515,48697,0,1,2,1,1),
(27515,48703,0,1,2,1,1),
(27515,48699,0,1,2,1,1),
(27515,48693,0,1,2,1,1),
(27515,48705,0,1,2,1,1),
(27515,48701,0,1,2,1,1);

-- 10H mode (50 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27516;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27516,47242,100,1,0,4,4), -- 4 Trophys
(27516,47556,100,1,0,1,1), -- 1 Crusader Orb
-- Alliance Loot (Handdle by conditions)
(27516,48713,0,1,1,1,1),
(27516,48711,0,1,1,1,1),
(27516,48712,0,1,1,1,1),
(27516,48714,0,1,1,1,1),
(27516,48709,0,1,1,1,1),
(27516,48710,0,1,1,1,1),
(27516,48708,0,1,1,1,1),
-- Horde Loot (Handdle by conditions)
(27516,48695,0,1,2,1,1),
(27516,48697,0,1,2,1,1),
(27516,48703,0,1,2,1,1),
(27516,48699,0,1,2,1,1),
(27516,48693,0,1,2,1,1),
(27516,48705,0,1,2,1,1),
(27516,48701,0,1,2,1,1),
-- Second Alliance Loot (Handdle by conditions)
(27516,49044,100,1,0,1,1),
(27516,48673,0,1,3,1,1),
(27516,48675,0,1,3,1,1),
(27516,48674,0,1,3,1,1),
(27516,48671,0,1,3,1,1),
(27516,48672,0,1,3,1,1),
-- Second Horde Loot (Handdle by conditions)
(27516,49046,100,1,0,1,1),
(27516,48668,0,1,4,1,1),
(27516,48670,0,1,4,1,1),
(27516,48669,0,1,4,1,1),
(27516,48666,0,1,4,1,1),
(27516,48667,0,1,4,1,1);

SET @RefTribute := 51000;

DELETE FROM `reference_loot_template` WHERE entry=@RefTribute;
DELETE FROM `reference_loot_template` WHERE entry=47557;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@RefTribute,47557,0,1,1,1,1),
(@RefTribute,47558,0,1,1,1,1),
(@RefTribute,47559,0,1,1,1,1);

-- 25H mode (1-24 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27511;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27511,1,100,1,0,-@RefTribute,2); -- 2 Tokens

-- 25H mode (25-44 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27512;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27512,1,100,1,0,-@RefTribute,2), -- 2 Tokens

-- Alliance Loot (Handdle by conditions)
(27512,47521,0,1,1,1,1),
(27512,47526,0,1,1,1,1),
(27512,47519,0,1,1,1,1),
(27512,47524,0,1,1,1,1),
(27512,47517,0,1,1,1,1),
(27512,47506,0,1,1,1,1),
(27512,47515,0,1,1,1,1),

-- Horde Loot (Handdle by conditions)
(27512,47523,0,1,2,1,1),
(27512,47528,0,1,2,1,1),
(27512,47520,0,1,2,1,1),
(27512,47525,0,1,2,1,1),
(27512,47518,0,1,2,1,1),
(27512,47513,0,1,2,1,1),
(27512,47516,0,1,2,1,1);

-- 25H mode (45-49 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27517;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27517,1,100,1,0,-@RefTribute,2), -- 2 Tokens
(27517,2,100,1,0,-@RefTribute,2), -- 2 Tokens

-- Alliance Loot (Handdle by conditions)
(27517,47521,0,1,1,1,1),
(27517,47526,0,1,1,1,1),
(27517,47519,0,1,1,1,1),
(27517,47524,0,1,1,1,1),
(27517,47517,0,1,1,1,1),
(27517,47506,0,1,1,1,1),
(27517,47515,0,1,1,1,1),

-- Horde Loot (Handdle by conditions)
(27517,47523,0,1,2,1,1),
(27517,47528,0,1,2,1,1),
(27517,47520,0,1,2,1,1),
(27517,47525,0,1,2,1,1),
(27517,47518,0,1,2,1,1),
(27517,47513,0,1,2,1,1),
(27517,47516,0,1,2,1,1);

-- 25H mode (50 trys remaining)
DELETE FROM `gameobject_loot_template` WHERE entry=27518;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27518,1,100,1,0,-@RefTribute,2), -- 2 Tokens
(27518,2,100,1,0,-@RefTribute,2), -- 2 Tokens
-- Alliance Loot (Handdle by conditions)
(27518,47521,0,1,1,1,1),
(27518,47526,0,1,1,1,1),
(27518,47519,0,1,1,1,1),
(27518,47524,0,1,1,1,1),
(27518,47517,0,1,1,1,1),
(27518,47506,0,1,1,1,1),
(27518,47515,0,1,1,1,1),
-- Horde Loot (Handdle by conditions)
(27518,47523,0,1,2,1,1),
(27518,47528,0,1,2,1,1),
(27518,47520,0,1,2,1,1),
(27518,47525,0,1,2,1,1),
(27518,47518,0,1,2,1,1),
(27518,47513,0,1,2,1,1),
(27518,47516,0,1,2,1,1),
-- Second Alliance Loot (Handdle by conditions)
(27518,49096,100,1,0,1,1),
(27518,47553,0,1,3,1,1),
(27518,47552,0,1,3,1,1),
(27518,47549,0,1,3,1,1),
(27518,47547,0,1,3,1,1),
(27518,47545,0,1,3,1,1),
-- Second Horde Loot (Handdle by conditions)
(27518,49098,100,1,0,1,1),
(27518,47554,0,1,4,1,1),
(27518,47551,0,1,4,1,1),
(27518,47550,0,1,4,1,1),
(27518,47548,0,1,4,1,1),
(27518,47546,0,1,4,1,1);

-- Achievements criteria (thanks Gyullo) 
-- 10 Normal
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11684,11685,11686,11687,11688);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
-- Call of the Crusade (10 player)
(11684,12,0,0),
(11685,12,0,0),
(11686,12,0,0),
(11687,12,0,0),
(11688,12,0,0);

-- 10 Hero
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11690,11689,11682,11693,11691);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
-- Call of the Grand Crusade (10 player)
(11690,12,2,0),
(11689,12,2,0),
(11682,12,2,0),
(11693,12,2,0),
(11691,12,2,0);

-- 25 normal
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11679,11683,11680,11682,11681);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
-- Call of the Crusade (25 player)
(11679,12,1,0),
(11683,12,1,0),
(11680,12,1,0),
(11682,12,1,0),
(11681,12,1,0);

-- 25 Hero
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11542,11546,11547,11549,11678,12350);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
-- Call of the Grand Crusade (25 player)
(11542,12,3,0),
(11546,12,3,0),
(11547,12,3,0),
(11549,12,3,0),
(11678,12,3,0),
-- Realm First! Grand Crusader
(12350,12,3,0);

UPDATE creature_template SET mechanic_immune_mask=1|2|4|8|16|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|8388608|67108864|536870912 WHERE entry IN
(34796, 3479601, 3479602, 3479603,
 35144, 3514401, 3514402, 3514403,
 34799, 3479901, 3479902, 3479903,
 34797, 3479701, 3479702, 3479703,
 34780, 3478001, 3478002, 3478003,
 34497, 3449701, 3449702, 3449703,
 34496, 3449601, 3449602, 3449603,
 34564, 3456401, 3456402, 3456403,
 34800, 3480001, 3480002, 3480003);

-- Last StartUP error fix. 
UPDATE creature_template SET ScriptName="mob_cat" WHERE entry=35610;

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1649999 AND -1649000;
INSERT INTO `script_texts`
(`comment`,`sound`, `entry`,`type`,`language`,`emote`,`content_default`) VALUES
-- Northrend Beasts
-- Gormok
('34796','0','-1649000','3','0','0','My slaves! Destroy the enemy!'),
-- Acidmaw & Dreadscale
('34564','0','-1649010','3','0','0','%s buries itself in the earth!'),
('34564','0','-1649011','3','0','0','%s getting out of the ground!'),
('34799','0','-1649012','3','0','0','At its companion perishes, %s becomes enraged!'),
-- Icehowl
('34797','0','-1649020','3','0','0','%s looks at |3-3($n) and emits a guttural howl!'),
('34797','0','-1649021','3','0','0','%s crashes into a wall of the Colosseum and lose focus!'),
('34797','0','-1649022','3','0','0','|3-3(%s) covers boiling rage, and he tramples all in its path!'),
-- Jaraxxus
('34780','16143','-1649030','1','0','0','Trifling gnome, your arrogance will be your undoing!'),
('34780','16144','-1649031','1','0','0','You face Jaraxxus, eredar lord of the Burning Legion!'),
('34780','16147','-1649032','1','0','0','Another will take my place. Your world is doomed.'),
('34780','0','-1649033','3','0','0','$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!'),
('34780','16149','-1649034','1','0','0','FLESH FROM BONE!'),
('34780','0','-1649035','3','0','0','|cFFFF0000Legion Flame|R on $n'),
('34780','0','-1649036','3','0','0','%s creates the gates of the Void!'),
('34780','16150','-1649037','1','0','0','Come forth, sister! Your master calls!'),
('34780','0','-1649038','3','0','0','%s creates an |cFF00FF00Infernal Volcano!|R'),
('34780','16151','-1649039','1','0','0','INFERNO!'),
-- Faction Champions
('34995','0','-1649115','1','0','0','Weakling!'),
('34995','0','-1649116','1','0','0','Pathetic!'),
('34995','0','-1649117','1','0','0','Overpowered.'),
('34995','0','-1649118','1','0','0','Lok\'tar!'),
('34990','0','-1649120','1','0','0','HAH!'),
('34990','0','-1649121','1','0','0','Hardly a challenge!'),
('34990','0','-1649122','1','0','0','Worthless scrub.'),
('34990','0','-1649123','1','0','0','Is this the best the Horde has to offer?'),
-- Twin Valkyrs
('34497','16272','-1649040','1','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16275','-1649041','1','0','0','The Scourge cannot be stopped...'),
('34497','16273','-1649042','1','0','0','YOU ARE FINISHED!'),
('34497','0','-1649043','3','0','0','%s begins to read the spell Treaty twins!'),
('34497','16274','-1649044','3','0','0','CHAOS!'),
('34496','16277','-1649045','1','0','0','UNWORTHY!'),
('34497','16276','-1649046','1','0','0','You appreciated and acknowledged nothing.'),
('34497','0','-1649047','3','0','0','%s begins to read a spell |cFFFFFFFFLight Vortex!|R switch to |cFFFFFFFFLight|r essence!'),
('34496','16279','-1649048','1','0','0','Let the light consume you!'),
('34496','0','-1649049','3','0','0','%s begins to read a spell |cFF9932CDBlack Vortex!|R switch to |cFF9932CDBlack|r essence!'),
('34496','16278','-1649050','1','0','0','Let the dark consume you!'),
-- Anub'arak
('34564','16235','-1649055','1','0','0','Ahhh... Our guests arrived, just as the master promised.'),
('34564','16234','-1649056','1','0','0','This place will serve as your tomb!'),
('34564','16236','-1649057','1','0','0','F-lakkh shir!'),
('34564','16237','-1649058','1','0','0','Another soul to sate the host.'),
('34564','16238','-1649059','1','0','0','I have failed you, master...'),
('34564','0','-1649060','3','0','0','%s spikes  pursuing $n!'),
('34564','16240','-1649061','1','0','0','Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...'),
('34564','0','-1649062','3','0','0','%s produces a swarm of beetles Peon to restore your health!'),
('34564','16241','-1649063','1','0','0','The swarm shall overtake you!'),
-- Event
-- Northrend Beasts
('34996','16036','-1649070','1','0','0','Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.'),
('34996','16038','-1649071','1','0','0','Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!'),
('34990','16069','-1649072','1','0','0','Your beast will be no match for my champions Tirion!'),
('34995','16026','-1649073','1','0','0','I have seen  more  worthy  challenges in the ring of blood, you waste our time paladin.'),
('34996','16039','-1649074','1','0','0','Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!'),
('34996','16040','-1649075','1','0','0','The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!'),
('34996','16041','-1649076','1','0','0','The monstrous menagerie has been vanquished!'),
('34996','16042','-1649077','1','0','0','Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.'),
-- Jaraxxus
('34996','16043','-1649080','1','0','0','Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!'),
('35458','16268','-1649081','1','0','0','Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!'),
('35458','16269','-1649082','1','0','0','Prepare for oblivion!'),
('35458','16270','-1649083','1','0','0','Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!'),
('35458','16271','-1649084','1','0','0','But I am in charge here-'),
('35458','0','-1649085','1','0','0','...'),
('34996','16044','-1649086','1','0','0','Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!'),
('34996','16045','-1649087','1','0','0','The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.'),
('34995','16021','-1649088','1','0','0','Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!'),
('34990','16064','-1649089','1','0','0','The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!'),
('34996','16046','-1649090','1','0','0','Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!'),
-- Faction Champions
('34996','16047','-1649091','1','0','0','The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...'),
('34990','16066','-1649092','1','0','0','Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!'),
('34995','16023','-1649093','1','0','0','The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!'),
('34996','16048','-1649094','1','0','0','Very well, I will allow it. Fight with honor!'),
('34990','16065','-1649095','1','0','0','Fight for the glory of the Alliance, heroes! Honor your king and your people!'),
('34995','16022','-1649096','1','0','0','Show them no mercy, Horde champions! LOK-TAR OGAR!'),
('34990','16067','-1649097','1','0','0','GLORY OF THE ALLIANCE!'),
('34995','16024','-1649098','1','0','0','LOK-TAR OGAR!'),
('34996','16049','-1649099','1','0','0','A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.'),
-- Twin Valkyrs
('34996','16050','-1649100','1','0','0','Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!'),
('34996','16037','-1649101','1','0','0','Let the games begin!'),
('34990','16068','-1649102','1','0','0','Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!'),
('34995','16025','-1649103','1','0','0','Do you still question the might of the horde paladin? We will take on all comers.'),
-- Anub'arak
('34996','16051','-1649104','1','0','0','A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!'),
('35877','16321','-1649105','1','0','0','You will have your challenge, Fordring.'),
('34996','16052','-1649106','1','0','0','Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.'),
('35877','16322','-1649107','1','0','0','The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.'),
('35877','16323','-1649108','1','0','0','The souls of your fallen champions will be mine, Fordring.'),
('36095','0','-1649109','1','0','0','Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!'),
('36095','0','-1649110','1','0','0','Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!');

-- Faction Champions
UPDATE `creature_template` SET `scriptname`='mob_toc_warrior', `AIName` ='' WHERE `entry` IN (34475,34453);
UPDATE `creature_template` SET `scriptname`='mob_toc_mage', `AIName` ='' WHERE `entry` IN (34468,34449);
UPDATE `creature_template` SET `scriptname`='mob_toc_shaman', `AIName` ='' WHERE `entry` IN (34470,34444);
UPDATE `creature_template` SET `scriptname`='mob_toc_enh_shaman', `AIName` ='' WHERE `entry` IN (34463,34455);
UPDATE `creature_template` SET `scriptname`='mob_toc_hunter', `AIName` ='' WHERE `entry` IN (34467,34448);
UPDATE `creature_template` SET `scriptname`='mob_toc_rogue', `AIName` ='' WHERE `entry` IN (34472,34454);
UPDATE `creature_template` SET `scriptname`='mob_toc_priest', `AIName` ='' WHERE `entry` IN (34466,34447);
UPDATE `creature_template` SET `scriptname`='mob_toc_shadow_priest', `AIName` ='' WHERE `entry` IN (34473,34441);
UPDATE `creature_template` SET `scriptname`='mob_toc_dk', `AIName` ='' WHERE `entry` IN (34461,34458);
UPDATE `creature_template` SET `scriptname`='mob_toc_paladin', `AIName` ='' WHERE `entry` IN (34465,34445);
UPDATE `creature_template` SET `scriptname`='mob_toc_retro_paladin', `AIName` ='' WHERE `entry` IN (34471,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_druid', `AIName` ='' WHERE `entry` IN (34469,34459);
UPDATE `creature_template` SET `scriptname`='mob_toc_boomkin', `AIName` ='' WHERE `entry` IN (34460,34451);
UPDATE `creature_template` SET `scriptname`='mob_toc_warlock' WHERE `entry` IN (34474,34450);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_warlock', `AIName` ='' WHERE `entry` IN (35465);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_hunter', `AIName` ='' WHERE `entry` IN (35610);

-- -------------------------------------------------------------------------
-- ------------------------ Trial Of the Champion --------------------------
-- -------------------------------------------------------------------------
-- Gate
DELETE FROM `gameobject` WHERE `guid` in (150077,150080);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(195649, 0, 411, 'South Portcullis', '', '', '', 0, 37, 3.26663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(195648, 0, 411, 'East Portcullis', '', '', '', 0, 37, 3.26663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(195650, 0, 411, 'North Portcullis', '', '', '', 0, 37, 3.26663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(150076, 195650, 650, 3, 65535, 807.66, 618.091, 412.394, 3.12015, 0, 0, 0.999943, 0.0107224, 25, 0, 0),
(150073, 195648, 650, 3, 65535, 746.561, 557.002, 412.393, 1.57292, 0, 0, 0.707856, 0.706357, 25, 0, 1),
(150074, 195649, 650, 3, 65535, 685.625, 617.977, 412.285, 6.28137, 0, 0, 0.000909718, -1, 25, 0, 1),
(150081, 195647, 650, 3, 1, 746.698, 677.469, 412.339, 1.5708, 0, 0, 1, 0, 0, 0, 1);
-- Mounts
DELETE FROM `vehicle_accessory` WHERE `entry` in (35491,33299,33418,33409,33300,33408,33301,33414,33297,33416,33298);
INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(35491,35451,0,0, 'Black Knight'),
(33299,35323,0,1, 'Darkspear Raptor'),
(33418,35326,0,1, 'Silvermoon Hawkstrider'),
(33409,35314,0,1, 'Orgrimmar Wolf'),
(33300,35325,0,1, 'Thunder Bluff Kodo'),
(33408,35329,0,1, 'Ironforge Ram'),
(33301,35331,0,1, 'Gnomeregan Mechanostrider'),
(33414,35327,0,1, 'Forsaken Warhorse'),
(33297,35328,0,1, 'Stormwind Steed'),
(33416,35330,0,1, 'Exodar Elekk'),
(33298,35332,0,1, 'Darnassian Nightsaber');
UPDATE `creature_template` SET `minlevel` = 80,`maxlevel` = 80 WHERE `entry` in (33298,33416,33297,33301,33408,35640,33299,33300,35634,33418,35638,33409,33414,33299,35635,35641);
UPDATE `creature_template` SET `faction_A` = 14,`faction_H` = 14 WHERE `entry` in (33298,33416,33297,33301,33408,35545,33299,35564,35590,35119,34928,35309,35305,33414,35307,35325,33300,35327,35326,33418,35638,35314,33409,33299,35635,35640,35641,35634,35633,35636,35768,35637,34658);
UPDATE `creature_template` SET `Health_mod` = 10,`mindmg` = 20000,`maxdmg` = 30000 WHERE `entry` in (33298,33416,33297,33301,33408,33409,33418,33300,33414,33299,33298,33416,33297,33301,33408,35640,35638,35634,35635,35641,35633,35636,35768,35637,34658);
UPDATE `creature_template` SET `speed_run` = 2,`Health_mod` = 40,`mindmg` = 10000,`maxdmg` = 20000,`spell1` =62544,`spell2` =63010,`spell3` =0,`spell4` =0 WHERE `entry` in (35644,36558);
UPDATE `creature` SET `spawntimesecs` = 86400 WHERE `id` in (35644,36558);
-- ScriptName
UPDATE `creature_template` SET `ScriptName`='generic_vehicleAI_toc5' WHERE `entry`=33299;
-- VehicleId
UPDATE `creature_template` SET `VehicleId`=486 WHERE `entry` in (33299,35491);
-- faction for Vehicle
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_flags`=33554432  WHERE `entry` in (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332,35491);
-- Texts 
DELETE FROM `script_texts` WHERE `entry` <= -1999926 and `entry` >= -1999956;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1999926, 'Coming out of the gate Grand Champions other faction.  ' ,0,0,0,1, '' ),
(0,-1999927, 'Good work! You can get your award from Crusader\'s Coliseum chest!.  ' ,0,1,0,1, '' ),
(0,-1999928, 'You spoiled my grand entrance. Rat.' ,16256,1,0,5, '' ),
(0,-1999929, 'Did you honestly think an agent if the Lich King would be bested on the field of your pathetic little tournament?' ,16257,1,0,5, '' ),
(0,-1999930, 'I have come to finish my task ' ,16258,1,0,5, '' ),
(0,-1999931, 'This farce ends here!' ,16259,1,0,5, '' ),
(0,-1999932, '[Zombie]Brains.... .... ....' ,0,1,0,5, '' ),
(0,-1999933, 'My roting flash was just getting in the way!' ,16262,1,0,5, '' ),
(0,-1999934, 'I have no need for bones to best you!' ,16263,1,0,5, '' ),
(0,-1999935, 'No! I must not fail...again...' ,16264,1,0,5, '' ),
(0,-1999936, 'What\'s that. up near the rafters ?' ,0,1,0,5, '' ),
(0,-1999937, 'Please change your weapon! Next battle will be start now!' ,0,3,0,5, '' ),
(0,-1999939, 'Excellent work!' ,0,1,0,1, '' ),
(0,-1999940, 'Coming out of the gate Crusader\'s Coliseum Champion.' ,0,0,0,1, '' ),
(0,-1999941, 'Excellent work! You are win Argent champion!' ,0,3,0,0, '' ),
(0,-1999942, 'The Sunreavers are proud to present their representatives in this trial by combat.' ,0,0,0,1, '' ),
(0,-1999943, 'Welcome, champions. Today, before the eyes of your leeders and peers, you will prove youselves worthy combatants.' ,0,0,0,1, '' ),
(0,-1999944, 'Fight well, Horde! Lok\'tar Ogar!' ,0,1,0,5, '' ),
(0,-1999945, 'Finally, a fight worth watching.' ,0,1,0,5, '' ),
(0,-1999946, 'I did not come here to watch animals tear at each other senselessly, Tirion' ,0,1,0,5, '' ),
(0,-1999947, 'You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.' ,0,1,0,5, '' ),
(0,-1999948, 'Will tought! You next challenge comes from the Crusade\'s own ranks. You will be tested against their consederable prowess.' ,0,1,0,5, '' ),
(0,-1999949, 'You may begin!' ,0,0,0,5, '' ),
(0,-1999950, 'Well, then. Let us begin.' ,0,1,0,5, '' ),
(0,-1999951, 'Take this time to consider your past deeds.' ,16248,1,0,5, '' ),
(0,-1999952, 'What is the meaning of this?' ,0,1,0,5, '' ),
(0,-1999953, 'No...I\'m still too young' ,0,1,0,5, '' ),
(0,-1999954, 'Excellent work! You are win Argent champion!' ,0,3,0,0, '' );
-- Update mob's stats
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35571, 12006, 0, 0, 0, 0, 28597, 0, 28597, 0, 'Runok Wildmane', 'Grand Champion of the Thunder Bluff', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67529, 67530, 67528, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_shaman_toc5'),
(12006, 0, 0, 0, 0, 0, 28597, 0, 28597, 0, 'Runok Wildmane', 'Grand Champion of the Thunder Bluff', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68319, 67530, 67528, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35569, 12005, 0, 0, 0, 0, 28637, 0, 28637, 0, 'Eressea Dawnsinger', 'Grand Champion of Silvermoon', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66044, 66042, 66045, 66043, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_mage_toc5'),
(12005, 0, 0, 0, 0, 0, 28637, 0, 28637, 0, 'Eressea Dawnsinger', 'Grand Champion of Silvermoon', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68312, 68310, 66045, 68311, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35572, 12009, 0, 0, 0, 0, 28587, 0, 28587, 0, 'Mokra the Skullcrusher', 'Grand Champion of Orgrimmar', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 0, 'boss_warrior_toc5'),
(12009, 0, 0, 0, 0, 0, 28587, 0, 28587, 0, 'Mokra the Skullcrusher', 'Grand Champion of Orgrimmar', '', 0, 80, 80, 0, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 1, ''),
(35617, 12008, 0, 0, 0, 0, 28589, 0, 28589, 0, 'Deathstalker Visceri', 'Grand Champion of Undercity', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67709, 67706, 67701, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_rouge_toc5'),
(12008, 0, 0, 0, 0, 0, 28589, 0, 28589, 0, 'Deathstalker Visceri', 'Grand Champion of Undercity', '', 0, 80, 80, 0, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67709, 67706, 67701, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35570, 12007, 0, 0, 0, 0, 28588, 0, 28588, 0, 'Zul\'tore', 'Grand Champion of Sen\'jin', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_hunter_toc5'),
(12007, 0, 0, 0, 0, 0, 28588, 0, 28588, 0, 'Zul\'tore', 'Grand Champion of Sen\'jin', '', 0, 80, 80, 0, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34701, 12001, 0, 0, 0, 0, 28736, 0, 28736, 0, 'Colosos', 'Grand Champion of the Exodar', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67529, 67530, 67528, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_shaman_toc5'),
(12001, 0, 0, 0, 0, 0, 28736, 0, 28736, 0, 'Colosos', 'Grand Champion of the Exodar', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 17, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68319, 67530, 68318, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34703, 12003, 0, 0, 0, 0, 28564, 0, 28564, 0, 'Lana Stouthammer', 'Grand Champion of Ironforge', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67709, 67706, 67701, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 0, 'boss_rouge_toc5'),
(12003, 0, 0, 0, 0, 0, 28564, 0, 28564, 0, 'Lana Stouthammer', 'Grand Champion of Ironforge', '', 0, 80, 80, 0, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 1, ''),
(34702, 12000, 0, 0, 0, 0, 28586, 0, 28586, 0, 'Ambrose Boltspark', 'Grand Champion of Gnomeregan', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66044, 66042, 66045, 66043, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_mage_toc5'),
(12000, 0, 0, 0, 0, 0, 28586, 0, 28586, 0, 'Ambrose Boltspark', 'Grand Champion of Gnomeregan', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68312, 68310, 66045, 68311, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34657, 12002, 0, 0, 0, 0, 28735, 0, 28735, 0, 'Jaelyne Evensong', 'Grand Champion of Darnassus', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_hunter_toc5'),
(12002, 0, 0, 0, 0, 0, 28735, 0, 28735, 0, 'Jaelyne Evensong', 'Grand Champion of Darnassus', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34705, 12004, 0, 0, 0, 0, 28560, 0, 28560, 0, 'Marshal Jacob Alerius', 'Grand Champion of Stormwind', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_warrior_toc5'),
(12004, 0, 0, 0, 0, 0, 28560, 0, 28560, 0, 'Marshal Jacob Alerius', 'Grand Champion of Stormwind', '', 0, 80, 80, 0, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35590, 12444, 0, 0, 0, 0, 24996, 24999, 24997, 0, 'Risen Champion', 'Black Knight\'s Minion', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(12444, 0, 0, 0, 0, 0, 24996, 24999, 24997, 0, 'Risen Champion', 'Black Knight\'s Minion', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7.076, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35564, 12436, 0, 0, 0, 0, 25528, 0, 25528, 0, 'Risen Arelas Brightstar', 'Black Knight\'s Minion', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_risen_ghoul'),
(12436, 0, 0, 0, 0, 0, 25528, 0, 25528, 0, 'Risen Arelas Brightstar', 'Black Knight\'s Minion', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67879, 67886, 67880, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 9.43467, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35545, 0, 0, 0, 0, 0, 25528, 0, 25528, 0, 'Risen Jaeren Sunsworn', 'Black Knight\'s Minion', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_risen_ghoul'),
(35451, 35490, 0, 0, 0, 0, 29837, 0, 29837, 0, 'The Black Knight', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 11.8, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 35451, 0, 0, 0, 0, 0, 0, 0, 0, 67724, 67745, 67718, 67725, 0, 0, 0, 0, 0, 0, 9530, 9530, '', 0, 3, 5.95238, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 805257215, 0, 'boss_black_knight'),
(35490, 0, 0, 0, 0, 0, 29837, 0, 29837, 0, 'The Black Knight', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 17.6, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 35490, 0, 0, 0, 0, 0, 0, 0, 0, 67884, 68306, 67881, 67883, 0, 0, 0, 0, 0, 0, 10700, 10700, '', 0, 3, 37.7387, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 805257215, 1, ''),
(35119, 12011, 0, 0, 0, 0, 29616, 0, 29616, 0, 'Eadric the Pure', 'Grand Champion of the Argent Crusade', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 14.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66865, 66863, 66867, 66935, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 42.5, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 0, 'boss_eadric'),
(12011, 0, 0, 0, 0, 0, 29616, 0, 29616, 0, 'Eadric the Pure', 'Grand Champion of the Argent Crusade', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 22.4, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66865, 66863, 66867, 66935, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 42.5, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 1, ''),
(34928, 12010, 0, 0, 0, 0, 29490, 0, 29490, 0, 'Argent Confessor Paletress', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 14.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66546, 66536, 66515, 66537, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 0, 'boss_paletress'),
(12010, 0, 0, 0, 0, 0, 29490, 0, 29490, 0, 'Argent Confessor Paletress', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 22.4, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66546, 67674, 66515, 67675, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 1, ''),
(35309, 12439, 0, 0, 0, 0, 29762, 29763, 29762, 0, 'Argent Lightwielder', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 8.4, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67247, 67290, 15284, 67237, 0, 0, 0, 0, 0, 0, 7651, 7651, '', 0, 3, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_argent_soldier'),
(12439, 0, 0, 0, 0, 0, 29762, 29763, 29762, 0, 'Argent Lightwielder', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 12.6, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67247, 67290, 15284, 67237, 0, 0, 0, 0, 0, 0, 7651, 7651, '', 0, 3, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35305, 12488, 0, 0, 0, 0, 29758, 29759, 29758, 0, 'Argent Monk', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 8, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67251, 67255, 67233, 67235, 0, 0, 0, 0, 0, 0, 7661, 7661, '', 0, 3, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_argent_soldier'),
(12488, 0, 0, 0, 0, 0, 29758, 29759, 29758, 0, 'Argent Monk', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 12, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67251, 67255, 67233, 67235, 0, 0, 0, 0, 0, 0, 7661, 7661, '', 0, 3, 23.5867, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35307, 12448, 0, 0, 0, 0, 29760, 29761, 29760, 0, 'Argent Priestess', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 5.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67194, 36176, 67289, 67229, 0, 0, 0, 0, 0, 0, 7653, 7653, '', 0, 3, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_argent_soldier'),
(12448, 0, 0, 0, 0, 0, 29760, 29761, 29760, 0, 'Argent Priestess', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 8.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67194, 36176, 67289, 67229, 0, 0, 0, 0, 0, 0, 7653, 7653, '', 0, 3, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
-- Memory's Stats
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35052, 12446, 0, 0, 0, 0, 29553, 0, 29553, 0, 'Memory of Algalon', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67679, 67678, 67677, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12446, 0, 0, 0, 0, 0, 29553, 0, 29553, 0, 'Memory of Algalon', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67679, 67678, 67677, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35041, 12486, 0, 0, 0, 0, 29546, 0, 29546, 0, 'Memory of Archimonde', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12486, 0, 0, 0, 0, 0, 29546, 0, 29546, 0, 'Memory of Archimonde', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35033, 12438, 0, 0, 0, 0, 14367, 0, 14367, 0, 'Memory of Chromaggus', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12438, 0, 0, 0, 0, 0, 14367, 0, 14367, 0, 'Memory of Chromaggus', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35046, 12451, 0, 0, 0, 0, 29549, 0, 29549, 0, 'Memory of Cyanigosa', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12451, 0, 0, 0, 0, 0, 29549, 0, 29549, 0, 'Memory of Cyanigosa', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35043, 12482, 0, 0, 0, 0, 18699, 0, 18699, 0, 'Memory of Delrissa', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12482, 0, 0, 0, 0, 0, 18699, 0, 18699, 0, 'Memory of Delrissa', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35047, 12456, 0, 0, 0, 0, 26644, 0, 26644, 0, 'Memory of Eck', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12456, 0, 0, 0, 0, 0, 26644, 0, 26644, 0, 'Memory of Eck', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35044, 12440, 0, 0, 0, 0, 23428, 0, 23428, 0, 'Memory of Entropius', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12440, 0, 0, 0, 0, 0, 23428, 0, 23428, 0, 'Memory of Entropius', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35039, 12725, 0, 0, 0, 0, 18698, 0, 18698, 0, 'Memory of Gruul', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12725, 0, 0, 0, 0, 0, 18698, 0, 18698, 0, 'Memory of Gruul', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35034, 12453, 0, 0, 0, 0, 29540, 0, 29540, 0, 'Memory of Hakkar', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12453, 0, 0, 0, 0, 0, 29540, 0, 29540, 0, 'Memory of Hakkar', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35049, 12455, 0, 0, 0, 0, 29557, 0, 29557, 0, 'Memory of Heigan', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12455, 0, 0, 0, 0, 0, 29557, 0, 29557, 0, 'Memory of Heigan', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35030, 12454, 0, 0, 0, 0, 29537, 0, 29537, 0, 'Memory of Herod', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12454, 0, 0, 0, 0, 0, 29537, 0, 29537, 0, 'Memory of Herod', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(34942, 12484, 0, 0, 0, 0, 29525, 0, 29525, 0, 'Memory of Hogger', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12484, 0, 0, 0, 0, 0, 29525, 0, 29525, 0, 'Memory of Hogger', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35050, 12450, 0, 0, 0, 0, 29185, 0, 29185, 0, 'Memory of Ignis', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 5, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12450, 0, 0, 0, 0, 0, 29185, 0, 29185, 0, 'Memory of Ignis', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 5, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35042, 12442, 0, 0, 0, 0, 29547, 0, 29547, 0, 'Memory of Illidan', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12442, 0, 0, 0, 0, 0, 29547, 0, 29547, 0, 'Memory of Illidan', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35045, 12483, 0, 0, 0, 0, 29558, 0, 29558, 0, 'Memory of Ingvar', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12483, 0, 0, 0, 0, 0, 29558, 0, 29558, 0, 'Memory of Ingvar', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35037, 12437, 0, 0, 0, 0, 29542, 0, 29542, 0, 'Memory of Kalithresh', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66552, 66620, 66619, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29.2313, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12437, 0, 0, 0, 0, 0, 29542, 0, 29542, 0, 'Memory of Kalithresh', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66552, 66620, 66619, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35031, 12441, 0, 0, 0, 0, 29562, 0, 29562, 0, 'Memory of Lucifron', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 66619, 66552, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12441, 0, 0, 0, 0, 0, 29562, 0, 29562, 0, 'Memory of Lucifron', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 66619, 66552, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35038, 12445, 0, 0, 0, 0, 29543, 0, 29543, 0, 'Memory of Malchezaar', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12445, 0, 0, 0, 0, 0, 29543, 0, 29543, 0, 'Memory of Malchezaar', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35029, 12447, 0, 0, 0, 0, 29556, 0, 29556, 0, 'Memory of Mutanus', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12447, 0, 0, 0, 0, 0, 29556, 0, 29556, 0, 'Memory of Mutanus', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35048, 12449, 0, 0, 0, 0, 21401, 0, 21401, 0, 'Memory of Onyxia', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12449, 0, 0, 0, 0, 0, 21401, 0, 21401, 0, 'Memory of Onyxia', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35028, 12485, 0, 0, 0, 0, 29536, 0, 29536, 0, 'Memory of VanCleef', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12485, 0, 0, 0, 0, 0, 29536, 0, 29536, 0, 'Memory of VanCleef', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35040, 12452, 0, 0, 0, 0, 29545, 0, 0, 0, 'Memory of Vashj', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12452, 0, 0, 0, 0, 0, 29545, 0, 29545, 0, 'Memory of Vashj', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35036, 12443, 0, 0, 0, 0, 29541, 0, 29541, 0, 'Memory of Vek\'nilash', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12443, 0, 0, 0, 0, 0, 29541, 0, 29541, 0, 'Memory of Vek\'nilash', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35051, 12487, 0, 0, 0, 0, 28548, 0, 28548, 0, 'Memory of Vezax', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12487, 0, 0, 0, 0, 0, 28548, 0, 28548, 0, 'Memory of Vezax', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35032, 0, 0, 0, 0, 0, 14992, 0, 14992, 0, 'Memory of Thunderaan', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory');
-- Equipment
UPDATE `creature_template` SET `equipment_id`=2049 WHERE `entry` in (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332);
UPDATE `creature_template` SET `equipment_id`=2025 WHERE `entry` in (35571,12006);
UPDATE `creature_template` SET `equipment_id`=2021 WHERE `entry` in (35569,12005);
UPDATE `creature_template` SET `equipment_id`=2018 WHERE `entry` in (35572,12009);
UPDATE `creature_template` SET `equipment_id`=2020 WHERE `entry` in (35617,12008);
UPDATE `creature_template` SET `equipment_id`=2019 WHERE `entry` in (35570,12007);
UPDATE `creature_template` SET `equipment_id`=2096 WHERE `entry` in (34701,12001);
UPDATE `creature_template` SET `equipment_id`=2093 WHERE `entry` in (34703,12003);
UPDATE `creature_template` SET `equipment_id`=2095 WHERE `entry` in (34657,12002);
UPDATE `creature_template` SET `equipment_id`=2092 WHERE `entry` in (34705,12004);
UPDATE `creature_template` SET `equipment_id`=834 WHERE `entry` in (35119,12011);
UPDATE `creature_template` SET `equipment_id`=235 WHERE `entry` in (34928,12010);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (35451,12012);
-- Griphon of black Knight
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35491, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 4, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_black_knight_skeletal_gryphon');
DELETE FROM `script_waypoint` WHERE `entry`=35491;
INSERT INTO `script_waypoint` VALUES
(35491,1,781.513062, 657.989624, 466.821472,0,''),
(35491,2,759.004639, 665.142029, 462.540771,0,''),
(35491,3,732.936646, 657.163879, 452.678284,0,''),
(35491,4,717.490967, 646.008545, 440.136902,0,''),
(35491,5,707.570129, 628.978455, 431.128632,0,''),
(35491,6,705.164063, 603.628418, 422.956635,0,''),
(35491,7,716.350891, 588.489746, 420.801666,0,''),
(35491,8,741.702881, 580.167725, 420.523010,0,''),
(35491,9,761.634033, 586.382690, 422.206207,0,''),
(35491,10,775.982666, 601.991943, 423.606079,0,''),
(35491,11,769.051025, 624.686157, 420.035126,0,''),
(35491,12,756.582214, 631.692322, 412.529785,0,''),
(35491,13,744.841,634.505,411.575,0,'');
-- Griphon of black Knight before battle start
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35492, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_gr');
DELETE FROM `script_waypoint` WHERE `entry`=35492;
INSERT INTO `script_waypoint` VALUES
(35492,1,741.067078, 634.471558, 411.569366,0,''),
(35492,2,735.726196, 639.247498, 414.725555,0,''),
(35492,3,730.187256, 653.250977, 418.913269,0,''),
(35492,4,734.517700, 666.071350, 426.259247,0,''),
(35492,5,739.638489, 675.339417, 438.226776,0,''),
(35492,6,741.833740, 698.797302, 456.986328,0,''),
(35492,7,734.647339, 711.084778, 467.165314,0,''),
(35492,8,715.388489, 723.820862, 470.333588,0,''),
(35492,9,687.178711, 730.140503, 470.569336,0,'');
-- Announcer for start event
DELETE FROM `creature_template` WHERE `entry` in (35591,35592);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35591, 0, 0, 0, 0, 0, 29894, 0, 0, 0, 'Jaeren Sunsworn', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart'),
(35592, 0, 0, 0, 0, 0, 29893, 0, 0, 0, 'Arelas Brightstar', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart');
-- Spawn Announcer in normal/heroic mode
DELETE FROM `creature` WHERE `id`=35004;
DELETE FROM `creature` WHERE `guid` in (180100);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(180100, 35591, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0);
-- Addons
REPLACE INTO `creature_template_addon` VALUES
-- Argent
(35309, 0, 0, 0, 1, 0, '63501 0'),
(12439, 0, 0, 0, 1, 0, '63501 0'),
(35305, 0, 0, 0, 1, 0, '63501 0'),
(12488, 0, 0, 0, 1, 0, '63501 0'),
(35307, 0, 0, 0, 1, 0, '63501 0'),
(12448, 0, 0, 0, 1, 0, '63501 0'),
(35119, 0, 0, 0, 1, 0, '63501 0'),
(12011, 0, 0, 0, 1, 0, '63501 0'),
(34928, 0, 0, 0, 1, 0, '63501 0'),
(12010, 0, 0, 0, 1, 0, '63501 0'),
-- Faction_champ
(35323, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(35570, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(12007, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(35326, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(35569, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(12005, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(35314, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(35572, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(12009, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(35325, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(35571, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(12006, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(35329, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(34703, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(12003, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(35331, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(34702, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(12000, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(35327, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(35617, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(12008, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(35328, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(34705, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(12004, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(35330, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(34701, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(12001, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(35332, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0'),
(12002, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0'),
(34657, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0');
-- Argent Warhorse
UPDATE `creature_template` SET `VehicleId` =486 WHERE `entry` =35644;
-- Immunes (crash fix xD )
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1073741823 WHERE `entry` IN
(35309,12439, -- Argent Lightwielder
35305,12488, -- Argent Monk
35307,12448); -- Argent Priestess

-- Halls of Reflection
-- Creature Templates 
UPDATE `creature_template` SET `speed_walk`='1.5', `speed_run`='2.0' WHERE `entry` in (36954, 37226);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRintro' WHERE `entry` in (37221, 37223);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_falric' WHERE `entry`=38112;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_marwyn' WHERE `entry`=38113;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_lich_king_hr' WHERE `entry`=36954;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lich_king_hor' WHERE `entry`=37226;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRextro' WHERE `entry` in (36955, 37554);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_raging_gnoul' WHERE `entry`=36940;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_risen_witch_doctor' WHERE `entry`=36941;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_abon' WHERE `entry`=37069;
UPDATE `creature_template` SET `scale`='0.8', `equipment_id`='1221' WHERE `entry` in (37221, 36955);
UPDATE `creature_template` SET `equipment_id`='1290' WHERE `entry` in (37223, 37554);
UPDATE `creature_template` SET `equipment_id`='0' WHERE `entry`=36954;
UPDATE `creature_template` SET `scale`='1' WHERE `entry`=37223;
UPDATE `creature_template` SET `scale`='0.8' WHERE `entry` in (36658, 37225, 37223, 37226, 37554);
UPDATE `creature_template` SET `unit_flags`='768', `type_flags`='268435564' WHERE `entry` in (38177, 38176, 38173, 38172, 38567, 38175);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_frostworn_general' WHERE `entry`=36723;
UPDATE `creature_template` set `scale`='1' where `entry` in (37223);
UPDATE `instance_template` SET `script` = 'instance_hall_of_reflection' WHERE map=668;
UPDATE `gameobject_template` SET `faction`='1375' WHERE `entry` in (197341, 202302, 201385, 201596);
UPDATE `creature` SET `phaseMask` = 128 WHERE `id` = 36993; 
UPDATE `creature` SET `phaseMask` = 64 WHERE `id` = 36990; 
UPDATE `instance_template` SET `script` = 'instance_halls_of_reflection' WHERE map=668;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1594540 AND -1594430;
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1594473, '<need translate>', 'Глупая девчонка! Тот кого ты ищещь давно убит! Теперь он лишь призрак, слабый отзвук в моем сознании!', 17229,1,0,0, '67234'),
(-1594474, '<need translate>', 'Я не повторю прежней ошибки, Сильвана. На этот раз тебе не спастись. Ты не оправдала моего доверия и теперь тебя ждет только забвение!', 17228,1,0,0, '67234'),
-- SCENE - Hall Of Reflection (Extro) - PreEscape
(-1594477, 'Your allies have arrived, Jaina, just as you promised. You will all become powerful agents of the Scourge.', 'Твои союзники прибыли, Джайна! Как ты и обещала... Ха-ха-ха-ха... Все вы станете могучими солдатами Плети...', 17212,1,0,0, '67234'),
(-1594478, 'I will not make the same mistake again, Sylvanas. This time there will be no escape. You will all serve me in death!', 'Я не повторю прежней ошибки, Сильвана! На этот раз тебе не спастись. Вы все будите служить мне после смерти...', 17213,1,0,0, '67234'),
(-1594479, 'He is too powerful, we must leave this place at once! My magic will hold him in place for only a short time! Come quickly, heroes!', 'Он слишком силен. Мы должны выбраться от сюда как можно скорее. Моя магия задержит его ненадолго, быстрее герои...', 16644,0,0,1, '67234'),
(-1594480, 'He\'s too powerful! Heroes, quickly, come to me! We must leave this place immediately! I will do what I can do hold him in place while we flee.', 'Он слишком силен. Герои скорее, за мной. Мы должны выбраться отсюда немедленно. Я постараюсь его задержать, пока мы будем убегать.', 17058,0,0,1, '67234'),
-- SCENE - Hall Of Reflection (Extro) - Escape
(-1594481, 'Death\'s cold embrace awaits.', 'Смерть распростерла ледяные обьятия!', 17221,1,0,0, '67234'),
(-1594482, 'Rise minions, do not left them us!', 'Восстаньте прислужники, не дайте им сбежать!', 17216,1,0,0, '67234'),
(-1594483, 'Minions sees them. Bring their corpses back to me!', 'Схватите их! Принесите мне их тела!', 17222,1,0,0, '67234'),
(-1594484, 'No...', 'Надежды нет!', 17214,1,0,0, '67234'),
(-1594485, 'All is lost!', 'Смирись с судьбой.', 17215,1,0,0, '67234'),
(-1594486, 'There is no escape!', 'Бежать некуда!', 17217,1,0,0, '67234'),
(-1594487, 'I will destroy this barrier. You must hold the undead back!', 'Я разрушу эту преграду, а вы удерживайте нежить на расстоянии!', 16607,1,0,0, '67234'),
(-1594488, 'No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!', 'Никакие стены не удержат Королеву Баньши. Держите нежить на расстоянии, я сокрушу эту преграду.', 17029,1,0,0, '67234'),
(-1594489, 'Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!', 'Опять ледяная стена... Я разобью ее, только не дайте нежити прервать мои заклинания...', 16608,1,0,0, '67234'),
(-1594490, 'Another barrier? Stand strong, champions! I will bring the wall down!', 'Еще одна преграда. Держитесь герои! Я разрушу эту стену!', 17030,1,0,0, '67234'),
(-1594491, 'Succumb to the chill of the grave.', 'Покоритесь Леденящей смерти!', 17218,1,0,0, '67234'),
(-1594492, 'Another dead end.', 'Вы в ловушке!', 17219,1,0,0, '67234'),
(-1594493, 'How long can you fight it?', 'Как долго вы сможете сопротивляться?', 17220,1,0,0, '67234'),
(-1594494, '<need translate>', 'Он с нами играет. Я  покажу ему что бывает когда лед встречается со огнем!', 16609,0,0,0, '67234'),
(-1594495, 'Your barriers can\'t hold us back much longer, monster. I will shatter them all!', 'Твои преграды больше не задержат нас, чудовище. Я смету их с пути!', 16610,1,0,0, '67234'),
(-1594496, 'I grow tired of these games, Arthas! Your walls can\'t stop me!', 'Я устала от этих игр Артас. Твои стены не остановят меня!', 17031,1,0,0, '67234'),
(-1594497, 'You won\'t impede our escape, fiend. Keep the undead off me while I bring this barrier down!', 'Ты не помешаешь нам уйти, монстр. Сдерживайте нежить, а я уничтожу эту преграду.', 17032,1,0,0, '67234'),
(-1594498, 'There\'s an opening up ahead. GO NOW!', 'Я вижу выход, скорее!', 16645,1,0,0, '67234'),
(-1594499, 'We\'re almost there... Don\'t give up!', 'Мы почти выбрались, не сдавайтесь!', 16646,1,0,0, '67234'),
(-1594500, 'There\'s an opening up ahead. GO NOW!', 'Я вижу выход, скорее!', 17059,1,0,0, '67234'),
(-1594501, 'We\'re almost there! Don\'t give up!', 'Мы почти выбрались, не сдавайтесь!', 17060,1,0,0, '67234'),
(-1594502, 'It... It\'s a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!', 'Больше некуда бежать. Теперь нам придется сражаться. Это наша последняя битва!', 16647,1,0,0, '67234'),
(-1594503, 'BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!', 'Проклятый тупик, значит все закончится здесь. Готовьтесь герои, это наша последняя битва.', 17061,1,0,0, '67234'),
(-1594504, 'Nowhere to run! You\'re mine now...', 'Ха-ха-ха... Бежать некуда. Теперь вы мои!', 17223,1,0,0, '67234'),
(-1594505, 'Soldiers of Lordaeron, rise to meet your master\'s call!', 'Солдаты Лордерона, восстаньте по зову Господина!', 16714,1,0,0, '67234'),
(-1594506, 'The master surveyed his kingdom and found it... lacking. His judgement was swift and without mercy. Death to all!', 'Господин осмотрел свое королевство и признал его негодным! Его суд был быстрым и суровым - предать всех смерти!', 16738,1,0,0, '67234'),
-- FrostWorn General
(-1594519, 'You are not worthy to face the Lich King!', 'Вы недостойны предстать перед Королем - Личом!', 16921,1,0,0, '67234'),
(-1594520, 'Master, I have failed...', 'Господин... Я подвел вас...', 16922,1,0,0, '67234');

-- Waipoints to escort event on Halls of reflection

DELETE FROM script_waypoint WHERE entry IN (36955,37226,37554);
INSERT INTO script_waypoint VALUES
-- Jaina

   (36955, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (36955, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (36955, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (36955, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (36955, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (36955, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (36955, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (36955, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (36955, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (36955, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (36955, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (36955, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (36955, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (36955, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (36955, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (36955, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (36955, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (36955, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (36955, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (36955, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (36955, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (36955, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Sylvana

   (37554, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (37554, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (37554, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (37554, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (37554, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (37554, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (37554, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (37554, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (37554, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (37554, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37554, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37554, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37554, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (37554, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37554, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37554, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37554, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (37554, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37554, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37554, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (37554, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (37554, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Lich King

   (37226, 0, 5577.187,2236.003,733.012, 0, 'WP1'),
   (37226, 1, 5587.682,2228.586,733.011, 0, 'WP2'),
   (37226, 2, 5600.715,2209.058,731.618, 0, 'WP3'),
   (37226, 3, 5606.417,2193.029,731.129, 0, 'WP4'),
   (37226, 4, 5598.562,2167.806,730.918, 0, 'WP5'), 
   (37226, 5, 5559.218,2106.802,731.229, 0, 'WP6'),
   (37226, 6, 5543.498,2071.234,731.702, 0, 'WP7'),
   (37226, 7, 5528.969,2036.121,731.407, 0, 'WP8'),
   (37226, 8, 5512.045,1996.702,735.122, 0, 'WP9'),
   (37226, 9, 5504.490,1988.789,735.886, 0, 'WP10'),
   (37226, 10, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37226, 11, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37226, 12, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37226, 13, 5445.157,1894.955,748.757, 0, 'WP13'),
   (37226, 14, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37226, 15, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37226, 16, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37226, 17, 5335.422,1766.951,767.635, 0, 'WP17'),
   (37226, 18, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37226, 19, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37226, 20, 5278.694,1697.912,785.692, 0, 'WP20'),
   (37226, 21, 5283.589,1703.755,784.176, 0, 'WP19');
   
   -- Fixed Halls of Reflection
DELETE FROM `gameobject_template` WHERE `entry` = 500001;
INSERT INTO `gameobject_template` VALUES ('500001', '0', '9214', 'Ice Wall', '', '', '', '1375', '0', '2.5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1'); 
DELETE FROM `creature` WHERE `id` IN (38112,37223,37221,36723,36955,37158,38113,37554,37226) AND `map` = 668;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES 
('38112', '668', '3', '1', '0', '0', '5276.81', '2037.45', '709.32', '5.58779', '604800', '0', '0', '377468', '0', '0', '0', '0', '0', '0'),
('37223', '668', '3', '64', '0', '0', '5266.78', '1953.42', '707.697', '0.740877', '7200', '0', '0', '6972500', '85160', '0', '0', '0', '0', '0'),
('37221', '668', '3', '128', '0', '0', '5266.78', '1953.42', '707.697', '0.740877', '7200', '0', '0', '5040000', '881400', '0', '0', '0', '0', '0'),
('36723', '668', '3', '1', '0', '0', '5413.84', '2116.44', '707.695', '3.88117', '7200', '0', '0', '315000', '0', '0', '0', '0', '0', '0'),
('36955', '668', '3', '128', '0', '0', '5547.27', '2256.95', '733.011', '0.835987', '7200', '0', '0', '252000', '881400', '0', '0', '0', '0', '0'),
('37158', '668', '3', '2', '0', '0', '5304.5', '2001.35', '709.341', '4.15073', '7200', '0', '0', '214200', '0', '0', '0', '0', '0', '0'),
('38113', '668', '3', '1', '0', '0', '5341.72', '1975.74', '709.32', '2.40694', '604800', '0', '0', '539240', '0', '0', '0', '0', '0', '0'),
('37554', '668', '3', '64', '0', '0', '5547.27', '2256.95', '733.011', '0.835987', '7200', '0', '0', '252000', '881400', '0', '0', '0', '0', '0'),
('37226', '668', '3', '1', '0', '0', '5551.29', '2261.33', '733.012', '4.0452', '604800', '0', '0', '27890000', '0', '0', '0', '0', '0', '0');
DELETE FROM `gameobject` WHERE `id` IN (202302,202236,201596,500001,196391,196392,202396,201885,197341,201976,197342,197343,201385,202212,201710,202337,202336,202079) AND `map`=668;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES 
('202302', '668', '3', '1', '5309.51', '2006.64', '709.341', '5.50041', '0', '0', '0.381473', '-0.92438', '604800', '100', '1'),
('202236', '668', '3', '1', '5309.51', '2006.64', '709.341', '5.53575', '0', '0', '0.365077', '-0.930977', '604800', '100', '1'),
('201596', '668', '3', '1', '5275.28', '1694.23', '786.147', '0.981225', '0', '0', '0.471166', '0.882044', '25', '0', '1'),
('500001', '668', '3', '1', '5323.61', '1755.85', '770.305', '0.784186', '0', '0', '0.382124', '0.924111', '604800', '100', '1'),
('196391', '668', '3', '1', '5232.31', '1925.57', '707.695', '0.815481', '0', '0', '0.396536', '0.918019', '300', '0', '1'),
('196392', '668', '3', '1', '5232.31', '1925.57', '707.695', '0.815481', '0', '0', '0.396536', '0.918019', '300', '0', '1'),
('202396', '668', '3', '1', '5434.27', '1881.12', '751.303', '0.923328', '0', '0', '0.445439', '0.895312', '604800', '100', '1'),
('201885', '668', '3', '1', '5494.3', '1978.27', '736.689', '1.0885', '0', '0', '0.517777', '0.855516', '604800', '100', '1'),
('197341', '668', '3', '1', '5359.24', '2058.35', '707.695', '3.96022', '0', '0', '0.917394', '-0.397981', '300', '100', '1'),
('201976', '668', '3', '1', '5264.6', '1959.55', '707.695', '0.736951', '0', '0', '0.360194', '0.932877', '300', '100', '0'),
('197342', '668', '3', '1', '5520.72', '2228.89', '733.011', '0.778581', '0', '0', '0.379532', '0.925179', '300', '100', '1'),
('197343', '668', '3', '1', '5582.96', '2230.59', '733.011', '5.49098', '0', '0', '0.385827', '-0.922571', '300', '100', '1'),
('201385', '668', '3', '1', '5540.39', '2086.48', '731.066', '1.00057', '0', '0', '0.479677', '0.877445', '604800', '100', '1'),
('202212', '668', '1', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('201710', '668', '1', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202337', '668', '2', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202336', '668', '2', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202079', '668', '3', '1', '5250.96', '1639.36', '784.302', '0', '0', '0', '0', '0', '-604800', '100', '1');

--Pit of Saron
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN  (36764,31260,36767,36766,37665,36788,37712,37711,37713,36874,36765,36841,38487,37575,37572,37576,37577,37578,37579,36886,37581,36770,36772,36773,36771,36891,37580,36879,36661,36896,36896,36842,36830,37728,36892,36840,36893);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
 ('3676400', '36764', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Demoralizing Shout'),
 ('3676401', '36764', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Heroic Strike'),
 ('3676700', '36767', '0', '0', '100', '7', '5000', '5000', '16000', '18000', '11', '70421', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Blizzard'),
 ('3676707', '36767', '0', '0', '100', '6', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Stop Movement on Aggro'),
 ('3676701', '36767', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69570', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Fireball and Set Phase 1 on Aggro'),
 ('3676703', '36767', '3', '13', '100', '6', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3676706', '36767', '0', '13', '100', '7', '0', '0', '1500', '3000', '11', '69570', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Fireball above 15% Mana (Phase 1)'),
 ('3676705', '36767', '3', '11', '100', '6', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3676702', '36767', '9', '0', '100', '7', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Start Movement Beyond 30 Yards'),
 ('3676704', '36767', '7', '0', '100', '6', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - On Evade set Phase to 0'),
 ('3676600', '36766', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Demoralizing Shout'),
 ('3676601', '36766', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Heroic Strike'),
 ('3676501', '36765', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69569', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Earth Shield on Aggro'),
 ('3676502', '36765', '0', '0', '100', '7', '9000', '11000', '15000', '21000', '11', '35199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Healing Stream Totem'),
 ('3676500', '36765', '14', '0', '100', '6', '25000', '40', '0', '0', '11', '70425', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Chain Heal on Friendlies'),
 ('3678810', '36788', '0', '0', '80', '3', '3000', '5000', '11000', '17000', '11', '70269', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Conversion Beam'),
 ('3678809', '36788', '0', '0', '80', '5', '3000', '5000', '11000', '17000', '11', '69578', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Conversion Beam'),
 ('3678811', '36788', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Stop Movement on Aggro'),
 ('3678812', '36788', '4', '0', '100', '2', '0', '0', '0', '0', '11', '69577', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3678813', '36788', '3', '13', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3678806', '36788', '0', '13', '100', '3', '0', '0', '1500', '3000', '11', '69577', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3678814', '36788', '3', '11', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3678815', '36788', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement Beyond 30 Yards'),
 ('3678808', '36788', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - On Evade set Phase to 0'),
 ('3678807', '36788', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Stop Movement on Aggro'),
 ('3678800', '36788', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70270', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3678801', '36788', '3', '13', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3678802', '36788', '0', '13', '100', '5', '0', '0', '1500', '3000', '11', '70270', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3678804', '36788', '3', '11', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3678805', '36788', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement Beyond 30 Yards'),
 ('3678803', '36788', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - On Evade set Phase to 0'),
 ('3771211', '37712', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Shadowcaster- Stop Movement on Aggro'),
 ('3771210', '37712', '4', '0', '100', '2', '0', '0', '0', '0', '11', '70386', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3771209', '37712', '3', '13', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3771208', '37712', '0', '13', '100', '3', '0', '0', '1500', '3000', '11', '70386', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3771207', '37712', '3', '11', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3771206', '37712', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement Beyond 30 Yards'),
 ('3771213', '37712', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - On Evade set Phase to 0'),
 ('3771205', '37712', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Stop Movement on Aggro'),
 ('3771212', '37712', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70387', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3771204', '37712', '3', '13', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3771202', '37712', '0', '13', '100', '5', '0', '0', '1500', '3000', '11', '70387', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3771201', '37712', '3', '11', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3771200', '37712', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - Start Movement Beyond 30 Yards'),
 ('3771203', '37712', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Necrolyte - On Evade set Phase to 0'),
 ('3771300', '37713', '0', '0', '100', '7', '5000', '5000', '13000', '19000', '11', '70392', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Torturer - Cast Black Brand'),
 ('3771301', '37713', '0', '0', '80', '7', '3000', '8000', '11000', '15000', '11', '70391', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deathwhisper Torturer - Cast Curse of Agony'),
 ('3687400', '36874', '0', '0', '100', '7', '4000', '7000', '12000', '16000', '11', '55216', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Disturbed Glacial Revenant - Cast Avalanche'),
 ('3684102', '36841', '0', '0', '75', '7', '3000', '4000', '12000', '12000', '11', '69579', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Warrior - Cast Arcing Slice'),
 ('3684101', '36841', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '61044', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Warrior - Cast Demoralizing Shout'),
 ('3684100', '36841', '0', '0', '75', '7', '5000', '5000', '21000', '22000', '11', '69580', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Warrior - Cast Shield Block'),
 ('3848702', '38487', '0', '0', '75', '7', '3000', '4000', '12000', '12000', '11', '69579', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Warrior - Cast Arcing Slice'),
 ('3848700', '38487', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '61044', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Warrior - Cast Demoralizing Shout'),
 ('3848701', '38487', '0', '0', '75', '7', '5000', '5000', '21000', '22000', '11', '69580', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Fallen Warrior - Cast Shield Block'),
 ('3757500', '37575', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69569', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Alliance Slave - Cast Earth Shield on Aggro'),
 ('3757501', '37575', '0', '0', '100', '7', '9000', '11000', '15000', '21000', '11', '35199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Allia nce Slave - Cast Healing Stream Totem'),
 ('3757502', '37575', '14', '0', '100', '6', '25000', '40', '0', '0', '11', '70425', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Alliance Slave - Cast Chain Heal on Friendlies'),
 ('3757200', '37572', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Alliance Slave - Cast Demoralizing Shout'),
 ('3757201', '37572', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Alliance Slave - Cast Heroic Strike'),
 ('3757202', '37572', '0', '0', '100', '7', '3000', '7000', '10000', '21000', '11', '59992', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Alliance Slave - Cast Cleave'),
 ('3757604', '37576', '0', '0', '100', '7', '5000', '5000', '16000', '18000', '11', '70421', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Blizzard'),
 ('3757605', '37576', '0', '0', '100', '6', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Stop Movement on Aggro'),
 ('3757606', '37576', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69570', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Fireball and Set Phase 1 on Aggro'),
 ('3757600', '37576', '3', '13', '100', '6', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3757608', '37576', '0', '13', '100', '7', '0', '0', '1500', '3000', '11', '69570', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Fireball above 15% Mana (Phase 1)'),
 ('3757602', '37576', '3', '11', '100', '6', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3757603', '37576', '9', '0', '100', '7', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Start Movement Beyond 30 Yards'),
 ('3757607', '37576', '7', '0', '100', '6', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - On Evade set Phase to 0'),
 ('3757601', '37576', '0', '0', '100', '7', '15000', '15000', '35000', '38000', '11', '46604', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Alliance Slave - Cast Ice Block'),
 ('3757702', '37577', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Horde Slave - Cast Demoralizing Shout'),
 ('3757700', '37577', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Horde Slave - Cast Heroic Strike'),
 ('3757701', '37577', '0', '0', '100', '7', '3000', '7000', '10000', '21000', '11', '59992', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Horde Slave - Cast Cleave'),
 ('3757801', '37578', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69569', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Horde Slave - Cast Earth Shield on Aggro'),
 ('3757800', '37578', '0', '0', '100', '7', '9000', '11000', '15000', '21000', '11', '35199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Horde Slave - Cast Healing Stream Totem'),
 ('3757802', '37578', '14', '0', '100', '6', '25000', '40', '0', '0', '11', '70425', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Freed Horde Slave - Cast Chain Heal on Friendlies'),
 ('3757907', '37579', '0', '0', '100', '7', '5000', '5000', '16000', '18000', '11', '70421', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Blizzard'),
 ('3757906', '37579', '0', '0', '100', '6', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Stop Movement on Aggro'),
 ('3757905', '37579', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69570', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Fireball and Set Phase 1 on Aggro'),
 ('3757904', '37579', '3', '13', '100', '6', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Horde Slave - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3757903', '37579', '0', '13', '100', '7', '0', '0', '1500', '3000', '11', '69570', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Fireball above 15% Mana (Phase 1)'),
 ('3757900', '37579', '3', '11', '100', '6', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Horde Slave - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3757901', '37579', '9', '0', '100', '7', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Start Movement Beyond 30 Yards'),
 ('3757902', '37579', '7', '0', '100', '6', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - On Evade set Phase to 0'),
 ('3757908', '37579', '0', '0', '100', '7', '15000', '15000', '35000', '38000', '11', '46604', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Ice Block'),
 ('3688600', '36886', '0', '0', '100', '2', '0', '0', '0', '0', '11', '69504', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Geist Ambusher - Cast Leaping Face Maul'),
 ('3688601', '36886', '0', '0', '100', '4', '0', '0', '0', '0', '11', '70271', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Geist Ambusher - Cast Leaping Face Maul'),
 ('3758105', '37581', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gorkun Ironskull - Cast Demoralizing Shout'),
 ('3758104', '37581', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gorkun Ironskull - Cast Heroic Strike'),
 ('3758103', '37581', '0', '0', '100', '7', '3000', '7000', '10000', '21000', '11', '59992', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gorkun Ironskull - Cast Cleave'),
 ('3677008', '36770', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Demoralizing Shout'),
 ('3677009', '36770', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Heroic Strike'),
 ('3677201', '36772', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Demoralizing Shout'),
 ('3677200', '36772', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Heroic Strike'),
 ('3677307', '36773', '0', '0', '100', '7', '5000', '5000', '16000', '18000', '11', '70421', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Blizzard'),
 ('3677306', '36773', '0', '0', '100', '6', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Stop Movement on Aggro'),
 ('3677303', '36773', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69570', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Fireball and Set Phase 1 on Aggro'),
 ('3677302', '36773', '3', '13', '100', '6', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Horde Slave - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3677301', '36773', '0', '13', '100', '7', '0', '0', '1500', '3000', '11', '69570', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Fireball above 15% Mana (Phase 1)'),
 ('3677300', '36773', '3', '11', '100', '6', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Horde Slave - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3677304', '36773', '9', '0', '100', '7', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Start Movement Beyond 30 Yards'),
 ('3677305', '36773', '7', '0', '100', '6', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - On Evade set Phase to 0'),
 ('3677100', '36771', '4', '0', '100', '6', '0', '0', '0', '0', '11', '69569', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Earth Shield on Aggro'),
 ('3677102', '36771', '0', '0', '100', '7', '9000', '11000', '15000', '21000', '11', '35199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Healing Stream Totem'),
 ('3677101', '36771', '14', '0', '100', '6', '25000', '40', '0', '0', '11', '70425', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Horde Slave - Cast Chain Heal on Friendlies'),
 ('3771100', '37711', '2', '0', '100', '6', '45', '0', '0', '0', '11', '70393', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hungering Ghoul - Devour Flesh at 45% HP'),
 ('3689101', '36891', '0', '0', '100', '3', '5000', '8000', '18000', '25000', '11', '69527', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Iceborn Proto-Drake - Cast Frost Breath'),
 ('3689100', '36891', '0', '0', '100', '5', '5000', '8000', '18000', '25000', '11', '70272', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Iceborn Proto-Drake - Cast Frost Breath'),
 ('3758002', '37580', '0', '0', '100', '7', '8000', '8000', '33000', '35000', '11', '69565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Martin Victus - Cast Demoralizing Shout'),
 ('3758001', '37580', '0', '0', '100', '7', '5000', '5000', '13000', '15000', '11', '69566', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Martin Victus - Cast Heroic Strike'),
 ('3758000', '37580', '0', '0', '100', '7', '3000', '7000', '10000', '21000', '11', '59992', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Martin Victus - Cast Cleave'),
 ('3687900', '36879', '0', '0', '100', '3', '3000', '5000', '12000', '17000', '11', '69581', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Plagueborn Horror - Cast Pustulant Flesh'),
 ('3687901', '36879', '0', '0', '100', '5', '3000', '5000', '12000', '17000', '11', '70273', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Plagueborn Horror - Cast Pustulant Flesh'),
 ('3687903', '36879', '0', '0', '100', '7', '6000', '7000', '15000', '20000', '11', '70274', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Plagueborn Horror - Cast Toxic Waste'),
 ('3687902', '36879', '2', '0', '100', '6', '10', '0', '0', '0', '11', '69582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Plagueborn Horror - Blight Bomb at 10% HP'),
 ('3666100', '36661', '0', '0', '100', '7', '5000', '5000', '15000', '18000', '11', '69246', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rimefang - Cast Hoarfrost'),
 ('3689632', '36896', '0', '0', '100', '3', '3000', '5000', '14000', '17000', '11', '69520', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonespine Gargoyle - Cast Gargoyle Strike'),
 ('3689633', '36896', '0', '0', '100', '5', '3000', '5000', '14000', '17000', '11', '70275', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonespine Gargoyle - Cast Gargoyle Strike'),
 ('3689634', '36896', '0', '0', '100', '7', '8000', '8000', '25000', '25000', '11', '69575', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonespine Gargoyle - Cast Stoneform'),
 ('3684214', '36842', '0', '0', '100', '3', '3000', '5000', '14000', '17000', '11', '69574', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Freezing Circle'),
 ('3684213', '36842', '0', '0', '100', '5', '3000', '5000', '14000', '17000', '11', '70276', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Freezing Circle'),
 ('3684215', '36842', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Stop Movement on Aggro'),
 ('3684212', '36842', '4', '0', '100', '2', '0', '0', '0', '0', '11', '69573', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3684200', '36842', '3', '13', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3684201', '36842', '0', '13', '100', '3', '0', '0', '1500', '3000', '11', '69573', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3684202', '36842', '3', '11', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3684203', '36842', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement Beyond 30 Yards'),
 ('3684204', '36842', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - On Evade set Phase to 0'),
 ('3684205', '36842', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Stop Movement on Aggro'),
 ('3684206', '36842', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70277', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3684207', '36842', '3', '13', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3684208', '36842', '0', '13', '100', '5', '0', '0', '1500', '3000', '11', '70277', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3684209', '36842', '3', '11', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3684210', '36842', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Start Movement Beyond 30 Yards'),
 ('3684211', '36842', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - On Evade set Phase to 0'),
 ('3683001', '36830', '0', '0', '100', '3', '3000', '5000', '14000', '15000', '11', '70278', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Laborer - Cast Puncture Wound Strike'),
 ('3683000', '36830', '0', '0', '100', '5', '3000', '5000', '14000', '15000', '11', '70279', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Laborer - Cast Puncture Wound Strike'),
 ('3683002', '36830', '0', '0', '100', '3', '8000', '8000', '10000', '21000', '11', '69572', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Laborer - Cast Shovelled!'),
 ('3683003', '36830', '0', '0', '100', '3', '8000', '8000', '10000', '21000', '11', '70280', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Laborer - Cast Shovelled!'),
 ('3683004', '36830', '4', '0', '100', '6', '0', '0', '0', '0', '11', '70302', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Laborer - Cast Blinding Dirt'),
 ('3772810', '37728', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Stop Movement on Aggro'),
 ('3772811', '37728', '4', '0', '100', '2', '0', '0', '0', '0', '11', '75330', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3772812', '37728', '3', '13', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3772813', '37728', '0', '13', '100', '3', '0', '0', '1500', '3000', '11', '75330', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3772805', '37728', '3', '11', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3772806', '37728', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement Beyond 30 Yards'),
 ('3772800', '37728', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - On Evade set Phase to 0'),
 ('3772801', '37728', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Stop Movement on Aggro'),
 ('3772802', '37728', '4', '0', '100', '4', '0', '0', '0', '0', '11', '75331', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3772809', '37728', '3', '13', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3772803', '37728', '0', '13', '100', '5', '0', '0', '1500', '3000', '11', '75331', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3772804', '37728', '3', '11', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3772807', '37728', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Start Movement Beyond 30 Yards'),
 ('3772808', '37728', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - On Evade set Phase to 0'),
 ('3689205', '36892', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Stop Movement on Aggro'),
 ('3689206', '36892', '4', '0', '100', '2', '0', '0', '0', '0', '11', '69528', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3689207', '36892', '3', '13', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3689214', '36892', '0', '13', '100', '3', '0', '0', '1500', '3000', '11', '69528', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3689210', '36892', '3', '11', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3689212', '36892', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement Beyond 30 Yards'),
 ('3689211', '36892', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - On Evade set Phase to 0'),
 ('3689209', '36892', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Stop Movement on Aggro'),
 ('3689208', '36892', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70281', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3689202', '36892', '3', '13', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3689204', '36892', '0', '13', '100', '5', '0', '0', '1500', '3000', '11', '70281', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3689203', '36892', '3', '11', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3689200', '36892', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith- Start Movement Beyond 30 Yards'),
 ('3689201', '36892', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Coldwraith - On Evade set Phase to 0'),
 ('3689213', '36892', '0', '0', '100', '7', '6000', '6000', '25000', '27000', '11', '69516', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Deathbringer - Cast Summon Undead'),
 ('3684001', '36840', '0', '0', '100', '3', '5000', '5000', '14000', '18000', '11', '69603', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Wrathbringer - Cast Blight'),
 ('3684000', '36840', '0', '0', '100', '5', '5000', '5000', '14000', '18000', '11', '70285', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Wrathbringer - Cast Blight'),
 ('3126001', '31260', '0', '0', '100', '7', '5000', '6000', '12000', '15000', '11', '70291', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Skycaller - Cast Frostblade'),
 ('3126000', '31260', '0', '0', '100', '7', '8000', '9000', '16000', '21000', '11', '70292', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Skycaller - Cast Glacial Strike'),
 ('3689329', '36893', '0', '0', '100', '3', '8000', '8000', '25000', '25000', '11', '69586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Cast Hellfire'),
 ('3689316', '36893', '0', '0', '100', '5', '8000', '8000', '25000', '25000', '11', '70283', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Cast Hellfire'),
 ('3689328', '36893', '0', '0', '100', '7', '10000', '10000', '21000', '21000', '11', '69584', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Cast Tactical Blink'),
 ('3689327', '36893', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer- Stop Movement on Aggro'),
 ('3689326', '36893', '4', '0', '100', '2', '0', '0', '0', '0', '11', '69583', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Cast Fireball and Set Phase 1 on Aggro'),
 ('3689318', '36893', '3', '13', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3689319', '36893', '0', '13', '100', '3', '0', '0', '1500', '3000', '11', '69583', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Cast Fireball above 15% Mana (Phase 1)'),
 ('3689315', '36893', '3', '11', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3689320', '36893', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Start Movement Beyond 30 Yards'),
 ('3689321', '36893', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - On Evade set Phase to 0'),
 ('3689330', '36893', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Stop Movement on Aggro'),
 ('3689322', '36893', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70282', '1', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Cast Fireball and Set Phase 1 on Aggro'),
 ('3689323', '36893', '3', '13', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer- Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3689331', '36893', '0', '13', '100', '5', '0', '0', '1500', '3000', '11', '70282', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer- Cast Fireball above 15% Mana (Phase 1)'),
 ('3689324', '36893', '3', '11', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3689325', '36893', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer- Start Movement Beyond 30 Yards'),
 ('3689317', '36893', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ymirjar Flamebearer - On Evade set Phase to 0');
 
UPDATE creature_template SET  AIName='EventAI' WHERE entry IN   (36764,31260,36767,36766,37665,36788,37712,37711,37713,36874,36765,36841,38487,37575,37572,37576,37577,37578,37579,36886,37581,36770,36772,36773,36771,36891,37580,36879,36661,36896,36896,36842,36830,37728,36892,36840,36893);
DELETE FROM creature WHERE guid=4460035;
DELETE FROM creature WHERE guid=4462840;
DELETE FROM creature WHERE guid=4462841;
DELETE FROM creature WHERE guid=4462837;

--Forge Souls
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (37107,37158,37774,37582,21925,37496,37587,37584,37588,37587,37498,37583,37779,36522,36499,36478,36666,36551,36564,36620,36516);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
 ('3777410', '37774', '0', '0', '100', '7', '11000', '11000', '20000', '45000', '11', '22746', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Cast Cone of Cold'),
 ('3777407', '37774', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Stop Movement on Aggro'),
 ('3777411', '37774', '4', '0', '100', '2', '0', '0', '0', '0', '11', '51779', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Cast Frostfire Bolt and Set Phase 1 on Aggro'),
 ('3777408', '37774', '3', '0', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3777409', '37774', '0', '6', '100', '3', '0', '0', '1500', '3000', '11', '51779', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Cast Frostfire Bolt above 15% Mana (Phase 1)'),
 ('3777414', '37774', '3', '5', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3777403', '37774', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Start Movement Beyond 30 Yards'),
 ('3777402', '37774', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - On Evade set Phase to 0'),
 ('3777400', '37774', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Stop Movement on Aggro'),
 ('3777404', '37774', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70616', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Cast Frostfire Bolt and Set Phase 1 on Aggro'),
 ('3777406', '37774', '3', '0', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3777413', '37774', '0', '6', '100', '5', '0', '0', '1500', '3000', '11', '70616', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Cast Frostfire Bolt above 15% Mana (Phase 1)'),
 ('3777401', '37774', '3', '5', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3777412', '37774', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - Start Movement Beyond 30 Yards'),
 ('3777405', '37774', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Elandra - On Evade set Phase to 0'),
 ('3758209', '37582', '0', '0', '100', '7', '11000', '11000', '20000', '45000', '11', '22746', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Cast Cone of Cold'),
 ('3758210', '37582', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Stop Movement on Aggro'),
 ('3758211', '37582', '4', '0', '100', '2', '0', '0', '0', '0', '11', '51779', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Cast Frostfire Bolt and Set Phase 1 on Aggro'),
 ('3758212', '37582', '3', '0', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3758215', '37582', '0', '6', '100', '3', '0', '0', '1500', '3000', '11', '51779', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Cast Frostfire Bolt above 15% Mana (Phase 1)'),
 ('3758202', '37582', '3', '5', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3758214', '37582', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Start Movement Beyond 30 Yards'),
 ('3758213', '37582', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - On Evade set Phase to 0'),
 ('3758207', '37582', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Stop Movement on Aggro'),
 ('3758206', '37582', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70616', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Cast Frostfire Bolt and Set Phase 1 on Aggro'),
 ('3758205', '37582', '3', '0', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3758200', '37582', '0', '6', '100', '5', '0', '0', '1500', '3000', '11', '70616', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Cast Frostfire Bolt above 15% Mana (Phase 1)'),
 ('3758201', '37582', '3', '5', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3758208', '37582', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Start Movement Beyond 30 Yards'),
 ('3758203', '37582', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - On Evade set Phase to 0'),
 ('3758204', '37582', '0', '0', '100', '7', '12000', '12000', '19000', '24000', '11', '22645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Archmage Koreln - Casts Frost Nova'),
 ('2192507', '21925', '0', '0', '100', '7', '15000', '15500', '25500', '30000', '11', '34017', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Casts Rain of Chaos'),
 ('2192506', '21925', '0', '0', '100', '6', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Stop Movement on Aggro'),
 ('2192505', '21925', '4', '0', '100', '6', '0', '0', '0', '0', '11', '12471', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Cast Frostbolt and Set Phase 1 on Aggro'),
 ('2192504', '21925', '3', '0', '100', '6', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('2192503', '21925', '0', '6', '100', '7', '0', '0', '1500', '3000', '11', '12471', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Cast FrostBolt above 15% Mana (Phase 1)'),
 ('2192502', '21925', '3', '5', '100', '6', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('2192501', '21925', '9', '0', '100', '7', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - Start Movement Beyond 30 Yards'),
 ('2192500', '21925', '7', '0', '100', '6', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Avatar of Sathal - On Evade set Phase to 0'),
 ('3749601', '37496', '2', '0', '100', '7', '10', '0', '10300', '12900', '11', '69350', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Raise Dead When Below 10% HP'),
 ('3749600', '37496', '0', '0', '100', '7', '10000', '14000', '20500', '22900', '11', '69413', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Strangulating'),
 ('3758703', '37587', '2', '0', '100', '7', '10', '0', '10300', '12900', '11', '69350', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Raise Dead When Below 10% HP'),
 ('3758701', '37587', '0', '0', '100', '7', '10000', '14000', '20500', '22900', '11', '69413', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Strangulating'),
 ('3758400', '37584', '2', '0', '100', '7', '10', '0', '10300', '12900', '11', '69350', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Raise Dead When Below 10% HP'),
 ('3758401', '37584', '0', '0', '100', '7', '10000', '14000', '20500', '22900', '11', '69413', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Strangulating'),
 ('3758800', '37588', '2', '0', '100', '7', '10', '0', '10300', '12900', '11', '69350', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Raise Dead When Below 10% HP'),
 ('3758801', '37588', '0', '0', '100', '7', '10000', '14000', '20500', '22900', '11', '69413', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Strangulating'),
 ('3758700', '37587', '2', '0', '100', '7', '10', '0', '10300', '12900', '11', '69350', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Raise Dead When Below 10% HP'),
 ('3758702', '37587', '0', '0', '100', '7', '10000', '14000', '20500', '22900', '11', '69413', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Strangulating'),
 ('3749802', '37498', '2', '0', '100', '7', '10', '0', '10300', '12900', '11', '69350', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Raise Dead When Below 10% HP'),
 ('3749803', '37498', '0', '0', '100', '7', '10000', '14000', '20500', '22900', '11', '69413', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coliseum Champion  - Cast Strangulating'),
 ('3758316', '37583', '4', '0', '100', '2', '0', '0', '0', '0', '11', '31942', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Ranger Kalira - Cast Multi-Shot on Aggro'),
 ('3758317', '37583', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70513', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Ranger Kalira - Cast Multi-Shot on Aggro'),
 ('3777900', '37779', '4', '0', '100', '2', '0', '0', '0', '0', '11', '31942', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Ranger Loralen - Cast Multi-Shot on Aggro'),
 ('3777901', '37779', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70513', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Ranger Loralen - Cast Multi-Shot on Aggro'),
 ('3652200', '36522', '0', '0', '100', '3', '8000', '10000', '16000', '22000', '11', '69088', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soul Horror - Casts Soul Strike'),
 ('3652201', '36522', '0', '0', '100', '5', '8000', '10000', '16000', '22000', '11', '70211', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soul Horror - Casts Soul Strike'),
 ('3649902', '36499', '0', '0', '100', '3', '12000', '15000', '19000', '24000', '11', '69060', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Reaper  - Casts Frost Nova'),
 ('3649901', '36499', '0', '0', '100', '5', '12000', '15000', '19000', '24000', '11', '70209', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Reaper  - Casts Frost Nova'),
 ('3649900', '36499', '0', '0', '100', '7', '10000', '14000', '22000', '29000', '11', '69058', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Reaper - Casts Shadow Lance'),
 ('3647800', '36478', '0', '0', '100', '7', '9000', '14000', '25000', '30000', '11', '69056', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Watchman  - Casts Shroud of Runes'),
 ('3647801', '36478', '1', '0', '100', '7', '1000', '1000', '1800000', '1800000', '11', '69053', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Watchman - Casts Unholy Rage on Spawn'),
 ('3666600', '36666', '0', '0', '100', '7', '10000', '14000', '27000', '30000', '11', '69633', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spectral Warden  - Casts Spectral Warden'),
 ('3666602', '36666', '0', '0', '100', '3', '15000', '17000', '29000', '35000', '11', '69148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spectral Warden - Cast Wail of Souls'),
 ('3666601', '36666', '0', '0', '100', '5', '15000', '17000', '29000', '35000', '11', '70210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spectral Warden - Cast Wail of Souls'),
 ('3655100', '36551', '0', '0', '100', '3', '15000', '17000', '29000', '35000', '11', '68895', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spiteful Apparition - Cast Spite'),
 ('3655101', '36551', '0', '0', '100', '5', '15000', '17000', '29000', '35000', '11', '70212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spiteful Apparition - Cast Spite'),
 ('3656401', '36564', '0', '0', '100', '3', '15000', '17000', '29000', '35000', '11', '69080', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Bonecaster - Cast Bone Volley'),
 ('3656404', '36564', '0', '0', '100', '5', '15000', '17000', '29000', '35000', '11', '70206', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Bonecaster - Cast Bone Volley'),
 ('3656402', '36564', '0', '0', '100', '3', '5000', '7000', '17000', '19000', '11', '69069', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Bonecaster - Cast Shield of Bones'),
 ('3656405', '36564', '0', '0', '100', '5', '5000', '7000', '17000', '19000', '11', '70207', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Bonecaster - Cast Shield of Bones'),
 ('3656403', '36564', '4', '0', '100', '2', '0', '0', '0', '0', '11', '31942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Bonecaster - Cast Raise Dead'),
 ('3656400', '36564', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70513', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Bonecaster - Cast Raise Dead'),
 ('3662002', '36620', '2', '0', '100', '3', '55', '0', '10300', '12900', '11', '69066', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept  - Cast Drain Life When Below 25% HP'),
 ('3662004', '36620', '2', '0', '100', '5', '55', '0', '10300', '12900', '11', '70213', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept  - Cast Drain Life When Below 25% HP'),
 ('3662000', '36620', '0', '0', '100', '7', '5000', '7000', '29000', '35000', '11', '69562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adep - Cast Raise Dead'),
 ('3662001', '36620', '14', '0', '90', '2', '320', '40', '0', '0', '11', '69564', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adep - Casts Shadow Mend on Friendlies'),
 ('3662003', '36620', '14', '0', '90', '4', '320', '40', '0', '0', '11', '70205', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adep - Casts Shadow Mend on Friendlies'),
 ('3651609', '36516', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Stop Movement on Aggro'),
 ('3651611', '36516', '4', '0', '100', '2', '0', '0', '0', '0', '11', '69068', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3651612', '36516', '3', '0', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3651613', '36516', '0', '6', '100', '3', '0', '0', '1500', '3000', '11', '69068', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Shadow Bolt above 15% Mana (Phase 1)'),
 ('3651600', '36516', '3', '5', '100', '2', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3651610', '36516', '9', '0', '100', '3', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Start Movement Beyond 30 Yards'),
 ('3651608', '36516', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - On Evade set Phase to 0'),
 ('3651615', '36516', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Stop Movement on Aggro'),
 ('3651607', '36516', '4', '0', '100', '4', '0', '0', '0', '0', '11', '70208', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Cast Shadow Bolt and Set Phase 1 on Aggro'),
 ('3651606', '36516', '3', '0', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Start Movement and Set Phase 2 when Mana is at 15%'),
 ('3651604', '36516', '0', '6', '100', '5', '0', '0', '1500', '3000', '11', '70208', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Cast Shadow Bolt above 15% Mana (Phase 1)'),
 ('3651603', '36516', '3', '5', '100', '4', '100', '28', '0', '0', '21', '0', '0', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
 ('3651602', '36516', '9', '0', '100', '5', '30', '50', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - Start Movement Beyond 30 Yards'),
 ('3651601', '36516', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adept - On Evade set Phase to 0'),
 ('3651616', '36516', '0', '0', '100', '7', '5000', '7000', '29000', '35000', '11', '69562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Adep - Cast Raise Dead'),
 ('3651614', '36516', '0', '0', '100', '7', '12000', '15000', '19000', '24000', '11', '69128', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Animator  - Casts Soul Siphon'),
 ('3651605', '36516', '0', '0', '100', '7', '10000', '14000', '22000', '28000', '11', '69131', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soulguard Animator  - Casts Soul Sickness');

UPDATE creature_template SET  AIName='EventAI' WHERE entry IN   (37107,37158,37774,37582,21925,37496,37587,37584,37588,37587,37498,37583,37779,36522,36499,36478,36666,36551,36564,36620,36516);

--Naxxramas
UPDATE creature_template SET ScriptName="mob_gluths_zombie" WHERE entry=16360;

-- Remove invisible state for Shadow Fissure c16129 used by Kel'Thuzad in Naxxramas and set proper baseattacktiem (by Ident thx Trazom for baseattacktime)
UPDATE `creature_template` SET `baseattacktime`=5000,`flags_extra`=`flags_extra`&~128 WHERE `entry`=16129;
-- Naxxramas
-- Delete Copse Scarabs
DELETE FROM `creature` WHERE `id`= 16698;
UPDATE `creature_template` SET `mindmg` = 400, `maxdmg` = 600, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = 16698;
-- Delete Gothik adds
DELETE FROM `creature` WHERE `id`IN (16124,16125,16126,16127,16148,16149,16150);
-- Faction Gothik adds
UPDATE `creature_template` SET faction_A = 21, faction_H = 21 WHERE `entry` IN (16124,16125,16126,16127,16148,16149,16150);
-- Grobbulus Wolke
UPDATE `creature_template` SET faction_A = 21, faction_H = 21 WHERE `entry` IN (16363);
-- Razevous Damage
UPDATE `creature_template` SET 
    `mindmg` = 13000, 
    `maxdmg` = 18000, 
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), 
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7), 
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) 
  WHERE `entry` = 16061;
-- several mobs
DELETE FROM `creature` WHERE `id` IN (16983,16981,16982,16984);
UPDATE `creature_template` SET faction_A = 21, faction_H = 21 WHERE `entry` IN (16983,16981,16982,16984); -- Noth Skelletions
DELETE FROM `creature` WHERE `id` IN (16286);
UPDATE `creature_template` SET faction_A = 21, faction_H = 21 WHERE `entry` IN (16286); -- Lortheb Spores
DELETE FROM `creature` WHERE `id` IN (16486); -- Web Wrap
UPDATE `creature_template` SET faction_A = 21, faction_H = 21 WHERE `entry` IN (16486,17055); -- Maexxna

UPDATE creature SET deathState = 1 WHERE id = 16381;
UPDATE areatrigger_teleport SET target_map = 0, target_position_x = 3118.5715 , target_position_y = -3754.5629 , target_position_z = 133.6039, target_orientation = 4.1361 WHERE id = 4156;

UPDATE creature SET spawntimesecs = '72000' WHERE map = 533;
UPDATE gameobject SET spawntimesecs = '72000' WHERE map = 533 AND id = 181366;
UPDATE gameobject SET spawntimesecs = '72000' WHERE map = 533 AND id IN (181126,181195,181167,181235,181197,181209,181123,181120,181121,181124,181125,181170,181119,181200,181201,181202,181203,181241,181225,181228,181496,181366);

UPDATE `creature_template` SET mechanic_immune_mask = 113983323 WHERE `entry` IN (15956,15953,15952,16028,15931,15932,15928,16061,16060,16064,16065,16062,16063,15954,15936,16011,15989,15990);
UPDATE `creature_template` SET maxlevel = 83, minlevel = 83  WHERE `entry` IN (15956,15953,15952,16028,15931,15932,15928,15930,15929,16061,16060,16064,16065,16062,16063,15954,15936,16011,15989,15990);
UPDATE `creature_template` SET maxlevel = 73, minlevel = 73 WHERE `entry` = 16363;
-- *******************************************************************************************
-- Doors
-- *******************************************************************************************
-- Spawns
-- Delete existing Spawns
DELETE FROM gameobject WHERE id IN (181126,181195,181167,181235,181197,181209,181123,181120,181121,181124,181125,181170,181119,181200,181201,181202,181203,181241,181225,181228,181496);
INSERT INTO `gameobject` (`guid`, `id`, `map`,`spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
-- 181126 Anub'Rekhan Door
('333000','181126','533','1','3202.7','-3476.08','287.061','0','0','0','0','0','6','0','1'),
-- 181195 Anub'Rekhan Gate
('333001','181195','533','1','3143.53','-3572.74','286','5.49778','0','0','0.382687','-0.923878','6','0','1'),
-- 181167 Grand Widow Faerlina Door
('333002','181167','533','1','3120.78','-3791','273.93','0','0','0','0','0','6','0','1'),
-- 181235 Grand Widow Faerlina - Web
('333003','181235','533','1','3322.53','-3695.4','259','3.14159','0','0','1','3.13916e-007','6','0','0'),
-- 181209 Maexxna - Outer Web Door 
('333004','181209','533','1','3425.68','-3846.1','309.109','3.14159','0','0','1','3.13916e-007','6','0','1'),
-- 181197 Maexxna - Inner Web Door
('333005','181197','533','1','3446.72','-3860.3','308.76','3.14159','0','0','0','0','6','0','1'),
-- 181124 Vaccuum - Enter Gate
('333006','181124','533','1','2765.75','-3384.38','267.685','0','0','0','0','1','6','0','1'),
-- 181125 Vaccuum - Exit Gate
('333007','181125','533','1','2617.74','-3336.81','267.684','0','0','0','0','1','25','0','1'),
-- 181170 Vaccuum - Combat Gate
('333008','181170','533','1','2692.04','-3361.4','267.684','0','0','0','0','1','6','0','1'),
-- 181119 Deathknight Door
('333009','181119','533','1','2587.76','-3017.16','240.5','3.14159','0','0','1','3.13916e-007','6','0','1'),
-- 181200 Noth - Entry Door
('333010','181200','533','1','2737.83','-3489.78','262.107','0','0','0','0','1','25','0','0'),
-- 181201 Noth - Exit Door
('333011','181201','533','1','2684.37','-3559.83','261.944','1.57079','0','0','0.707105','0.707109','25','0','1'),
-- 181202 Heigan the Unclean - Entry Door
('333012','181202','533','1','2823.47','-3685.07','274.079','0','0','0','0','1','25','0','0'),
-- 181203 Heigan the Unclean - Exit Door
('333013','181203','533','1','2771.42','-3737.02','273.619','1.57079','0','0','0.707105','0.707109','25','0','1'),
-- 181496 Heigan the Unclean - Exit Gate
('333020','181496','533','1','2909.82','-3817.88','273.926','0','0','0','0','1','6','0','1'),
-- 181241 Loatheb - Entrance Door
('333014','181241','533','1','2909.73','-3947.75','273.924','0','0','0','0','1','6','0','1'),
-- 181123 Patchwork - Exit Door
('333015','181123','533','1','3318.27','-3254.42','293.786','1.57079','0','0','0.707105','0.707109','6','0','1'),
-- 181120 Gluth - Exit Door
('333016','181120','533','1','3338.63','-3101.36','297.0','3.14159','0','0','1','1.26759e-006','6','0','1'),
-- 181121 Thaddius Door
('333017','181121','533','1','3424.77','-3014.72','295.608','0','0','0','0','1','25','0','1'),
-- 181225 Frostwyrm Waterfall Door
('333018','181225','533','1','3537.32','-5160.48','143.619','4.50667','0','0','0.775973','-0.630766','25','0','1'),
-- 181228 KelThuzad Door 
('333019','181228','533','1','3635.34','-5090.31','143.206','1.37','0','0','0.632673','0.774419','6','0','1');

UPDATE gameobject_template SET size = 1.2 WHERE entry = 181201;
UPDATE gameobject_template SET faction = 14 WHERE entry IN (181126,181195,181167,181235,181197,181209,181123,181120,181121,181124,181125,181170,181119,181200,181201,181202,181203,181241,181225,181228,181496,181366);

UPDATE creature_template SET health_mod = '3346800' WHERE entry = '16061';
UPDATE creature_template SET health_mod = '2231200' WHERE entry = '15956';
UPDATE creature_template SET health_mod = '780920' WHERE entry = '30549';
UPDATE creature_template SET health_mod = '2231200' WHERE entry = '15953';
UPDATE creature_template SET health_mod = '2789000' WHERE entry = '15932';
UPDATE creature_template SET health_mod = '836700' WHERE entry = '16060';
UPDATE creature_template SET health_mod = '2928450' WHERE entry = '15931';
UPDATE creature_template SET health_mod = '2500000' WHERE entry = '15990';
UPDATE creature_template SET health_mod = '780920' WHERE entry = '16065';
UPDATE creature_template SET health_mod = '4322950' WHERE entry = '16028';
UPDATE creature_template SET health_mod = '6693600' WHERE entry = '16011';
UPDATE creature_template SET health_mod = '2510100' WHERE entry = '15952';
UPDATE creature_template SET health_mod = '2789000' WHERE entry = '15954';
UPDATE creature_template SET health_mod = '4183500' WHERE entry = '15989';
UPDATE creature_template SET health_mod = '780920' WHERE entry = '16063';
UPDATE creature_template SET health_mod = '3834875' WHERE entry = '15928';
UPDATE creature_template SET health_mod = '780920' WHERE entry = '16064';
UPDATE creature_template SET health_mod = '3067900' WHERE entry = '15936';

-- Ocolus
--Ruby drake
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dynamicflags` = 8, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103, `spell1` = 50232, `spell2` = 50248, `spell3` = 50240, `spell4` =  50253, `spell5` = 53112, `VehicleId` = 70 WHERE `entry` = 27756;
-- Amber Drake
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dynamicflags` = 8, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103, `spell1` = 49840, `spell2` = 49838, `spell3` = 49592, `spell4` =  0, `spell5` = 53112, `VehicleId` = 70 WHERE `entry` = 27755;
-- Emerald Drake
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dynamicflags` = 8, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103, `spell1` = 50328, `spell2` = 50341, `spell3` = 50344, `spell4` =  0, `spell5` = 53112, `VehicleId` = 70 WHERE `entry` = 27692;

UPDATE creature_template SET npcflag=1 WHERE entry IN (27657,27658,27659);

UPDATE creature_template SET ScriptName='boss_drakos' WHERE entry = 27654;
UPDATE creature_template SET ScriptName='boss_urom' WHERE entry = 27655;
UPDATE creature_template SET ScriptName='mob_centrifige_construct' WHERE entry = 27641;
UPDATE creature_template SET ScriptName='boss_varos' WHERE entry = 27447;
UPDATE creature_template SET ScriptName='boss_eregos' WHERE entry = 27656;
UPDATE creature_template SET ScriptName='npc_planar_anomaly' WHERE entry = 30879;
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry` = 27658;

-- Planar anomaly
UPDATE creature_template SET InhabitType = 5, modelid1 =  28107, modelid3 = 28107 WHERE entry=30879;
-- Unstable Sphere
UPDATE creature_template SET minlevel = 80, maxlevel = 80, mindmg = 422, maxdmg = 586, faction_A = 16, faction_H = 16, attackpower = 642, dmg_multiplier = 1, minrangedmg = 345, maxrangedmg = 509, rangedattackpower = 103 WHERE entry = 28166;
-- Drakos the Interrogator
DELETE FROM `script_texts` WHERE npc_entry='27654';
INSERT INTO `script_texts` VALUES ('27654', -1578000, 'The prisoners shall not go free. The word of Malygos is law!','', '', '', '', '', '', '', '', 13594,1,0,0, 'drakos SAY_AGGRO');
INSERT INTO `script_texts` VALUES ('27654', -1578001, 'A fitting punishment!','', '', '', '', '', '', '', '', 13602, 1,0,0, 'drakos SAY_KILL_1');
INSERT INTO `script_texts` VALUES ('27654', -1578002, 'Sentence: executed!','', '', '', '', '', '', '', '', 13603,1,0,0, 'drakos SAY_KILL_2');
INSERT INTO `script_texts` VALUES ('27654', -1578003, 'Another casualty of war!','', '', '', '', '', '', '', '', 13604, 1,0,0, 'drakos SAY_KILL_3');
INSERT INTO `script_texts` VALUES ('27654', -1578004, 'The war... goes on.','', '', '', '', '', '', '', '', 13605,1,0,0,  'drakos SPELL_DEATH');
INSERT INTO `script_texts` VALUES ('27654', -1578005, 'It is too late to run!','', '', '', '', '', '', '', '', 13598, 1,0,0, 'drakos SAY_PULL_1');
INSERT INTO `script_texts` VALUES ('27654', -1578006, 'Gather \'round! ','', '', '', '', '', '', '', '', 13599, 1,0,0, 'drakos SAY_PULL_2');
INSERT INTO `script_texts` VALUES ('27654', -1578007, 'None shall escape!','', '', '', '', '', '', '', '', 13600, 1,0,0, 'drakos SAY_PULL_3');
INSERT INTO `script_texts` VALUES ('27654', -1578008, 'I condemn you to death!','', '', '', '', '', '', '', '', 13601,1,0,0,  'drakos SAY_PULL_4');
INSERT INTO `script_texts` VALUES ('27654', -1578009, 'Tremble, worms!','', '', '', '', '', '', '', '', 13595,1,0,0,  'drakos SAY_STOMP_1');
INSERT INTO `script_texts` VALUES ('27654', -1578010, 'I will crush you!', '', '', '', '', '', '', '', '', 13596, 1,0,0, 'drakos SAY_STOMP_2');
INSERT INTO `script_texts` VALUES ('27654', -1578011, 'Can you fly?', '', '', '', '', '', '', '', '', 13597, 1,0,0, 'drakos SAY_STOMP_3');
-- Mage-Lord Urom
DELETE FROM `script_texts` WHERE npc_entry= '27655';
INSERT INTO `script_texts` VALUES ('27655', -1578012, 'Poor blind fools!','', '', '', '', '', '', '', '', 13638,1,0,0, 'urom SAY_AGGRO');
INSERT INTO `script_texts` VALUES ('27655', -1578013, 'If only you understood!','', '', '', '', '', '', '', '', 13641,1,0,0, 'urom SAY_KILL_1');
INSERT INTO `script_texts` VALUES ('27655', -1578014, 'Now, do you see? DO YOU?!','', '', '', '', '', '', '', '', 13642,1,0,0, 'urom SAY_KILL_2');
INSERT INTO `script_texts` VALUES ('27655', -1578015, 'Unfortunate, but necessary.','', '', '', '', '', '', '', '', 13643,1,0,0, 'urom SAY_KILL_3');
INSERT INTO `script_texts` VALUES ('27655', -1578016, 'Everything I\'ve done... has been for Azeroth...','', '', '', '', '', '', '', '', 13644,1,0,0, 'urom SAY_DEATH');
INSERT INTO `script_texts` VALUES ('27655', -1578017, 'A taste... just a small taste... of the Spell-Weaver\'s power!','', '', '', '', '', '', '', '', 13639,1,0,0, 'urom SAY_EXPLOSION_1');
INSERT INTO `script_texts` VALUES ('27655', -1578018, 'So much unstable energy... but worth the risk to destroy you!','', '', '', '', '', '', '', '', 13640,1,0,0, 'urom SAY_EXPLOSION_2');
INSERT INTO `script_texts` VALUES ('27655', -1578019, 'What do we have here... those would defy the Spell-Weaver? Those without foresight or understanding. How could I make you see? Malygos is saving the world from itself! Bah! You are hardly worth my time!','', '', '', '', '', '', '', '', 13635,1,0,0, 'urom SAY_SUMMON_1');
INSERT INTO `script_texts` VALUES ('27655', -1578020, 'Clearly my pets failed. Perhaps another demonstration is in order.','', '', '', '', '', '', '', '', 13636,1,0,0, 'urom SAY_SUMMON_2');
INSERT INTO `script_texts` VALUES ('27655', -1578021, 'Still you fight. Still you cling to misguided principles. If you survive, you\'ll find me in the center ring.','', '', '', '', '', '', '', '', 13637,1,0,0, 'urom SAY_SUMMON_3');
-- Varos Cloudstrider
DELETE FROM `script_texts` WHERE npc_entry = '27447';
INSERT INTO `script_texts` VALUES ('27447', -1578022, 'There will be no mercy!','', '', '', '', '', '', '', '', 13649,1,0,0, 'varos SAY_AGGRO');
INSERT INTO `script_texts` VALUES ('27447', -1578023, 'You were warned.','', '', '', '', '', '', '', '', 13653,1,0,0, 'varos SAY_KILL_1');
INSERT INTO `script_texts` VALUES ('27447', -1578024, 'The Oculus is ours.','', '', '', '', '', '', '', '', 13654,1,0,0, 'varos SAY_KILL_2');
INSERT INTO `script_texts` VALUES ('27447', -1578025, 'They are... too strong! Underestimated their... fortitude.','', '', '', '', '', '', '', '', 13655,1,0,0, 'varos SAY_DEATH');
INSERT INTO `script_texts` VALUES ('27447', -1578026, 'Blast them! Destroy them!','', '', '', '', '', '', '', '', 13650,1,0,0, 'varos SAY_STRIKE_1');
INSERT INTO `script_texts` VALUES ('27447', -1578027, 'Take no prisoners! Attack!','', '', '', '', '', '', '', '', 13651,1,0,0, 'varos SAY_STRIKE_2');
INSERT INTO `script_texts` VALUES ('27447', -1578028, 'Strike now! Obliterate them!','', '', '', '', '', '', '', '', 13652,1,0,0, 'varos SAY_STRIKE_3');
-- Varos says when Drakos dies
INSERT INTO `script_texts` VALUES ('27447', -1578029, 'Intruders, your victory will be short-lived. I am Commander Varos Cloudstrider. My drakes control the skies and protest this conduit. I will see to it personally that the Oculus does not fall into your hands!','', '', '', '', '', '', '', '', 13648,1,0,0, 'varos SAY_SPAWN');

UPDATE gameobject_template SET flags=4 where entry IN (189986,193995);

-- Orb of the Nexus
UPDATE gameobject_template SET TYPE=10,flags=32,data0=0,data2=1887150,data3=0,data6=1 WHERE entry=188715;
DELETE FROM event_scripts WHERE id=1887150;
INSERT INTO event_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES 
(1887150,0,6,571,0,0,3877.953125,6984.460449,106.320236,0.023581);
-- Nexus Portal
UPDATE gameobject_template SET TYPE=10,flags=32,data0=0,data2=1899850,data3=0,data6=1 WHERE entry=189985;
DELETE FROM event_scripts WHERE id=1899850;
INSERT INTO event_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES 
(1899850,0,6,578,0,0,996.837646,1061.329834,359.476685,3.490091);
-- Missing rep (Thx Bloodycore)
DELETE FROM creature_onkill_reputation WHERE creature_id IN (27636,27642,28153,28236);
INSERT INTO creature_onkill_reputation (creature_id,RewOnKillRepFaction1,RewOnKillRepFaction2,MaxStanding1,IsTeamAward1,RewOnKillRepValue1,MaxStanding2,IsTeamAward2,RewOnKillRepValue2,TeamDependent) VALUES 
(27636,1037,1052,7,0,25,7,0,25,1),
(27642,1037,1052,7,0,5,7,0,5,1),
(28153,1037,1052,7,0,5,7,0,5,1),
(28236,1037,1052,7,0,25,7,0,25,1);

--Nexus
## Set Emblem of Heroism Badges
SET @lootid_anomalus     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26763));
SET @lootid_telestra     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26731));
SET @lootid_keristrasza  = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26723));
SET @lootid_ormorok      = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26794));

UPDATE creature_loot_template SET item = 40752 WHERE item = 47241 AND entry IN (@lootid_anomalus,@lootid_telestra,@lootid_keristrasza,@lootid_ormorok);
UPDATE reference_loot_template SET item = 40752 WHERE item = 47241 AND entry = 35034;

## Set Damage for Commander Kolurg to Commander Stoutbeards Values
SET @mindmg = (SELECT mindmg      FROM creature_template WHERE entry = 26796);
SET @maxdmg = (SELECT maxdmg      FROM creature_template WHERE entry = 26796);
SET @attack = (SELECT attackpower FROM creature_template WHERE entry = 26796);
UPDATE creature_template SET mindmg = @mindmg, maxdmg = @maxdmg, attackpower = @attack WHERE entry = 26798;

SET @mindmg = (SELECT mindmg      FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26796));
SET @maxdmg = (SELECT maxdmg      FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26796));
SET @attack = (SELECT attackpower FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26796));
SET @kolurg_diff1 = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26798);
UPDATE creature_template SET mindmg = @mindmg, maxdmg = @maxdmg, attackpower = @attack WHERE entry = @kolurg_diff1;

## First Boss should be interruptable
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask &~ 33554432 WHERE entry IN (26731,30510);

UPDATE creature_template SET AIName = '', ScriptName = 'boss_magus_telestra_arcane' WHERE entry = 26929;

DELETE FROM creature WHERE id IN (26798,26796,27949,27947);
INSERT INTO creature (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(26796,576,2,1,24366,0,424.185,185.37,-35.004,3.263,3600,0,0,337025,0,0,0), -- alli boss hero
(27949,576,1,1,24366,0,424.185,185.37,-35.004,3.263,3600,0,0,337025,0,0,0); -- alli commander non hero

## Remove Keristrasza's Broken Heart from loot Table
DELETE FROM creature_loot_template WHERE item = 43665;

## Spikes at Ormorok unselectable and unattackable
SET @spike_h = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 27099);
UPDATE creature_template SET unit_flags = unit_flags|2|33554432 WHERE entry IN (27099,@spike_h);

## Change Position of Trashmobs near Ormorok
UPDATE creature SET position_x = '323.541779', position_y = '-240.492249', position_z = '-14.088820', orientation = '2.964224' WHERE guid = '126444';
UPDATE creature SET position_x = '323.179108', position_y = '-242.347137', position_z = '-14.088820', orientation = '2.948516' WHERE guid = '126606';
UPDATE creature SET position_x = '324.616272', position_y = '-234.996307', position_z = '-14.088820', orientation = '3.152720' WHERE guid = '126605';
UPDATE creature SET position_x = '317.004852', position_y = '-237.360901', position_z = '-14.088820', orientation = '3.231260' WHERE guid = '126445';

## Remove Reputation from Horde/Alliance Commander (nonhero) - old: 250
DELETE FROM creature_onkill_reputation WHERE creature_id IN (27947,27949);

--Ульдуар
REPLACE INTO `instance_template` (map, parent, script, allowMount) VALUES ('603', '571', 'instance_ulduar', '1');

UPDATE `gameobject_template` SET `ScriptName` = 'ulduar_teleporter' WHERE `entry` = 194569;
-- Algalon
UPDATE creature_template SET scriptname="mob_collapsing_star" WHERE entry=32955;
UPDATE creature_template SET ScriptName="boss_algalon_the_observer" WHERE entry=32871;
UPDATE creature_template SET ScriptName="mob_living_constellation" WHERE entry=33052;
UPDATE creature_template SET ScriptName="mob_black_hole" WHERE entry=32953;
UPDATE creature_template SET ScriptName="mob_cosmic_smash_target" WHERE entry=33104;
UPDATE creature_template SET ScriptName="mob_dark_mattery" WHERE entry=33089;

-- Assembly of Iron
UPDATE creature_template SET ScriptName = "boss_steelbreaker" WHERE entry = 32867;
UPDATE creature_template SET ScriptName = "boss_runemaster_molgeim" WHERE entry = 32927;
UPDATE creature_template SET ScriptName = "boss_stormcaller_brundir" WHERE entry = 32857;
UPDATE creature_template SET faction_A=16, faction_H=16, scriptname='mob_lightning_elemental', difficulty_entry_1 = 33689 WHERE entry = 32958;
UPDATE creature_template SET ScriptName = "mob_rune_of_summoning" WHERE entry = 33051;
UPDATE creature_template SET ScriptName = "mob_rune_of_power" WHERE entry = 33705;

-- Auriaya
UPDATE creature_template SET ScriptName = "boss_auriaya" WHERE entry = 33515;
UPDATE creature_template SET `faction_A` = 16, `faction_H` = 16, ScriptName = 'feral_defender_trigger' WHERE `entry` = 34096;
UPDATE creature_template SET ScriptName = "mob_sanctum_sentry" WHERE entry = 34014;
UPDATE creature_template SET ScriptName = "mob_feral_defender" WHERE entry = 34035;
UPDATE creature_template SET ScriptName = "seeping_trigger" WHERE entry = 34098;

-- Flame Leviathan
UPDATE creature_template SET ScriptName = "boss_flame_leviathan" WHERE entry = 33113;
UPDATE creature_template SET ScriptName = "boss_flame_leviathan_seat" WHERE entry = 33114;
UPDATE creature_template SET ScriptName = "boss_flame_leviathan_defense_turret" WHERE entry = 33139;
UPDATE creature_template SET ScriptName = "boss_flame_leviathan_overload_device" WHERE entry = 33189;
UPDATE creature_template SET ScriptName = "boss_flame_leviathan_safety_container" WHERE entry = 33218;
UPDATE creature_template SET ScriptName = "spell_pool_of_tar" WHERE entry = 33090;
UPDATE creature_template SET ScriptName = "keeper_norgannon" WHERE entry = 33686;
UPDATE creature_template SET ScriptName = "mob_colossus" WHERE entry = 33237;
-- Correct position
DELETE FROM `creature` WHERE `id`=33113;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(33113, 603, 3, 65535, 0, 0, 435.89, -8.417, 409.886, 3.12723, 480000, 0, 0, 23009250, 0, 0, 0);
-- Delete extra Colossus
DELETE FROM creature WHERE guid IN (128936,128937);
-- Lore Keeper of Norgannon must be gossip
UPDATE creature_template SET npcflag=npcflag |1 WHERE entry=33686;
-- System Shutdown Stun (thx Bloodycore)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62475;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('62475','9032','2','System Shutdown');
-- Fix Repair Station
UPDATE gameobject_template SET ScriptName='' WHERE entry=194261;
DELETE FROM areatrigger_scripts WHERE entry IN (5369, 5423);
INSERT INTO areatrigger_scripts VALUES
(5369,'at_RX_214_repair_o_matic_station'),
(5423,'at_RX_214_repair_o_matic_station');
-- This mob should be invisible
UPDATE creature_template SET flags_extra=flags_extra |128 WHERE entry=33377;

-- Freya
UPDATE creature_template SET ScriptName = "boss_freya" WHERE entry = 32906;
UPDATE creature_template SET ScriptName = "boss_elder_brightleaf" WHERE entry = 32915;
UPDATE creature_template SET `modelid1` = 11686, `modelid2` = 0, `unit_flags` = 33686022, ScriptName = 'creature_unstable_sun_beam' WHERE `entry` = 33050;
UPDATE creature_template SET `unit_flags` = 33685510, `modelid1` = 11686, `modelid2` = 0, ScriptName = 'creature_sun_beam' WHERE `entry` =33170;
UPDATE creature_template SET `faction_A` = 16, `faction_H` = 16, `unit_flags` = 393220, ScriptName = 'creature_iron_roots' WHERE `entry` = 33168;
UPDATE creature_template SET ScriptName = "boss_elder_ironbranch" WHERE entry = 32913;
UPDATE creature_template SET `unit_flags` = 393220, ScriptName = 'creature_eonars_gift' WHERE `entry` =33228;
UPDATE creature_template SET ScriptName = "boss_elder_stonebark" WHERE entry = 32914;
UPDATE creature_template SET `modelid1` = 11686, `modelid2` = 0, `unit_flags` = 33685508, ScriptName = 'creature_nature_bomb' WHERE `entry` =34129;
UPDATE creature_template SET ScriptName = 'creature_detonating_lasher' WHERE `entry` =32918;
UPDATE creature_template SET ScriptName = 'creature_ancient_conservator' WHERE `entry` =33203;
UPDATE creature_template SET `unit_flags` = 33686022, ScriptName = 'creature_healthy_spore' WHERE `entry` =33215;
UPDATE creature_template SET ScriptName = 'creature_storm_lasher' WHERE `entry` =32919;
UPDATE creature_template SET ScriptName = 'creature_snaplasher' WHERE `entry` =32916;
UPDATE creature_template SET ScriptName = 'creature_ancient_water_spirit' WHERE `entry` =33202;

-- General Vezax
UPDATE creature_template SET `mechanic_immune_mask` = 617299803, `flags_extra` = 257, ScriptName = 'boss_general_vezax' WHERE `entry` = 33271;
UPDATE creature_template SET `faction_A` = 14, `faction_H` = 14, `mechanic_immune_mask` = 650854235, ScriptName = 'mob_saronite_vapors' WHERE `entry` = 33488;
UPDATE creature_template SET `faction_A` = 14, `faction_H` = 14, `mechanic_immune_mask` = 650854235, ScriptName = 'mob_saronite_animus' WHERE `entry` = 33524;
UPDATE creature_template SET `modelid1` = 28470, `modelid2` = 0, ScriptName = 'mob_icicle' WHERE `entry` = 33169;
UPDATE creature_template SET `modelid1` = 28470, `modelid2` = 0, ScriptName = 'mob_icicle_snowdrift' WHERE `entry` = 33173;

-- Hodir
UPDATE creature_template SET ScriptName = "boss_hodir" WHERE entry=32845;
UPDATE creature_template SET ScriptName = 'mob_hodir_priest' WHERE `entry` IN (32897, 33326, 32948, 33330);
UPDATE creature_template SET ScriptName = 'mob_hodir_shaman' WHERE `entry` IN (33328, 32901, 33332, 32950);
UPDATE creature_template SET ScriptName = 'mob_hodir_druid' WHERE `entry` IN (33325, 32900, 32941, 33333);
UPDATE creature_template SET ScriptName = 'mob_hodir_mage' WHERE `entry` IN (32893, 33327, 33331, 32946);
UPDATE creature_template SET `modelid1` = 15880, `modelid2` = 0, ScriptName = 'toasty_fire' WHERE `entry` = 33342;

-- Ignis
UPDATE creature_template SET ScriptName = "boss_ignis" WHERE entry = 33118;
UPDATE creature_template SET ScriptName = "mob_iron_construct" WHERE entry = 33121;
UPDATE creature_template SET `modelid1` = 16925, `modelid2` = 0, ScriptName = 'mob_scorch_ground' WHERE `entry` = 33221;

-- Kologarn
UPDATE creature_template SET ScriptName = "boss_kologarn" WHERE entry = 32930;
UPDATE creature_template SET `faction_A` = 16, `faction_H` = 16, ScriptName = 'mob_focused_eyebeam' WHERE `entry` IN (33632, 33802);
UPDATE creature_template SET ScriptName = "mob_right_arm" WHERE entry = 32934;
UPDATE creature_template SET ScriptName = "mob_left_arm" WHERE entry = 32933;


-- Razorscale
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName` = 'npc_devouring_flame' WHERE `entry`=34188;
UPDATE `creature_template` SET `ScriptName` = 'npc_mole_machine_trigger' WHERE `entry`=33245;
UPDATE `creature_template` SET `ScriptName` = 'npc_expedition_commander' WHERE `entry`=33210;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_guardian' WHERE `entry`=33388;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_sentinel' WHERE `entry`=33846;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_watcher' WHERE `entry`=33453;

-- Thorim
UPDATE creature_template SET ScriptName = "boss_thorim" WHERE entry=32865;
UPDATE creature_template SET `faction_A` = 14, `faction_H` = 14, ScriptName = 'mob_pre_phase' WHERE `entry` IN (32882, 32908, 32885, 33110);
UPDATE creature_template SET `unit_flags` = 0, `faction_A` = 14, `faction_H` = 14, ScriptName = 'mob_arena_phase' WHERE `entry` IN (32876, 32904, 32878, 32877, 32874, 32875);
UPDATE creature_template SET `unit_flags` = 0, ScriptName = 'mob_runic_colossus' WHERE `entry` = 32872;
UPDATE creature_template SET `unit_flags` = 0, ScriptName = 'mob_rune_giant' WHERE `entry` = 32873;
UPDATE creature_template SET `modelid1` = 16925, `modelid2` = 0, ScriptName = 'thorim_trap_bunny' WHERE `entry` = 33725;
UPDATE creature_template SET `flags_extra` = 0, ScriptName = 'thorim_energy_source' WHERE `entry` = 32892;
UPDATE creature_template SET `dmgschool` = 4, `dmg_multiplier` = 7.5, `unit_flags` = 33587202, ScriptName = 'npc_sif' WHERE `entry` = 33196;

-- XT-002
UPDATE creature_template SET ScriptName = "boss_xt002" WHERE entry = 33293;
UPDATE creature_template SET ScriptName = "mob_xt002_heart" WHERE entry=33329;
UPDATE creature_template SET ScriptName = "mob_scrapbot" WHERE entry = 33343;
UPDATE creature_template SET ScriptName = "mob_pummeller" WHERE entry=33344;
UPDATE creature_template SET ScriptName = "mob_boombot" WHERE entry = 33346;
UPDATE creature_template SET ScriptName = "mob_void_zone" WHERE entry = 34001;
UPDATE creature_template SET ScriptName = "mob_life_spark" WHERE entry = 34004;

-- Some instance data
SET @entry=60000;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(@entry,'0','0','0','0','0','169','16925','0','0','Thorim Event Bunny','','','0','80','80','2','14','14','0','1','1.14286','1','1','422','586','0','642','7.5','2000','0','1','33554432','8','0','0','0','0','0','345','509','103','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','thorim_phase_trigger','11723');

-- Algalon
REPLACE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT) VALUES
(-1615172, "Trans-location complete. Commencing planetary analysis of Azeroth.", 15405, 0, 0, 0, "Algalon: Intro 1"),
(-1615173, "Stand back, mortals. I am not here to fight you.", 15406, 0, 0, 0, "Algalon: Intro 2"),
(-1615174, "It is in the universe's best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.", 15407, 0, 0, 0, "Algalon: Intro 3"),
(-1615175, "See your world through my eyes: A universe so vast as to be immeasurable - incomprehensible even to your greatest minds.", 15390, 1, 0, 0, "Algalon: Engaged for the first time"),
(-1615176, "Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer's message regardless of outcome.", 15386, 1, 0, 0, "Algalon: Aggro"),
(-1615177, "The stars come to my aid.", 15392, 1, 0, 0, "Algalon: Summoning Collapsing Stars"),
(-1615178, "Witness the fury of cosmos!", 15396, 1, 0, 0, "Algalon: Big Bang 1"),
(-1615179, "Behold the tools of creation!", 15397, 1, 0, 0, "Algalon: Big Bang 2"),
(-1615180, "Beware!", 15391, 1, 0, 0, "Algalon: Phase 2"),
(-1615181, "Loss of life, unavoidable.", 15387, 1, 0, 0, "Algalon: Killing a player 1"),
(-1615182, "I do what I must.", 15388, 1, 0, 0, "Algalon: Killing a player 2"),
(-1615183, "You are... out of time.", 15394, 1, 0, 0, "Algalon: Berserk"),
(-1615184, "Analysis complete. There is partial corruption in the planet's life-support systems as well as complete corruption in most of the planet's defense mechanisms.", 15398, 0, 0, 0, "Algalon: Despawn 1"),
(-1615185, "Begin uplink: Reply Code: 'Omega'. Planetary re-origination requested.", 15399, 0, 0, 0, "Algalon: Despawn 2"),
(-1615186, "Farewell, mortals. Your bravery is admirable, for such flawed creatures.", 15400, 0, 0, 0, "Algalon: Despawn 3"),
(-1615187, "I have seen worlds bathed in the Makers' flames. Their denizens fading without so much as a whimper. Entire planetary systems born and raised in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart, devoid of emotion... of empathy. I... have... felt... NOTHING! A million, million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?", 15393, 0, 0, 0, "Algalon: Defeated 1"),
(-1615188, "Perhaps it is your imperfection that which grants you free will. That allows you to persevere against cosmically calculated odds. You prevailed where the Titans' own perfect creations have failed.", 15401, 0, 0, 0, "Algalon: Defeated 2"),
(-1615189, "I've rearranged the reply code. Your planet will be spared. I cannot be certain of my own calculations anymore.", 15402, 0, 0, 0, "Algalon: Defeated 3"),
(-1615190, "I lack the strength to transmit the signal. You must hurry. Find a place of power close to the skies.", 15403, 0, 0, 0, "Algalon: Defeated 4"),
(-1615191, "Do not worry about my fate $N. If the signal is not transmitted in time re-origination will proceed regardless. Save. Your. World.", 15403, 0, 0, 0, "Algalon: Defeated 5");



DELETE FROM `script_texts` WHERE `entry` IN (-1603268,-1603267,-1603266);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(33186, -1603268, 'Razorscale grounded permanently!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_PERMA'),
(33186, -1603267, 'Razorscale takes a deep breath...', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_BREATH'),
(33287, -1603266, 'Harpoon Turret is ready for use!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_HARPOON');

DELETE FROM `script_texts` WHERE `entry` IN (-1603265,-1603264,-1603263,-1603262);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(33287, -1603265, 'Fires out! Let''s rebuild those turrets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_TURRETS'),
(33287, -1603264, 'Ready to move out, keep those dwarves off of our backs!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_3'),
(33287, -1603263, 'Be on the lookout! Mole machines will be surfacing soon with those nasty Iron dwarves aboard!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_2'),
(33287, -1603262, 'Give us a moment to prepare to build the turrets.', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_1');

-- Razorscale emotes
UPDATE `script_texts` SET `content_default` = "Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.", `type`=0  WHERE `entry`=-1603260;
UPDATE `script_texts` SET `content_default` = "Move! Quickly! She won't remain grounded for long.", `type`=1  WHERE `entry`=-1603261;




-- Yogg Saron-- 
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 0, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_sara' WHERE `entry` = 33134;
UPDATE creature_model_info SET bounding_radius = 0.465, combat_reach = 45 WHERE modelid = 29117;
UPDATE `creature` SET `spawndist` = 0 WHERE `id` = 33134;
-- Ominous cloud
DELETE FROM `creature` WHERE `id`=33292;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `unit_flags` = 33947654, `type_flags` = 0, `speed_walk` = 0.2, modelid1 = 28549, modelid2 = 0, `ScriptName` = 'npc_ominous_cloud' WHERE `entry` IN (33292, 32406);
-- Guardian of Yogg-Saron
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 16, `faction_H` = 16, `mindmg` = 123, `maxdmg` = 123, `attackpower` = 123, `dmg_multiplier` = 123, `baseattacktime` = 1800, `mechanic_immune_mask` = 1234, `ScriptName` = 'npc_guardian_yoggsaron' WHERE `entry` = 33136;
UPDATE creature_model_info SET bounding_radius = 0.62, combat_reach = 1.5 WHERE modelid = 28465;
-- Yogg-Saron
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `unit_flags` = 131076, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_yoggsaron' WHERE `entry` = 33288;
UPDATE creature_model_info SET bounding_radius = 0.755, combat_reach = 18 WHERE modelid = 28817;
UPDATE `creature_template` SET  modelid1 = 16946, modelid2 = 0, `minlevel` = 80, `maxlevel` = 80, `faction_A` = 16, `faction_H` = 16, `unit_flags` = 33685510, `speed_walk` = 2, `ScriptName` = 'npc_death_orb' WHERE `entry` = 33882;
-- Brain of Yogg-Saron
UPDATE `creature_template` SET `difficulty_entry_1` = 33954, `faction_A` = 16, `faction_H` = 16, `unit_flags` = 131076, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_brain_yoggsaron' WHERE `entry` = 33890;
UPDATE creature_model_info SET bounding_radius = 0.755, combat_reach = 30 WHERE modelid = 28951;
-- Illusions
UPDATE `creature_template` SET modelid1 = 15880, modelid2 = 0, `minlevel` = 82, `maxlevel` = 82, `faction_A` = 16, `faction_H` = 16, `unit_flags` = 33685510, `ScriptName` = 'npc_laughing_skull' WHERE `entry` = 33990;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 7, `faction_H` = 7, `mechanic_immune_mask` = 650854235, `ScriptName` = 'npc_illusion' WHERE `entry` IN (33433, 33716, 33717, 33719, 33720, 33567);
UPDATE creature_model_info SET bounding_radius = 0.306, combat_reach = 1.5 WHERE modelid = 28621;
UPDATE creature_model_info SET bounding_radius = 1, combat_reach = 10 WHERE modelid IN (2718, 1687, 2717, 12869);
-- Influence Tentacle
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 16, `faction_H` = 16, `mindmg` = 123, `maxdmg` = 123, `attackpower` = 123, `dmg_multiplier` = 12 WHERE `entry` = 33943;
UPDATE creature_model_info SET bounding_radius = 0.306, combat_reach = 1.5 WHERE modelid = 28813;
-- Fake npcs
UPDATE `creature_template` SET `unit_flags` = 518, `type_flags` = 0, `flags_extra` = 2 WHERE `entry` IN (33436, 33437, 33536, 33535, 33495, 33523, 33441, 33442);
-- Whispers
UPDATE `script_texts` SET `type` = 4 WHERE `entry` IN (-1603317, -1603340, -1603339);
-- Descend into madness portal
UPDATE `creature_template` SET `ScriptName` = 'npc_descend_into_madness' WHERE `entry` = 34072;
-- Flee to the Surface
UPDATE `gameobject_template` SET `data10` = 63992 WHERE `entry` = 194625;
DELETE FROM `gameobject` WHERE `id` = 194625;
INSERT INTO `gameobject` VALUES
(NULL, 194625, 603, 3, 1, 1996.41, -0.070, 240.59, 0, 0, 0, 1, 0, 300, 0, 1),
(NULL, 194625, 603, 3, 1, 1949.63, -26.07, 241.25, 0, 0, 0, 1, 0, 300, 0, 1),
(NULL, 194625, 603, 3, 1, 1995.03, -52.98, 241.02, 0, 0, 0, 1, 0, 300, 0, 1);
-- Cancel Illusion Room Aura
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 63992;
INSERT INTO `spell_linked_spell` VALUES
(63992, -63988, 0, "Cancel Illusion Room Aura");
-- Dragon blood
DELETE FROM gameobject WHERE id = 194462;
INSERT INTO gameobject VALUES (NULL, 194462, 603, 3, 1, 2104.35, -25.3753, 242.647, 0, 0, 0, 0, -1, 300, 0, 1);
-- Remove spawned mobs
DELETE FROM `creature` WHERE `id`=34137 AND position_x = 1921.84;
-- Portals coordinates
DELETE FROM `spell_target_position` WHERE `id` IN (63989, 63992, 63997, 63998);
INSERT INTO `spell_target_position` VALUES
(63989, 603, 1953.91, 21.91, 239.71, 2.08),
(63992, 603, 1980.28, -25.59, 329.40, 3.14),
(63997, 603, 2042.02, -25.54, 239.72, 6.28),
(63998, 603, 1948.44, -82.04, 239.99, 4.18);
-- Tentacles
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `unit_flags` = 131076, `type_flags` = 0, `ScriptName` = "npc_constrictor_tentacle" WHERE `entry` = 33983;
UPDATE creature_model_info SET bounding_radius = 0.306, combat_reach = 1.5 WHERE modelid = 28815;
-- Squeeze stun
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (64125, 64126);
INSERT INTO `spell_linked_spell` VALUES
(64125, 9032, 2, "Squeeze stun"),
(64126, 9032, 2, "Squeeze stun");
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `unit_flags` = 4, `type_flags` = 0, `mindmg` = 123, `maxdmg` = 123, `attackpower` = 123, `dmg_multiplier` = 123, `baseattacktime` = 1800, `ScriptName` = 'npc_crusher_tentacle' WHERE `entry` = 33966;
UPDATE creature_model_info SET bounding_radius = 0.985, combat_reach = 5 WHERE modelid = 28814;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `unit_flags` = 131076, `ScriptName` = 'npc_corruptor_tentacle' WHERE `entry` = 33985;
-- Immortal Guardian
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `mindmg` = 123, `maxdmg` = 132, `attackpower` = 123, `dmg_multiplier` = 12, `type_flags` = 0, `ScriptName` = 'npc_immortal_guardian' WHERE `entry` = 33988;
UPDATE creature_model_info SET bounding_radius = 0.92, combat_reach = 4 WHERE modelid = 29024;
DELETE FROM `conditions` WHERE `SourceEntry` = 64173;
INSERT INTO `conditions` (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) VALUES 
(13, 64173, 18, 1, 33966),
(13, 64173, 18, 1, 33983),
(13, 64173, 18, 1, 33985);
-- Remove area stun
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (64059, 65238);
INSERT INTO `spell_linked_spell` VALUES
(64059, 65238, 0, "Shattered illusion remove"),
(65238, -64173, 1, "Shattered illusion remove");
DELETE FROM `conditions` WHERE `SourceEntry` = 64172;
INSERT INTO `conditions` (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) VALUES 
(13, 64172, 18, 1, 33988);
UPDATE `creature` SET `MovementType`='0' WHERE `guid`='131859';

-- immune mask to 25 man version of razorscale
UPDATE `creature_template` SET `mechanic_immune_mask`=650854235 WHERE `entry`=33724;
-- immune mask to 10 man version of razorscale
UPDATE `creature_template` SET `mechanic_immune_mask`=650854235 WHERE `entry`=33186;
-- add equipment to 25 man version adds
UPDATE `creature_template` SET `equipment_id`=574 WHERE `entry`=33850;
-- add equipment to 25 man version adds
UPDATE `creature_template` SET `equipment_id`=1863 WHERE `entry`=33852;
-- add equipment to 25 man version adds
UPDATE `creature_template` SET `equipment_id`=1787 WHERE `entry`=33851;
-- disable move, set not selectable, set non attackable 
UPDATE `creature_template` SET `unit_flags`=33554438 WHERE `entry`=33184;

DELETE FROM `creature` WHERE `id` IN (33186,33233,33282);
-- using same guid that razorscale had before
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(137611,33186,603,3,1,0,0,587.073,-203.205,441.237,1.60532,604800,0,0,3555975,0,0,0);

UPDATE creature_template SET ScriptName="mole_machine_trigger" WHERE entry=33245; 

--Halls of Stone
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` IN (190586,193996);
UPDATE `gameobject` SET `spawnMask` = 1 WHERE `id` = 190586;
DELETE FROM `gameobject` WHERE `id` = '193996';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
VALUES ('193996','599','2','1','880.406','345.164','203.706','0','0','0','0','1','86400','0','1');

UPDATE `gameobject` SET `spawntimesecs` = 86400 WHERE `id` IN (190586,193996);
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|2 , `unit_flags` = `unit_flags`|2 WHERE `entry` = 28055;
UPDATE `creature_template` SET `flags_extra`= `flags_extra`|2|128 , `InhabitType`= 4 WHERE `entry` IN (28234,28235,28237,28265,30897,30898,30899,31874,31875,31878);
UPDATE `creature_template` SET `modelid1` = 17200, `modelid2` = 17200 WHERE `entry` IN (28235,31874);
UPDATE `creature` SET `spawnMask` = 0 WHERE `guid` = 126794;
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN (27975,27977,27978,31384,31381,31386);
UPDATE `creature_template` SET `dmg_multiplier` = 16 WHERE `entry` = 31384;
UPDATE `creature_template` SET `dmg_multiplier` = 22 WHERE `entry` = 31381;
UPDATE `gameobject_loot_template` SET `item` = 40752 WHERE `entry` = 26260 AND `item` = 47241;
UPDATE `creature_loot_template` SET `item` = 40752 WHERE `entry` IN (31384,31381,31386) AND `item` = 47241;
UPDATE `creature_template` SET `ScriptName` = 'mob_dark_matter' WHERE `entry` = 28235;
UPDATE `creature_template` SET `ScriptName` = 'mob_searing_gaze' WHERE `entry` = 28265;
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (27979,27982,27983,27984,27985);

-- EventAI Scripts
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (27979,27982,27983,27984,27985);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) 
VALUES
('2798401','27984','0','0','100','3','7000','10000','7000','10000','11','12167','4','1','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Normal) - Cast Lightning Bolt'),
('2798402','27984','0','0','100','5','7000','10000','7000','10000','11','59863','4','1','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Heroic) - Cast Lightning Bolt'),
('2798403','27984','0','0','100','3','4000','7000','12000','15000','11','15654','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Normal) - Cast Shadow Word: Pain'),
('2798404','27984','0','0','100','5','4000','7000','12000','15000','11','59864','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Heroic) - Cast Shadow Word: Pain'),
('2798301','27983','0','0','100','7','7000','10000','10000','15000','11','42724','1','0','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Cleave'),
('2798302','27983','0','0','100','7','7000','10000','15000','20000','11','22120','4','2','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Charge'),
('2798501','27985','0','0','100','7','4000','7000','10000','15000','11','33661','1','0','0','0','0','0','0','0','0','0','Iron Golem Custodian - Cast Crush Armor'),
('2798502','27985','0','0','100','3','7000','10000','15000','20000','11','12734','0','0','0','0','0','0','0','0','0','0','Iron Golem Custodian (Normal) - Cast Ground Smash'),
('2798503','27985','0','0','100','5','7000','10000','15000','20000','11','59865','0','0','0','0','0','0','0','0','0','0','Iron Golem Custodian (Heroic) - Cast Ground Smash'),
('2798201','27982','0','0','100','3','4000','7000','10000','15000','11','50895','4','0','0','0','0','0','0','0','0','0','Forged Iron Dwarf (Normal) - Cast Lightning Tether'),
('2798202','27982','0','0','100','5','4000','7000','10000','15000','11','59851','4','0','0','0','0','0','0','0','0','0','Forged Iron Dwarf (Heroic) - Cast Lightning Tether'),
('2797901','27979','0','0','100','3','4000','7000','7000','12000','11','50900','4','0','0','0','0','0','0','0','0','0','Forged Iron Trogg (Normal) - Cast Lightning Shock'),
('2797902','27979','0','0','100','5','4000','7000','7000','12000','11','59852','4','0','0','0','0','0','0','0','0','0','Forged Iron Trogg (Heroic) - Cast Lightning Shock');

--Halls of Lighting
--Set Emblem of Heroism Badges
SET @lootid_bjarngrim = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28586));
SET @lootid_volkhan   = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28587));
SET @lootid_ionar     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28546));
SET @lootid_loken     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28923));

UPDATE creature_loot_template SET item = 40752 WHERE item = 47241 AND entry IN (@lootid_bjarngrim,@lootid_volkhan,@lootid_ionar,@lootid_loken);

-- EventAI for Slag
-- Non-Heroic NPCs
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(2858501, 28585, 1, 0, 100, 1|2, 
-- event: EVENT_T_SPAWNED
0, 0, 5000, 5000, 
-- action1: ACTION_T_CAST 
11, 61509, 0, 0, 
-- action2: NO_ACTION
0, 0, 0, 0, 
-- action3: NO_ACTION
0, 0, 0, 0,
-- Comment
'Halls of Lightning - Slag - Melt Armor OOC');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(2858502, 28585, 0, 0, 100, 1|2, 
-- event: EVENT_T_SPAWNED
0, 0, 5000, 5000, 
-- action1: ACTION_T_CAST 
11, 61509, 0, 0, 
-- action2: NO_ACTION
0, 0, 0, 0, 
-- action3: NO_ACTION
0, 0, 0, 0,
-- Comment
'Halls of Lightning - Slag - Melt Armor');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(2858599, 28585, 6, 0, 100, 2, 
-- event: EVENT_T_DEATH
0, 0, 0, 0, 
-- action1: ACTION_T_CAST 
11, 23113, 0, 1, 
-- action2: NO_ACTION
0, 0, 0, 0, 
-- action3: NO_ACTION
0, 0, 0, 0,
-- Comment
'Halls of Lightning - Slag - Blast Wave on Death');

-- Heroic NPCs
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment)
VALUES 
(2858503, 28585, 1, 0, 100, 1|4, 
-- event: EVENT_T_SPAWNED
0, 0, 5000, 5000, 
-- action1: ACTION_T_CAST 
11, 61510, 0, 0, 
-- action2: NO_ACTION
0, 0, 0, 0, 
-- action3: NO_ACTION
0, 0, 0, 0,
-- Comment
'Halls of Lightning Heroic - Slag - Melt Armor OOC');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment)
VALUES 
(2858504, 28585, 0, 0, 100, 1|4, 
-- event: EVENT_T_SPAWNED
0, 0, 5000, 5000, 
-- action1: ACTION_T_CAST 
11, 61510, 0, 0, 
-- action2: NO_ACTION
0, 0, 0, 0, 
-- action3: NO_ACTION
0, 0, 0, 0,
-- Comment
'Halls of Lightning Heroic - Slag - Melt Armor');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment)
VALUES 
(2858598, 28585, 6, 0, 100, 4, 
-- event: EVENT_T_DEATH
0, 0, 0, 0, 
-- action1: ACTION_T_CAST 
11, 22424, 0, 1, 
-- action2: NO_ACTION
0, 0, 0, 0, 
-- action3: NO_ACTION
0, 0, 0, 0,
-- Comment
'Halls of Lightning Heroic - Slag - Blast Wave on Death');

-- Get a bit more damage from Bosses :)
SET @boss_bjarngrim = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28586);
SET @boss_volkhan   = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28587);
SET @boss_ionar     = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28546);
SET @boss_loken     = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28923);
UPDATE creature_template SET dmg_multiplier = 20 WHERE entry IN (@boss_bjarngrim, @boss_volkhan, @boss_ionar, @boss_loken);

-- Add Some damage for whole Instance (heroic)
UPDATE creature_template SET dmg_multiplier = dmg_multiplier + 2 WHERE entry IN (31537, 30979, 30967, 30966, 30968, 30977, 30974, 30964, 30983, 30970, 31533, 31536, 30969, 30965, 30978, 30971, 30975, 30976, 30981, 30972, 31538, 31867, 30980, 30982, 30973);

-- Correct Faction fur Heroic Sparks and Molten Golems
UPDATE creature_template SET faction_A = 14 WHERE entry = 28695;
UPDATE creature_template SET faction_H = 14 WHERE entry = 28695;
UPDATE creature_template SET faction_H = 14 WHERE entry = 28926;
UPDATE creature_template SET faction_H = 14 WHERE entry = 28926;

-- Trigger Static Overload Final Damage & Knockback
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) 
VALUES
('-52658','53337','0','Static Overload'),
('-59795','59798','0','Static Overload');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (28923,28926,28961,28965,29240,28920,28838,28837,28836,28835,28826,28695,28587,28586,28585,28584,28583,28582,28581,28580,28579,28547,28578,28546);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2858300', '28583', '0', '0', '100', '3', '6000', '8000', '10000', '15000', '11', '52531', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blistering Steamrager - Steam Blast'),
('2858301', '28583', '0', '0', '100', '5', '6000', '8000', '10000', '15000', '11', '59141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blistering Steamrager - Steam Blast'),
('2857901', '28579', '9', '0', '100', '3', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Stop Moving when in Throw Range'),
('2857910', '28579', '9', '0', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range I'),
('2857909', '28579', '9', '0', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range II'),
('2857908', '28579', '9', '0', '100', '3', '5', '20', '3500', '4100', '11', '52740', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Cast Throw'),
('2857907', '28579', '2', '0', '100', '2', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Hardened Steel Berserker - Flee at 15% HP'),
('2857906', '28579', '9', '0', '100', '5', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Stop Moving when in Throw Range'),
('2857900', '28579', '9', '0', '100', '5', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range I'),
('2857905', '28579', '9', '0', '100', '5', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range II'),
('2857904', '28579', '9', '0', '100', '5', '5', '20', '3500', '4100', '11', '59259', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Cast Throw'),
('2857903', '28579', '2', '0', '100', '4', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Hardened Steel Berserker - Flee at 15% HP'),
('2857902', '28579', '2', '0', '100', '6', '30', '0', '0', '0', '11', '61369', '0', '0', '1', '-106', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Casts Enrage at 30% HP'),
('2857800', '28578', '0', '0', '100', '3', '6000', '8000', '10000', '12000', '11', '15655', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Reaver - Shield Slam'),
('2857802', '28578', '0', '0', '100', '5', '6000', '8000', '10000', '12000', '11', '59142', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Reaver - Shield Slam'),
('2857801', '28578', '0', '0', '100', '7', '8000', '10000', '14000', '16000', '11', '42724', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Reaver - Cleave'),
('2858003', '28580', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement on Aggro'),
('2858002', '28580', '4', '0', '100', '2', '0', '0', '0', '0', '11', '16100', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot and Set Phase 1 on Aggro'),
('2858001', '28580', '0', '6', '100', '3', '2200', '4700', '2200', '4700', '11', '16100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot (Phase 1)'),
('2858005', '28580', '9', '6', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Start Movement at 20 Yards (Phase 1)'),
('2858006', '28580', '9', '6', '100', '3', '6', '10', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement at 10 Yards (Phase 1)'),
('2858007', '28580', '9', '6', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Start Movement at 5 Yards (Phase 1)'),
('2858004', '28580', '2', '0', '100', '2', '15', '0', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Set Phase 2 at 15% HP'),
('2858016', '28580', '2', '5', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Hardened Steel Skycaller - Start Movement and Flee at 15% HP (Phase 2)'),
('2858017', '28580', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - On Evade set Phase to 0'),
('2858018', '28580', '0', '0', '100', '3', '6000', '8000', '11000', '11000', '11', '52754', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Shot'),
('2858020', '28580', '0', '0', '100', '3', '4000', '4000', '9000', '14000', '11', '52755', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Multi-Shot'),
('2858019', '28580', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement on Aggro'),
('2858021', '28580', '4', '0', '100', '4', '0', '0', '0', '0', '11', '61515', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot and Set Phase 1 on Aggro'),
('2858015', '28580', '0', '6', '100', '5', '2200', '4700', '2200', '4700', '11', '61515', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot (Phase 1)'),
('2858014', '28580', '9', '6', '100', '5', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Start Movement at 20 Yards (Phase 1)'),
('2858009', '28580', '9', '6', '100', '5', '6', '10', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement at 10 Yards (Phase 1)'),
('2858022', '28580', '9', '6', '100', '5', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'RHardened Steel Skycaller - Start Movement at 5 Yards (Phase 1)'),
('2858008', '28580', '2', '0', '100', '4', '15', '0', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Set Phase 2 at 15% HP'),
('2858000', '28580', '2', '5', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Hardened Steel Skycaller - Start Movement and Flee at 15% HP (Phase 2)'),
('2858010', '28580', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - On Evade set Phase to 0'),
('2858011', '28580', '0', '0', '100', '5', '6000', '8000', '11000', '11000', '11', '59148', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Shot'),
('2858012', '28580', '0', '0', '100', '5', '4000', '4000', '9000', '14000', '11', '59147', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Multi-Shot'),
('2858013', '28580', '0', '0', '100', '7', '6000', '8000', '25000', '35000', '11', '61507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Disengage'),
('2869503', '28695', '0', '0', '100', '7', '6000', '8000', '15000', '15000', '11', '23113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Blast Wave'),
('2869504', '28695', '0', '0', '100', '3', '4000', '4000', '20000', '24000', '11', '52433', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Immolation Strike'),
('2869500', '28695', '0', '0', '100', '3', '10000', '10000', '12000', '18000', '11', '52429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Shatter'),
('2869501', '28695', '0', '0', '100', '5', '4000', '4000', '20000', '24000', '11', '59530', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Immolation Strike'),
('2869502', '28695', '0', '0', '100', '5', '10000', '10000', '12000', '18000', '11', '59527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Shatter'),
('2858502', '28585', '0', '0', '100', '3', '6000', '8000', '10000', '14000', '11', '22424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag - Blast Wave'),
('2858503', '28585', '0', '0', '100', '3', '4000', '6000', '5000', '7000', '11', '61509', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag - Melt Armor'),
('2858501', '28585', '0', '0', '100', '5', '6000', '8000', '10000', '14000', '11', '23113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag- Blast Wave'),
('2858500', '28585', '0', '0', '100', '5', '3000', '6000', '5000', '7000', '11', '61510', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag - Melt Armor'),
('2892600', '28926', '0', '0', '100', '3', '6000', '8000', '10000', '12000', '11', '52671', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spark of Ionar - Arcing Burn'),
('2892601', '28926', '0', '0', '100', '5', '6000', '8000', '10000', '12000', '11', '59834', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spark of Ionar - Arcing Burn'),
('2883505', '28835', '4', '0', '100', '2', '0', '0', '0', '0', '11', '61579', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Runic Focus'),
('2883502', '28835', '0', '0', '100', '3', '6000', '8000', '18000', '18000', '11', '53167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Forked Lightning'),
('2883503', '28835', '0', '0', '100', '3', '4000', '4000', '14000', '15000', '11', '53068', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Rune Punch'),
('2883504', '28835', '4', '0', '100', '4', '0', '0', '0', '0', '11', '61596', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Runic Focus'),
('2883501', '28835', '0', '0', '100', '3', '6000', '8000', '18000', '18000', '11', '59152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Forked Lightning'),
('2883500', '28835', '0', '0', '100', '3', '4000', '4000', '14000', '15000', '11', '59151', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Rune Punch'),
('2892000', '28920', '0', '0', '100', '7', '5000', '5000', '14000', '15000', '11', '32315', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Soul Strike'),
('2892004', '28920', '0', '0', '100', '3', '3000', '3000', '12000', '12000', '11', '53072', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Stormbolt'),
('2892001', '28920', '0', '0', '100', '3', '10000', '10000', '18000', '18000', '11', '53071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Thunderstorm'),
('2892002', '28920', '0', '0', '100', '5', '3000', '3000', '12000', '12000', '11', '59155', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Stormbolt'),
('2892003', '28920', '0', '0', '100', '5', '10000', '10000', '18000', '18000', '11', '59154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Thunderstorm'),
('2924003', '29240', '4', '0', '100', '6', '0', '0', '0', '0', '11', '59085', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Lieutenant - Renew Steel'),
('2924002', '29240', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Lieutenant - Arc Weld'),
('2924004', '29240', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Lieutenant - Arc Weld'),
('2924001', '29240', '0', '0', '100', '7', '5000', '5000', '15000', '15000', '11', '52773', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Hammer Blow'),
('2924000', '29240', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Renew Steel'),
('2924005', '29240', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Renew Steel'),
('2883600', '28836', '0', '0', '100', '7', '6000', '8000', '20000', '24000', '11', '53048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Runeshaper - Startling Roar'),
('2883601', '28836', '0', '0', '100', '3', '5000', '5000', '15000', '15000', '11', '53049', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Runeshaper - ChargedFlurry'),
('2883602', '28836', '0', '0', '100', '5', '5000', '5000', '15000', '15000', '11', '61581', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Runeshaper - Charged Flurry'),
('2883700', '28837', '0', '0', '100', '7', '6000', '8000', '20000', '24000', '11', '53047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Soul Strike'),
('2883701', '28837', '2', '0', '100', '3', '50', '0', '12300', '14900', '11', '34423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Casts Renew at 50% HP'),
('2883704', '28837', '2', '0', '100', '5', '50', '0', '12300', '14900', '11', '37978', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Casts Renew at 50% HP'),
('2883703', '28837', '0', '0', '100', '3', '5000', '5000', '15000', '15000', '11', '53045', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Sleep'),
('2883702', '28837', '0', '0', '100', '5', '5000', '5000', '15000', '15000', '11', '59165', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Sleep'),
('2858102', '28581', '4', '0', '100', '6', '0', '0', '0', '0', '11', '59085', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Tactician - Arc Weld'),
('2858101', '28581', '0', '0', '100', '3', '5000', '5000', '15000', '15000', '11', '52778', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Tactician - Welding Beam'),
('2858100', '28581', '0', '0', '100', '5', '5000', '5000', '15000', '15000', '11', '59166', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Tactician - Welding Beam'),
('2882603', '28826', '0', '0', '100', '3', '3000', '3000', '11000', '12000', '11', '53043', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Electro Shock'),
('2882602', '28826', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52905', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Thunderbolt'),
('2882601', '28826', '0', '0', '100', '5', '3000', '3000', '11000', '12000', '11', '59168', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Electro Shock'),
('2882600', '28826', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59167', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Thunderbolt'),
('2854708', '28547', '0', '0', '100', '7', '6000', '8000', '14000', '15000', '11', '60236', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Cyclone'),
('2854709', '28547', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Stop Movement on Aggro'),
('2854710', '28547', '4', '0', '100', '2', '0', '0', '0', '0', '11', '53044', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball and Set Phase 1 on Aggro'),
('2854711', '28547', '0', '6', '100', '3', '3400', '4700', '3400', '4700', '0', '0', '0', '0', '11', '53044', '1', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball (Phase 1)'),
('2854714', '28547', '3', '6', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement and Set Phase 2 when Mana is at 15%'),
('2854713', '28547', '9', '6', '100', '3', '25', '80', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement Beyond 25 Yards'),
('2854700', '28547', '3', '5', '100', '3', '100', '30', '100', '100', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2854717', '28547', '2', '0', '100', '2', '15', '0', '0', '0', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 3 at 15% HP'),
('2854716', '28547', '2', '3', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Storming Vortex - Start Movement and Flee at 15% HP (Phase 3)'),
('2854707', '28547', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - On Evade set Phase to 0'),
('2854715', '28547', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Stop Movement on Aggro'),
('2854718', '28547', '4', '0', '100', '4', '0', '0', '0', '0', '11', '59169', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball and Set Phase 1 on Aggro'),
('2854706', '28547', '0', '6', '100', '5', '3400', '4700', '3400', '4700', '0', '0', '0', '0', '11', '59169', '1', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball (Phase 1)'),
('2854704', '28547', '3', '6', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement and Set Phase 2 when Mana is at 15%'),
('2854703', '28547', '9', '6', '100', '5', '25', '80', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement Beyond 25 Yards'),
('2854702', '28547', '3', '5', '100', '5', '100', '30', '100', '100', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2854712', '28547', '2', '0', '100', '4', '15', '0', '0', '0', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 3 at 15% HP'),
('2854705', '28547', '2', '3', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Storming Vortex - Start Movement and Flee at 15% HP (Phase 3)'),
('2854701', '28547', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - On Evade set Phase to 0'),
('2896103', '28961', '0', '0', '100', '3', '3000', '3000', '14000', '14000', '11', '52891', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Blade Turning'),
('2896101', '28961', '0', '0', '100', '5', '3000', '3000', '14000', '14000', '11', '59173', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Blade Turning'),
('2896102', '28961', '0', '0', '100', '7', '6000', '8000', '20000', '24000', '11', '19134', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Frightening Shout'),
('2896100', '28961', '0', '0', '100', '7', '9000', '9000', '16000', '18000', '11', '52890', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Penetrating Strike'),
('2896104', '28961', '0', '0', '100', '7', '10000', '10000', '20000', '20000', '11', '23600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Piercing Howl'),
('2883801', '28838', '4', '0', '100', '6', '0', '0', '0', '0', '11', '58619', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Vanguard - Charge'),
('2883800', '28838', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52890', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Vanguard - Poison Tipped Spear'),
('2896502', '28965', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52885', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deadly Throw'),
('2896504', '28965', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52879', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deflection'),
('2896513', '28965', '9', '0', '100', '3', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Stop Moving when in Throw Range'),
('2896512', '28965', '9', '0', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range I'),
('2896511', '28965', '9', '0', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range II'),
('2896510', '28965', '9', '0', '100', '3', '5', '20', '3500', '4100', '11', '52904', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Cast Throw'),
('2896500', '28965', '2', '0', '100', '2', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Titanium Thunderer - Flee at 15% HP'),
('2896509', '28965', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59180', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deadly Throw'),
('2896505', '28965', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59181', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deflection'),
('2896506', '28965', '9', '0', '100', '5', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Stop Moving when in Throw Range'),
('2896507', '28965', '9', '0', '100', '5', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range I'),
('2896503', '28965', '9', '0', '100', '5', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range II'),
('2896508', '28965', '9', '0', '100', '5', '5', '20', '3500', '4100', '11', '59179', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Cast Throw'),
('2896501', '28965', '2', '0', '100', '4', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Titanium Thunderer - Flee at 15% HP'),
('2858403', '28584', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52624', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Afterburn'),
('2858402', '28584', '0', '0', '100', '3', '3000', '3000', '12000', '12000', '11', '53788', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Lava Burst'),
('2858401', '28584', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59183', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Afterburn'),
('2858400', '28584', '0', '0', '100', '5', '3000', '3000', '12000', '12000', '11', '59182', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Lava Burst'),
('2858602', '28586', '2', '0', '100', '6', '90', '85', '0', '0', '11', '53790', '0', '0', '22', '6', '0', '0', '11', '41105', '0', '0', 'General Bjarngrim - Cast Defensive Stance and Set Phase 1'),
('2858618', '28586', '0', '6', '100', '7', '3000', '6000', '8000', '12000', '11', '36096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Spell Reflection (Phase 1)'),
('2858617', '28586', '0', '6', '100', '7', '5000', '9000', '10000', '10000', '11', '12555', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Pummel (Phase 1)'),
('2858616', '28586', '2', '6', '100', '6', '60', '55', '0', '0', '11', '53791', '0', '0', '11', '41107', '0', '0', '22', '5', '0', '0', 'General Bjarngrim - Cast Berserker Stance and Set Phase 2 at 60% (Phase 1)'),
('2858623', '28586', '0', '5', '100', '7', '1000', '5000', '3000', '5000', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Cleave (Phase 2)'),
('2858613', '28586', '0', '5', '100', '7', '3000', '8000', '5000', '9000', '11', '52029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Knock Away (Phase 2)'),
('2858612', '28586', '0', '5', '100', '7', '7000', '12000', '12000', '17000', '11', '52026', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Slam (Phase 2)'),
('2858611', '28586', '0', '5', '100', '3', '7000', '12000', '10000', '18000', '11', '52027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 2)'),
('2858610', '28586', '0', '5', '100', '5', '7000', '12000', '10000', '18000', '11', '52028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 2)'),
('2858609', '28586', '2', '5', '100', '6', '30', '25', '0', '0', '11', '53792', '0', '0', '11', '41106', '0', '0', '22', '4', '0', '0', 'General Bjarngrim - Cast Battle Stance and Set Phase 3 at 30% (Phase 2)'),
('2858604', '28586', '0', '4', '100', '7', '3000', '8000', '10000', '15000', '11', '52098', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Charge Up (Phase 3)'),
('2858608', '28586', '0', '4', '100', '7', '4000', '7000', '10000', '20000', '11', '52022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Ironform (Phase 3)'),
('2858624', '28586', '0', '4', '100', '7', '1000', '3000', '3000', '6000', '11', '16856', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Mortal Strike (Phase 3)'),
('2858614', '28586', '0', '4', '100', '3', '7000', '12000', '10000', '18000', '11', '52027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 3)'),
('2858615', '28586', '0', '4', '100', '5', '7000', '12000', '10000', '18000', '11', '52028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 3)'),
('2858619', '28586', '4', '0', '100', '6', '0', '0', '0', '0', '11', '58769', '1', '0', '1', '-1424', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Intercept and Say on Aggro'),
('2858620', '28586', '2', '4', '100', '6', '10', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Set Phase 0 at 10% (Phase 3)'),
('2858621', '28586', '0', '0', '100', '7', '3000', '8000', '10000', '15000', '11', '52098', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Charge Up'),
('2858622', '28586', '0', '0', '100', '7', '4000', '7000', '10000', '20000', '11', '52022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Ironform'),
('2858607', '28586', '0', '0', '100', '7', '1000', '3000', '3000', '6000', '11', '16856', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Mortal Strike'),
('2858606', '28586', '2', '0', '100', '6', '90', '85', '0', '0', '1', '-1426', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Defensive Stance'),
('2858605', '28586', '2', '5', '100', '6', '30', '25', '0', '0', '1', '-1425', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Battle Stance'),
('2858600', '28586', '2', '6', '100', '6', '60', '55', '0', '0', '1', '-1427', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Berserker Stance'),
('2858601', '28586', '5', '1', '100', '7', '3000', '5000', '0', '0', '1', '-1428', '-1429', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Kill'),
('2858603', '28586', '6', '0', '100', '6', '0', '0', '0', '0', '1', '-1430', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Death'),
('2858707', '28587', '0', '0', '100', '7', '10000', '10000', '50000', '50000', '11', '52238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Temper'),
('2858706', '28587', '0', '0', '100', '3', '7000', '10000', '15000', '20000', '11', '52237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Shattering Stomp'),
('2858700', '28587', '0', '0', '100', '5', '7000', '10000', '15000', '20000', '11', '59529', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Shattering Stomp'),
('2858705', '28587', '0', '0', '100', '5', '15000', '15000', '30000', '30000', '11', '59528', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Heat'),
('2858704', '28587', '0', '0', '100', '3', '15000', '15000', '30000', '30000', '11', '52387', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Heat'),
('2858703', '28587', '0', '0', '100', '7', '15000', '15000', '30000', '30000', '1', '-1434', '-1435', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Heat'),
('2858702', '28587', '0', '0', '100', '7', '7000', '10000', '15000', '20000', '1', '-1436', '-1437', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Stomp'),
('2858701', '28587', '4', '0', '100', '6', '0', '0', '0', '0', '1', '-1392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Aggro'),
('2858708', '28587', '5', '0', '100', '7', '3000', '5000', '0', '0', '1', '-1438', '-1439', '-1440', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Kill'),
('2858709', '28587', '6', '0', '100', '6', '0', '0', '0', '0', '1', '-1441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Death'),
('2854608', '28546', '0', '0', '100', '3', '2000', '6000', '5000', '9000', '11', '52780', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Ball Lightning'),
('2854607', '28546', '0', '0', '100', '5', '2000', '6000', '5000', '9000', '11', '59800', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Ball Lightning'),
('2854605', '28546', '0', '0', '100', '3', '6000', '10000', '8000', '12000', '11', '52658', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Static Overload'),
('2854604', '28546', '0', '0', '100', '5', '6000', '10000', '8000', '12000', '11', '59795', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Static Overload'),
('2854603', '28546', '0', '0', '100', '7', '10000', '15000', '10000', '20000', '11', '52770', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Disperse'),
('2854602', '28546', '0', '0', '100', '7', '10000', '15000', '10000', '20000', '1', '-1446', '-1447', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Disperse'),
('2854600', '28546', '4', '0', '100', '6', '0', '0', '0', '0', '1', '-1445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Aggro'),
('2854601', '28546', '5', '0', '100', '7', '3000', '5000', '0', '0', '1', '-1448', '-1450', '-1451', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Kill'),
('2854606', '28546', '6', '0', '100', '6', '3000', '5000', '0', '0', '1', '-1449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Death'),
('2892303', '28923', '0', '0', '100', '7', '2000', '5000', '3000', '8000', '11', '52921', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Arc Lightning'),
('2892304', '28923', '0', '0', '100', '3', '10000', '10000', '20000', '20000', '11', '52960', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Lightning Nova'),
('2892305', '28923', '0', '0', '100', '5', '10000', '10000', '20000', '20000', '11', '59835', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Lightning Nova'),
('2892301', '28923', '4', '0', '100', '6', '0', '0', '0', '0', '1', '-1457', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Aggro'),
('2892306', '28923', '6', '0', '100', '6', '0', '0', '0', '0', '1', '-1467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Death'),
('2892307', '28923', '0', '0', '100', '7', '10000', '10000', '20000', '20000', '1', '-1458', '-1459', '-1460', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Lightning Nova'),
('2892309', '28923', '5', '0', '100', '7', '3000', '5000', '0', '0', '1', '-1461', '-1462', '-1463', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Kill'),
('2892300', '28923', '2', '0', '100', '6', '75', '70', '0', '0', '1', '-1464', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say at 75%'),
('2892308', '28923', '2', '0', '100', '6', '50', '45', '0', '0', '1', '-1465', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say at 50%'),
('2892302', '28923', '2', '0', '100', '6', '25', '20', '0', '0', '1', '-1466', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say at 25%'),
('2858202', '28582', '0', '0', '100', '7', '3000', '6000', '6000', '8000', '11', '52773', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Cast Hammer Blow'),
('2858201', '28582', '2', '0', '100', '3', '30', '0', '30000', '40000', '11', '52774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Cast Renew Steel at 30%'),
('2858200', '28582', '2', '0', '100', '5', '30', '0', '30000', '40000', '11', '59160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Cast Renew Steel at 30%');

DELETE FROM `creature_ai_texts` WHERE `entry` IN(-1392,-1424,-1425,-1426,-1427,-1428,-1429,-1430,-1382,-1434,-1435,-1436,-1437,-1438,-1439,-1440,-1441,-1445,-1446,-1447,-1448,-1449,-1450,-1451,-1457,-1458,-1459,-1460,-1461,-1462,-1463,-1464,-1465,-1466,-1467);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) values

('-1392','Corpse go boom!','13184','1','0','Trollgore'),
('-1424','I\'m the greatest of my father\'s sons! Your end has come!','14149','1','0','General Bjarngrim'),
('-1425','Defend yourself, for all the good it will do!','14151','1','0','General Bjarngrim'),
('-1426','Give me your worst!','14150','1','0','General Bjarngrim'),
('-1427','GRAAAAAH! Behold the fury of iron and steel!','14152','1','0','General Bjarngrim'),
('-1428','So ends your curse!','14153','1','0','General Bjarngrim'),
('-1429','Flesh... is... weak!','14154','1','0','General Bjarngrim'),
('-1430','How can it be...? Flesh is not... stronger!','14156','1','0','General Bjarngrim'),
('-1382','It is you who have destroyed my children? You... shall... pay!','13960','1','0','Volkhan'),
('-1434','Life from the lifelessness... death for you.','13961','1','0','Volkhan'),
('-1435','Nothing is wasted in the process. You will see....','13962','1','0','Volkhan'),
('-1436','I will crush you beneath my boots!','13963','1','0','Volkhan'),
('-1437','All my work... undone!','13964','1','0','Volkhan'),
('-1438','The armies of iron will conquer all!','13965','1','0','Volkhan'),
('-1439','Ha, pathetic!','13966','1','0','Volkhan'),
('-1440','You have cost me too much work!','13967','1','0','Volkhan'),
('-1441','The master was right... to be concerned.','13968','1','0','Volkhan'),
('-1445','You wish to confront the master? You must weather the storm!','14453','1','0','Ionar'),
('-1446','The slightest spark shall be your undoing.','14453','1','0','Ionar'),
('-1447','No one is safe!','14453','1','0','Ionar'),
('-1448','Shocking, isn\'t it?','14453','1','0','Ionar'),
('-1449','Master... you have guests.','14453','1','0','Ionar'),
('-1450','You don\'t have a chance!','14453','1','0','Ionar'),
('-1451','Fire in you life is disappeared!','14453','1','0','Ionar'),
('-1457','What hope is there for you? None!','14162','1','0','Loken'),
('-1458','You cannot hide from fate!','14163','1','0','Loken'),
('-1459','Come closer. I will make it quick.','14164','1','0','Loken'),
('-1460','Your flesh cannot hold out for long.','14165','1','0','Loken'),
('-1461','Only mortal...','14166','1','0','Loken'),
('-1462','I... am... FOREVER!','14167','1','0','Loken'),
('-1463','What little time you had, you wasted!','14168','1','0','Loken'),
('-1464','You stare blindly into the abyss!','14169','1','0','Loken'),
('-1465','Your ignorance is profound. Can you not see where this path leads?','14170','1','0','Loken'),
('-1466','You cross the precipice of oblivion!','14171','1','0','Loken'),
('-1467','My death... heralds the end of this world.','14172','1','0','Loken');

UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (28923,28926,28961,28965,29240,28920,28838,28837,28836,28835,28826,28695,28587,28586,28585,28584,28583,28582,28581,28580,28579,28547,28578,28546);

--Ониксия
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (12129,36561);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1212901','12129','0','0','100','7','7800','8200','9400','9600','11','15284','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Cleave'),
('1212902','12129','0','0','100','7','9200','9300','8400','8500','11','20203','0','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Fire Nova'),
('1212903','12129','0','0','100','7','11500','11700','23400','23600','11','12097','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Pierce Armor'),
('1212904','12129','0','0','100','7','12600','12800','5800','6000','11','18958','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Flame Lash'),
('1212905','12129','0','0','100','7','9200','9300','8400','8500','11','68969','0','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Fire Nova'),
('1212906','12129','0','0','100','7','12600','12800','5800','6000','11','69308','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Flame Lash'),
(3656101,36561,0,0,75,7,15000,15000,30000,30000,11,68958,0,0,0,0,0,0,0,0,0,0, 'Onyxia Lair Guard - Cast Blast Nova'),
(3656102,36561,0,0,90,7,5000,5000,20000,20000,11,68960,1,0,0,0,0,0,0,0,0,0, 'Onyxia Lair Guard - Cast Ignite Weapon'),
(3656103,36561,0,0,80,7,7000,7000,9000,11000,11,15284,1,0,0,0,0,0,0,0,0,0, 'Onyxia Lair Guard - Cast Cleave' );

UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (12129,36561);

--Стратхольм
SET @Meathook :=26529;
SET @Salramm :=26530;
SET @Epoch :=26532;
SET @MalGanis :=26533;
SET @Infinite :=32273;
SET @Arthas :=26499;
SET @Uther :=26528;
SET @Jaina :=26497;

DELETE FROM `script_texts` WHERE `entry` <= -1595000 and `entry` >= -1595999;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Bosses
-- Chrono Lord Epoch
(@Epoch,-1595000, 'Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own.' ,13408,1,0,0, 'epoch SAY_INTRO | culling SAY_PHASE314' ),
(@Epoch,-1595001, 'We''ll see about that, young prince.' ,13409,1,0,0, 'epoch SAY_AGGRO' ),
(@Epoch,-1595002, 'Tick tock, tick tock...' ,13410,1,0,0, 'epoch SAY_TIME_WARP_1' ),
(@Epoch,-1595003, 'Not quick enough!' ,13411,1,0,0, 'epoch SAY_TIME_WARP_2'),
(@Epoch,-1595004, 'Let''s get this over with. ' ,13412,1,0,0, 'epoch SAY_TIME_WARP_3' ),
(@Epoch,-1595005, 'There is no future for you.' ,13413,1,0,0, 'epoch SAY_SLAY_1' ),
(@Epoch,-1595006, 'This is the hour of our greatest triumph!' ,13414,1,0,0, 'epoch SAY_SLAY_2' ),
(@Epoch,-1595007, 'You were destined to fail.' ,13415,1,0,0, 'epoch SAY_SLAY_3' ),
(@Epoch,-1595008, '' ,13416,0,0,0, 'epoch SAY_DEATH' ),
-- Mal'Ganis
(@MalGanis,-1595009, 'Yes, this is the beginning. I''ve been waiting for you, young prince. I am Mal''Ganis.' ,14410,0,0,1, 'mal_ganis SAY_INTRO_1 | culling SAY_PHASE206' ),
(@MalGanis,-1595010, 'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.' ,14411,0,0,1, 'mal_ganis SAY_INTRO_2 | culling SAY_PHASE207' ),
(@MalGanis,-1595011, 'This will be a fine test...Prince Arthas...' ,14413,1,0,0, 'mal_ganis SAY_AGGRO' ),
(@MalGanis,-1595012, 'All too easy...' ,14416,1,0,0, 'mal_ganis SAY_KILL_1' ),
(@MalGanis,-1595013, 'The dark lord is displeased with your interference...' ,14417,1,0,0, 'mal_ganis SAY_KILL_2' ),
(@MalGanis,-1595014, 'It is Prince Arthas I want... not you...' ,14418,1,0,0, 'mal_ganis SAY_KILL_3' ),
(@MalGanis,-1595015, 'Anak''Keri...' ,14422,1,0,0, 'mal_ganis SAY_SLAY_1' ),
(@MalGanis,-1595016, 'My onslaught will wash over the Lich King''s forces...' ,14423,1,0,0, 'mal_ganis SAY_SLAY_2' ),
(@MalGanis,-1595017, 'Your death is in vain, tiny mortal...' ,14424,1,0,0, 'mal_ganis SAY_SLAY_3' ),
(@MalGanis,-1595018, 'Your time has come to an end!' ,14425,1,0,0, 'mal_ganis SAY_SLAY_4' ),
(@MalGanis,-1595019, 'Time out...' ,14414,1,0,0, 'mal_ganis SAY_SLEEP_1' ),
(@MalGanis,-1595020, 'You seem...tired...' ,14415,1,0,0, 'mal_ganis SAY_SLEEP_2' ),
(@MalGanis,-1595021, 'I spent too much time in that weak little shell...' ,14426,1,0,0, 'mal_ganis SAY_30HEALTH' ),
(@MalGanis,-1595022, '(Eredun) I AM MAL''GANIS! I AM ETERNAL!' ,14427,1,0,0, 'mal_ganis SAY_15HEALTH' ),
(@MalGanis,-1595023, 'ENOUGH! I waste my time here...I must gather my strength on the home world...' ,14428,1,0,0, 'mal_ganis SAY_ESCAPE_SPEECH_1' ),
(@MalGanis,-1595024, 'You''ll never defeat the Lich King without my forces! I''ll have my revenge...on him, AND you...' ,14429,1,0,0, 'mal_ganis SAY_ESCAPE_SPEECH_2' ),
(@MalGanis,-1595025, 'Your journey has just begun, young prince. Gather your forces and meet me in the artic land of Northrend. It is there that we shall settle the score between us. It is there that your true destiny will unfold.' ,14412,1,0,1, 'mal_ganis SAY_OUTRO' ),
-- Meathook
(@Meathook,-1595026, 'Play time!' ,13428,1,0,0, 'meathook SAY_AGGRO' ),
(@Meathook,-1595027, 'Boring...' ,13430,1,0,0, 'meathook SAY_SLAY_1' ),
(@Meathook,-1595028, 'Why you stop moving?' ,13431,1,0,0, 'meathook SAY_SLAY_2' ),
(@Meathook,-1595029, 'Get up! Me not done!' ,13432,1,0,0, 'meathook SAY_SLAY_3' ),
(@Meathook,-1595030, 'New toys!' ,13429,1,0,0, 'meathook SAY_SPAWN' ),
(@Meathook,-1595031, 'This... not fun...' ,13433,1,0,0, 'meathook SAY_DEATH' ),
-- Salramm the Fleshcrafter 
(@Salramm,-1595032, 'Ah, the entertainment has arrived!' ,13472,1,0,0, 'salramm SAY_AGGRO' ),
(@Salramm,-1595033, 'You are too late, champion of Lordaeron. The dead shall have their day.' ,13471,1,0,0, 'salramm SAY_SPAWN' ),
(@Salramm,-1595034, 'The fun is just beginning!' ,13473,1,0,0, 'salramm SAY_SLAY_1' ),
(@Salramm,-1595035, 'Aah, quality materials!' ,13474,1,0,0, 'salramm SAY_SLAY_2' ),
(@Salramm,-1595036, 'Don''t worry, I''ll make good use of you.' ,13475,1,0,0, 'salramm SAY_SLAY_3' ),
(@Salramm,-1595037, 'You only advance... the master''s plan...' ,13483,1,0,0, 'salramm SAY_DEATH' ),
(@Salramm,-1595038, 'BOOM! Hahahahah...' ,13478,1,0,0, 'salramm SAY_EXPLODE_GHOUL_1' ),
(@Salramm,-1595039, 'Blood... destruction... EXHILARATING!' ,13479,1,0,0, 'salramm SAY_EXPLODE_GHOUL_2' ),
(@Salramm,-1595040, 'I want a sample...' ,13480,1,0,0, 'salramm SAY_STEAL_FLESH_1' ),
(@Salramm,-1595041, 'Such strength... it must be mine!' ,13481,1,0,0, 'salramm SAY_STEAL_FLESH_2' ),
(@Salramm,-1595042, 'Your flesh betrays you.' ,13482,1,0,0, 'salramm SAY_STEAL_FLESH_3' ),
(@Salramm,-1595043, 'Say hello to some friends of mine.' ,13476,1,0,0, 'salramm SAY_SUMMON_GHOULS_1' ),
(@Salramm,-1595044, 'Come, citizen of Stratholme! Meet your saviors.' ,13477,1,0,0, 'salramm SAY_SUMMON_GHOULS_2' ),
-- The Infinite Corruptor 
-- Couldn't find the value from the audios for `sound` column, not added.
(@Infinite,-1595045, 'How dare you interfere with our work here!' ,0,1,0,0, 'infinite SAY_AGGRO' ),
(@Infinite,-1595046, 'My work here is finished!' ,0,1,0,0, 'infinite SAY_FAIL' ),
(@Infinite,-1595047, 'My time... has run out...' ,0,1,0,0, 'infinite SAY_DEATH' ),
-- First Act - Uther and Jaina Dialog
-- Outside the city, Arthas, Uther and Jaina dialog
(@Arthas,-1595070, 'Glad you could make it, Uther.' ,12828,0,0,1, 'culling SAY_PHASE101' ),
(@Uther,-1595071, 'Watch your tone with me, boy. You may be the prince, but I''m still your superior as a paladin!' ,12839,0,0,25, 'culling SAY_PHASE102' ),
(@Arthas,-1595072, 'As if I could forget. Listen, Uther, there''s something about the plague you should know... ' ,12829,0,0,0, 'culling SAY_PHASE103' ),
(@Arthas,-1595073, 'Oh, no. We''re too late. These people have all been infected! They may look fine now, but it''s just a matter of time before they turn into the undead!' ,12830,0,0,1, 'culling SAY_PHASE104' ),
(@Uther,-1595074, 'What?' ,12840,0,0,5, 'culling SAY_PHASE105' ),
(@Arthas,-1595075, 'This entire city must be purged.' ,12831,0,0,1, 'culling SAY_PHASE106' ),
(@Uther,-1595076, 'How can you even consider that? There''s got to be some other way.' ,12841,0,0,1, 'culling SAY_PHASE107' ),
(@Arthas,-1595077, 'Damn it, Uther! As your future king, I order you to purge this city!' ,12832,1,0,5, 'culling SAY_PHASE108' ),
(@Uther,-1595078, 'You are not my king yet, boy! Nor would I obey that command even if you were!' ,12842,1,0,22, 'culling SAY_PHASE109' ),
(@Arthas,-1595079, 'Then I must consider this an act of treason.' ,12833,0,0,0, 'culling SAY_PHASE110' ),
(@Uther,-1595080, 'Treason? Have you lost your mind, Arthas?' ,12843,0,0,5, 'culling SAY_PHASE111' ),
(@Arthas,-1595081, 'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service.' ,12834,0,0,1, 'culling SAY_PHASE112' ),
(@Jaina,-1595082, 'Arthas! You can''t just--' ,12837,0,0,1, 'culling SAY_PHASE113' ),
(@Arthas,-1595083, 'It''s done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!' ,12835,0,0,0, 'culling SAY_PHASE114' ),
(@Uther,-1595084, 'You''ve just crossed a terrible threshold, Arthas.' ,12844,0,0,25, 'culling SAY_PHASE115' ),
(@Arthas,-1595085, 'Jaina?' ,12836,0,0,1, 'culling SAY_PHASE116' ),
(@Jaina,-1595086, 'I''m sorry, Arthas. I can''t watch you do this.' ,12838,0,0,1, 'culling SAY_PHASE117' ),
(@Arthas,-1595087, 'Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all Lordaeron!' ,14327,0,0,1, 'culling SAY_PHASE118' ),
-- Second Act - City Streets
-- Arthas enters the city and dialog with Mal'Ganis
-- After defeating 2 bosses he runs to Town Hall
(@Arthas,-1595088, 'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let''s go.' ,14293,0,0,1, 'culling SAY_PHASE201' ),
(0,-1595089, 'Prince Arthas, may the light be praised! Many people in the town have begun to fall seriously ill, can you help us?' ,0,0,0,1, 'culling SAY_PHASE202' ),
(@Arthas,-1595090, 'I can only help you with a clean death.' ,14294,0,0,0, 'culling SAY_PHASE203' ),
(0,-1595091, 'What? This can''t be!' ,0,0,0,0, 'culling SAY_PHASE204' ),
(@Arthas,-1595092, 'That was just the beginning.' ,14295,0,0,1, 'culling SAY_PHASE205' ),
(@Arthas,-1595093, 'I won''t allow it, Mal''Ganis! Better that these people die by my hand than serve as your slaves in death!' ,14296,0,0,5, 'culling SAY_PHASE208' ),
(@Arthas,-1595094, 'Mal''ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected.' ,14885,0,0,1, 'culling SAY_PHASE209' ),
(@Arthas,-1595095, 'Champions, meet me at town hall at once! We must take the fight to Mal''Ganis.' ,14297,0,0,1, 'culling SAY_PHASE210' ),
-- Third Act - Town Hall
(@Arthas,-1595096, 'Follow me. I know the way trought.' ,14298,0,0,1, 'culling SAY_PHASE301' ),
(0,-1595097, 'Ah, you''ve finally arrived Prince Arthas. You''re just in the nick of time.' ,0,0,0,1, 'culling SAY_PHASE302' ),
(@Arthas,-1595098, 'Yes, I''m glad i could get you before the plague.' ,14299,0,0,1, 'culling SAY_PHASE303' ),
(@Arthas,-1595099, 'What is this sorcery?' ,14300,0,0,0, 'culling SAY_PHASE304' ),
(0,-1595100, 'There''s no need for you to understand, Arthas. All you need to do is die!' ,0,0,0,0, 'culling SAY_PHASE305' ),
(@Arthas,-1595101, 'Mal''Ganis appears to have more than scourge in his arsenal. We should make haste.' ,14301,0,0,0, 'culling SAY_PHASE306' ),
(@Arthas,-1595102, 'More vile sorcery! Be ready for anything.' ,14302,0,0,0, 'culling SAY_PHASE307' ),
(@Arthas,-1595103, 'Let''s move on.' ,14303,0,0,0, 'culling SAY_PHASE308' ),
(@Arthas,-1595104, 'Watch your backs... they have us surrounded in this hall.' ,14304,0,0,0, 'culling SAY_PHASE309' ),
(@Arthas,-1595105, 'One less obstacle to deal with.' ,0,0,0,0, 'culling SAY_PHASE310' ),
(@Arthas,-1595106, 'Mal''Ganis is not making this easy...' ,14305,0,0,0, 'culling SAY_PHASE311' ),
(@Arthas,-1595107, 'They''re very persistent.' ,14306,0,0,0, 'culling SAY_PHASE312' ),
(@Arthas,-1595108, 'What else can be put in my way?' ,14307,0,0,0, 'culling SAY_PHASE313' ),
(@Arthas,-1595109, 'I do what i must for Lordaeron. And neither your words nor your actions will stop me.' ,14309,0,0,5, 'culling SAY_PHASE315' ),
-- Fourth Act - Fire Corridor
(@Arthas,-1595110, 'The quickest path to Mal''Ganis lays behind that bookshelf ahead.' ,14308,0,0,0, 'culling SAY_PHASE401' ),
(@Arthas,-1595111, 'This will only take a moment.' ,14310,0,0,0, 'culling SAY_PHASE402' ),
(@Arthas,-1595112, 'I believe that secret passage still works!' ,14311,0,0,0, 'culling SAY_PHASE403' ),
(@Arthas,-1595113, 'Let''s move trought here as quickly as possible. If the undead don''t kill us the fires might.' ,14312,0,0,0, 'culling SAY_PHASE404' ),
(@Arthas,-1595114, 'Rest a moment and clear your lungs. But we must move again soon.' ,14313,0,0,0, 'culling SAY_PHASE405' ),
(@Arthas,-1595115, 'That''s enough, we must move again. Mal''Ganis awaits.' ,14314,0,0,0, 'culling SAY_PHASE406' ),
(@Arthas,-1595116, 'At last some good luck, Market Row has not caught fire yet. Mal''Ganis is supposed to be on Crusader Square which is just ahead. Tell me when you''re ready to move forth.' ,14315,0,0,0, 'culling SAY_PHASE407' ),
-- Fifth Act - Mal'Ganis Fight
(@Arthas,-1595117, 'Justice will be done!' ,14316,0,0,0, 'culling SAY_PHASE501' ),
(@Arthas,-1595118, 'We''re going to finish this right now Mal''Ganis... just you and me!' ,14317,0,0,0, 'culling SAY_PHASE502' ),
(@Arthas,-1595119, 'I''ll hunt you to the ends of the earth if I have to! Do you hear me? To the ends of the earth!' ,14318,1,0,5, 'culling SAY_PHASE503' ),
(@Arthas,-1595120, 'You performed well this day. Anything that Mal''Ganis has left behind is yours. Take it as your reward. I must now begin plans for an expedition to Northrend.' ,14319,0,0,5, 'culling SAY_PHASE504' );

-- script_texts for boss_epoch_hunter have wrong comment (epoch instead of epoch_hunter)
-- This generates a "conflict" with boss_epoch script_texts just introduced
-- The following queries eliminate script_texts comment conflict from boss_epoch and boss_epoch_hunter
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_ENTER1' where `entry`=-1560013;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_ENTER2' where `entry`=-1560014;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_ENTER3' where `entry`=-1560015;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_AGGRO1' where `entry`=-1560016;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_AGGRO2' where `entry`=-1560017;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_SLAY1' where `entry`=-1560018;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_SLAY2' where `entry`=-1560019;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_BREATH1' where `entry`=-1560020;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_BREATH2' where `entry`=-1560021;
UPDATE script_texts SET `comment`= 'epoch_hunter SAY_DEATH' where `entry`=-1560022;

-- Arthas Gossip Menu
DELETE FROM `npc_text` WHERE `ID` in (100000,100001,100002,100003,100004,100005);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`prob0`) VALUES
(100001, 'Are you ready to do whatever it must be done to protect Lordaeron?', 'Are you ready to do whatever it must be done to protect Lordaeron?',1),
(100002, 'You must be one of the brave soldiers who have been fighting the Scourge forces of Mal\'Ganis. Well done.', 'You must be one of the brave soldiers who have been fighting the Scourge forces of Mal\'Ganis. Well done.',1),
(100003, 'Gather your senses quickly, we must press on.', 'Gather your senses quickly, we must press on.',1),
(100004, 'This isn\'t getting any easier. Stratholme is burning. We must brave the Scourge and the flames to reach Mal\'Ganis. Prepare yourselves.', 'This isn\'t getting any easier. Stratholme is burning. We must brave the Scourge and the flames to reach Mal\'Ganis. Prepare yourselves.',1),
(100005, 'Are you ready to face Mal\'Ganis with me?', 'Are you ready to face Mal\'Ganis with me?',1);

-- script_waypoints for Arthas movements inside Culling
DELETE FROM script_waypoint WHERE entry=26499;
INSERT INTO script_waypoint VALUES
(26499,0,1903.167,1291.573,143.32,0, 'culling Bridge WP1' ),
(26499,1,1911.087,1314.263,150.026,0, 'culling Bridge WP2' ),
(26499,2,1902.959,1295.127,143.388,10000, 'culling Bridge WP3' ),
(26499,3,1913.726,1287.407,141.927,0, 'culling Bridge WP4' ),
(26499,4,1990.833,1293.391,145.467,0, 'culling Bridge WP5' ),
(26499,5,1997.003,1317.776,142.963,0, 'culling Bridge WP6' ),
(26499,6,2019.631,1326.084,142.929,0, 'culling Bridge WP7' ),
(26499,7,2026.469,1287.088,143.596,0, 'culling Bridge WP8' ),
(26499,8,2050.660,1287.333,142.671,0, 'culling Bridge WP9' ),
(26499,9,2081.447,1287.770,141.324,0, 'culling Streets WP1' ),
(26499,10,2087.689,1280.344,140.730,0, 'culling Streets WP2' ),
(26499,11,2092.154,1276.645,140.520,0, 'culling Streets WP3' ),
(26499,12,2099.876,1280.21,138.55,0, 'culling Streets WP4' ),
(26499,13,2120.757,1286.97,136.343,0, 'culling Streets WP5' ),
(26499,14,2165.073,1279.338,133.40,0, 'culling Streets WP6' ),
(26499,15,2186.441,1234.445,136.524,0, 'culling Streets WP7' ),
(26499,16,2210.385,1207.550,136.259,0, 'culling Streets WP8' ),
(26499,17,2243.594,1177.705,137.144,0, 'culling Streets WP9' ),
(26499,18,2286.883,1177.262,137.631,0, 'culling Streets WP10' ),
(26499,19,2320.374,1179.954,133.926,0, 'culling Streets WP11' ),
(26499,20,2365.626,1194.838,131.974,0, 'culling Streets WP12' ),
(26499,21,2366.559,1197.759,132.382,0, 'culling House WP1' ),
(26499,22,2394.011,1205.148,134.125,0, 'culling House WP2' ),
(26499,23,2395.854,1206.345,134.039,0, 'culling House WP3' ),
(26499,24,2442.023,1219.205,133.999,0, 'culling House WP3' ),
(26499,25,2447.105,1191.182,148.076,0, 'culling House WP4' ),
(26499,26,2444.250,1190.510,148.076,0, 'culling House WP5' ),
(26499,27,2418.487,1196.059,148.076,0, 'culling House WP6' ),
(26499,28,2401.221,1191.705,148.076,0, 'culling House WP7' ),
(26499,29,2409.205,1157.425,148.190,0, 'culling House WP8' ),
(26499,30,2417.584,1121.026,148.082,0, 'culling House WP9' ),
(26499,31,2423.123,1119.431,148.076,0, 'culling House WP10' ),
(26499,32,2447.833,1112.714,148.076,0, 'culling House WP11' ),
(26499,33,2457.133,1120.941,150.008,0, 'culling House WP12' ),
(26499,34,2459.694,1127.012,150.008,0, 'culling House WP13' ),
(26499,35,2469.617,1122.274,150.008,0, 'culling House WP14' ),
(26499,36,2470.437,1122.794,150.008,3000, 'culling House WP15' ),
(26499,37,2471.662,1123.077,150.035,3000, 'culling House WP16' ),
(26499,38,2483.183,1125.042,149.905,0, 'culling Secret WP1' ),
(26499,39,2487.867,1099.760,144.858,0, 'culling Secret WP2' ),
(26499,40,2498.270,1101.929,144.599,0, 'culling Secret WP3' ),
(26499,41,2492.114,1128.238,139.967,0, 'culling Secret WP4' ),
(26499,42,2500.286,1130.183,139.982,0, 'culling Room WP1' ),
(26499,43,2503.010,1119.241,139.978,0, 'culling Room WP2' ),
(26499,44,2517.820,1122.645,132.066,0, 'culling Room WP3' ),
(26499,45,2540.479,1129.061,130.868,7000, 'culling Fire Street WP1' ),
(26499,46,2568.619,1157.794,126.906,0, 'culling Fire Street WP2' ),
(26499,47,2556.074,1222.058,125.412,20000, 'culling Fire Street WP3' ),
(26499,48,2521.531,1295.209,130.573,0, 'culling Fire Street WP4' ),
(26499,49,2504.362,1348.667,132.944,0, 'culling Fire Street WP5' ),
(26499,50,2450.594,1431.544,131.361,0, 'culling Fire Street WP6' ),
(26499,51,2353.485,1404.839,128.531,0, 'culling Market WP1' ),
(26499,52,2329.882,1406.273,128.013,0, 'culling Market WP2' ),
(26499,53,2329.882,1406.273,128.013,12000, 'culling Market WP3' ),
(26499,54,2327.391,1412.475,127.692,0, 'culling Market WP4' ),
(26499,55,2303.016,1480.070,128.139,0, 'culling Crusader WP1' ),
(26499,56,2296.665,1502.362,128.362,0, 'culling Crusader WP2' );

-- ScriptName placement
update `creature_template` set `AIName`='', `Scriptname`='npc_arthas' where `entry` in (26499);
update `creature_template` set `AIName`='', `Scriptname`='boss_salramm' where `entry` in (26530);
update `creature_template` set `AIName`='', `Scriptname`='boss_meathook' where `entry` in (26529);
update `creature_template` set `AIName`='', `Scriptname`='boss_epoch' where `entry` in (26532);
update `creature_template` set `AIName`='', `Scriptname`='boss_mal_ganis' where `entry` in (26533);
update `instance_template` set `script` = 'instance_culling_of_stratholme' WHERE map=595;

-- Culling of Stratholme - Fire Street mobs
-- Source: http://www.youtube.com/watch?v=dFg7rtEyQS0
DELETE FROM `creature` WHERE guid >= 4459039 AND guid <= 4459247;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(4459039, 27729, 595, 1, 1, 0, 0, 2576.53, 1174.19, 125.799, 4.5887, 60, 0, 0, 50400, 0, 0, 0),
(4459041, 27729, 595, 1, 1, 0, 0, 2552.65, 1200.16, 127.728, 4.90608, 60, 0, 0, 50400, 0, 0, 0),
(4459050, 27729, 595, 1, 1, 0, 0, 2565.16, 1217.81, 125.181, 4.94848, 60, 0, 0, 50400, 0, 0, 0),
(4459052, 27734, 595, 1, 1, 0, 0, 2545.56, 1240.36, 125.993, 5.14326, 60, 0, 0, 50400, 0, 0, 0),
(4459054, 28201, 595, 1, 1, 0, 0, 2538.96, 1264.22, 126.334, 5.16831, 60, 0, 0, 104264, 0, 0, 0),
(4459058, 28249, 595, 1, 1, 0, 0, 2527.91, 1292.33, 130.62, 4.9412, 60, 0, 0, 47144, 0, 0, 0),
(4459060, 27729, 595, 1, 1, 0, 0, 2501.27, 1351.21, 132.653, 5.13843, 60, 0, 0, 50400, 0, 0, 0),
(4459062, 27729, 595, 1, 1, 0, 0, 2488.69, 1372.49, 130.305, 5.13782, 60, 0, 0, 50400, 0, 0, 0),
(4459072, 27734, 595, 1, 1, 0, 0, 2477.79, 1379.03, 129.347, 5.28836, 60, 0, 0, 50400, 0, 0, 0),
(4459074, 27736, 595, 1, 1, 0, 0, 2466.5, 1410.46, 130.728, 5.28334, 60, 0, 0, 104264, 0, 0, 0),
(4459076, 27729, 595, 1, 1, 0, 0, 2443.01, 1431.24, 131.233, 5.21811, 60, 0, 0, 50400, 0, 0, 0),
(4459078, 27731, 595, 1, 1, 0, 0, 2515.91, 1281.52, 129.724, 5.14721, 60, 0, 0, 15750, 7988, 0, 0),
(4459089, 27731, 595, 1, 1, 0, 0, 2570.3, 1202.13, 125.54, 5.08855, 60, 0, 0, 15750, 7988, 0, 0),
(4459091, 27737, 595, 1, 1, 0, 0, 2560.54, 1169.48, 127.601, 4.47637, 60, 0, 0, 15000, 0, 0, 0),
(4459093, 27737, 595, 1, 1, 0, 0, 2566.6, 1166.85, 126.888, 4.47637, 60, 0, 0, 15000, 0, 0, 0),
(4459095, 27737, 595, 1, 1, 0, 0, 2570.14, 1159.86, 126.678, 4.34914, 60, 0, 0, 15000, 0, 0, 0),
(4459097, 27737, 595, 1, 1, 0, 0, 2562.99, 1158.59, 127.53, 3.29278, 60, 0, 0, 15000, 0, 0, 0),
(4459099, 27737, 595, 1, 1, 0, 0, 2578.47, 1156.7, 126.45, 4.59026, 60, 0, 0, 15000, 0, 0, 0),
(4459101, 27737, 595, 1, 1, 0, 0, 2579.08, 1167.59, 125.964, 3.08543, 60, 0, 0, 15000, 0, 0, 0),
(4459103, 27737, 595, 1, 1, 0, 0, 2569.55, 1178.06, 126.012, 3.42787, 60, 0, 0, 15000, 0, 0, 0),
(4459105, 27737, 595, 1, 1, 0, 0, 2571.66, 1148.78, 126.802, 4.46381, 60, 0, 0, 15000, 0, 0, 0),
(4459107, 27737, 595, 1, 1, 0, 0, 2577.25, 1140.56, 126.423, 3.47892, 60, 0, 0, 15000, 0, 0, 0),
(4459109, 27737, 595, 1, 1, 0, 0, 2561.47, 1181.77, 126.608, 4.10724, 60, 0, 0, 15000, 0, 0, 0),
(4459111, 27737, 595, 1, 1, 0, 0, 2566.87, 1193.3, 125.781, 5.83118, 60, 0, 0, 15000, 0, 0, 0),
(4459113, 27737, 595, 1, 1, 0, 0, 2574.31, 1198.34, 126.013, 4.98295, 60, 0, 0, 15000, 0, 0, 0),
(4459115, 27737, 595, 1, 1, 0, 0, 2562.47, 1201.81, 125.812, 4.3138, 60, 0, 0, 15000, 0, 0, 0),
(4459117, 27737, 595, 1, 1, 0, 0, 2563.46, 1213.01, 125.297, 4.78425, 60, 0, 0, 15000, 0, 0, 0),
(4459119, 27737, 595, 1, 1, 0, 0, 2553.6, 1212.3, 126.796, 4.78425, 60, 0, 0, 15000, 0, 0, 0),
(4459121, 27737, 595, 1, 1, 0, 0, 2558.2, 1224.74, 125.492, 4.79284, 60, 0, 0, 15000, 0, 0, 0),
(4459123, 27737, 595, 1, 1, 0, 0, 2548.17, 1225.98, 126.643, 4.79598, 60, 0, 0, 15000, 0, 0, 0),
(4459125, 27737, 595, 1, 1, 0, 0, 2551.95, 1222.84, 126.168, 5.17612, 60, 0, 0, 15000, 0, 0, 0),
(4459127, 27737, 595, 1, 1, 0, 0, 2555.51, 1237.51, 125.6, 4.67032, 60, 0, 0, 15000, 0, 0, 0),
(4459129, 27737, 595, 1, 1, 0, 0, 2538.3, 1238.15, 126.915, 5.01589, 60, 0, 0, 15000, 0, 0, 0),
(4459131, 27737, 595, 1, 1, 0, 0, 2552.39, 1248.25, 125.248, 4.6389, 60, 0, 0, 15000, 0, 0, 0),
(4459133, 27737, 595, 1, 1, 0, 0, 2535.45, 1250.57, 126.922, 5.32927, 60, 0, 0, 15000, 0, 0, 0),
(4459135, 27737, 595, 1, 1, 0, 0, 2541.02, 1254.04, 126.255, 5.32927, 60, 0, 0, 15000, 0, 0, 0),
(4459137, 27737, 595, 1, 1, 0, 0, 2547.55, 1258.28, 126.261, 4.73237, 60, 0, 0, 15000, 0, 0, 0),
(4459139, 27737, 595, 1, 1, 0, 0, 2547.09, 1252.75, 126.039, 3.85272, 60, 0, 0, 15000, 0, 0, 0),
(4459141, 27737, 595, 1, 1, 0, 0, 2531.8, 1260.09, 128.033, 5.66463, 60, 0, 0, 15000, 0, 0, 0),
(4459143, 27737, 595, 1, 1, 0, 0, 2544.61, 1267.88, 126.823, 5.28764, 60, 0, 0, 15000, 0, 0, 0),
(4459145, 27737, 595, 1, 1, 0, 0, 2512.76, 1299.76, 130.888, 4.63986, 60, 0, 0, 15000, 0, 0, 0),
(4459147, 27737, 595, 1, 1, 0, 0, 2509.8, 1294.61, 130.906, 4.63986, 60, 0, 0, 15000, 0, 0, 0),
(4459149, 27737, 595, 1, 1, 0, 0, 2511.91, 1289, 130.43, 6.05594, 60, 0, 0, 15000, 0, 0, 0),
(4459151, 27737, 595, 1, 1, 0, 0, 2516.37, 1292.37, 130.617, 6.05594, 60, 0, 0, 15000, 0, 0, 0),
(4459153, 27737, 595, 1, 1, 0, 0, 2519.41, 1297.28, 130.629, 5.77319, 60, 0, 0, 15000, 0, 0, 0),
(4459155, 27737, 595, 1, 1, 0, 0, 2523.65, 1296.02, 130.752, 4.83543, 60, 0, 0, 15000, 0, 0, 0),
(4459157, 27737, 595, 1, 1, 0, 0, 2522.49, 1286.49, 129.486, 4.27465, 60, 0, 0, 15000, 0, 0, 0),
(4459159, 27737, 595, 1, 1, 0, 0, 2519.52, 1280.15, 128.742, 4.27465, 60, 0, 0, 15000, 0, 0, 0),
(4459161, 27737, 595, 1, 1, 0, 0, 2519.54, 1273.62, 128.344, 5.78026, 60, 0, 0, 15000, 0, 0, 0),
(4459163, 27737, 595, 1, 1, 0, 0, 2523.45, 1275.68, 128.598, 5.78026, 60, 0, 0, 15000, 0, 0, 0),
(4459165, 27737, 595, 1, 1, 0, 0, 2525.14, 1278.75, 128.335, 5.78026, 60, 0, 0, 15000, 0, 0, 0),
(4459167, 27737, 595, 1, 1, 0, 0, 2531.5, 1277.13, 127.74, 5.12288, 60, 0, 0, 15000, 0, 0, 0),
(4459169, 27737, 595, 1, 1, 0, 0, 2528.62, 1273.54, 127.77, 3.99191, 60, 0, 0, 15000, 0, 0, 0),
(4459171, 27737, 595, 1, 1, 0, 0, 2526.9, 1269.35, 128.169, 5.03099, 60, 0, 0, 15000, 0, 0, 0),
(4459173, 27737, 595, 1, 1, 0, 0, 2531.23, 1268.16, 127.537, 0.475684, 60, 0, 0, 15000, 0, 0, 0),
(4459175, 27737, 595, 1, 1, 0, 0, 2536.96, 1272.03, 126.867, 5.91064, 60, 0, 0, 15000, 0, 0, 0),
(4459177, 27737, 595, 1, 1, 0, 0, 2529.73, 1285.64, 129.017, 5.23755, 60, 0, 0, 15000, 0, 0, 0),
(4459179, 27737, 595, 1, 1, 0, 0, 2533.89, 1286.98, 129.064, 5.27111, 60, 0, 0, 15000, 0, 0, 0),
(4459181, 27737, 595, 1, 1, 0, 0, 2493.52, 1339.58, 133.68, 0.261969, 60, 0, 0, 15000, 0, 0, 0),
(4459183, 27737, 595, 1, 1, 0, 0, 2493.94, 1345.46, 133.344, 0.00985568, 60, 0, 0, 15000, 0, 0, 0),
(4459185, 27737, 595, 1, 1, 0, 0, 2507.38, 1350.97, 133.011, 5.63331, 60, 0, 0, 15000, 0, 0, 0),
(4459187, 27737, 595, 1, 1, 0, 0, 2503.66, 1356.53, 132.098, 4.13005, 60, 0, 0, 15000, 0, 0, 0),
(4459189, 27737, 595, 1, 1, 0, 0, 2495.64, 1355.89, 132.006, 4.13005, 60, 0, 0, 15000, 0, 0, 0),
(4459191, 27737, 595, 1, 1, 0, 0, 2498.26, 1359.81, 131.282, 5.13222, 60, 0, 0, 15000, 0, 0, 0),
(4459193, 27737, 595, 1, 1, 0, 0, 2490.52, 1356.36, 131.711, 5.13222, 60, 0, 0, 15000, 0, 0, 0),
(4459195, 27737, 595, 1, 1, 0, 0, 2497.23, 1368.5, 130.975, 4.66098, 60, 0, 0, 15000, 0, 0, 0),
(4459197, 27737, 595, 1, 1, 0, 0, 2492.11, 1366.28, 130.792, 4.66098, 60, 0, 0, 15000, 0, 0, 0),
(4459199, 27737, 595, 1, 1, 0, 0, 2484.4, 1365.99, 130.027, 4.66098, 60, 0, 0, 15000, 0, 0, 0),
(4459201, 27737, 595, 1, 1, 0, 0, 2492.39, 1375.37, 130.36, 0.17479, 60, 0, 0, 15000, 0, 0, 0),
(4459203, 27737, 595, 1, 1, 0, 0, 2482.88, 1372.34, 129.654, 2.99908, 60, 0, 0, 15000, 0, 0, 0),
(4459205, 27737, 595, 1, 1, 0, 0, 2488.04, 1383.27, 130.238, 5.32857, 60, 0, 0, 15000, 0, 0, 0),
(4459207, 27737, 595, 1, 1, 0, 0, 2491.47, 1387.06, 130.568, 5.32857, 60, 0, 0, 15000, 0, 0, 0),
(4459209, 27737, 595, 1, 1, 0, 0, 2481.7, 1391.46, 130.048, 4.57538, 60, 0, 0, 15000, 0, 0, 0),
(4459211, 27737, 595, 1, 1, 0, 0, 2474.76, 1392.42, 129.655, 4.57538, 60, 0, 0, 15000, 0, 0, 0),
(4459213, 27737, 595, 1, 1, 0, 0, 2477.2, 1400.52, 130.455, 5.91369, 60, 0, 0, 15000, 0, 0, 0),
(4459215, 27737, 595, 1, 1, 0, 0, 2465.15, 1404.28, 130.293, 4.79136, 60, 0, 0, 15000, 0, 0, 0),
(4459217, 27737, 595, 1, 1, 0, 0, 2470.86, 1409.25, 130.984, 5.28773, 60, 0, 0, 15000, 0, 0, 0),
(4459219, 27737, 595, 1, 1, 0, 0, 2471.3, 1415.37, 131.513, 4.34525, 60, 0, 0, 15000, 0, 0, 0),
(4459221, 27737, 595, 1, 1, 0, 0, 2457.37, 1416.8, 130.267, 5.09924, 60, 0, 0, 15000, 0, 0, 0),
(4459223, 27737, 595, 1, 1, 0, 0, 2463.16, 1420.69, 130.922, 0.332655, 60, 0, 0, 15000, 0, 0, 0),
(4459225, 27737, 595, 1, 1, 0, 0, 2461.38, 1428.33, 131.14, 2.1053, 60, 0, 0, 15000, 0, 0, 0),
(4459227, 27737, 595, 1, 1, 0, 0, 2457.31, 1430.58, 131.346, 3.83317, 60, 0, 0, 15000, 0, 0, 0),
(4459229, 27737, 595, 1, 1, 0, 0, 2455.66, 1424, 130.795, 3.45383, 60, 0, 0, 15000, 0, 0, 0),
(4459231, 27737, 595, 1, 1, 0, 0, 2451.11, 1423.59, 130.626, 2.6056, 60, 0, 0, 15000, 0, 0, 0),
(4459233, 27737, 595, 1, 1, 0, 0, 2450.49, 1430.84, 131.274, 0.586337, 60, 0, 0, 15000, 0, 0, 0),
(4459235, 27737, 595, 1, 1, 0, 0, 2450.3, 1432.57, 131.469, 1.98042, 60, 0, 0, 15000, 0, 0, 0),
(4459237, 27737, 595, 1, 1, 0, 0, 2445.13, 1437.02, 131.758, 3.54965, 60, 0, 0, 15000, 0, 0, 0),
(4459239, 27737, 595, 1, 1, 0, 0, 2439.99, 1433.47, 131.366, 4.58402, 60, 0, 0, 15000, 0, 0, 0),
(4459241, 27737, 595, 1, 1, 0, 0, 2434.27, 1428.67, 131.239, 5.71263, 60, 0, 0, 15000, 0, 0, 0),
(4459243, 27737, 595, 1, 1, 0, 0, 2438.5, 1425.95, 130.855, 5.71263, 60, 0, 0, 15000, 0, 0, 0),
(4459245, 27737, 595, 1, 1, 0, 0, 2440.8, 1423.15, 130.543, 5.71263, 60, 0, 0, 15000, 0, 0, 0),
(4459247, 27737, 595, 1, 1, 0, 0, 2446.09, 1423.63, 130.578, 4.94757, 60, 0, 0, 15000, 0, 0, 0);

-- Arthas placed in front of Stratholme bridge
DELETE FROM `creature` WHERE (`guid`=4456649);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (4456649, 26499, 595, 1, 0, 0, 1920.87, 1287.12, 142.935, 6.25562, 25, 0, 0, 44100, 7988, 0, 0);

-- Doors inside Culling redone
DELETE FROM `gameobject_template` WHERE `entry` in (188686,187711,187723);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(188686, 0, 7831, 'Doodad_LD_hidden_door_room01', '', 1375, 6553632, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(187711, 0, 3631, 'Crusaders\' Square Gate', '', 1375, 6553632, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(187723, 0, 3631, 'Crusaders\' Square Gate', '', 1375, 6553632, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Delete all bosses and creatures that could be spawned in the instance
DELETE FROM `creature` WHERE (`id`=27744);
DELETE FROM `creature` WHERE (`id`=26530);
DELETE FROM `creature` WHERE (`id`=26529);
DELETE FROM `creature` WHERE (`id`=26532);
DELETE FROM `creature` WHERE (`id`=26533);

-- Some fixes to make Chest work
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry` in (190663,193597);
DELETE FROM `gameobject` WHERE `id` in (190663,193597);
DELETE FROM `gameobject` WHERE `guid` in (67603,500005);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(67603, 190663, 595, 1, 1, 2288.35, 1498.73, 128.414, -0.994837, 0, 0, 0, 1, 180, 0, 1),
(500005, 193597, 595, 2, 1, 2288.35, 1498.73, 128.414, -0.994837, 0, 0, 0, 1, 180, 0, 1);

-- Some updates that know i really don't know if are needed anymore
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 where `entry` in (31127, 31126, 28167, 28169);
UPDATE `creature_template` SET `MovementType` = 2 WHERE `creature_template`.`entry` = 26528;
UPDATE `creature` SET `spawntimesecs`='3600' where `id` in (31127, 31126, 28167, 28169);
UPDATE `gameobject` SET `state`='1' where `id`=187711;

--
-- Eye of Eternity
--

-- Set instance script
UPDATE instance_template SET script = 'instance_eye_of_eternity' WHERE map = 616;

-- Update flags for NPCs/Vehicles
UPDATE creature_template SET flags_extra = flags_extra | 2 WHERE entry = 30090; -- Vortex  'Arcane Overload', 'Hover Disk');
UPDATE creature_template SET flags_extra = flags_extra | 2, faction_A = 35, faction_H = 35, VehicleId = 264 WHERE entry IN (30234, 30248); -- Hover Disk
UPDATE creature_template SET flags_extra = flags_extra | 2, faction_A = 35, faction_H = 35 WHERE entry = 30118; -- Portal (Malygos)
UPDATE creature_template SET flags_extra = flags_extra | 2 WHERE entry = 30282; -- Arcane Overload
UPDATE creature_template SET mindmg = 1, maxdmg = 1, dmg_multiplier = 1 WHERE entry = 30592; -- Static Field
UPDATE creature_template SET modelid1 = 11686, modelid2 = 11686 WHERE entry = 22517; -- Some world trigger

-- Set scriptnames and some misc data to bosses and GOs
UPDATE gameobject_template SET flags = 4, data0 = 43 WHERE gameobject_template.entry in (193967, 193905);
UPDATE creature_template SET ScriptName = 'boss_malygos', unit_flags = unit_flags & ~256 WHERE entry = 28859;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 28859; -- Malygos, don't move
UPDATE creature_template SET ScriptName = 'mob_nexus_lord' WHERE entry = 30245; -- Nexus Lord
UPDATE creature_template SET ScriptName = 'mob_scion_of_eternity' WHERE entry = 30249; -- Scion of Eternity
UPDATE creature_template SET faction_A = 14, faction_H = 14, ScriptName = 'mob_power_spark' WHERE entry = 30084; -- Power Spark
UPDATE creature_template SET faction_A = 14, faction_H = 14 WHERE entry = 32187; -- Power Spark (1)
UPDATE creature_template SET ScriptName = 'npc_arcane_overload' WHERE entry = 30282; -- Arcane Overload
UPDATE `creature_template` SET `spell1`='57403' WHERE (`entry`='30248');
DELETE FROM `event_scripts` WHERE (`id`='20711');
DELETE FROM `gameobject` WHERE id in (193908, 193070);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES (NULL,'193908','616','3','1','724.684','1332.92','267.234','-0.802851','0','0','0','1','43200','100','1');
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES (NULL,'193070','616','3','1','754.346','1300.87','256.249','3.14159','0','0','0','1','43200','0','1');
UPDATE `gameobject_template` SET `ScriptName`='go_focusing_iris' WHERE `entry` in (193958, 193960);
UPDATE `gameobject_template` SET `ScriptName`='go_malygos_portal' WHERE (`entry`='193908');

-- Fix Wyrmrest drakes creature info
UPDATE creature_template SET spell1 = 56091, spell2 = 56092, spell3 = 57090, spell4 = 57143, spell5 = 57108, spell6 = 57403, VehicleId = 165 WHERE entry IN (30161, 31752);

-- Delete faulty Alextrasza spawn
DELETE FROM creature WHERE guid = 132302;
DELETE FROM creature_addon WHERE guid = 132302;

-- And Surge of Power
DELETE FROM creature WHERE guid = 132303;
DELETE FROM creature_addon WHERE guid = 132303;

-- Fix Loot caches being not selectable
UPDATE gameobject_template SET faction = 35, flags = 0 WHERE entry IN (193967, 193905);

-- Fix Surge of Power targeting
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry = 56505;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, COMMENT) VALUES
(13, 0, 56505, 0, 18, 1, 30334, 0, 0, "Surge of Power - cast only on World Trigger (Large AOI)");

-- Fix loot for Malygos (Alexstrasza's Gift)
DELETE FROM reference_loot_template WHERE entry = 50008;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES
(50008, 40474, 0, 1, 1, 1, 1), -- Surge Needle Ring
(50008, 40497, 0, 1, 1, 1, 1), -- Black Ice
(50008, 40489, 0, 1, 1, 1, 1), -- Greatstaff of the Nexus
(50008, 40526, 0, 1, 1, 1, 1), -- Gown of the Spell-Weaver
(50008, 40511, 0, 1, 1, 1, 1), -- Focusing Energy Epaulets
(50008, 40475, 0, 1, 1, 1, 1), -- Barricade of Eternity
(50008, 40488, 0, 1, 1, 1, 1), -- Ice Spire Scepter
(50008, 40491, 0, 1, 1, 1, 1), -- Hailstorm
(50008, 40519, 0, 1, 1, 1, 1), -- Footsteps of Malygos
(50008, 40486, 0, 1, 1, 1, 1); -- Necklace of the Glittering Chamber

DELETE FROM reference_loot_template WHERE entry = 50009;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES
(50009, 40592, 0, 1, 1, 1, 1), -- Boots of Healing Energies
(50009, 40566, 0, 1, 1, 1, 1), -- Unravelling Strands of Sanity
(50009, 40194, 0, 1, 1, 1, 1), -- Blanketing Robes of Snow
(50009, 40543, 0, 1, 1, 1, 1), -- Blue Aspect Helm
(50009, 40590, 0, 1, 1, 1, 1), -- Elevated Lair Pauldrons
(50009, 40560, 0, 1, 1, 1, 1), -- Leggings of the Wanton Spellcaster
(50009, 40589, 0, 1, 1, 1, 1), -- Legplates of Sovereignty
(50009, 40555, 0, 1, 1, 1, 1), -- Mantle of Dissemination
(50009, 40591, 0, 1, 1, 1, 1), -- Melancholy Sabatons
(50009, 40594, 0, 1, 1, 1, 1), -- Spaulders of Catatonia
(50009, 40588, 0, 1, 1, 1, 1), -- Tunic of the Artifact Guardian
(50009, 40549, 0, 1, 1, 1, 1), -- Boots of the Renewed Flight
(50009, 40539, 0, 1, 1, 1, 1), -- Chestguard of the Recluse
(50009, 40541, 0, 1, 1, 1, 1), -- Frosted Adroit Handguards
(50009, 40562, 0, 1, 1, 1, 1), -- Hood of Rationality
(50009, 40561, 0, 1, 1, 1, 1), -- Leash of Heedless Magic
(50009, 40532, 0, 1, 1, 1, 1), -- Living Ice Crystals
(50009, 40531, 0, 1, 1, 1, 1), -- Mark of Norgannon
(50009, 40564, 0, 1, 1, 1, 1), -- Winter Spectacle Gloves
(50009, 40558, 0, 1, 1, 1, 1); -- Arcanic Tramplers

DELETE FROM gameobject_loot_template WHERE entry IN (26094, 26097);
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES
(26094, 40752, 100, 1, 0, 2, 2), -- Emblem of Heroism x2
(26094, 	1, 100, 1, 0, -50008, 2), -- 2 items ilevel 213
(26094, 44650, 100, 1, 0, 1, 1), -- Quest item, Judgement at the Eye of Eternity
(26094, 43953, 1, 1, 0, 1, 1), -- Reins of the Blue Drake 	
-- End of 10m Malygos loot

(26097, 40753, 100, 1, 0, 2, 2), -- Emblem of Valor x2
(26097, 	1, 100, 1, 0, -50009, 4), -- 4 items ilevel 226
(26097, 44651, 100, 1, 0, 1, 1), -- Quest item, Heroic Judgement at the Eye of Eternity
(26097, 43952, 1, 1, 0, 1, 1); -- Reins of the Azure Drake
-- End of 25m Malygos loot

-- Fix Malygos and his adds' damage
UPDATE creature_template SET mindmg = 3684, maxdmg = 4329, dmg_multiplier = 7.5, mechanic_immune_mask = 1072918979 WHERE entry = 30245; -- Nexus Lord
UPDATE creature_template SET mindmg = 3684, maxdmg = 4329, dmg_multiplier = 13,  mechanic_immune_mask = 1072918979 WHERE entry = 31750; -- Nexus Lord (1)
UPDATE creature_template SET mechanic_immune_mask = 1072918979 WHERE entry IN (30249, 31751);
UPDATE creature_template SET faction_A = 14, faction_H = 14 WHERE entry IN (31750, 31751);

-- Create entry for Heroic Malygos
DELETE FROM creature_template WHERE entry = 50000;
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid1, modelid2, 
modelid3, modelid4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, exp, faction_A, faction_H, npcflag, speed_walk, speed_run, scale, 
rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, dynamicflags, family, 
trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, lootid, pickpocketloot, 
skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, spell5, spell6, spell7, 
spell8, PetSpellDataId, VehicleId, mingold, maxgold, AIName, MovementType, InhabitType, Health_mod, Mana_mod, Armor_mod, RacialLeader, questItem1, 
questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, mechanic_immune_mask, flags_extra, ScriptName, WDBVerified) VALUES 
(50000, 0, 0, 0, 0, 0, 26752, 0, 0, 0, 'Malygos', '', '', 0, 83, 83, 2, 16, 16, 0, 1, 1.14286, 1, 3, 496, 674, 0, 783, 35, 2000, 0, 2, 64, 8, 0, 0, 0, 0, 0, 365, 529, 98, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 5, 500, 50, 1, 0, 44650, 0, 0, 0, 0, 0, 227, 1, 0, 0, 1, 'boss_malygos', 1);

UPDATE creature_template SET Health_mod = 1400, questItem1 = 44651, mechanic_immune_mask = 617299803, ScriptName = '', WDBVerified = 1 WHERE entry = 50000;

UPDATE creature_template SET mindmg = 4602, maxdmg = 5502, dmg_multiplier = 7.5, difficulty_entry_1 = 50000, mechanic_immune_mask = 617299803 WHERE entry = 28859;
UPDATE creature_template SET mindmg = 4602, maxdmg = 5502, dmg_multiplier = 13 WHERE entry = 50000;

UPDATE creature_template SET flags_extra = flags_extra | 1 WHERE entry IN (30245, 31750);

-- Fix sound entries for Malygos encounter
DELETE FROM script_texts WHERE entry BETWEEN -1616034 AND -1616000;
INSERT INTO script_texts (npc_entry, entry, content_default, sound, type, language, emote, comment) VALUES
(28859, -1616000, 'Lesser beings, intruding here! A shame that your excess courage does not compensate for your stupidity!', 14512, 1, 0, 0, 'Malygos INTRO 1'),
(28859, -1616001, 'None but the blue dragonflight are welcome here! Perhaps this is the work of Alexstrasza? Well then, she has sent you to your deaths.', 14513, 1, 0, 0, 'Malygos INTRO 2'),
(28859, -1616002, 'What could you hope to accomplish, to storm brazenly into my domain? To employ MAGIC? Against ME?', 14514, 1, 0, 0, 'Malygos INTRO 3'),
(28859, -1616003, 'I am without limits here... the rules of your cherished reality do not apply... In this realm, I am in control...', 14515, 1, 0, 0, 'Malygos INTRO 4'),
(28859, -1616004, 'I give you one chance. Pledge fealty to me, and perhaps I won\'t slaughter you for your insolence!', 14516, 1, 0, 0, 'Malygos INTRO 5'),
(28859, -1616005, 'My patience has reached its limit, I WILL BE RID OF YOU!', 14517, 1, 0, 0, 'Malygos AGGRO 1'),
(28859, -1616006, 'Watch helplessly as your hopes are swept away...', 14525, 1, 0, 0, 'Malygos VORTEX'),
(28859, -1616007, 'I AM UNSTOPPABLE!', 14533, 1, 0, 0, 'Malygos SPARK BUFF'),
(28859, -1616008, 'Your stupidity has finally caught up to you!', 14519, 1, 0, 0, 'Malygos SLAY 1-1'),
(28859, -1616009, 'More artifacts to confiscate...', 14520, 1, 0, 0, 'Malygos SLAY 1-2'),
(28859, -1616010, 'How very... naive...', 14521, 1, 0, 0, 'Malygos SLAY 1-3'),
(28859, -1616012, 'I had hoped to end your lives quickly, but you have proven more...resilient then I had anticipated. Nonetheless, your efforts are in vain, it is you reckless, careless mortals who are to blame for this war! I do what I must...And if it means your...extinction...THEN SO BE IT!', 14522, 1, 0, 0, 'Malygos PHASEEND 1'),
(28859, -1616013, 'Few have experienced the pain I will now inflict upon you!', 14523, 1, 0, 0, 'Malygos AGGRO 2'),
(28859, -1616014, 'YOU WILL NOT SUCCEED WHILE I DRAW BREATH!', 14518, 1, 0, 0, 'Malygos DEEP BREATH'),
(28859, -1616016, 'I will teach you IGNORANT children just how little you know of magic...', 14524, 1, 0, 0, 'Malygos ARCANE OVERLOAD'),
(28859, -1616020, 'Your energy will be put to good use!', 14526, 1, 0, 0, 'Malygos SLAY 2-1'),
(28859, -1616021, 'I AM THE SPELL-WEAVER! My power is INFINITE!', 14527, 1, 0, 0, 'Malygos SLAY 2-2'),
(28859, -1616022, 'Your spirit will linger here forever!', 14528, 1, 0, 0, 'Malygos SLAY 2-3'),
(28859, -1616017, 'ENOUGH! If you intend to reclaim Azeroth\'s magic, then you shall have it...', 14529, 1, 0, 0, 'Malygos PHASEEND 2'),
(28859, -1616018, 'Now your benefactors make their appearance...But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?', 14530, 1, 0, 0, 'Malygos PHASE 3 INTRO'),
(28859, -1616019, 'SUBMIT!', 14531, 1, 0, 0, 'Malygos AGGRO 3'),
(28859, -1616026, 'The powers at work here exceed anything you could possibly imagine!', 14532, 1, 0, 0, 'Malygos STATIC FIELD'),
(28859, -1616023, 'Alexstrasza! Another of your brood falls!', 14534, 1, 0, 0, 'Malygos SLAY 3-1'),
(28859, -1616024, 'Little more then gnats!', 14535, 1, 0, 0, 'Malygos SLAY 3-2'),
(28859, -1616025, 'Your red allies will share your fate...', 14536, 1, 0, 0, 'Malygos SLAY 3-3'),
(28859, -1616027, 'Still standing? Not for long...', 14537, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616028, 'Your cause is lost!', 14538, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616029, 'Your fragile mind will be shattered!', 14539, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616030, 'UNTHINKABLE! The mortals will destroy... e-everything... my sister... what have you-', 14540, 1, 0, 0, 'Malygos DEATH'),
(32295, -1616031, 'I did what I had to, brother. You gave me no alternative.', 14406, 1, 0, 0, 'Alexstrasza OUTRO 1'),
(32295, -1616032, 'And so ends the Nexus War.', 14407, 1, 0, 0, 'Alexstrasza OUTRO 2'),
(32295, -1616033, 'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos\' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world\'s mightiest has fallen.', 14408, 1, 0, 0, 'Alexstrasza OUTRO 3'),
(32295, -1616034, 'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life...goes on.', 14409, 1, 0, 0, 'Alexstrasza OUTRO 4');

--Фикс квестов
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

--Фикс unholy blight
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('50536');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('50536','0','0','0','0','Death Knight - Unholy Blight');

--Фикс квестов
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

--Фикс тринки
INSERT INTO `spell_proc_event` VALUES
(75481, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 45, 0); 
(75475, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 45, 0); 

--Фикс спэлла
DELETE FROM `spell_bonus_data` WHERE `entry` = 53600;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(53600, 0, 0, 0, 0 ,'Paladin - Shield of Righteousness');

--Фикс авангарда
DELETE FROM `creature_questrelation` WHERE `quest` = 13625;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13625;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13625;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33647, 13625);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33647;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13625;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13625;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33647, 13625);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33647;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 33229, `ReqCreatureOrGOId2` = 33243, `ReqCreatureOrGOId3` = 33272, `ReqSpellCast1` = 62544, `ReqSpellCast2` = 62575, `ReqSpellCast3` = 63010 WHERE `entry` = 13625;

DELETE FROM `creature_questrelation` WHERE `quest` = 13677;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13677;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13677;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33659, 13677);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33659;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13677;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13677;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33659, 13677);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33659;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 33229, `ReqCreatureOrGOId2` = 33243, `ReqCreatureOrGOId3` = 33272, `ReqSpellCast1` = 62544, `ReqSpellCast2` = 62575, `ReqSpellCast3` = 63010 WHERE `entry` = 13677;

DELETE FROM `creature_questrelation` WHERE `quest` = 13828;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13828;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13828;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33625, 13828);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33625;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13828;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13828;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33625, 13828);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33625;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33229, `ReqSpellCast2` = 62544 WHERE `entry` = 13828;

DELETE FROM `creature_questrelation` WHERE `quest` = 13829;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13829;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13829;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33542, 13829);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33542;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13829;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13829;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33542, 13829);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33542;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33229, `ReqSpellCast2` = 62544 WHERE `entry` = 13829;

DELETE FROM `creature_questrelation` WHERE `quest` = 13835;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13835;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13835;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33647, 13835);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33647;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13835;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13835;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33647, 13835);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33647;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33243, `ReqSpellCast2` = 62575 WHERE `entry` = 13835;


DELETE FROM `creature_questrelation` WHERE `quest` = 13837;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13837;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13837;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33646, 13837);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33646;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13837;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13837;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33646, 13837);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33646;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33272, `ReqSpellCast2` = 63010 WHERE `entry` = 13837;


DELETE FROM `creature_questrelation` WHERE `quest` = 13838;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13838;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13838;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33659, 13838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33659;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13838;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13838;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33659, 13838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33659;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33243, `ReqSpellCast2` = 62575 WHERE `entry` = 13838;

DELETE FROM `creature_questrelation` WHERE `quest` = 13839;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13839;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13839;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33658, 13839);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33658;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13839;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13839;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33658, 13839);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33658;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33272, `ReqSpellCast2` = 63010 WHERE `entry` = 13839;
UPDATE `quest_template` SET `ReqSpellCast1`=51962, `ReqSpellCast2`=51962, `ReqSpellCast3`=51962 WHERE `entry`=12645;

--Фикс спэлл
DELETE FROM `spell_proc_event` WHERE `entry` IN (51696);
INSERT INTO `spell_proc_event` VALUES (51696, 0x00, 8, 0x00000204, 0x00000000, 
0x00000000, 0x00000000, 0x00000000, 0.000000, 100.000000, 0);

--Фикс квестов, мобов, спэлл
UPDATE `quest_template` SET `ReqSpellCast1`=51962, `ReqSpellCast2`=51962, `ReqSpellCast3`=51962 WHERE `entry`=12645;

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(1178, 0, 1, 1, 1122, 0, -4879.88, -3884.42, 303.659, 2.4162, 300, 0, 0, 417, 0, 0, 0),
(1178, 0, 1, 1, 1122, 0, -4884.67, -3813.78, 304.126, 1.87155, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4902.35, -3910.26, 300.735, 1.74533, 300, 0, 0, 417, 0, 0, 0),
(1178, 0, 1, 1, 1122, 0, -4948.55, -3748.52, 318.755, 0.36412, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4874.72, -3906.17, 302.602, 3.10669, 300, 0, 0, 417, 0, 0, 0),
(1178, 0, 1, 1, 1122, 0, -4880.8, -3747.4, 312.49, 0.888788, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4915.2, -3986.09, 296.665, 0.226805, 300, 3, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4963.93, -4022.95, 301.358, 3.79229, 300, 3, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5082.26, -4080.96, 311.608, 1.07957, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4981.38, -3914.15, 305.894, 4.63279, 300, 3, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4958.24, -3946.78, 301.179, 3.28957, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4957.42, -3915.39, 305.241, 1.86585, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5111, -3845.37, 320.988, 4.76514, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5009.46, -3890.06, 309.664, 2.09648, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5072.94, -3885.23, 321.944, 0.028778, 300, 5, 0, 417, 0, 0, 1);


INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 67712, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0, 0, 2);

UPDATE `creature_template` SET `ScriptName`='npc_savage_worg' WHERE `entry`=29735;
UPDATE `creature_template` SET `ScriptName`='npc_dark_ranger_marrah' WHERE `entry`=24137;

--Фикс спэлла
DELETE FROM `spell_proc_event` WHERE `entry` IN (70755);
INSERT INTO `spell_proc_event` VALUES (70755, 0x00, 0x0A, 0x00000000, 0x80000000, 0x00000000, 0x00004000, 0x00010000, 0, 101, 0);

--Фикс спэлла танцующие оружие
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=27893;
UPDATE `creature_template` SET `mindmg`=250,`maxdmg`=450,`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),`mindmg`= ROUND(`mindmg` - `attackpower` / 7),`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),`baseattacktime`=3000  WHERE `entry`=27893;

--Символ Охотника, Символ Страха, Символ Демона Бездны, Призыв Инфернала, Призыв стражника ужаса.
DELETE FROM `spell_proc_event` WHERE `entry` IN (57264); 
INSERT INTO `spell_proc_event` VALUES (57264, 0x01, 0x00, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 101, 0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (57262); 
INSERT INTO `spell_proc_event` VALUES (57262, 0x01, 0x00, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 101, 0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (57277); 
INSERT INTO `spell_proc_event` VALUES (57277, 0x01, 0x00, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 101, 0);

--Фикс seal у палов
DELETE FROM `spell_bonus_data` WHERE `entry`=25742;
INSERT INTO `spell_bonus_data` (entry, direct_bonus, ap_bonus, comments) VALUES
(25742,0,0,'Paladin - Seal of Righteousness Dummy Proc');

--Фикс итема zuluheds key
UPDATE item_template SET ScriptName = 'item_zuluheds_key' WHERE entry = 31664;

-- (71865) Item - Icecrown 25 Normal Healer Weapon Proc 
DELETE FROM `spell_proc_event` WHERE `entry` IN (71865); 
INSERT INTO `spell_proc_event` VALUES (71865, 0x01, 0x0A, 0x00000000, 0x00000000, 0x00000000, 0x00044000, 0x00000018, 0, 1, 0); 

-- (71868) Item - Icecrown 25 Heroic Healer Weapon Proc 
DELETE FROM `spell_proc_event` WHERE `entry` IN (71868); 
INSERT INTO `spell_proc_event` VALUES (71868, 0x01, 0x0A, 0x00000000, 0x00000000, 0x00000000, 0x00044000, 0x00000018, 0, 1, 0); 

-- (71871) Item - Icecrown 25 Normal Tank Weapon Proc 
DELETE FROM `spell_proc_event` WHERE `entry` IN (71871); 
INSERT INTO `spell_proc_event` VALUES (71871, 0x01, 0x0A, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x00000018, 0, 37, 30); 

-- (71873) Item - Icecrown 25 Heroic Tank Weapon Proc 
DELETE FROM `spell_proc_event` WHERE `entry` IN (71873); 
INSERT INTO `spell_proc_event` VALUES (71873, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x00000018, 0, 37, 35);

-- (71845) Item - Icecrown 25 Normal Caster Weapon Proc 
DELETE FROM `spell_proc_event` WHERE `entry` IN (71845); 
INSERT INTO `spell_proc_event` VALUES (71845, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 2, 40); 

-- (71845) Item - Icecrown 25 Normal Caster Weapon Proc 
DELETE FROM `spell_proc_event` WHERE `entry` IN (71845); 
INSERT INTO `spell_proc_event` VALUES (71845, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 2, 45);