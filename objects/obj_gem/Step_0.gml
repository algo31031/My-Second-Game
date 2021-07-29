dest_x = global.x_start + column*width;
dest_y = global.y_start + row*width;

if(point_distance(x,y,dest_x,y) > 2){
	x = lerp(x,dest_x,0.2);
} else {
	x = dest_x;
}

if(point_distance(x,y,x,dest_y) > 2){
	y = lerp(y,dest_y,0.2);
} else {
	y = dest_y;
}

if(image_alpha == 0.2 and global.gem_state == GEM_STATES.Wait){
	global.gem_state = GEM_STATES.Destroy;
}