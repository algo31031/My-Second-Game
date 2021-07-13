target = obj_player;

view_enabled[0] = true;
view_visible[0] = true;

global.cam_x = 0;
global.cam_y = 0;

window_set_size(global.display_width, global.display_height);
camera_set_view_size(view_camera[0], global.cam_width, global.cam_height);
surface_resize(application_surface, global.display_width, global.display_height);

alarm[0] = 1;