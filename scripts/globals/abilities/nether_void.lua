-----------------------------------
-- Ability: Nether Void
-- Description: Increases the absorption of your next dark magic spell.
-- Obtained: DRK Level 78
-- Recast Time: 00:05:00
-- Duration: 00:01:00 or the next Dark Magic cast
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player, target, ability)
    return 0, 0
end

function onUseAbility(player, target, ability)
	local power = 50;
	local legs = target:getEquipID(tpz.slot.LEGS);
	
	if (legs == 11231) then -- Bale Flanchard +1
		power = power + 15;
	elseif (legs == 11131) then -- Bale Flanchard +2
		power = power + 25;
	end
	
    player:addStatusEffect(tpz.effect.NETHER_VOID, power, 0, 60)
end
