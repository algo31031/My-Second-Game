image_speed = 0;
image_index = irandom(4);
image_xscale = 0.75;
image_yscale = 0.75;

width = 16;
row = (y-global.y_start)/width;
column = (x-global.x_start)/width;

is_controlling = false;
drag_start_x = x;
drag_start_y = y;
drag_end_x = x;
drag_end_y = y;
dest_x = x;
dest_y = y;