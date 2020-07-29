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
            14450,    5000,    -- Hume Gilet
            15408,    5000,    -- Hume Trunks
            14451,    5000,    -- Hume Top
            15409,    5000,    -- Hume Shorts
            14452,    5000,    -- Elvaan Gilet
			15410,    5000,    -- Elvaan Trunks
			14453,    5000,    -- Elvaan Top
			15411,    5000,    -- Elvaan Shorts
			14454,    5000,    -- Tarutaru Maillot
			15412,    5000,    -- Tarutaru Trunks
			14471,    5000,    -- Tarutaru Top
			15423,    5000,    -- Tarutaru Shorts
			14455,    5000,    -- Mithra Top
			15413,    5000,    -- Mithra Shorts
			14456,    5000,    -- Galka Gilet
			15414,    5000,    -- Galka Trunks
			11265,    5000,    -- Custom Gilet
			16321,    5000,    -- Custom Trunks
			11266,    5000,    -- Custom Top
			16322,    5000,    -- Custom Shorts
			11267,    5000,    -- Magna Gilet
			16323,    5000,    -- Magna Trunks
			11268,    5000,    -- Magna Top
			16324,    5000,    -- Magna Shorts
			11269,    5000,    -- Wonder Maillot
			16325,    5000,    -- Wonder Trunks
			11270,    5000,    -- Wonder Top
			16326,    5000,    -- Wonder Shorts
			11271,    5000,    -- Savage Top
			16327,    5000,    -- Savage Shorts
			11272,    5000,    -- Elder Gilet
			16328,    5000,    -- Elder Trunks
			10256,    5000,    -- Marine Gilet
			10330,    5000,    -- Marine Boxers
			10257,    5000,    -- Marine Top
			10331,    5000,    -- Marine Shorts
			10258,    5000,    -- Woodsy Gilet
			10332,    5000,    -- Woodsy Boxers
			10259,    5000,    -- Woodsy Top
			10333,    5000,    -- Woodsy Shorts
			10260,    5000,    -- Creek Maillot
			10334,    5000,    -- Creek Boxers
			10261,    5000,    -- Creek Top
			10335,    5000,    -- Creek Shorts
			10262,    5000,    -- River Top
			10336,    5000,    -- River Shorts
			10263,    5000,    -- Dune Gilet
			10337,    5000,    -- Dune Boxers
			27803,    5000,    -- Rustic Maillot
			28086,    5000,    -- Rustic Trunks
			27804,    5000,    -- Shoal Maillot
			28087,    5000,    -- Shoal Trunks
    }

    tpz.shop.general(player, stock, SANDORIA)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
