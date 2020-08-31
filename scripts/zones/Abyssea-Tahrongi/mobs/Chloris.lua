-----------------------------------
-- Area: Abyssea - Tahrongi
--   NM: Chloris
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.OVERGROWN_MANDRAGORA_FLOWER)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.OVERGROWN_MANDRAGORA_FLOWER)
    end
end