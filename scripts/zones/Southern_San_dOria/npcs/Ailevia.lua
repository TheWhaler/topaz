-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Ailevia
-- Adventurer's Assistant
-- Only recieving Adv.Coupon and simple talk event are scripted
-- This NPC participates in Quests and Missions
-- !pos -8 1 1 230
-------------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs");
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/shop");
require("scripts/globals/npc_util")
-----------------------------------

function onTrade(player,npc,trade)
    -- "Flyers for Regine" conditional script
    local count = trade:getItemCount();
    local MagicFlyer = trade:hasItemQty(532,1);

    if (MagicFlyer == true and count == 1) then
        local FlyerForRegine = player:getQuestStatus(SANDORIA,tpz.quest.id.sandoria.FLYERS_FOR_REGINE);
        if (FlyerForRegine == 1) then
            player:messageSpecial(ID.text.FLYER_REFUSED);
        end
    end
end

function onTrigger(player,npc)
    local stock =
    {
	    4096,    100,    3,	-- Fire Crystal
		4097,    300,    3,	-- Ice Crystal
		4098,    100,    3,	-- Wind Crystal
		4099,    100,    3,	-- Earth Crystal
		4100,    300,    3,	-- Lightning Crystal
		4101,    100,    3,	-- Water Crystal
		4102,    715,    3,	-- Light Crystal
		4103,    600,    3,	-- Dark Crystal
		1255,    12324,    2, -- Fire Ore
		1256,    12324,    2, -- Ice Ore
		1257,    12324,    2, -- Wind Ore
		1258,    12324,    2, -- Earth Ore
		1259,    12324,    2, -- Lightning Ore
		1260,    12324,    2, -- Water Ore
		1261,    12324,    2, -- Light Ore
		1262,    12324,    2, -- Dark Ore
		4104,    1100,    1, -- Fire Cluster
		4105,    3500,    1, -- Ice Cluster
		4106,    1100,    1, -- Wind Cluster
		4107,    1100,    1, -- Earth Cluster
		4108,    3500,    1, -- Lightning Cluster
		4109,    1100,    1, -- Water Cluster
		4111,    8280,    1, -- Dark Cluster
		4110,    7000,    1, -- Light Cluster
    }

    tpz.shop.nation(player, stock, tpz.nation.SANDORIA)
--    player:startEvent(615); -- i know a thing or 2 about these streets
end;

function onEventUpdate(player, csid, option)
end

function onEventFinish(player,csid,option)
end;