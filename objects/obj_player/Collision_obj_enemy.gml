/// @description enemy_collision

if(slidedelay > 0)
{
	instance_destroy(other)
}

else if(!detained and !immunity)
{
	image_alpha /= 2
	detained = true
	alarm[0] = room_speed * 2
}