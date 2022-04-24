draw_set_font(font_demo);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_text(256, 90, "Start in " + string(runInFrames) + " frames");
draw_text(256, 130, "Run for " + string(runForFrames) + " frames");
draw_set_halign(fa_left);

var row1Y = 80;
draw_sprite_stretched(spr_9_btn, 0, 100, row1Y, 40, 40);
draw_sprite(spr_arrow_left, 0, 114, row1Y + 12);
draw_sprite_stretched(spr_9_btn, 0, 512 - 100 - 40, row1Y, 40, 40);
draw_sprite(spr_arrow_right, 0, 512 - 114 - 9, row1Y + 12);

var row2Y = 120;
draw_sprite_stretched(spr_9_btn, 0, 100, row2Y, 40, 40);
draw_sprite(spr_arrow_left, 0, 114, row2Y + 12);
draw_sprite_stretched(spr_9_btn, 0, 512 - 100 - 40, row2Y, 40, 40);
draw_sprite(spr_arrow_right, 0, 512 - 114 - 9, row2Y + 12);

draw_sprite_stretched(spr_9_btn, 0, 256 - 40, 170, 80, 30);
draw_set_halign(fa_center);
draw_text(256, 175, "Go!");
