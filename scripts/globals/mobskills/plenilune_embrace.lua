-----------------------------------------
-- Spell: Metallic Body
-- Absorbs an certain amount of damage from physical and magical attacks
-- Spell cost: 19 MP
-- Monster Type: Aquans
-- Spell Type: Magical (Earth)
-- Blue Magic Points: 1
-- Stat Bonus: None
-- Level: 8
-- Casting Time: 7 seconds
-- Recast Time: 60 seconds
-- Duration: 5 minutes
--
-- Combos: Max MP Boost
-----------------------------------------
require("scripts/globals/bluemagic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0
end

function onSpellCast(caster,target,spell)

    local potency = 9

    if(potency == 0) then
    	potency = 9
    end

   potency = potency - math.random(0, potency/4)

    
   target:addHP(caster:getMaxHP() * potency / 100)

   spell:setMsg(tpz.msg.basic.MAGIC_RECOVERS_HP)
   caster:addStatusEffect(tpz.effect.ATTACK_BOOST,25,0,300)
   caster:addStatusEffect(tpz.effect.MAGIC_ATK_BOOST,25,0,300)
  	
   return (caster:getMaxHP() * potency / 100);
end
