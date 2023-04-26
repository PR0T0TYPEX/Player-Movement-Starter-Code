/// @description enemy collision


if(slidedelay > 0)
{
	instance_destroy(other)
}
else if(!detained and !immunity)
{
	lives -= 1
	image_alpha /= 2
	detained = true
	alarm[0] = room_speed * 2
}