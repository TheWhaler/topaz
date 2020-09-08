-----------------------------------
--
-- tpz.effect.CLIMACTIC_FLOURISH
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
	local CF_EFFECT = effect:getPower()
	
	if CF_EFFECT == 1 then
		target:addMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:addMod(tpz.mod.CRITHITRATE, 100)
	elseif CF_EFFECT == 2 then
		target:addMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:addMod(tpz.mod.CRITHITRATE, 100)
	elseif CF_EFFECT == 3 then
		target:addMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:addMod(tpz.mod.CRITHITRATE, 100)
	elseif CF_EFFECT == 4 then
		target:addMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:addMod(tpz.mod.CRITHITRATE, 100)
	elseif CF_EFFECT == 5 then
		target:addMod(tpz.mod.CRITHITRATE, effect:getPower())
	    target:addMod(tpz.mod.CRITHITRATE, 100)
	end
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
end
