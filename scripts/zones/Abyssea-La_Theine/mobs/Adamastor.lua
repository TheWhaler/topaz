-----------------------------------
-- Area: Abyssea - La Theine
--   NM: Adamastor
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
        player:addKeyItem(tpz.ki.DENTED_GIGAS_SHIELD)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.DENTED_GIGAS_SHIELD)
    end
end