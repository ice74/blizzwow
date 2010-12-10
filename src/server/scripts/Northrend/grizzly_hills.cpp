/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
SDName: Grizzly_Hills
SD%Complete: 80
SDComment: Quest support: 12231, 12247
SDCategory: Grizzly Hills
EndScriptData */

/* ContentData
npc_orsonn_and_kodian
EndContentData */

#include "ScriptPCH.h"
#include "ScriptedEscortAI.h"
#include "ScriptedFollowerAI.h"

#define GOSSIP_ITEM1 "You're free to go Orsonn, but first tell me what's wrong with the furbolg."
#define GOSSIP_ITEM2 "What happened then?"
#define GOSSIP_ITEM3 "Thank you, Son of Ursoc. I'll see what can be done."
#define GOSSIP_ITEM4 "Who was this stranger?"
#define GOSSIP_ITEM5 "Thank you, Kodian. I'll do what I can."

enum eEnums
{
    GOSSIP_TEXTID_ORSONN1       = 12793,
    GOSSIP_TEXTID_ORSONN2       = 12794,
    GOSSIP_TEXTID_ORSONN3       = 12796,

    GOSSIP_TEXTID_KODIAN1       = 12797,
    GOSSIP_TEXTID_KODIAN2       = 12798,

    NPC_ORSONN                  = 27274,
    NPC_KODIAN                  = 27275,

    //trigger creatures
    NPC_ORSONN_CREDIT           = 27322,
    NPC_KODIAN_CREDIT           = 27321,

    QUEST_CHILDREN_OF_URSOC     = 12247,
    QUEST_THE_BEAR_GODS_OFFSPRING        = 12231
};

class npc_orsonn_and_kodian : public CreatureScript
{
public:
    npc_orsonn_and_kodian() : CreatureScript("npc_orsonn_and_kodian") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pPlayer->GetQuestStatus(QUEST_CHILDREN_OF_URSOC) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(QUEST_THE_BEAR_GODS_OFFSPRING) == QUEST_STATUS_INCOMPLETE)
        {
            switch(pCreature->GetEntry())
            {
                case NPC_ORSONN:
                    if (!pPlayer->GetReqKillOrCastCurrentCount(QUEST_CHILDREN_OF_URSOC, NPC_ORSONN_CREDIT) || !pPlayer->GetReqKillOrCastCurrentCount(QUEST_THE_BEAR_GODS_OFFSPRING, NPC_ORSONN_CREDIT))
                    {
                        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
                        pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ORSONN1, pCreature->GetGUID());
                        return true;
                    }
                    break;
                case NPC_KODIAN:
                    if (!pPlayer->GetReqKillOrCastCurrentCount(QUEST_CHILDREN_OF_URSOC, NPC_KODIAN_CREDIT) || !pPlayer->GetReqKillOrCastCurrentCount(QUEST_THE_BEAR_GODS_OFFSPRING, NPC_KODIAN_CREDIT))
                    {
                        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+4);
                        pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_KODIAN1, pCreature->GetGUID());
                        return true;
                    }
                    break;
            }
        }

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF+1:
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ORSONN2, pCreature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+2:
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ORSONN3, pCreature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+3:
                pPlayer->CLOSE_GOSSIP_MENU();
                pPlayer->TalkedToCreature(NPC_ORSONN_CREDIT, pCreature->GetGUID());
                break;

            case GOSSIP_ACTION_INFO_DEF+4:
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM5, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
                pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_KODIAN2, pCreature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+5:
                pPlayer->CLOSE_GOSSIP_MENU();
                pPlayer->TalkedToCreature(NPC_KODIAN_CREDIT, pCreature->GetGUID());
                break;
        }

        return true;
    }
};

/*######
## Quest 12027: Mr. Floppy's Perilous Adventure
######*/

enum eFloppy
{
    NPC_MRFLOPPY                = 26589,
    NPC_HUNGRY_WORG             = 26586,
    NPC_RAVENOUS_WORG           = 26590,   //RWORG
    NPC_EMILY                   = 26588,

    QUEST_PERILOUS_ADVENTURE    = 12027,

    SPELL_MRFLOPPY              = 47184,    //vehicle aura

