if (sprite_index == attackAnim) {
	
	if (image_index >= image_number - 1) {
		instance_create_depth(x +5, y-10, 1, myProjectile);
		audio_play_sound(Explosion_2, 1, false)
		sprite_index = idleAnim;
		image_index = 0;
	}	
}

with (myProjectile) {
	
	image_angle = direction + 90;
	if(instance_exists(global.enemy)){
	move_towards_point(global.enemy.x, global.enemy.y - 10, 5);
	}
	if (instance_place(x, y, global.enemy)) {
		global.damageDealt = irandom(global.aiSelected.attack);
		global.enemy.defense -= global.damageDealt;
		instance_create_depth(global.enemy.x, global.enemy.y, 1, objDamageDealt);
		audio_play_sound(Explosion_4, 1, false)
		
		if (global.enemy.defense <= 0) {
			global.enemy.image_index = 0;
			global.enemy.sprite_index = global.enemy.deathAnim;
			audio_play_sound(Explosion_9,2,false)
		}
		
	global.aiSelected.image_xscale = -1;
	
	with (objAttackSquareAI) {instance_destroy();}
	global.enemy = noone;
	attacked = true;
	global.aiSelected.sprite_index = global.aiSelected.idleAnim;
	
	if place_meeting(x,y,objStandardTank){
		with(objMissile){
			instance_destroy()
		}
	}
	
	if (instance_number(objPlayerPath) < 1) {global.state = states.failState;}
	
	instance_destroy();
	}
}