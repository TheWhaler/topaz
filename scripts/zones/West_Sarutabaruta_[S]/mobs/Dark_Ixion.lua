-----------------------------------
-- Area: West Sarutabaruta [S]
--   NM: Dark Ixion
-----------------------------------
require("scripts/globals/titles")
-----------------------------------

function onMobSpawn(mob)
	local zoneUsed = GetServerVariable("[DIZone]")
	if zoneUsed ~= 95 then
		DespawnMob(mob:getID())
	end
end;

function onMobDeath(mob, player, isKiller)
	local zones = {81, 82, 83, 89, 91, 95, 96}
	local r = math.random(1,7)
	SetServerVariable("[DIZone]", zones[r])
    player:addTitle(tpz.title.IXION_HORNBREAKER);
end;
