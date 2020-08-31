-----------------------------------
-- Area: Abyssea - Konschtat
--   NM: Tonberry Lieje
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.TWISTED_TONBERRY_CROWN)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.TWISTED_TONBERRY_CROWN)
    end
end