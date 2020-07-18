---------------------------------------------
--  Plenilune Embrace
--
--  Description: Restores HP for the target party member. & adds att + def buff 
--  
--
--
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");
---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
	return 0;
end;

function OnMobWeaponSkill(target, mob, skill)

	local potency = skill:getParam();

    if(potency == 0) then
    	potency = 9;
    end

	potency = potency - math.random(0, potency/4);

	skill:setMsg(MSG_SELF_HEAL);
	
	MobPhysicalStatusEffectMove(mob, target, skill, tpz.effect.ATTACK_BOOST, 25, 0, 300);
	MobPhysicalStatusEffectMove(mob, target, skill, tpz.effect.MAGIC_ATK_BOOST, 25, 0, 300);
	
	return MobHealMove(mob, mob:getMaxHP() * potency / 100);
end;
