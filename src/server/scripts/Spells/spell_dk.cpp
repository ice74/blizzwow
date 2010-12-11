/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
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

/*
 * Scripts for spells with SPELLFAMILY_DEATHKNIGHT and SPELLFAMILY_GENERIC spells used by deathknight players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_dk_".
 */

#include "ScriptPCH.h"
#include "Spell.h"
#include "SpellAuraEffects.h"

enum DeathKnightSpells
{
    DK_SPELL_SUMMON_GARGOYLE                = 50514,
    DK_SPELL_CORPSE_EXPLOSION_TRIGGERED     = 43999,
    DISPLAY_GHOUL_CORPSE                    = 25537,
    DK_SPELL_SCOURGE_STRIKE_TRIGGERED       = 70890,
};

// 49158 Corpse Explosion (51325, 51326, 51327, 51328)
class spell_dk_corpse_explosion : public SpellScriptLoader
{
public:
    spell_dk_corpse_explosion() : SpellScriptLoader("spell_dk_corpse_explosion") { }

    class spell_dk_corpse_explosion_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_corpse_explosion_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(DK_SPELL_CORPSE_EXPLOSION_TRIGGERED))
                return false;
            return true;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* unitTarget = GetHitUnit())
            {
                int32 bp = 0;
                // Living ghoul as a target
                if (unitTarget->isAlive())
                    bp = int32(unitTarget->CountPctFromMaxHealth(25));
                // Some corpse
                else
                    bp = GetEffectValue();
                GetCaster()->CastCustomSpell(unitTarget, SpellMgr::CalculateSpellEffectAmount(GetSpellInfo(), 1), &bp, NULL, NULL, true);
                // Corpse Explosion (Suicide)
                unitTarget->CastCustomSpell(unitTarget, DK_SPELL_CORPSE_EXPLOSION_TRIGGERED, &bp, NULL, NULL, true);
                // Set corpse look
                unitTarget->SetDisplayId(DISPLAY_GHOUL_CORPSE + urand(0, 3));
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_dk_corpse_explosion_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_corpse_explosion_SpellScript();
    }
};

// 50524 Runic Power Feed (keeping Gargoyle alive)
class spell_dk_runic_power_feed : public SpellScriptLoader
{
public:
    spell_dk_runic_power_feed() : SpellScriptLoader("spell_dk_runic_power_feed") { }

    class spell_dk_runic_power_feed_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_runic_power_feed_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(DK_SPELL_SUMMON_GARGOYLE))
                return false;
            return true;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* caster = GetCaster())
            {
                // No power, dismiss Gargoyle
                if (caster->GetPower(POWER_RUNIC_POWER) < 30)
                    caster->RemoveAurasDueToSpell(DK_SPELL_SUMMON_GARGOYLE, caster->GetGUID());
                else
                    caster->ModifyPower(POWER_RUNIC_POWER, -30);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_dk_runic_power_feed_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_runic_power_feed_SpellScript();
    }
};

// 55090 Scourge Strike (55265, 55270, 55271)
class spell_dk_scourge_strike : public SpellScriptLoader
{
public:
    spell_dk_scourge_strike() : SpellScriptLoader("spell_dk_scourge_strike") { }

