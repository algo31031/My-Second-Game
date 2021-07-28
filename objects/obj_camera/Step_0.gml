if(instance_exists(target)){
	global.cam_x = target.x - global.cam_width/2;
	global.cam_y = target.y - global.cam_height/2;
}

// shake camera
global.cam_x += random_range(-global.cam_shake, global.cam_shake);
global.cam_y += random_range(-global.cam_shake, global.cam_shake);

if(global.cam_shake > 0){
	global.cam_shake -= 0.1;
	if(global.cam_shake < 0) global.cam_shake = 0;
}

global.cam_x = clamp(global.cam_x, 0, room_width - global.cam_width);
global.cam_y = clamp(global.cam_y, 0, room_height - global.cam_height);

camera_set_view_pos(view_camera[0], global.cam_x, global.cam_y);