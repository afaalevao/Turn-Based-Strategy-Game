/// Options menu

if (keyboard_check_pressed(vk_add) && displayWidth > 640 * global.windowScale) {
	global.windowScale += 0.5;
	
	window_set_size(640 * global.windowScale, 360 * global.windowScale);
	
	if (displayWidth <= 640 * global.windowScale) {
		window_set_position(0,0)
	}else if (displayWidth > 640 * global.windowScale) {
		if (setPosition == false) {
			alarm[0] = 1;
			setPosition = true;
		}
	}
}else if (keyboard_check_pressed(vk_subtract) && global.windowScale >= 1) {
	global.windowScale -= 0.5;
	window_set_size(640 * global.windowScale, 360 * global.windowScale);
	
	if (displayWidth <= 640 * global.windowScale) {window_set_position(0,0);}
	else if (displayWidth > 640 * global.windowScale) {
		if (setPosition == false) {
			alarm[0] = 1;
			setPosition = true;
		}
	}
}