    class spell_dk_scourge_strike_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_scourge_strike_SpellScript)

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(DK_SPELL_SCOURGE_STRIKE_TRIGGERED))
                return false;

            return true;
        }

		void GetGlyphScourgeStrikeAuraEffects(Unit const * caster, Unit const * target, Unit::AuraEffectList & auras)
        {
            Unit::AuraEffectList const & aurasA = target->GetAuraEffectsByType(SPELL_AURA_DUMMY);
            for (Unit::AuraEffectList::const_iterator itr = aurasA.begin(); itr != aurasA.end(); ++itr)
            {
                if (((*itr)->GetCasterGUID() != caster->GetGUID()) || ((*itr)->GetEffIndex() != EFFECT_0))
                    continue;

                SpellEntry const * spellProto = (*itr)->GetSpellProto();
                if ((spellProto->SpellIconID == 23) && (SpellFamilyNames(spellProto->SpellFamilyName) == SPELLFAMILY_GENERIC))
                    auras.push_back(*itr);
            }
        }

        AuraEffect * GetGlyphScourgeStrikeAuraEffect(uint32 diseaseId, Unit::AuraEffectList const & auras)
        {
            for (Unit::AuraEffectList::const_iterator itr = auras.begin(); itr != auras.end(); ++itr)
                if (diseaseId == ((*itr)->GetAmount() >> 4))
                    return (*itr);

            return NULL;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            static const AuraType diseaseAuraTypes[] =
            {
               SPELL_AURA_PERIODIC_DAMAGE, // Frost Fever and Blood Plague
                SPELL_AURA_LINKED,          // Crypt Fever and Ebon Plague
                SPELL_AURA_NONE
            };

            Unit * caster = GetCaster();
            Unit * target = GetHitUnit();

            if (!target)
                return;

            uint32 diseases = 0;
            int32 extratime, maxtime;
            AuraEffect const * aurEffA;

            Unit::AuraEffectList aurasA;
            GetGlyphScourgeStrikeAuraEffects(caster, caster, aurasA);

            bool hasGlyph = bool(aurasA.size());

            if (hasGlyph)
            {
                aurEffA = *aurasA.begin();
                extratime = aurEffA->GetAmount();
                maxtime = SpellMgr::CalculateSpellEffectAmount(aurEffA->GetSpellProto(), EFFECT_1);

                aurasA.clear();
                GetGlyphScourgeStrikeAuraEffects(caster, target, aurasA);
            }
			 for (AuraType const * itrA = &diseaseAuraTypes[0]; itrA && itrA[0] != SPELL_AURA_NONE; ++itrA)
            {
                Unit::AuraEffectList const & aurasB = target->GetAuraEffectsByType(*itrA);
                for (Unit::AuraEffectList::const_iterator itrB = aurasB.begin(); itrB != aurasB.end(); ++itrB)
                    if (((*itrB)->GetSpellProto()->Dispel == DISPEL_DISEASE) &&
                        ((*itrB)->GetCasterGUID() == caster->GetGUID()))
                    {
                        ++diseases;

                        if (!hasGlyph)
                            continue;

                        Aura * aura = (*itrB)->GetBase();

                        int32 applytime = int32(aura->GetApplyTime() & 0x7FFFFFFF);
                        int32 duration = std::min(aura->GetDuration() + (extratime * IN_MILLISECONDS), aura->GetMaxDuration());

                        if (AuraEffect * aurEffB = GetGlyphScourgeStrikeAuraEffect(aura->GetId(), aurasA))
                        {
                            aurEffB->GetBase()->SetDuration(duration);

                            if (applytime != aurEffB->GetBase()->GetMaxDuration())
                                aurEffB->SetAmount(aurEffB->GetAmount() & ~(0xF));

                            if (maxtime <= (aurEffB->GetAmount() & 0xF))
                                continue;

                            aura->SetDuration(duration);

                            aurEffB->GetBase()->SetMaxDuration(applytime);
                            aurEffB->SetAmount(aurEffB->GetAmount() + extratime);

                            continue;
                        }

                        int32 bp0 = (aura->GetId() << 4) + extratime;
                        caster->CastCustomSpell(target, aurEffA->GetId(), &bp0, NULL, NULL, true);

                        Unit::AuraEffectList tmp;
                        GetGlyphScourgeStrikeAuraEffects(caster, target, tmp);

                        if (AuraEffect * aurEffB = GetGlyphScourgeStrikeAuraEffect(aura->GetId(), tmp))
                        {
                            aura->SetDuration(duration);

                            aurEffB->GetBase()->SetMaxDuration(applytime);
                            aurEffB->GetBase()->SetDuration(duration);
                        }
                    }
            }

            int32 bp0 = (GetHitDamage() * GetEffectValue() * diseases) / 100;
            caster->CastCustomSpell(target, DK_SPELL_SCOURGE_STRIKE_TRIGGERED, &bp0, NULL, NULL, true);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_dk_scourge_strike_SpellScript::HandleDummy, EFFECT_2, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript * GetSpellScript() const
    {
        return new spell_dk_scourge_strike_SpellScript();
    }
};

void AddSC_deathknight_spell_scripts()
{
    new spell_dk_corpse_explosion();
    new spell_dk_runic_power_feed();
    new spell_dk_scourge_strike();
}
