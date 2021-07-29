var _gem_l = instance_position(x-width,y,obj_gem);
var _gem_r = instance_position(x+width,y,obj_gem);
var _gem_u = instance_position(x,y-width,obj_gem);
var _gem_d = instance_position(x,y+width,obj_gem);

if(_gem_l and _gem_r){
	if(_gem_r.image_index == image_index and _gem_l.image_index == image_index){
		image_alpha = 0.2;
		_gem_l.image_alpha = 0.2;
		_gem_r.image_alpha = 0.2;
	}
}

if(_gem_u and _gem_d){
	if(_gem_u.image_index == image_index and _gem_d.image_index == image_index){
		image_alpha = 0.2;
		_gem_u.image_alpha = 0.2;
		_gem_d.image_alpha = 0.2;
	}
}

alarm[0] = 15;