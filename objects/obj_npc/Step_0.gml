if(is_wandering){
	if(speed = 0){
		image_speed = 0;
	} else {
		if(collision_point(x+lengthdir_x(10,direction),y+lengthdir_y(10,direction),obj_envirment,0,1)){
			speed = 0;
			image_speed = 0;
		} else {
			image_speed = 1;
		
			switch(direction){
				case 0:
					sprite_index = asset_get_index("spr_" + sprite_name + "_right");
					break;
				case 90:
					sprite_index = asset_get_index("spr_" + sprite_name + "_up");
					break;
				case 180:
					sprite_index = asset_get_index("spr_" + sprite_name + "_left");
					break;
				case 270:
					sprite_index = asset_get_index("spr_" + sprite_name + "_down");
					break;
			}
		}
	}

	depth = -y;
}