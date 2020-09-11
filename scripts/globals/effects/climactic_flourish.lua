-----------------------------------
--
-- tpz.effect.CLIMACTIC_FLOURISH
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
    local CF_EFFECT = effect:getPower()
    
    target:setLocalVar("[CF_COUNT]", CF_EFFECT)
    target:addMod(tpz.mod.CRITHITRATE, 100)
    local mob = target:getTarget()
    if mob ~= nil then
        mob:addListener("TAKE_DAMAGE", "CF_DAMAGE_CHECK", function(mob, amount, attacker, attackType, damageType)
        if amount > 0 and attackType == tpz.attackType.PHYSICAL and attacker:hasStatusEffect(tpz.effect.CLIMACTIC_FLOURISH) then
            local CF_COUNT = attacker:getLocalVar("[CF_COUNT]") - 1
            if CF_COUNT == 0 then
                attacker:delStatusEffect(tpz.effect.CLIMACTIC_FLOURISH)
            end

                attacker:setLocalVar("[CF_COUNT]", CF_COUNT)    
            end
        end)
    end
        
    
    target:addListener("ENGAGE", "CF_MOB_ENGAGE", function(player, mob)
        mob:addListener("TAKE_DAMAGE", "CF_DAMAGE_CHECK", function(mob, amount, attacker, attackType, damageType)
        if amount > 0 and attackType == tpz.attackType.PHYSICAL and attacker:hasStatusEffect(tpz.effect.CLIMACTIC_FLOURISH) then
            local CF_COUNT = attacker:getLocalVar("[CF_COUNT]") - 1
            if CF_COUNT == 0 then
                attacker:delStatusEffect(tpz.effect.CLIMACTIC_FLOURISH)
            end
            
                attacker:setLocalVar("[CF_COUNT]", CF_COUNT)    
            end
        end)
    end)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.CRITHITRATE, 100)
    target:removeListener("CF_MOB_ENGAGE")
end