if(instance_number(objEnemyStandard) <= 0 && room == roomBattle){
	show_message("You Won! Advancing to next level")
	room_goto(roomBattle2)
}
else if(instance_number(objEnemyStandard) <= 0 && room == roomBattle2){
	show_message("You Won! Advancing to next level")
	room_goto(roomBattle3)
}
else if(instance_number(objEnemyStandard) <= 0 && room == roomBattle3){
	show_message("You Won! Returning to main menu")
	room_goto(roomMenu)
}