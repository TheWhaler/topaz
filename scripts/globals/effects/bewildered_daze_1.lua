-----------------------------------
--
-- tpz.effect.BEWILDERED_DAZE_1
--
-----------------------------------

function onEffectGain(target, effect)
    target:addMod(tpz.mod.CRIT_EVA_DOWN, -1)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.CRIT_EVA_DOWN, -1)
end
