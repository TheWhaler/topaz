-----------------------------------
-- Area: West Sarutabaruta [S]
--   NM: Dark Ixion
-----------------------------------
require("scripts/globals/titles")
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
	local zones = {81, 82, 84, 89, 91, 95, 96}
	local DIids = {17109367, 17113468, 17121697,  17142112, 17150321, 17166730, 17170649}
	local r = math.random(1,7)
	SetServerVariable("[DIZone]", zones[r])
    player:addTitle(tpz.title.IXION_HORNBREAKER);
	
	local nm = GetMobByID(DIids[r])
	local respawnTime = math.random(72000, 86400)
	SetServerVariable("[DIPop]", respawnTime + os.time())
	nm:setRespawnTime(respawnTime)
	DisallowRespawn(DIids[r], false)
	DisallowRespawn(17166730, true)
end;