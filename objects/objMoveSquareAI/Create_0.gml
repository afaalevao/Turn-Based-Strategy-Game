///  Create attack squares

//if (global.aiSelected.attacked == false) {
	
	if (instance_position(x + 32, y, objPlayerPath)) {
	
		if (!instance_position(x + 32, y, objAttackSquareAI)) {
			instance_create_depth(x+32, y, 1, objAttackSquareAI);
		}
	}

	if (instance_position(x - 32, y, objPlayerPath)) {
	
		if (!instance_position(x - 32, y, objAttackSquareAI)) {
			instance_create_depth(x-32, y, 1, objAttackSquareAI);	
		}
	}

	if (instance_position(x, y + 32, objPlayerPath)) {
	
		if (!instance_position(x, y + 32, objAttackSquareAI)) {
			instance_create_depth(x, y + 32, 1, objAttackSquareAI);	
		}
	}

	if (instance_position(x, y - 32, objPlayerPath)) {
	
		if (!instance_position(x, y - 32, objAttackSquareAI)) {
			instance_create_depth(x, y - 32, 1, objAttackSquareAI);	
		}
	}

	if (instance_position(x + 32, y + 32, objPlayerPath)) {
	
		if (!instance_position(x + 32, y + 32, objAttackSquareAI)) {
			instance_create_depth(x+ 32, y +32, 1, objAttackSquareAI);
		}
	}

	if (instance_position(x + 32, y - 32, objPlayerPath)) {
	
		if (!instance_position(x + 32, y - 32, objAttackSquareAI)) {
			instance_create_depth(x + 32, y - 32, 1, objAttackSquareAI);
		}
	}

	if (instance_position(x - 32, y + 32, objPlayerPath)) {
	
		if (!instance_position(x - 32, y + 32, objAttackSquareAI)) {
			instance_create_depth(x - 32, y + 32, 1, objAttackSquareAI);
		}
	}

	if (instance_position(x - 32, y - 32, objPlayerPath)) {
	
		if (!instance_position(x - 32, y - 32, objAttackSquareAI)) {
			instance_create_depth(x - 32, y - 32, 1, objAttackSquareAI);
		}
	}
//}

