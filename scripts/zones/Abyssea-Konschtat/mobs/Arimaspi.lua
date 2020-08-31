-----------------------------------
-- Area: Abyssea - Konschtat
--   NM: Arimaspi
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.MUCID_AHRIMAN_EYEBALL)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.MUCID_AHRIMAN_EYEBALL)
    end
end