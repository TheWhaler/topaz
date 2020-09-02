-----------------------------------
--
-- Zone: Batallia_Downs_[S] (84)
--
-----------------------------------
local ID = require("scripts/zones/Batallia_Downs_[S]/IDs")
-----------------------------------

function onInitialize(zone)
	local zoneUsed = GetServerVariable("[DIZone]")

	-- dark ixion
	if zoneUsed ~= 84 then
		DisallowRespawn(17121697, true)
	else
		local popTime = GetServerVariable("[DIPop]")
		local nm = GetMobByID(17121697)
		if popTime ~= 0 then
			nm:setRespawnTime(popTime - os.time())
		else
			local respawnTime = math.random(72000, 86400) -- 20 to 24 hr
            SetServerVariable("[DIPop]", respawnTime + os.time())
            nm:setRespawnTime(respawnTime)
		end
	end
end

function onZoneIn(player, prevZone)
    local cs = -1
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-500.451, -39.71, 504.894, 39)
    end
    return cs
end

function onRegionEnter(player, region)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
