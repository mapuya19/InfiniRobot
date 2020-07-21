/// @description

randomize();

var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100, room_height - 135, "instances", obj_obstacle);
i.sprite_index = choose(spr_robot, spr_robot_small, spr_shot);

switch (i.sprite_index) {
	case spr_robot:
	case spr_robot_small:
		i.image_speed = 0;
		
	if (global.speedModifier > 1.5) {
		if (count == 2) {
			var j = instance_create_layer(room_width + 100, room_height - 135, "instances", obj_obstacle);
			j.sprite_index = choose(spr_robot, spr_robot_small);
			j.image_speed = 0;
		}
	}
	
	break;
		
	default:
		i.image_speed = 1;
		i.y = choose(room_height - 110, room_height - 155, room_height - 180);
}

if (global.gameOver) {
	exit;
}

alarm[0] = room_speed * random_range(1 / global.speedModifier, 3 / global.speedModifier);