    SAY_WORGHAGGRO1             = -1800001, //Um... I think one of those wolves is back...
    SAY_WORGHAGGRO2             = -1800002, //He's going for Mr. Floppy!
    SAY_WORGRAGGRO3             = -1800003, //Oh, no! Look, it's another wolf, and it's a biiiiiig one!
    SAY_WORGRAGGRO4             = -1800004, //He's gonna eat Mr. Floppy! You gotta help Mr. Floppy! You just gotta!
    SAY_RANDOMAGGRO             = -1800005, //There's a big meanie attacking Mr. Floppy! Help!
    SAY_VICTORY1                = -1800006, //Let's get out of here before more wolves find us!
    SAY_VICTORY2                = -1800007, //Don't go toward the light, Mr. Floppy!
    SAY_VICTORY3                = -1800008, //Mr. Floppy, you're ok! Thank you so much for saving Mr. Floppy!
    SAY_VICTORY4                = -1800009, //I think I see the camp! We're almost home, Mr. Floppy! Let's go!
    TEXT_EMOTE_WP1              = -1800010, //Mr. Floppy revives
    TEXT_EMOTE_AGGRO            = -1800011, //The Ravenous Worg chomps down on Mr. Floppy
    SAY_QUEST_ACCEPT            = -1800012, //Are you ready, Mr. Floppy? Stay close to me and watch out for those wolves!
    SAY_QUEST_COMPLETE          = -1800013  //Thank you for helping me get back to the camp. Go tell Walter that I'm safe now!
};

//emily
class npc_emily : public CreatureScript
{
public:
    npc_emily() : CreatureScript("npc_emily") { }

    struct npc_emilyAI : public npc_escortAI
    {
        npc_emilyAI(Creature* pCreature) : npc_escortAI(pCreature) { }

        uint32 m_uiChatTimer;

        uint64 RWORGGUID;
        uint64 MrfloppyGUID;

        bool Completed;

        void JustSummoned(Creature* pSummoned)
        {
            if (Creature* Mrfloppy = GetClosestCreatureWithEntry(me, NPC_MRFLOPPY, 50.0f))
                pSummoned->AI()->AttackStart(Mrfloppy);
            else
                pSummoned->AI()->AttackStart(me->getVictim());
        }

