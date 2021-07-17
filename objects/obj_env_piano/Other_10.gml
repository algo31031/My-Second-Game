// Inherit the parent event
event_inherited();

if(!audio_is_playing(snd_haunt_piano)) audio_play_sound(snd_haunt_piano,1,0);
sprite_index = spr_ani_piano;