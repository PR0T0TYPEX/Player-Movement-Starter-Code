/// @description enemy collision

if(slidedelay > 0)
{
	instance_destroy(other)
}

else if(!detained and !immunity)
{
	if(other.image_blend = c_red and instance_exists(obj_hp_red))
	{
		instance_destroy(obj_hp_red)
		image_blend -= c_red
	}
	image_alpha /= 2
	detained = true
	alarm[0] = room_speed * 2
}