-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Sunbreeze_Moogle_L
-- Standard Sunbreeze Festival NPC
-----------------------------------
local ID = require("scripts/zones/Northern_San_dOria/IDs")
require("scripts/globals/shop")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local stock =
    {
            14457,    7500,    -- Hume Gilet +1
            15415,    7500,    -- Hume Trunks +1
            14458,    7500,    -- Hume Top +1
            15416,    7500,    -- Hume Shorts +1
            14459,    7500,    -- Elvaan Gilet +1
			15417,    7500,    -- Elvaan Trunks +1
			14460,    7500,    -- Elvaan Top +1
			15418,    7500,    -- Elvaan Shorts +1
			14461,    7500,    -- Tarutaru Maillot +1
			15419,    7500,    -- Tarutaru Trunks +1
			14472,    7500,    -- Tarutaru Top +1
			15424,    7500,    -- Tarutaru Shorts +1
			14462,    7500,    -- Mithra Top +1
			15420,    7500,    -- Mithra Shorts +1
			14463,    7500,    -- Galka Gilet +1
			15421,    7500,    -- Galka Trunks +1
			11273,    7500,    -- Custom Gilet +1
			16329,    7500,    -- Custom Trunks +1
			11274,    7500,    -- Custom Top +1
			16330,    7500,    -- Custom Shorts +1
			11275,    7500,    -- Magna Gilet +1
			16331,    7500,    -- Magna Trunks +1
			11276,    7500,    -- Magna Top +1
			16332,    7500,    -- Magna Shorts +1
			11277,    7500,    -- Wonder Maillot +1
			16333,    7500,    -- Wonder Trunks +1
			11278,    7500,    -- Wonder Top +1
			16334,    7500,    -- Wonder Shorts +1
			11279,    7500,    -- Savage Top +1
			16335,    7500,    -- Savage Shorts +1
			11280,    7500,    -- Elder Gilet +1
			16336,    7500,    -- Elder Trunks +1
			10264,    7500,    -- Marine Gilet +1
			10338,    7500,    -- Marine Boxers +1
			10265,    7500,    -- Marine Top +1
			10339,    7500,    -- Marine Shorts +1
			10266,    7500,    -- Woodsy Gilet +1
			10340,    7500,    -- Woodsy Boxers +1
			10267,    7500,    -- Woodsy Top +1
			10341,    7500,    -- Woodsy Shorts +1
			10268,    7500,    -- Creek Maillot +1
			10342,    7500,    -- Creek Boxers +1
			10269,    7500,    -- Creek Top +1
			10343,    7500,    -- Creek Shorts +1
			10270,    7500,    -- River Top +1
			10344,    7500,    -- River Shorts +1
			10271,    7500,    -- Dune Gilet +1
			10345,    7500,    -- Dune Boxers +1
			27805,    7500,    -- Rustic Maillot +1
			28088,    7500,    -- Rustic Trunks +1
			27806,    7500,    -- Shoal Maillot +1
			28089,    7500,    -- Shoal Trunks +1
    }

    tpz.shop.general(player, stock, SANDORIA)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
