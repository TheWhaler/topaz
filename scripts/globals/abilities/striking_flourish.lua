-----------------------------------
-- Ability: Striking Flourish
-- Allows you to deliver a twofold attack. Requires at least two finishing moves.
-- Obtained: Dancer Level 89
-- Finishing Moves Used: 2
-- Recast Time: 00:30
-- Duration: 01:00
--
-- Always consumes 2 finishing moves
-- Forces a double attack on the first hit of the next attack round or weaponskill
-- Grants a base damage bonus to the first strike of the forced double attack that equals 100% of the player's CHR
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------

function onAbilityCheck(player, target, ability)
    if (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_1)) then
        return tpz.msg.basic.NO_FINISHINGMOVES, 0
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

    if (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_2)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_2)
        player:addStatusEffect(tpz.effect.STRIKING_FLOURISH, 1, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_3)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_3)
		player:addStatusEffect(tpz.effect.FINISHING_MOVE_1, 1, 0, 7200)
        player:addStatusEffect(tpz.effect.STRIKING_FLOURISH, 1, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_4)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_4)
		player:addStatusEffect(tpz.effect.FINISHING_MOVE_2, 1, 0, 7200)
        player:addStatusEffect(tpz.effect.STRIKING_FLOURISH, 1, 0, 60, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_5)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_5)
        player:addStatusEffect(tpz.effect.FINISHING_MOVE_3, 1, 0, 7200)
        player:addStatusEffect(tpz.effect.STRIKING_FLOURISH, 1, 0, 60, 0)
    end

end