        void WaypointReached(uint32 i)
        {
            Player* pPlayer = GetPlayerForEscort();
            if (!pPlayer)
                return;
            switch (i)
            {
                case 9:
                    if (Creature *Mrfloppy = GetClosestCreatureWithEntry(me, NPC_MRFLOPPY, 100.0f))
                        MrfloppyGUID = Mrfloppy->GetGUID();
                    break;
                case 10:
                    if (Unit::GetCreature(*me, MrfloppyGUID))
                    {
                        DoScriptText(SAY_WORGHAGGRO1, me);
                        me->SummonCreature(NPC_HUNGRY_WORG,me->GetPositionX()+5,me->GetPositionY()+2,me->GetPositionZ()+1,3.229f,TEMPSUMMON_TIMED_OR_DEAD_DESPAWN,120000);
                    }
                    break;
                case 11:
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                        Mrfloppy->GetMotionMaster()->MoveFollow(me, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
                    break;
                case 17:
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                        Mrfloppy->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ());
                    DoScriptText(SAY_WORGRAGGRO3, me);
                    if (Creature *RWORG = me->SummonCreature(NPC_RAVENOUS_WORG,me->GetPositionX()+10,me->GetPositionY()+8,me->GetPositionZ()+2,3.229f,TEMPSUMMON_TIMED_OR_DEAD_DESPAWN,120000))
                    {
                        RWORG->setFaction(35);
                        RWORGGUID = RWORG->GetGUID();
                    }
                    break;
                case 18:
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                    {
                        if (Creature *RWORG = Unit::GetCreature(*me, RWORGGUID))
                            RWORG->GetMotionMaster()->MovePoint(0, Mrfloppy->GetPositionX(), Mrfloppy->GetPositionY(), Mrfloppy->GetPositionZ());
                        DoCast(Mrfloppy,SPELL_MRFLOPPY);
                    }
                    break;
                case 19:
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                    {
                        if (Mrfloppy->HasAura(SPELL_MRFLOPPY, 0))
                        {
                            if (Creature *RWORG = Unit::GetCreature(*me, RWORGGUID))
                                Mrfloppy->EnterVehicle(RWORG);
                        }
                    }
                    break;
                case 20:
                    if (Creature *RWORG = Unit::GetCreature(*me, RWORGGUID))
                        RWORG->HandleEmoteCommand(34);
                    break;
                case 21:
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                    {
                        if (Creature *RWORG = Unit::GetCreature(*me, RWORGGUID))
                        {
                            RWORG->Kill(Mrfloppy);
                            Mrfloppy->ExitVehicle();
                            RWORG->setFaction(14);
                            RWORG->GetMotionMaster()->MovePoint(0, RWORG->GetPositionX()+10,RWORG->GetPositionY()+80,RWORG->GetPositionZ());
                            DoScriptText(SAY_VICTORY2, me);
                        }
                    }
                    break;
                case 22:
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                    {
                        if (Mrfloppy->isDead())
                        {
                            if (Creature *RWORG = Unit::GetCreature(*me, RWORGGUID))
                                RWORG->DisappearAndDie();
                            me->GetMotionMaster()->MovePoint(0, Mrfloppy->GetPositionX(), Mrfloppy->GetPositionY(), Mrfloppy->GetPositionZ());
                            Mrfloppy->setDeathState(ALIVE);
                            Mrfloppy->GetMotionMaster()->MoveFollow(me, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
                            DoScriptText(SAY_VICTORY3, me);
                        }
                    }
                    break;
                case 24:
                    if (pPlayer)
                    {
                        Completed = true;
                        pPlayer->GroupEventHappens(QUEST_PERILOUS_ADVENTURE, me);
                        DoScriptText(SAY_QUEST_COMPLETE, me, pPlayer);
                    }
                    me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                    break;
                case 25:
                    DoScriptText(SAY_VICTORY4, me);
                    break;
                case 27:
                    me->DisappearAndDie();
                    if (Creature *Mrfloppy = Unit::GetCreature(*me, MrfloppyGUID))
                        Mrfloppy->DisappearAndDie();
                    break;
            }
        }

        void EnterCombat(Unit* /*Who*/)
        {
            DoScriptText(SAY_RANDOMAGGRO, me);
        }

        void Reset()
        {
            m_uiChatTimer = 4000;
            MrfloppyGUID = 0;
            RWORGGUID = 0;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            npc_escortAI::UpdateAI(uiDiff);

            if (HasEscortState(STATE_ESCORT_ESCORTING))
            {
                if (m_uiChatTimer <= uiDiff)
                {
                    m_uiChatTimer = 12000;
                }
                else
                    m_uiChatTimer -= uiDiff;
            }
        }
    };

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_PERILOUS_ADVENTURE)
        {
            DoScriptText(SAY_QUEST_ACCEPT, pCreature);
            if (Creature* Mrfloppy = GetClosestCreatureWithEntry(pCreature, NPC_MRFLOPPY, 180.0f))
            {
                Mrfloppy->GetMotionMaster()->MoveFollow(pCreature, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
            }

            if (npc_escortAI* pEscortAI = CAST_AI(npc_emily::npc_emilyAI, (pCreature->AI())))
                pEscortAI->Start(true, false, pPlayer->GetGUID());
        }
        return true;
    }

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_emilyAI(creature);
    }
};

//mrfloppy
class npc_mrfloppy : public CreatureScript
{
public:
    npc_mrfloppy() : CreatureScript("npc_mrfloppy") { }

    struct npc_mrfloppyAI : public ScriptedAI
    {
        npc_mrfloppyAI(Creature *c) : ScriptedAI(c) {}

        uint64 EmilyGUID;
        uint64 RWORGGUID;
        uint64 HWORGGUID;

        void Reset() {}

        void EnterCombat(Unit* Who)
        {
            if (Creature* Emily = GetClosestCreatureWithEntry(me, NPC_EMILY, 50.0f))
            {
                switch(Who->GetEntry())
                {
                    case NPC_HUNGRY_WORG:
                        DoScriptText(SAY_WORGHAGGRO2, Emily);
                        break;
                    case NPC_RAVENOUS_WORG:
                        DoScriptText(SAY_WORGRAGGRO4, Emily);
                        break;
                    default:
                        DoScriptText(SAY_RANDOMAGGRO, Emily);
                }
            }
        }

