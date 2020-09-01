-----------------------------------
--
-- tpz.effect.DEDICATION
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
end

function onEffectTick(target, effect)
	if target:getLocalVar("[AbyDedication]") == 1 and target:hasStatusEffect(tpz.effect.DEDICATION) then
		target:delStatusEffect(tpz.effect.DEDICATION)
	end
end

function onEffectLose(target, effect)
end
