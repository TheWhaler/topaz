-----------------------------------
--
-- tpz.effect.STRIKING_FLOURISH
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
	local SF_EFFECT = effect:getPower()
	
	if SF_EFFECT == 1 then
	    target:addMod(tpz.mod.ACC, effect:getPower())
	    target:addMod(tpz.mod.DOUBLE_ATTACK, 100)
	end
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
	local SF_EFFECT = effect:getPower()
	
	if SF_EFFECT == 1 then
	    target:addMod(tpz.mod.ACC, effect:getPower())
	    target:delMod(tpz.mod.DOUBLE_ATTACK, 100)
	end
end