        void EnterEvadeMode() {}

        void MoveInLineOfSight(Unit * /*who*/) {}

        void UpdateAI(const uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_mrfloppyAI(creature);
    }
};

// Outhouse Bunny

enum eOuthouseBunny
{
    SPELL_OUTHOUSE_GROANS           = 48382,
    SPELL_CAMERA_SHAKE              = 47533,
    SPELL_DUST_FIELD                = 48329
};

enum eSounds
{
    SOUND_FEMALE        = 12671,
    SOUND_MALE          = 12670
};

class npc_outhouse_bunny : public CreatureScript
{
public:
    npc_outhouse_bunny() : CreatureScript("npc_outhouse_bunny") { }

    struct npc_outhouse_bunnyAI : public ScriptedAI
    {
        npc_outhouse_bunnyAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        uint8 m_counter;
        uint8 m_gender;

        void Reset()
        {
            m_counter = 0;
            m_gender = 0;
        }

        void SetData(uint32 uiType, uint32 uiData)
        {
            if (uiType == 1)
                m_gender = uiData;
        }

        void SpellHit(Unit* pCaster, const SpellEntry* pSpell)
        {
             if (pSpell->Id == SPELL_OUTHOUSE_GROANS)
            {
                ++m_counter;
                if (m_counter < 5)
                    DoCast(pCaster, SPELL_CAMERA_SHAKE, true);
                else
                    m_counter = 0;
                DoCast(me, SPELL_DUST_FIELD, true);
                switch (m_gender)
                {
                    case GENDER_FEMALE: DoPlaySoundToSet(me, SOUND_FEMALE); break;
                    case GENDER_MALE: DoPlaySoundToSet(me, SOUND_MALE); break;
                }
            }
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_outhouse_bunnyAI(creature);
    }
};

// Tallhorn Stage

enum etallhornstage
{
    OBJECT_HAUNCH                   = 188665
};

class npc_tallhorn_stag : public CreatureScript
{
public:
    npc_tallhorn_stag() : CreatureScript("npc_tallhorn_stag") { }

    struct npc_tallhorn_stagAI : public ScriptedAI
    {
        npc_tallhorn_stagAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        uint8 m_uiPhase;

        void Reset()
        {
            m_uiPhase = 1;
        }

        void UpdateAI(const uint32 /*uiDiff*/)
        {
            if (m_uiPhase == 1)
            {
                if (me->FindNearestGameObject(OBJECT_HAUNCH, 2.0f))
                {
                    me->SetStandState(UNIT_STAND_STATE_DEAD);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
                }
                m_uiPhase = 0;
            }
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_tallhorn_stagAI(creature);
    }
};

// Amberpine Woodsman

enum eamberpinewoodsman
{
    TALLHORN_STAG                   = 26363
};

class npc_amberpine_woodsman : public CreatureScript
{
public:
    npc_amberpine_woodsman() : CreatureScript("npc_amberpine_woodsman") { }

    struct npc_amberpine_woodsmanAI : public ScriptedAI
    {
        npc_amberpine_woodsmanAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        uint8 m_uiPhase;
        uint32 m_uiTimer;

        void Reset()
        {
            m_uiTimer = 0;
            m_uiPhase = 1;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            // call this each update tick?
            if (me->FindNearestCreature(TALLHORN_STAG, 0.2f))
            {
                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_USESTANDING);
            }
            else
                if (m_uiPhase)
                {
                    if (m_uiTimer <= uiDiff)
                    {
                        switch(m_uiPhase)
                        {
                            case 1:
                                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_LOOT);
                                m_uiTimer = 3000;
                                m_uiPhase = 2;
                                break;
                            case 2:
                                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_ATTACK1H);
                                m_uiTimer = 4000;
                                m_uiPhase = 1;
                                break;
                        }
                    }
                    else
                    m_uiTimer -= uiDiff;
                }
                ScriptedAI::UpdateAI(uiDiff);

