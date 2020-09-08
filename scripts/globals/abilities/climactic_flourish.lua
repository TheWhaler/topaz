-----------------------------------
-- Ability: Climactic Flourish
-- Allows you to deal critical hits. Requires at least one finishing move.
-- Obtained: Dancer 80
-- Recast Time: 1 minute 30 seconds
-- Duration: 1 minute
--
-- For each Finishing Move consumed, the first attack of one attack round or the first hit of any weaponskill will be a guaranteed critical hit, to a maximum of five combined rounds and/or separate weaponskills.
-- Like Sneak Attack, this ability will force critical hits on weapon skills that cannot normally land critical hits.
-- Using Climatic Flourish will consume all Finishing Moves stored.
-- If the first hit of an attack round misses, that round does not count against the number of critical hits given by Climactic Flourish.
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player, target, ability)

    if (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_1)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_2)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_3)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_4)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_5)) then
        return 0, 0

    else
        return tpz.msg.basic.NO_FINISHINGMOVES, 0
    end
end

function onUseAbility(player, target, ability)
    if (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_1)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_1)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 1, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_2)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_2)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 2, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_3)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_3)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 3, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_4)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_4)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 4, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_5)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_5)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 5, 0, 60, 0)
    end
end