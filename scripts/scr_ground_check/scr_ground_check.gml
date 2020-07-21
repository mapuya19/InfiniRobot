if (is_duck) {
	ducking = true;
	jumping = false;
	falling = true;
}

if (place_meeting(x, y + 1, obj_block)) {
	vertical_speed = 0;
	jumping = false;
	falling  = false;
	
	if (!is_duck) {
		ducking = false;
	}
		
		
	if ((is_jump || is_jump_alt) && !is_duck) {
		audio_play_sound(snd_jump, 100, false);
		jumping = true;
		vertical_speed = -jump_speed;
	}
} else {
	if (is_duck) {
		vertical_speed += grav * 4;
		if (place_meeting(x, y + 2, obj_block)) {
				vertical_speed = 0;
		}
	} else {
		if (vertical_speed < terminal_velocity)
			vertical_speed += grav;
			
		if (sign(vertical_speed) == 1)
			falling = true;
	}
}

