-----------------------------------
--
-- tpz.effect.BUILDING_FLOURISH
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
	local BF_EFFECT = effect:getPower()
	
	if BF_EFFECT == 1 then
	    target:addMod(tpz.mod.ACC, effect:getPower())
	    target:addMod(tpz.mod.ACC, 25)
	elseif BF_EFFECT == 2 then
	    target:addMod(tpz.mod.ACC, effect:getPower())
	    target:addMod(tpz.mod.ACC, 25)
	    target:addMod(tpz.mod.ATTP, effect:getPower())
	    target:addMod(tpz.mod.ATTP, 25)
	elseif BF_EFFECT == 3 then
	    target:addMod(tpz.mod.ACC, effect:getPower())
	    target:addMod(tpz.mod.ACC, 25)
	    target:addMod(tpz.mod.ATTP, effect:getPower())
	    target:addMod(tpz.mod.ATTP, 25)
		target:addMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:addMod(tpz.mod.CRITHITRATE, 25)
	end
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
	local BF_EFFECT = effect:getPower()
	
	if BF_EFFECT == 1 then
	    target:delMod(tpz.mod.ACC, effect:getPower())
	    target:delMod(tpz.mod.ACC, 25)
	elseif BF_EFFECT == 2 then
	    target:delMod(tpz.mod.ACC, effect:getPower())
	    target:delMod(tpz.mod.ACC, 25)
	    target:delMod(tpz.mod.ATTP, effect:getPower())
	    target:delMod(tpz.mod.ATTP, 25)
	elseif BF_EFFECT == 3 then
	    target:delMod(tpz.mod.ACC, effect:getPower())
	    target:delMod(tpz.mod.ACC, 25)
	    target:delMod(tpz.mod.ATTP, effect:getPower())
	    target:delMod(tpz.mod.ATTP, 25)
		target:delMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:delMod(tpz.mod.CRITHITRATE, 25)
	end
end