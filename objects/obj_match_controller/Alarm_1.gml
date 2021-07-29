for (var i = 0; i < global.rows; ++i) {
	for (var j = 0; j < global.columns; ++j) {
		var _x = global.x_start + i*16;
		var _y = global.y_start + j*16;
		
		if(!instance_position(_x,_y,obj_gem)){
			instance_create_layer(_x, _y,"Instances",obj_gem);
		}
	}
}
	
global.gem_state = GEM_STATES.Wait;