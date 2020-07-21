/// @description

global.speedModifier = 1;

// Obstacles
alarm[0] = room_speed * 3;


// Clouds
alarm[1] = room_speed * 10;

// Power Ups
alarm[2] = room_speed * 15;

audio_play_sound(snd_music, 100, false);