if (instance_number(objPlayerPath) < 1) {global.state = states.failState;}

if (global.aiSelected == noone) {
	
	if (global.aiActivated == false) {
		aiActive = instance_number(objEnemyParent) - global.aiID; //changed objPlayerPath
		global.aiSelected = instance_find(objEnemyParent, aiActive); //changed objPlayerPath
		
		scrPlaceMoveSquaresAI();
		global.aiActivated = true;
	}
}

with (global.aiSelected) {
	
	if (global.aiActivated == true) {
		nearestTarget = instance_nearest(x, y, objPlayerPath);
		nearestMove = instance_nearest(nearestTarget.x, nearestTarget.y, objMoveSquareAI);
		nearestAttack = instance_nearest(x, y, objAttackSquareAI);
		
		if (acquiredTargets == false) {
			with (objPlayerPath) {
				if (distance_to_object(global.aiSelected) <= 130) {instance_create_depth(x, y, 1, objAttackSquareAI);}
			}
			nearestAttack = instance_nearest(x, y, objAttackSquareAI);
			acquiredTargets = true;
		}
		if (instance_exists(objAttackSquareAI)) {
			global.enemy = instance_position(nearestAttack.x, nearestAttack.y, objPlayerPath); //changed
			sprite_index = attackAnim;
			moved = true;
			scrAttackAI(); // #################################### global enemy not being updated
		}else if (!instance_exists(objAttackSquareAI)) {
			attacked = true;
			if (moved == false) {
				sprite_index = runAnim;
				scrNavigation(x, y, round(nearestMove.x/32) * 32, round(nearestMove.y/32) * 32, pace); // now works
			}
		}
		if (path_index == -1) {
			if (moved == false) {sprite_index = idleAnim;}
			moved = true;
			curNode_x = round(x/32) * 32;
			curNode_y = round(y/32) * 32;
			with (objMoveSquareAI) {instance_destroy();}
			if (attacked == true && moved == true) {
				global.enemy = noone;
				global.aiID += 1;
				global.aiSelected = noone;
				global.aiActivated = false;
			}
		}
	}
}

if (global.aiID > instance_number(objEnemyParent)) {
	global.state = states.playerTurn;
	global.aiSelected = noone;
	global.aiID = 1;
	with (objEnemyParent) {
		attacked = false;
		moved = false;
		acquiredTargets = false;
	}
}
