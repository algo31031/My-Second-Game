for (var i = 0; i < global.rows; ++i) {
    for (var j = 0; j < global.columns; ++j) {
		var _x = global.x_start + i*16;
		var _y = global.y_start + j*16;
	    instance_create_layer(_x, _y,"Backgrounds",obj_gem_bg);
	    instance_create_layer(_x, _y,"Instances",obj_gem);
	}
}