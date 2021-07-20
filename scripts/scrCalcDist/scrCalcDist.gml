var dist1, dist2, dist3, dist4, dist5, dist6, dist7, dist8, nearestAttackSquare;

nearestAttackSquare = instance_nearest(mouse_x, mouse_y, objAttackSquare);

if (instance_position(nearestAttackSquare.x - 32, nearestAttackSquare.y, objMoveSquare)) {dist1 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist1 = 10000;}
if (instance_position(nearestAttackSquare.x + 32, nearestAttackSquare.y, objMoveSquare)) {dist2 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist2 = 10000;}
if (instance_position(nearestAttackSquare.x, nearestAttackSquare.y - 32, objMoveSquare)) {dist3 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist3 = 10000;}
if (instance_position(nearestAttackSquare.x, nearestAttackSquare.y + 32, objMoveSquare)) {dist4 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist4 = 10000;}
if (instance_position(nearestAttackSquare.x - 32, nearestAttackSquare.y -32, objMoveSquare)) {dist5 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist5 = 10000;}
if (instance_position(nearestAttackSquare.x - 32, nearestAttackSquare.y + 32, objMoveSquare)) {dist6 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist6 = 10000;}
if (instance_position(nearestAttackSquare.x + 32, nearestAttackSquare.y - 32, objMoveSquare)) {dist7 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist7 = 10000;}
if (instance_position(nearestAttackSquare.x + 32, nearestAttackSquare.y + 32, objMoveSquare)) {dist8 = point_distance(global.selected.x, global.selected.y, nearestAttackSquare.x - 32, nearestAttackSquare.y);}
else {dist8 = 10000;}

var dest = min(dist1, dist2, dist3, dist4, dist5, dist6, dist7, dist8);

if (dest = dist1) {
	global.attackTravel_x = nearestAttackSquare.x-32;
	global.attackTravel_y = nearestAttackSquare.y;
} else if (dest = dist2) {
	global.attackTravel_x = nearestAttackSquare.x + 32;
	global.attackTravel_y = nearestAttackSquare.y;
} else if (dest = dist3) {
	global.attackTravel_x = nearestAttackSquare.x;
	global.attackTravel_y = nearestAttackSquare.y - 32;
} else if (dest = dist4) {
	global.attackTravel_x = nearestAttackSquare.x;
	global.attackTravel_y = nearestAttackSquare.y + 32;
} else if (dest = dist5) {
	global.attackTravel_x = nearestAttackSquare.x - 32;
	global.attackTravel_y = nearestAttackSquare.y - 32;
} else if (dest = dist6) {
	global.attackTravel_x = nearestAttackSquare.x - 32;
	global.attackTravel_y = nearestAttackSquare.y + 32;
} else if (dest = dist7) {
	global.attackTravel_x = nearestAttackSquare.x + 32;
	global.attackTravel_y = nearestAttackSquare.y - 32;
} else if (dest = dist8) {
	global.attackTravel_x = nearestAttackSquare.x + 32;
	global.attackTravel_y = nearestAttackSquare.y + 32;
}
