/// @description
draw_set_color(make_color_rgb(0, 0, 0));
draw_set_font(fnt_main);
draw_text(10, 50, "Speed: " + string(global.speedModifier));
draw_text(10, 10, "Score: " + string(score) );

if (global.gameOver) {
	draw_sprite(spr_game_over, 0, room_width - 670, room_height - 400);
}