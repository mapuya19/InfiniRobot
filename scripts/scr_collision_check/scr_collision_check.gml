if (place_meeting(x, y + vertical_speed, obj_block)) {
	while (!place_meeting(x, y + sign(vertical_speed), obj_block)) {
		y += sign(vertical_speed);
	}
	
	vertical_speed = 0;
}

y += vertical_speed;