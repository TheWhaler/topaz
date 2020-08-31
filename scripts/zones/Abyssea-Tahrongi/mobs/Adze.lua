-----------------------------------
-- Area: Abyssea - Tahrongi
--   NM: Adze
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.STICKY_GNAT_WING)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.STICKY_GNAT_WING)
    end
end