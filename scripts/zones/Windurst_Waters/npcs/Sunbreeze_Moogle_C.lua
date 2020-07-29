-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Sunbreeze_Moogle_L
-- Standard Sunbreeze Festival NPC
-----------------------------------
local ID = require("scripts/zones/Northern_San_dOria/IDs")
require("scripts/globals/shop")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local stock =
    {
            13819,    5000,    -- Onoko Yukata
			13820,    5000,    -- Omina Yukata
			13821,    7500,    -- Lord's Yukata
			13822,    7500,    -- Lady's Yukata
			14532,    5000,    -- Otoko Yukata
			14533,    5000,    -- Onago Yukata
			14534,    7500,    -- Otokogimi Yukata
			14535,    7500,    -- Onnagimi Yukata
			11316,    5000,    -- Otokogusa Yukata
			11317,    5000,    -- Onnagusa Yukata
			11318,    7500,    -- Otokoeshi Yukata
			11319,    7500,    -- Ominaeshi Yukata
			11861,    5000,    -- Hikogami Yukata
			11862,    5000,    -- Himegami Yukata
			27859,    5000,    -- Kengyu Happi
			27860,    5000,    -- Shokujo Happi
			28149,    5000,    -- Kengyu Hanmomohiki
			28150,    5000,    -- Shokujo Hanmomohiki
			25607,    10000,   -- Starlet Flower
			26975,    10000,   -- Starlet Jabot
			27112,    10000,   -- Starlet Gloves
			27297,    10000,   -- Starlet Skirt
			27468,    10000,   -- Starlet Boots
			25606,    10000,   -- Argent Hood
			26974,    10000,   -- Argent Coat
			27111,    10000,   -- Argent Cuffs
			27296,    10000,   -- Argent Pants
			27467,    10000,   -- Argent Boots
    }

    tpz.shop.general(player, stock, SANDORIA)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
