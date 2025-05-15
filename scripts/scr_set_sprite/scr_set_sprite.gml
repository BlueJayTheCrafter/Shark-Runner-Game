if(jumping || falling)
	sprite_index = spr_shark_jump;

if(ducking)
{
	sprite_index = spr_shark_duck;
	image_speed = 2;
}

if(!jumping && !falling && !ducking)
{
	sprite_index = spr_shark;
	image_speed = 2;
}