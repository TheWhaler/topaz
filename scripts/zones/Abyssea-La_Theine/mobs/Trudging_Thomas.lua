-----------------------------------
-- Area: Abyssea - La Theine
--   NM: Trudging Thomas
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
        player:addKeyItem(tpz.ki.MARBLED_MUTTON_CHOP)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.MARBLED_MUTTON_CHOP)
    end
end