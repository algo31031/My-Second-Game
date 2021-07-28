if(is_controlling){
	is_controlling = false;
	drag_end_x = mouse_x;
	drag_end_y = mouse_y;
	
	var _dir = point_direction(drag_start_x,drag_start_y,drag_end_x,drag_end_y);
	
	if((_dir > 315 or _dir <= 45) and column < (global.columns-1)){
		var _tar = instance_position(x+width,y,obj_gem);
		dest_x = x+width;
		with(_tar) dest_x = x-width;
	}
	
	if((_dir > 45 and _dir <= 135) and row > 0){
		var _tar = instance_position(x,y-width,obj_gem);
		dest_y = y-width;
		with(_tar) dest_y = y+width;
	}
	
	if((_dir > 135 and _dir <= 225) and column > 0){
		var _tar = instance_position(x-width,y,obj_gem);
		dest_x = x-width;
		with(_tar) dest_x = x+width;
	}
	
	if((_dir > 225 and _dir <= 315) and row < (global.rows-1)){
		var _tar = instance_position(x,y+width,obj_gem);
		dest_y = y+width;
		with(_tar) dest_y = y-width;
	}	
}