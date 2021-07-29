enum GEM_STATES  {
	Fill,
	Wait,
	Destroy,
	Refill
};

global.columns = 10;
global.rows = 10;
global.x_start = 56;
global.y_start = 24;
global.gem_bg = choose(spr_gem_bg0,spr_gem_bg1,spr_gem_bg2);
global.gem_state = GEM_STATES.Fill;

//alarm[0] = 20;