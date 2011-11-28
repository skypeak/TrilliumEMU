/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 TrilliumEMU <http://www.arkania.net/>
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
 
 
#include "ScriptPCH.h"
#include "firelands.h"

enum Yells //need texts
{
    SAY_AGGRO                   = -0,     //sound id 24517
    SAY_DEATH                   = -0,     //sound id 24519
    SAY_KILL_1                  = -0,     //sound id 24531
    SAY_KILL_2                  = -0,     //sound id 24530
    SAY_KILL_3                  = -0,     //sound id 24529
    SAY_HAMMER_DROP_1           = -0,     //sound id 24520
    SAY_HAMMER_DROP_2           = -0,     //sound id 24521
    SAY_HAMMER_DROP_3           = -0,     //sound id 24522
    SAY_HAMMER_PICKUP_1         = -0,     //sound id 24523
    SAY_HAMMER_PICKUP_2         = -0,     //sound id 24524
    SAY_HAMMER_PICKUP_3         = -0,     //sound id 24525
    SAY_PURGE                   = -0,     //sound id 24532
};

enum Spells
{
    SPELL_SULFURAS_SMASH        = 98710,
    SPELL_LIVING_METEOR         = 99268,    //every difficult
    SPELL_WRATH_OF_RAGNAROS     = 98263,
    SPELL_MAGMA_SMASH           = 98313,
    SPELL_CLEAVING_BLOW         = 98951,    //on 40% hp
    SPELL_BURNING_WOUND         = 99399,
    SPELL_MAGMA_TRAP            = 98164,    //every difficult
    SPELL_LAVA_WAVE             = 100293,
    SPELL_HAND_OF_RAGNAROS      = 98237,
};

enum Events     //non heroic
{
    EVENT_SULFURAS_SMASH        = 0,
}

class boss_ragnaros_cata : public CreatureScript
{
    public:
        boss_ragnaros_cata() : CreatureScript("boss_ragnaros_cata") { }

        struct boss_ragnaros_cataAI : public BossAI
        {
            boss_ragnaros_cataAI(Creature* creature) : ScriptedAI(creature)
            {
                pInstance = creature->GetInstanceScript();
            }
            
            InstanceScript* pInstance;
            EventMap events;
            SummonList Summons;

            void Reset()
            {
                if (instance)
                    isntance->SetData(DATA_RAGNAROS_EVENT, NOT_STARTED);

                events.Reset();
            }

            void EnterCombat(Unit * /*who*/)
            {

                DoScriptText(SAY_AGGRO, me);
                if (instance)
                    instance->SetData(DATA_RAGNAROS_EVENT, IN_PROGRESS);

                events.SetPhase(PHASE_1);
                events.ScheduleEvent(EVENT_SULFURAS_SMASH, 40000);

            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied
                DoScriptText(SAY_DEATH, me);
                if (instance)
                    instance->SetData(DATA_RAGNAROS_EVENT, DONE);
            }

            void KilledUnit(Unit* /*Killed*/)
            {
                DoScriptText(RAND(SAY_KILL_1, SAY_KILL_2, SAY_KILL_3), me);
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                {
                    return;

                    events.Update(diff);

                    while (uint32 eventId = events.ExecuteEvent())
                    {
                    }

                    switch (GetPhase(events))
                    {
                        case PHASE_1
                        {
                            switch (eventId)
                            {
                                case EVENT_SULFURAS_SMASH:
                                {
                                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                    DoCast(SPELL_SULFURAS_SMASH, me)
                                    events.ScheduleEvent(EVENT_SULFURAS_SMASH, 40000);
                                    break;
                                }
                            }
                            break;
                        }
                    }
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_ragnaros_cataAI(creature);
        }
};

void AddSC_boss_ragnaros_cata()
{
    new boss_ragnaros_cata();
    new npc_living_meteor();
}