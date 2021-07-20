///scrNavigation(startX, startY, endX, endY, pace)

var startX = argument0;
var startY = argument1;
var endX = argument2;
var endY = argument3;
var pace =  argument4;

if !(mp_grid_path(global.mapGrid, global.navigate, startX, startY, endX, endY, 0)) {
	show_message("Unable to navigate");
	return false;
} else {
	mp_grid_path(global.mapGrid, global.navigate, startX, startY, endX, endY, 0);
	path_start(global.navigate, pace, 0, false);
	return true;
	}