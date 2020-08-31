-----------------------------------
-- Area: Abyssea - La Theine
--   NM: Carabosse
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.GLITTERING_PIXIE_CHOKER)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.GLITTERING_PIXIE_CHOKER)
    end
end