            UpdateVictim();
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_amberpine_woodsmanAI(creature);
    }
};
/*######
## Quest 12288: Overwhelmed!
######*/

enum eSkirmisher
{
    SPELL_RENEW_SKIRMISHER  = 48812,
    CREDIT_NPC              = 27466,

    RANDOM_SAY_1             =  -1800044,        //Ahh..better..
    RANDOM_SAY_2             =  -1800045,        //Whoa.. i nearly died there. Thank you, $Race!
    RANDOM_SAY_3             =  -1800046         //Thank you. $Class!
};

class npc_wounded_skirmisher : public CreatureScript
{
public:
    npc_wounded_skirmisher() : CreatureScript("npc_wounded_skirmisher") { }

    struct npc_wounded_skirmisherAI : public ScriptedAI
    {
        npc_wounded_skirmisherAI(Creature *c) : ScriptedAI(c) {}

        uint64 uiPlayerGUID;

        uint32 DespawnTimer;

        void Reset ()
        {
            DespawnTimer = 5000;
            uiPlayerGUID = 0;
        }

        void MovementInform(uint32, uint32 id)
        {
            if (id == 1)
                me->ForcedDespawn(DespawnTimer);
        }

        void SpellHit(Unit *caster, const SpellEntry *spell)
        {
            if (spell->Id == SPELL_RENEW_SKIRMISHER && caster->GetTypeId() == TYPEID_PLAYER
                && caster->ToPlayer()->GetQuestStatus(12288) == QUEST_STATUS_INCOMPLETE)
            {
                caster->ToPlayer()->KilledMonsterCredit(CREDIT_NPC, 0);
                DoScriptText(RAND(RANDOM_SAY_1,RANDOM_SAY_2,RANDOM_SAY_3),caster);
                if(me->IsStandState())
                    me->GetMotionMaster()->MovePoint(1, me->GetPositionX()+7, me->GetPositionY()+7, me->GetPositionZ());
                else
                {
                    me->SetStandState(UNIT_STAND_STATE_STAND);
                    me->ForcedDespawn(DespawnTimer);
                }

            }
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;
            DoMeleeAttackIfReady();
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_wounded_skirmisherAI(creature);
    }
};

/*Lightning Sentry - if you kill it when you have your Minion with you, you will get a quest credit*/
enum eSentry
{
    QUEST_OR_MAYBE_WE_DONT_A                     = 12138,
    QUEST_OR_MAYBE_WE_DONT_H                     = 12198,

    NPC_LIGHTNING_SENTRY                         = 26407,
    NPC_WAR_GOLEM                                = 27017,

    SPELL_CHARGED_SENTRY_TOTEM                   = 52703,
};

class npc_lightning_sentry : public CreatureScript
{
public:
    npc_lightning_sentry() : CreatureScript("npc_lightning_sentry") { }

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_lightning_sentryAI(pCreature);
    }

    struct npc_lightning_sentryAI : public ScriptedAI
    {
        npc_lightning_sentryAI(Creature *pCreature) : ScriptedAI(pCreature) { }
        
        uint32 uiChargedSentryTotem;

        void Reset()
        {
            uiChargedSentryTotem = urand(10000,12000);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (uiChargedSentryTotem <= uiDiff)
            {
                DoCast(SPELL_CHARGED_SENTRY_TOTEM);
                uiChargedSentryTotem = urand(10000,12000);
            }
            else
                uiChargedSentryTotem -= uiDiff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit * pKiller)
        {
            if (pKiller->ToPlayer() && pKiller->ToPlayer()->GetTypeId() == TYPEID_PLAYER)
            {
                if (me->FindNearestCreature(NPC_WAR_GOLEM, 10.0f, true))
                {
                    if (pKiller->ToPlayer()->GetQuestStatus(QUEST_OR_MAYBE_WE_DONT_A) == QUEST_STATUS_INCOMPLETE ||
                        pKiller->ToPlayer()->GetQuestStatus(QUEST_OR_MAYBE_WE_DONT_H) == QUEST_STATUS_INCOMPLETE)
                        pKiller->ToPlayer()->KilledMonsterCredit(NPC_WAR_GOLEM, 0);
                }
            }
        }
    };
};

/*Venture co. Straggler - when you cast Smoke Bomb, he will yell and run away*/
enum eSmokeEmOut
{
    SAY_SEO1                                     = -1603535,
    SAY_SEO2                                     = -1603536,
    SAY_SEO3                                     = -1603537,
    SAY_SEO4                                     = -1603538,
    SAY_SEO5                                     = -1603539,
    QUEST_SMOKE_EM_OUT_A                         = 12323,
    QUEST_SMOKE_EM_OUT_H                         = 12324,
    SPELL_SMOKE_BOMB                             = 49075,
    SPELL_CHOP                                   = 43410,
    NPC_VENTURE_CO_STABLES_KC                    = 27568,
};

class npc_venture_co_straggler : public CreatureScript
{
public:
    npc_venture_co_straggler() : CreatureScript("npc_venture_co_straggler") { }
    
    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_venture_co_stragglerAI(pCreature);
    }

