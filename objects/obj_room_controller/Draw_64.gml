if(room_transation){
	if(room != dest_room){
		draw_set_alpha(1-room_transation/30.0);
		draw_rectangle_color(0,0,global.display_width,global.display_height,c_black,c_black,c_black,c_black,0);
		room_transation--;
		draw_set_alpha(1);
		
		if(room_transation == 0) room_goto(dest_room);
	}
}