if (instance_position(mouse_x, mouse_y, objPlayerPath) && mouse_check_button_pressed(mb_left)) {
	
	if (global.moving == false && global.attacking == false) {
		
		var player;
		player = instance_nearest(mouse_x, mouse_y, objPlayerPath);
	
		global.selected = player;
	
		if (instance_exists(objMoveSquare)) {
			with (objMoveSquare) { instance_destroy();}
			with(objAttackSquare) { instance_destroy();}
		}
	
		if (player.attacked == false) {
		
			with (objEnemyParent) {
				if (distance_to_object(global.selected) <= 130)	{
					instance_create_depth(x, y, 1, objAttackSquare);  // create attack square if within 5 squares
				}
			}
		}
		
		scrPlaceMoveSquares();
	}
	
} else if (!instance_position(mouse_x, mouse_y, objPlayerPath) && mouse_check_button_pressed(mb_left)) {
	
	if (global.moving == false && global.attacking == false) {
		
		global.selected = noone;
		with (objMoveSquare) {instance_destroy();}
		with (objAttackSquare) {instance_destroy();}
	}
}

if (global.selected != noone && mouse_check_button_pressed(mb_right)) {
	
	if (instance_position(mouse_x, mouse_y, objMoveSquare)) {
		global.moving = true;
	
		with (objMoveSquare) {
			instance_destroy();
		}
		with(objAttackSquare) { instance_destroy();}
	
		with (global.selected) {
			scrNavigation(x, y, round(mouse_x/32) * 32, round(mouse_y/32) *32, pace);
			pixelDistance -= path_get_length(global.navigate);	
		}	
	}else if (instance_position(mouse_x, mouse_y, objAttackSquare)) {
		
		global.enemy = instance_position(mouse_x, mouse_y, objEnemyParent);
		global.attacking = true;
		with (global.selected) {
			attacked = true;
			//if 	(distance_to_object(objAttackSquare) > 13) {
			//	global.moving = true;
			//	scrCalcDist();
			//	scrNavigation(x, y, round(global.attackTravel_x/32) * 32, round(global.attackTravel_y/32) * 32, pace);
			//	pixelDistance -= path_get_length(global.navigate);
			//} else 
			if (global.enemy.x < x - 5) {image_xscale = -1;}  // can attack if within 5 spaces of enemy
			sprite_index = attackAnim;
			image_index = 0;
		}
		
		with(objMoveSquare) { instance_destroy();}
		with(objAttackSquare) { instance_destroy();}
	}
	
}
	
if (global.moving == true) {
	
	with(global.selected) {
		
		if (path_index == -1) {
			sprite_index = idleAnim;
			curNode_x = x;
			curNode_y = y;
			global.moving = false;
		}
	}
}

if (global.attacking == true) {
	
	if (global.moving == false) {
		
		with (global.selected) { 
			scrAttack();
			attacked = true;
		}
	}
}