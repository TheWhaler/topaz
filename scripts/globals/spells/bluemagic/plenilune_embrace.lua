-----------------------------------------
-- Spell: Plenilune Embrace
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
	local minCure = 250
    local divisor = 0.6666
    local constant = 130
    local power = getCurePowerOld(caster)
    local final = getCureFinal(caster,spell,getBaseCureOld(power,divisor,constant),minCure,true)
    local diff = (target:getMaxHP() - target:getHP())

    if (power > 559) then
        divisor = 2.8333
        constant = 391.2
    elseif (power > 319) then
        divisor =  1
        constant = 210
    end

    final = final + (final * (target:getMod(tpz.mod.CURE_POTENCY_RCVD)/100))

    if (target:getAllegiance() == caster:getAllegiance() and (target:getObjType() == tpz.objType.PC or target:getObjType() == tpz.objType.MOB)) then
        --Applying server mods....
        final = final * CURE_POWER
    end

    if (final > diff) then
        final = diff
    end

	final = final + 110

    target:addHP(final)
    target:wakeUp()
    caster:updateEnmityFromCure(target,final)
    spell:setMsg(tpz.msg.basic.MAGIC_RECOVERS_HP)
   caster:addStatusEffect(tpz.effect.ATTACK_BOOST,12,0,300)
   caster:addStatusEffect(tpz.effect.MAGIC_ATK_BOOST,12,0,300)
  	
   return final;
end
