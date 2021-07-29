if(is_controlling){
	drag_end_x = mouse_x;
	drag_end_y = mouse_y;
	
	var _dir = point_direction(drag_start_x,drag_start_y,drag_end_x,drag_end_y);
	
	if((_dir > 315 or _dir <= 45) and column < (global.columns-1)){
		other_gem = instance_position(x+width,y,obj_gem);
		if(other_gem){
			previous_column = column;
			previous_row = row;
			column++;
			with(other_gem){
				previous_row = row;
				previous_column = column;
				column--;
			} 
		}
	} else if((_dir > 45 and _dir <= 135) and row > 0){
		other_gem = instance_position(x,y-width,obj_gem);
		if(other_gem){
			previous_row = row;
			previous_column = column;
			row--;
			with(other_gem){
				previous_row = row;
				previous_column = column;
				row++;
			}
		}
	} else if((_dir > 135 and _dir <= 225) and column > 0){
		other_gem = instance_position(x-width,y,obj_gem);
		if(other_gem){
			previous_row = row;
			previous_column = column;
			column--;
			with(other_gem){
				previous_row = row;
				previous_column = column;
				column++;
			}
		}
	} else if((_dir > 225 and _dir <= 315) and row < (global.rows-1)){
		other_gem = instance_position(x,y+width,obj_gem);
		if(other_gem){
			previous_row = row;
			previous_column = column;
			row++;
			with(other_gem){
				previous_row = row;
				previous_column = column;
				row--;
			}
		}
	}
	
	is_controlling = false;
	alarm[1] = 20;
	//other_gem = noone;
}
