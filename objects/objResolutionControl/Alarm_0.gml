/// Refreshes window position

windowWidth = window_get_width() / 2;
windowHeight = window_get_height() / 2;

window_set_position(displayWidth/2 - windowWidth, displayHeight/2 - windowHeight);
setPosition = false;