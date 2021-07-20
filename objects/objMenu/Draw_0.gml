var i = 0;
repeat(buttons){
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_set_color(c_olive);
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i + 256*(1-unfold[i]);
	
	draw_set_color(c_olive);
	draw_rectangle(xx - button_w/2,yy, xx+ button_w / 2, yy+button_h, false);
	
	draw_set_color(c_ltgray);
	
	if(menu_index == i) draw_set_color(c_red);
	
	//draw_text(menu_x,menu_y + button_h * i, button[i]);
	
	draw_text(xx,yy + button_h/2,button[i]);
	i++;
}