-----------------------------------
--
--     tpz.effect.MAJESTY
--     
-----------------------------------
function onEffectGain(target, effect)
    target:addMod(tpz.mod.CURE_POTENCY_II, 25)
    target:addMod(tpz.mod.CURE_CAST_TIME, -25)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
	target:delMod(tpz.mod.CURE_POTENCY_II)
	target:delMod(tpz.mod.CURE_CAST_TIME)
end
