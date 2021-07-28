layer_set_visible(layer_get_id("Blocks"),false);


switch(room){
	case rm_home_1f:
	case rm_home_2f:
	case rm_street:
		instance_activate_object(obj_player);
		if(!audio_is_playing(bgm_Swinging_Pants)) audio_play_sound(bgm_Swinging_Pants,1,1);
		break;
	case rm_matching:
		instance_deactivate_object(obj_player);
		break;
}