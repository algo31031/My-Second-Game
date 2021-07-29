switch(global.gem_state){
	case GEM_STATES.Fill:
		break;
	case GEM_STATES.Wait:
		break;
	case GEM_STATES.Destroy:
		alarm[0] = 20;
		global.gem_state = GEM_STATES.Refill;
		break;
	case GEM_STATES.Refill:
		break;
}