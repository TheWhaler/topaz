-----------------------------------
-- Area: Lower Jeuno
--  NPC: Chatnachoq
-- Standard Info NPC
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
local ID = require("scripts/zones/Lower_Jeuno/IDs");
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player,npc)
    --player:startEvent(10095);
    local stock =
    {
        -- 10049, 25000, -- ♪Raptor
        10050, 25000, -- ♪Tiger
        10051, 25000, -- ♪Crab
        10052, 25000, -- ♪Red Crab
        10053, 25000, -- ♪Bomb
        10054, 25000, -- ♪Ram
        10055, 25000, -- ♪Morbol
        10056, 25000, -- ♪Crawler
        -- 10057, 25000, -- ♪Fenrir
        10058, 25000, -- ♪Beetle
        10059, 25000, -- ♪Moogle
        10060, 25000, -- ♪Magic Pot
        10061, 25000, -- ♪Tulfaire
        10062, 25000, -- ♪Warmachine
        10063, 25000, -- ♪Xzomit
        10064, 25000, -- ♪Hippogryph
        10065, 25000, -- ♪Spectral Chair
        10066, 25000, -- ♪Spheroid
        -- 10067, 25000, -- ♪Omega
        10068, 25000, -- ♪Coeurl
        10069, 25000, -- ♪Goobbue
        10070, 25000, -- ♪Raaz
        10071, 25000 -- ♪Levitus

    }

    player:showText(npc, ID.text.ADELFLETE_SHOP_DIALOG)
    tpz.shop.general(player, stock)
end;

function onEventUpdate(player, csid, option)
end

function onEventFinish(player,csid,option)
end;