    struct npc_venture_co_stragglerAI : public ScriptedAI
    {
        npc_venture_co_stragglerAI(Creature *pCreature) : ScriptedAI(pCreature) { }

        uint64 uiPlayerGUID;
        uint32 uiRunAwayTimer;
        uint32 uiTimer;
        uint32 uiChopTimer;

        void Reset()
        {
            uiPlayerGUID = 0;
            uiTimer = 0;
            uiChopTimer = urand(10000,12500);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_AGGRESSIVE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (uiRunAwayTimer <= uiDiff)
            {
                if (Player *pPlayer = Unit::GetPlayer(*me, uiPlayerGUID))
                {
                    switch (uiTimer)
                    {
                        case 0:
                            if (pPlayer->GetQuestStatus(QUEST_SMOKE_EM_OUT_A) == QUEST_STATUS_INCOMPLETE || 
                                pPlayer->GetQuestStatus(QUEST_SMOKE_EM_OUT_H) == QUEST_STATUS_INCOMPLETE)
                                pPlayer->KilledMonsterCredit(NPC_VENTURE_CO_STABLES_KC, 0);
                            me->GetMotionMaster()->MovePoint(0, me->GetPositionX()-7, me->GetPositionY()+7, me->GetPositionZ());
                            uiRunAwayTimer = 2500;
                            ++uiTimer;
                            break;
                        case 1:
                            DoScriptText(RAND(SAY_SEO1, SAY_SEO2, SAY_SEO3, SAY_SEO4, SAY_SEO5), me);
                            me->GetMotionMaster()->MovePoint(0, me->GetPositionX()-7, me->GetPositionY()-5, me->GetPositionZ());
                            uiRunAwayTimer = 2500;
                            ++uiTimer;
                            break;
                        case 2:
                            me->GetMotionMaster()->MovePoint(0, me->GetPositionX()-5, me->GetPositionY()-5, me->GetPositionZ());
                            uiRunAwayTimer = 2500;
                            ++uiTimer;
                            break;
                        case 3:
                            me->DisappearAndDie();
                            uiTimer = 0;
                            break;
                    }
                }
            }
            else
                uiRunAwayTimer -= uiDiff;

            if (!UpdateVictim())
                return;

            if (uiChopTimer <= uiDiff)
            {
                DoCast(me->getVictim(), SPELL_CHOP);
                uiChopTimer = urand(10000,12000);
            }
            else
                uiChopTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

        void SpellHit(Unit *pCaster, const SpellEntry *pSpell)
        {
            if (pCaster && pCaster->GetTypeId() == TYPEID_PLAYER && pSpell->Id == SPELL_SMOKE_BOMB)
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                me->SetReactState(REACT_PASSIVE);
                me->CombatStop(false);
                uiPlayerGUID = pCaster->GetGUID();
                uiRunAwayTimer = 3500;
            }
        }
    };
};

/*######
## Quest 13666 & 13673:  Une lame digne d'un champion!
######*/

enum eLakeFrog
{
	SPELL_WARTSBGONE_LIP_BALM = 62574,
	SPELL_FROG_LOVE = 62537,
	SPELL_WARTS = 62581,
	NPC_MAIDEN_OF_ASHWOOD_LAKE = 33220,
	MAIDEN_SPAWN
};

//Script de la grenouille
class npc_lake_frog : public CreatureScript
{
public:
	npc_lake_frog(): CreatureScript("npc_lake_frog"){}
			
