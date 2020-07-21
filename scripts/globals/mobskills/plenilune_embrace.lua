---------------------------------------------
-- Plenilune_Embrace
--
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/status")
require("scripts/globals/msg")
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    -- Saw no math at any online source describing mob version, only player version..
    -- Someone needs to go figure out what the retail math is.
	
	local potency = skill:getParam();

    if(potency == 0) then
    	potency = 9;
    end

	potency = potency - math.random(0, potency/4);

	skill:setMsg(MSG_SELF_HEAL);
	
	MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_ATTACK_BOOST, 25, 0, 300);
	MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_MAGIC_ATK_BOOST, 25, 0, 300);
	
	return MobHealMove(mob, mob:getMaxHP() * potency / 100);
end
