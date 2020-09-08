-----------------------------------
-- Ability: Presto
-- Enhances the effect of your next step and grants you an additional finishing move.
-- Obtained: Dancer 77
-- Recast Time: 15 Seconds
-- Duration: 30 Seconds
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onUseAbility(player, target, ability)
    player:delStatusEffect(tpz.effect.PRESTO)
    player:addStatusEffect(tpz.effect.PRESTO, 0, 0, 30)
end