mp_grid_clear_rectangle(global.mapGrid,0,0,640,360); // clears grid

// doesn't allow player to move to an occupied space
with (objEnemyParent) {
	if (self.id != global.aiSelected.id) {
		mp_grid_add_rectangle(global.mapGrid, x, y, x, y);
	}	
}

with (objPlayerPath) {
	
	mp_grid_add_rectangle(global.mapGrid, x, y, x, y);
}

for (i = 0; i < 18; i += 1;) {
	
	var i_x;
	i_x = 64 + 32 * i;
	
	
	if (mp_grid_path(global.mapGrid, global.navigate, global.aiSelected.x, global.aiSelected.y, i_x, row, 0)) { // changes from curNode_x and curNode_y to just x and y after aiSelected
		
		if (path_get_length(global.navigate) <= global.aiSelected.pixelDistance) {
			
			instance_create_depth(i_x, row, 1, objMoveSquareAI);
			
		} else {
			mp_grid_add_rectangle(global.mapGrid, i_x, row, i_x, row);
		}
	} 		
	
	else {mp_grid_add_rectangle(global.mapGrid, i_x, row, i_x, row); }
	
	if (i_x >= 576) {
		i = -1;
		row += 32;
	}
	
	if (row > 600) {
		
		row = 128; // top row of the grid
		i = 20;
		return false;
	}
}