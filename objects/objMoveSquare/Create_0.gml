///  Create attack squares

if (global.selected.attacked == false) {
	
	if (instance_position(x + 32, y, objEnemyParent)) {
	
		if (!instance_position(x + 32, y, objAttackSquare)) {
			instance_create_depth(x+32, y, 1, objAttackSquare);
		}
	}
 
	if (instance_position(x - 32, y, objEnemyParent)) {
	
		if (!instance_position(x - 32, y, objAttackSquare)) {
			instance_create_depth(x-32, y, 1, objAttackSquare);	
		}
	}

	if (instance_position(x, y + 32, objEnemyParent)) {
	
		if (!instance_position(x, y + 32, objAttackSquare)) {
			instance_create_depth(x, y + 32, 1, objAttackSquare);	
		}
	}

	if (instance_position(x, y - 32, objEnemyParent)) {
	
		if (!instance_position(x, y - 32, objAttackSquare)) {
			instance_create_depth(x, y - 32, 1, objAttackSquare);	
		}
	}

	if (instance_position(x + 32, y + 32, objEnemyParent)) {
	
		if (!instance_position(x + 32, y + 32, objAttackSquare)) {
			instance_create_depth(x+ 32, y +32, 1, objAttackSquare);
		}
	}

	if (instance_position(x + 32, y - 32, objEnemyParent)) {
	
		if (!instance_position(x + 32, y - 32, objAttackSquare)) {
			instance_create_depth(x + 32, y - 32, 1, objAttackSquare);
		}
	}

	if (instance_position(x - 32, y + 32, objEnemyParent)) {
	
		if (!instance_position(x - 32, y + 32, objAttackSquare)) {
			instance_create_depth(x - 32, y + 32, 1, objAttackSquare);
		}
	}

	if (instance_position(x - 32, y - 32, objEnemyParent)) {
	
		if (!instance_position(x - 32, y - 32, objAttackSquare)) {
			instance_create_depth(x - 32, y - 32, 1, objAttackSquare);
		}
	}
}

