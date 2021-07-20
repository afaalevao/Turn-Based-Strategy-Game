/// State control
//while(global.Players > 0 || global.enemy > 0){
switch(global.state) {
	
	case states.playerTurn: scrStatePlayerTurn(); break;
	case states.computerTurn: scrStateComputerTurn(); break;
}

if (keyboard_check_pressed(ord("R"))) {
	
	with (objPlayerPath) {
		if(instance_exists(objStandardTank)){
		pixelDistance = ogPixelDist;
		attacked = false;
		}
	}
	
	if (instance_number(objEnemyParent) > 0) {global.state = states.computerTurn;}
}
//}