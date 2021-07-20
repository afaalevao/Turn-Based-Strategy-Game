/// Displays damage, then destroys itself

alpha += 0.01;
yPos += 1;

draw_text_color(x - 8, y - yPos, global.damageDealt, 0, 0, 0 , 0, 1 - alpha);

if (alpha == 1) {instance_destroy();}
