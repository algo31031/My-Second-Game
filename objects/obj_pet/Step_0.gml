var _lkey = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _rkey = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _ukey = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _sneak = keyboard_check(vk_shift);


hspd = (_rkey - _lkey)*spd;
vspd = (_dkey - _ukey)*spd;

if(_sneak){
	hspd /= 2;
	vspd /= 2;
}

if(hspd != 0 or vspd != 0){
	if(hspd > 0){ 
		dir = 0;
		sprite_index = sprites.run;
	} else if(hspd < 0){
		dir = 1;
		sprite_index = sprites.run;
	}
	
	if(!collision_point(x+hspd,y,obj_envirment,false,true)) x += hspd;
	if(!collision_point(x,y+vspd,obj_envirment,false,true))y += vspd;
	
} else {
	if(sprite_index != sprites.sit and sprite_index != sprites.idle and sprite_index != sprites.idle_blink)
		sprite_index = choose(sprites.sit, sprites.idle, sprites.idle_blink);
}

if(_sneak) sprite_index = sprites.sneak;

image_xscale = dir == 0 ? 1 : -1;

depth = -y;