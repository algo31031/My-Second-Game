// movement
var _lkey = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _rkey = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _ukey = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _dkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _walk = keyboard_check(vk_shift);

hspd = (_rkey - _lkey)*spd;
vspd = (_dkey - _ukey)*spd;

if(_walk){
	hspd *= 0.5;
	vspd *= 0.5;
}

if(hspd != 0 or vspd != 0){
	if(!audio_is_playing(snd_footstep05)) audio_play_sound(snd_footstep05,1,0);
	else if(!audio_is_playing(snd_footstep06)) audio_play_sound(snd_footstep06,1,0);
	
	if(hspd > 0) dir = dirs.right;
	else if(hspd < 0) dir = dirs.left;
	else if (vspd > 0) dir = dirs.down;
	else if(vspd < 0) dir = dirs.up;
	
	// room transaction
	var _tp = instance_place(x+hspd,y+vspd,obj_teleport);
	if(_tp){
		dest_dir = _tp.dest_dir;
		with(obj_room_control){
			dest_x = _tp.dest_x;
			dest_y = _tp.dest_y;
			dest_room = _tp.dest_room;
			dest_dir = _tp.dest_dir;
			if(!room_transation) room_transation = 0.5*room_speed;
		}
	}

	if(!collision_point(x+hspd,y,obj_envirment,false,true) and !collision_point(x+hspd,y,obj_npc,false,true)) x += hspd;
	if(!collision_point(x,y+vspd,obj_envirment,false,true) and !collision_point(x,y+vspd,obj_npc,false,true)) y += vspd;
		
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}

switch (dir){
	case dirs.right: sprite_index = asset_get_index("spr_" + sprite_name + "_right"); break;
	case dirs.up: sprite_index = asset_get_index("spr_" + sprite_name + "_up"); break;
	case dirs.left: sprite_index = asset_get_index("spr_" + sprite_name + "_left"); break;
	case dirs.down: sprite_index = asset_get_index("spr_" + sprite_name + "_down"); break;
}

// z-index
depth = -y;

// haunting objects
if(global.haunting){
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-32, y-24, x+32, y+24, obj_haunting, 0, 1, _list, 0);
	if(_num > 0){
	    for (var i = 0; i < _num; ++i;){
	        with(_list[| i]){
				if(is_haunting or no_haunting) continue;
				
				is_haunting = true;
				event_user(0);
			}
	    }
	}
	
	ds_list_destroy(_list);
}

// debug
if(keyboard_check(vk_f1)){
	show_message(room_get_name(room))
	show_message(x)
	show_message(y)
	show_message(room_get_name(dest_room))
	show_message(room_get_name(dest_x))
	show_message(room_get_name(dest_y))
}

move_wrap(1,1,16);