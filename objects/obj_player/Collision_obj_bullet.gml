/// @description bullet collision

extra = 1

if(!detained and !immunity and !slidedelay > 0)
{
	if(instance_exists(obj_hp_1))
	{
		instance_destroy(obj_hp_1)
	}
	else if(instance_exists(obj_hp_2))
	{
		instance_destroy(obj_hp_2)
	}
	else if(instance_exists(obj_hp_3))
	{
		instance_destroy(obj_hp_3)
	}
	else
	{
		extra = 2
	}
	image_alpha /= 2
	detained = true
	alarm[0] = room_speed * 2 * extra
	extra = 1
}