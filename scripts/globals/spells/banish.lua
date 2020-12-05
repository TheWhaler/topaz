-----------------------------------------
-- Spell: Banish
-- Deals light damage to an enemy.
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    --doDivineBanishNuke(V, M, caster, spell, target, hasMultipleTargetReduction, resistBonus)
    local params = {}
	if (player:hasStatusEffect(tpz.effect.DIVINE_EMBLEM)) then
		params.dmg = (14 * (1 + (player:getMod(tpz.mod.DIVINE) / 100)))
	else
		params.dmg = 14
	end
    params.multiplier = 1
    params.hasMultipleTargetReduction = false
    params.resistBonus = 1.0
    dmg = doDivineBanishNuke(caster, target, spell, params)
    return dmg
end