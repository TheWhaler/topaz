-----------------------------------------
-- Spell: Holy
-- Deals light damage to an enemy.
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    -- doDivineNuke(V, M, caster, spell, target, hasMultipleTargetReduction, resistBonus)
    local params = {}
	if (player:hasStatusEffect(tpz.effect.DIVINE_EMBLEM)) then
		params.dmg = (125 * (1 + (player:getMod(tpz.mod.DIVINE) / 100)))
	else
		params.dmg = 125
	end
    params.multiplier = 1
    params.hasMultipleTargetReduction = false
    params.resistBonus = 0
    dmg = doDivineNuke(caster, target, spell, params)
    return dmg
end