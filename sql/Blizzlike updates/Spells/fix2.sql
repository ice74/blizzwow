--Фикс тринки
INSERT INTO `spell_proc_event` VALUES
(75481, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 45, 0); 
(75475, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 45, 0); 

--Фикс спэлла
DELETE FROM `spell_bonus_data` WHERE `entry` = 53600;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(53600, 0, 0, 0, 0 ,'Paladin - Shield of Righteousness');