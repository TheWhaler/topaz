-----------------------------------
-- Area: Windurst Woods
--  NPC: Jack of Spades
-- Adventurer's Assistant
-- Working 100%
-------------------------------------
local ID = require("scripts/zones/Windurst_Woods/IDs");
require("scripts/globals/npc_util")
require("scripts/globals/settings")
require("scripts/globals/npc_util")
require("scripts/globals/shop")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local stock =
    {
	    4096,    100,    3,	-- Fire Crystal
		4097,    300,    3,	-- Ice Crystal
		4098,    100,    3,	-- Wind Crystal
		4099,    100,    3,	-- Earth Crystal
		4100,    300,    3,	-- Lightning Crystal
		4101,    100,    3,	-- Water Crystal
		4102,    715,    3,	-- Light Crystal
		4103,    600,    3,	-- Dark Crystal
		1255,    12324,    2, -- Fire Ore
		1256,    12324,    2, -- Ice Ore
		1257,    12324,    2, -- Wind Ore
		1258,    12324,    2, -- Earth Ore
		1259,    12324,    2, -- Lightning Ore
		1260,    12324,    2, -- Water Ore
		1261,    12324,    2, -- Light Ore
		1262,    12324,    2, -- Dark Ore
		4104,    1100,    1, -- Fire Cluster
		4105,    3500,    1, -- Ice Cluster
		4106,    1100,    1, -- Wind Cluster
		4107,    1100,    1, -- Earth Cluster
		4108,    3500,    1, -- Lightning Cluster
		4109,    1100,    1, -- Water Cluster
		4111,    8280,    1, -- Dark Cluster
		4110,    7000,    1, -- Light Cluster
    }

    tpz.shop.nation(player, stock, tpz.nation.WINDURST)
	-- player:startEvent(10009,0,4)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player,csid,option)
end