	struct npc_lake_frogAI : public FollowerAI // FollowerAI:Permet au npc de suivre une cible
	{
		npc_lake_frogAI(Creature *c) : FollowerAI(c) {}

		uint32 uiFollowTimer; //Temps de poursuite (15 sec)
		bool following;	//Si la grenouille est en train de suivre le joueur

		void Reset () 
		{
			following=false;
			uiFollowTimer=15000; // 15 sec
		}

		void UpdateAI(const uint32 diff)
		{
			if(following)
			{
				if(uiFollowTimer <= diff)
				{
					SetFollowComplete();
					me->DisappearAndDie();		//d?pop
					me->Respawn(true);
					Reset();
				}
				else uiFollowTimer-=diff;
			}
		}

		void ReceiveEmote(Player* pPlayer, uint32 emote)
		{
			if(following) //Si la grenouille a d?ja recu un /bisou il ne se passe rien
				return;

			if(emote==TEXTEMOTE_KISS) // Si on fait /bisou
			{
				if(!pPlayer->HasAura(SPELL_WARTSBGONE_LIP_BALM))
					pPlayer->AddAura(SPELL_WARTS,pPlayer);
				else if(roll_chance_i(10)) // 10% de chance de trouver la grenouille
				{
					pPlayer->SummonCreature(NPC_MAIDEN_OF_ASHWOOD_LAKE,me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN,30000);
					me->DisappearAndDie();		//d?pop
					me->Respawn(true); //Repop 15 secondes plus tard
				}
				else
				{
					pPlayer->RemoveAura(SPELL_WARTSBGONE_LIP_BALM);	//On enleve le buff mis par l'objet de quete
					me->AddAura(SPELL_FROG_LOVE,me); //On ajoute l'aura a la grenouille (les coeurs)
					StartFollow(pPlayer, 35, NULL); //La grenouille suis le joueur
					following=true;
				}
			}
		}
	
	};
	
	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_lake_frogAI(pCreature);
	}
};

//Script de la princesse
#define MAIDEN_DEFAULT_TEXTID 14319
#define MAIDEN_REWARD_TEXTID 14320
#define GOSSIP_HELLO_MAIDEN "Ravi d'avoir pu aider, madame. Il para?�t que vous ??tiez autrefois la gardienne d'une ??p??e l??gendaire. Sauriez-vous o?? je pourrais la trouver ?"
#define SPELL_SUMMON_ASHWOOD_BRAND 62554

class npc_maiden_of_ashwood_lake : public CreatureScript
{
public:
	npc_maiden_of_ashwood_lake(): CreatureScript("npc_maiden_of_ashwood_lake"){}
		
	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
	{
		if(!pPlayer->HasItemCount(44981,1,true))
		{
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_MAIDEN, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
			pPlayer->SEND_GOSSIP_MENU(MAIDEN_DEFAULT_TEXTID, pCreature->GetGUID());
			pCreature->ForcedDespawn(10000);
			return true;
		}

		pPlayer->SEND_GOSSIP_MENU(MAIDEN_DEFAULT_TEXTID, pCreature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch(uiAction)
		{
			case GOSSIP_ACTION_INFO_DEF+1:
				pPlayer->CastSpell(pPlayer,SPELL_SUMMON_ASHWOOD_BRAND,true);
				pPlayer->SEND_GOSSIP_MENU(MAIDEN_REWARD_TEXTID, pCreature->GetGUID());
				break;
		}
		return true;
	}
};

//Quete : Une arme remarquable
//Quand on utilise l'item:
//Pop du gameobject 194239 <<NENUFAR
//Pop du npc 33723

//pop de gob 194238
#define NPC_TEXTID_MAIDEN_OF_DRAK_MAR_01 -1850000
#define NPC_TEXTID_MAIDEN_OF_DRAK_MAR_02 -1850001
#define NPC_TEXTID_MAIDEN_OF_DRAK_MAR_03 -1850002
#define NPC_TEXTID_MAIDEN_OF_DRAK_MAR_04 -1850003
#define MAIDEN_OF_DRAK_MAR_TIMER_00 2000
#define MAIDEN_OF_DRAK_MAR_TIMER_01 5000
#define MAIDEN_OF_DRAK_MAR_TIMER_02 6000
#define MAIDEN_OF_DRAK_MAR_TIMER_03 7000
#define MAIDEN_OF_DRAK_MAR_TIMER_04 20000
#define MAIDEN_OF_DRAK_MAR_GOB_01 194239
#define MAIDEN_OF_DRAK_MAR_GOB_02 194238
//Summon la dame :X: 4602.977 Y: -1600.141 Z: 156.7834 O: 0.7504916

class npc_maiden_of_drak_mar : public CreatureScript
{
public:
	npc_maiden_of_drak_mar(): CreatureScript("npc_maiden_of_drak_mar"){}

