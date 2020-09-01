-----------------------------------
-- Area: Abyssea - La Theine
--   NM: La Theine Liege
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
-----------------------------------

function onMobSpawn(mob)
end

function onMobDeath(mob, player, isKiller)
    --compare using something like
    if tpz.abyssea.canGiveNMKI(player, mob) then
        player:addKeyItem(tpz.ki.PELLUCID_FLY_EYE)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.PELLUCID_FLY_EYE)
    end
end