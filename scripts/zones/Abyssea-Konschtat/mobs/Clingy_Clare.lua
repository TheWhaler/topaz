-----------------------------------
-- Area: Abyssea - Konschtat
--   NM: Clingy Clare
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    --compare using something like
    if tpz.abyssea.canGiveNMKI(player, mob) then
        player:addKeyItem(tpz.ki.DECAYING_MORBOL_TOOTH)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.DECAYING_MORBOL_TOOTH)
    end
end