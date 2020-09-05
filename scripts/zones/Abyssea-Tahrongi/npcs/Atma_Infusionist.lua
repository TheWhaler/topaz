-----------------------------------
-- Zone: Abyssea - La-Theine
--  NPC: Atma Infusionist
-----------------------------------
local atma = require("scripts/globals/atma")


function onTrade(player,npc,trade)
	if trade:getGil() == 101 then
		player:delStatusEffect(tpz.effect.ATMA)
		player:delStatusEffect(tpz.effect.ATMA)
		player:delStatusEffect(tpz.effect.ATMA)
	else
		local count = player:getLocalVar("[AtmaCount]")		
		local atma1 = player:getLocalVar("[Atma0]")
		local atma2 = player:getLocalVar("[Atma1]")
		local atma3 = player:getLocalVar("[Atma2]")
		
		local keyitem = tpz.atma.ATMA_OFFSET + trade:getGil()
		if count < 3 then
			if atma1 ~= keyitem and atma2 ~= keyitem and atm3 ~= keyitem then
				if player:hasKeyItem(keyitem) then
					player:addStatusEffect(tpz.effect.ATMA, trade:getGil(), 0, 0)
					local atmaEffect = target:getStatusEffect(tpz.effect.ATMA)
					atmaEffect:setFlag(tpz.effectFlag.ON_ZONE)
					atmaEffect:setFlag(tpz.effectFlag.INFLUENCE)
				else
					player:PrintToPlayer("You do not have this Key Item yet!", tpz.msg.channel.NS_SAY)
				end
			else
				player:PrintToPlayer("You already have this atma infused! Trade me 101 gil to reset atmas!", tpz.msg.channel.NS_SAY)
			end
		else
			player:PrintToPlayer("You already have 3 atma's Infused! Trade me 101 gil to reset atmas!", tpz.msg.channel.NS_SAY)
		end
	end
end

function onTrigger(player,npc)
	local count = player:getLocalVar("[infusionLoopCount]")
	if count == nil then
		count = 0
	end
	
	if count == 0 then
		player:PrintToPlayer("To Infuse atma Please trade the appropriate gil from the Key Item you have below:", tpz.msg.channel.NS_SAY)
	end
	--local length = tablelength(tpz.atma.atmaMods)
	
	local atma = tpz.atma.ATMA_OFFSET
	for i = 1, 10 do
		player:PrintToPlayer(string.format("%s : %2s gil", tpz.atma.atmaList[tpz.atma.ATMA_OFFSET + i + (count*10)], i + (count*10)) , tpz.msg.channel.NS_SAY)
	end
	
	if count < 9 then
		count = count + 1
	else
		count = 0
	end
	player:setLocalVar("[infusionLoopCount]", count)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
