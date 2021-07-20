mp_grid_clear_rectangle(global.mapGrid,0,0,640,360); // clears grid

// doesn't allow player to move to an occupied space
with (objPlayerPath) {
	if (self.id != global.selected.id) {
		mp_grid_add_rectangle(global.mapGrid, x, y, x, y);
	}	
}

with (objEnemyParent) {
	mp_grid_add_rectangle(global.mapGrid, x, y, x, y);
}

for (i = 0; i < 18; i += 1;) {
	
	var i_x;
	i_x = 64 + 32 * i;
	
	
	if (mp_grid_path(global.mapGrid, global.navigate, global.selected.curNode_x, global.selected.curNode_y, i_x, row, 0)) {
		
		if (path_get_length(global.navigate) <= global.selected.pixelDistance) {
			
			instance_create_depth(i_x, row, 1, objMoveSquare);
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