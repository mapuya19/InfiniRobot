/// @description

if (global.gameOver) {
	exit
}

scr_detect_key();
scr_ground_check();
scr_jump_check();
scr_collision_check();
scr_set_sprite();
