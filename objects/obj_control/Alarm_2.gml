/// @description

instance_create_layer(room_width + 100, room_height - 100, "Instances", obj_power_up);

if(global.gameOver || global.powerUp) exit;

alarm[2] = room_speed * 7;