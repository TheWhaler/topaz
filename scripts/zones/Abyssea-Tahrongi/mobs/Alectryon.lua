-----------------------------------
-- Area: Abyssea - Tahrongi
--   NM: Alectryon
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    --compare using something like
    if tpz.abyssea.canGiveNMKI(player, mob) then
        player:addKeyItem(tpz.ki.FAT_LINED_COCKATRICE_SKIN)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.FAT_LINED_COCKATRICE_SKIN)
    end
end