-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Dhima Polevhia
-- Standard Info NPC
-----------------------------------
require("scripts/globals/quests")
require("scripts/globals/npc_util")


local craftingItems = {
    [1] = -- puppetry tobe
    {
        materials = {786, 1636, 826, 2289, 2187},
        currency = 2187,
        currencyAmt = 1,
        result = 14523
    },
    [2] = -- puppetry dastanas
    {
        materials = {754, 821, 2152, 2289, 2186},
        currency = 2186,
        currencyAmt = 1,
        result = 14930
    },
    [3] = -- puppetry babouches
    {
        materials = {754, 786, 2152, 2289, 2186},
        currency = 2186,
        currencyAmt = 2,
        result = 15686
    }  
}



function onTrade(player, npc, trade)
	local remainingPUPAF = player:getCharVar("[PUPAF]Remaining")
	local recievedPUPAF = player:getCharVar("[PUPAF]Recieved")
		player:PrintToPlayer(remainingPUPAF)
    if remainingPUPAF >= 1 then
       
		if craftingItems[1] then
			if npcUtil.tradeHasExactly(trade, craftingItems[1].materials) then
			   remainingPUPAF = remainingPUPAF - 1
			   recievedPUPAF = recievedPUPAF + 1
			   npcUtil.giveItem(player, craftingItems[1].result)
			   player:setCharVar("[PUPAF]Remaining", remainingPUPAF)
			   player:setCharVar("[PUPAF]Recieved", recievedPUPAF)
			   player:tradeComplete()
			end
		end
		
		if craftingItems[2] then
			if npcUtil.tradeHasExactly(trade, craftingItems[2].materials) then
			   remainingPUPAF = remainingPUPAF - 1
			   recievedPUPAF = recievedPUPAF + 1
			   npcUtil.giveItem(player, craftingItems[2].result)
			   player:setCharVar("[PUPAF]Remaining", remainingPUPAF)
			   player:setCharVar("[PUPAF]Recieved", recievedPUPAF)
			   player:tradeComplete()
			end
		end
		
		if craftingItems[3] then
			player:PrintToPlayer("Im about to work")
			if npcUtil.tradeHasExactly(trade, craftingItems[3].materials) then
			   remainingPUPAF = remainingPUPAF - 1
			   recievedPUPAF = recievedPUPAF + 1
			   npcUtil.giveItem(player, craftingItems[3].result)
			   player:setCharVar("[PUPAF]Remaining", remainingPUPAF)			   
			   player:setCharVar("[PUPAF]Recieved", recievedPUPAF)			   
			   player:tradeComplete()
		    end
		end
   end
end

function onTrigger(player, npc)
	local puppetmasterblues = player:getQuestStatus(AHT_URHGAN, tpz.quest.id.ahtUrhgan.PUPPETMASTER_BLUES)
	local remainingPUPAF = 3 - player:getCharVar("[PUPAF]Remaining") -- Bitmask of AF the player has NOT crafted
	local recievedPUPAF = player:getCharVar("[PUPAF]Recieved") -- Bitmask of AF the player has NOT crafted
	player:PrintToPlayer(remainingPUPAF)
	if puppetmasterblues >= QUEST_ACCEPTED and remainingPUPAF > 0 and recievedPUPAF < 3 then
		if recievedPUPAF == 0 then
			player:setCharVar("[PUPAF]Remaining", 3)
		end
		player:startEvent(791)
	elseif recievedPUPAF == 3 then
		player:startEvent(793)
	end
end

function onEventUpdate(player, csid, option)
	
end

function onEventFinish(player, csid, option)

end
