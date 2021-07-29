with(obj_gem){
	if(image_alpha == 0.2){
		with(obj_gem){
			if(column == other.column and row < other.row){
				row++;
				previous_row = row;
			}
		}
		
		instance_destroy();
	}
}

global.gem_state = GEM_STATES.Refill;

alarm[1] = 30;