	struct npc_maiden_of_drak_marAI : public ScriptedAI
	{
		uint32 phase;
		uint32 uiPhaseTimer;
		uint64 firstGobGuid;
		uint64 secondGobGuid;

		npc_maiden_of_drak_marAI(Creature *c) : ScriptedAI(c)
		{
			phase = 0;
			uiPhaseTimer = MAIDEN_OF_DRAK_MAR_TIMER_00;
			if(GameObject* go = me->SummonGameObject(MAIDEN_OF_DRAK_MAR_GOB_01,4602.977f,-1600.141f,156.7834f,0.7504916f,0,0,0,0,0))
				firstGobGuid = go->GetGUID(); //Pop du n?nuphar
		}

		void UpdateAI(const uint32 diff)
		{
			if(uiPhaseTimer <= diff)
			{
				phase++;
					switch(phase)
					{
						case 1:
							DoScriptText(NPC_TEXTID_MAIDEN_OF_DRAK_MAR_01, me);
							uiPhaseTimer = MAIDEN_OF_DRAK_MAR_TIMER_01;
							break;
						case 2:
							DoScriptText(NPC_TEXTID_MAIDEN_OF_DRAK_MAR_02, me);
							uiPhaseTimer = MAIDEN_OF_DRAK_MAR_TIMER_02;
							break;
						case 3:
							DoScriptText(NPC_TEXTID_MAIDEN_OF_DRAK_MAR_03, me);
							uiPhaseTimer = MAIDEN_OF_DRAK_MAR_TIMER_03;
							break;
						case 4:
							DoScriptText(NPC_TEXTID_MAIDEN_OF_DRAK_MAR_04, me);
							if(GameObject* go = me->SummonGameObject(MAIDEN_OF_DRAK_MAR_GOB_02,4603.351f,-1599.288f,156.8822f,2.234018f,0,0,0,0,0))
								secondGobGuid = go->GetGUID(); //Pop de la lame
							uiPhaseTimer = MAIDEN_OF_DRAK_MAR_TIMER_04;
							break;
						case 5:
							if(GameObject* go = GameObject::GetGameObject(*me,firstGobGuid))
								go->RemoveFromWorld();// D?pop du n?nuphar
							if(GameObject* go = GameObject::GetGameObject(*me,secondGobGuid))
								go->RemoveFromWorld();// D?pop de la lame 
							me->ForcedDespawn();// disparition du pnj
							break;
						default:// Ne devrait jamais arriver
							if(GameObject* go = GameObject::GetGameObject(*me,firstGobGuid))
								go->RemoveFromWorld();// D?pop du n?nuphar
							if(GameObject* go = GameObject::GetGameObject(*me,secondGobGuid))
								go->RemoveFromWorld();// D?pop de la lame
							me->ForcedDespawn();// disparition du pnj
							break;
					}
			}
			else
			{
				uiPhaseTimer -= diff;
			}
		}
	};

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_maiden_of_drak_marAI(pCreature);
	}
};

void AddSC_grizzly_hills()
{
    new npc_orsonn_and_kodian;
    new npc_emily;
    new npc_mrfloppy;
    new npc_outhouse_bunny;
    new npc_tallhorn_stag;
    new npc_amberpine_woodsman;
    new npc_wounded_skirmisher;
	new npc_lake_frog;
    new npc_maiden_of_ashwood_lake;
    new npc_maiden_of_drak_mar;
    new npc_lightning_sentry();
    new npc_venture_co_straggler();
}
