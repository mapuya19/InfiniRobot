/// @description

if (other.object_index != obj_power_up) {
	audio_stop_sound(snd_music);
	
	if (!audio_is_playing(snd_hit) && !global.gameOver) {
		audio_play_sound(snd_hit, 100, false);
	}
	
	global.gameOver = true;
	grav = 0;
	global.speedModifier = 0;
	image_speed = 0;
	
	sprite_index = spr_player_hurt;

	if (!instance_exists(obj_replay)) {
		instance_create_layer(room_width - 100, 85, "Instances", obj_replay);
	}

	with(obj_obstacle) {
		image_speed = 0;
	}
} else {
	audio_play_sound(snd_power_up, 100, false);
	global.powerUp = true;
	global.speedModifier -= 0.20;
	
	with (other) {
		instance_destroy();
	}
}