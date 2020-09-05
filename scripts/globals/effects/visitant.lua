-----------------------------------
--
-- tpz.effect.VISITANT
--
-----------------------------------
require("scripts/globals/abyssea")

function onEffectGain(target,effect)
    -- Remove any older dedication effect
    if target:hasStatusEffect(tpz.effect.DEDICATION) then
        target:delStatusEffect(tpz.effect.DEDICATION)
    end

    target:addStatusEffect(tpz.effect.DEDICATION,10,3,0,0,5000000)
    local expEffect = target:getStatusEffect(tpz.effect.DEDICATION)
    local visEffect = target:getStatusEffect(tpz.effect.VISITANT)
    expEffect:setFlag(tpz.effectFlag.ON_ZONE)
    visEffect:setFlag(tpz.effectFlag.ON_ZONE)
    visEffect:setFlag(tpz.effectFlag.INFLUENCE)
    expEffect:setFlag(tpz.effectFlag.INFLUENCE)
	target:setLocalVar("[AbyDedication]", 1)
end

function onEffectTick(target, effect)
	if not target:hasStatusEffect(tpz.effect.DEDICATION) then
		target:addStatusEffect(tpz.effect.DEDICATION,10,3,0,0,5000000)
		local expEffect = target:getStatusEffect(tpz.effect.DEDICATION)
		expEffect:setFlag(tpz.effectFlag.ON_ZONE)
		expEffect:setFlag(tpz.effectFlag.INFLUENCE)
    end

    local expRate = 60 + math.floor(target:getCharVar("goldLight") * 4.33 / 1.9)
    target:getStatusEffect(tpz.effect.DEDICATION):setPower(expRate)
end

function onEffectLose(target,effect)
    if isInAbysseaZone(target) then
        target:setCharVar("lastEnteredAbyssea", os.time() + 14400)
        target:warp()
    end
end