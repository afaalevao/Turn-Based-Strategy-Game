draw_set_color(c_white);

draw_set_font(font_title);
draw_text(room_width/2,100,"Instructions");

draw_set_font(font_instructions);

draw_text(room_width/4 + 100,200," -Win the game by defeating the remaining enemy tanks");
draw_text(room_width/4 + 100,240," -Left click: highlight units and display moveable tiles");
draw_text(room_width/4 + 100,280," -Right click: move to highlighted tiles or attack target");
draw_text(room_width/5+10,320," -R key: End current turn");
draw_text(room_width/2, 600, " Press Enter to Return to Menu ");
