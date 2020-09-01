-----------------------------------
-- Area: Abyssea - La Theine
--   NM: Grandgousier
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    --compare using something like
    if tpz.abyssea.canGiveNMKI(player, mob) then
        player:addKeyItem(tpz.ki.SEVERED_GIGAS_COLLAR)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.SEVERED_GIGAS_COLLAR)
    end
end