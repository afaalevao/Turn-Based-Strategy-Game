if (sprite_index = attackAnim) {
	
	if (image_index >= image_number - 1) {
		instance_create_depth(x + 5, y, 1, myProjectile);
		audio_play_sound(Explosion_2, 1, false)
		
		sprite_index = idleAnim;
		image_index = 0;
	}
}

with (myProjectile) {
	
	image_angle = direction + 90;
	
	move_towards_point(global.enemy.x, global.enemy.y, 5);
	
	if (instance_place(x, y, global.enemy)) {
		global.damageDealt = irandom(global.selected.attack);
		global.enemy.defense -= global.damageDealt;
		instance_create_depth(global.enemy.x, global.enemy.y, 1, objDamageDealt);
		audio_play_sound(Explosion_4, 1, false)
		
		if (global.enemy.defense <= 0) {
			global.enemy.image_index = 0;
			global.enemy.sprite_index = global.enemy.deathAnim;
			audio_play_sound(Explosion_9,2,false)
		}
		global.attacking = false;
		global.selected.image_xscale = 1;
		global.enemy = noone;
		global.attacked = false; // added
		instance_destroy(); 
	}
}