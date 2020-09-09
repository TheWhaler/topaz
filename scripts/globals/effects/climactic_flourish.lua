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
    
    
    target:addListener("ATTACK", "ATTACK_CF_CHECK", function(player, target, action)
        local CF_COUNT = player:getLocalVar("[CF_COUNT]") - 1
        if CF_COUNT == 0 then
            player:delStatusEffect(tpz.effect.CLIMACTIC_FLOURISH)
        end

        player:setLocalVar("[CF_COUNT]", CF_COUNT)        
    end)
    
    target:addListener("WEAPONSKILL_USE", "WEAPONSKILL_USE_CF_CHECK", function(player, target, skillid)
        local CF_COUNT = player:getLocalVar("[CF_COUNT]") - 1
        if CF_COUNT == 0 then
            player:delStatusEffect(tpz.effect.CLIMACTIC_FLOURISH)
        end
            
        player:setLocalVar("[CF_COUNT]", CF_COUNT)        
    end)    
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.CRITHITRATE, 100)
    target:removeListener("ATTACK_CF_CHECK")
    target:removeListener("WEAPONSKILL_USE_CF_CHECK")
end