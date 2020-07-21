if (jumping || falling)
	sprite_index = spr_player_jump;
	
if (ducking) {
	sprite_index = spr_player_duck;
	image_speed = 2;
}

if (!jumping && !falling && !ducking) {
	sprite_index = spr_player_run;
	image_speed = 2; 
}