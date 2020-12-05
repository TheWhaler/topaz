-----------------------------------
--	EFFECT_NETHER_VOID
-- Increases the absorption of your
-- next dark magic spell.
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(tpz.mod.ABSORB_POTENCY, effect:getPower())
end

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
	target:delMod(tpz.mod.ABSORB_POTENCY, effect:getPower())
end