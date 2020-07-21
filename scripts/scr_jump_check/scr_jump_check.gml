if (jumping) {
	if (vertical_speed < 0) {
		jumping = true;
	} else {
		jumping = false;
		falling = true;
	}
}