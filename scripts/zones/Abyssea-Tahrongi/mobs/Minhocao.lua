-----------------------------------
-- Area: Abyssea - Tahrongi
--   NM: Minhocao
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.SODDEN_SANDWORM_HUSK)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.SODDEN_SANDWORM_HUSK)
    end
end