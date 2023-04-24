/// @description checks if player hits the lazer

extra = 1

if(other.image_alpha == 1 and !slidedelay > 0 and !detained and !immunity)
{
	if(other.image_blend = c_red and instance_exists(obj_hp_red))
	{
		instance_destroy(obj_hp_red)
		image_blend -= c_red
	}
	else if(other.image_blend = c_green and instance_exists(obj_hp_green))
	{
		instance_destroy(obj_hp_green)
		image_blend -= c_green
	}
	else if(other.image_blend = c_blue and instance_exists(obj_hp_blue))
	{
		instance_destroy(obj_hp_blue)
		image_blend -= c_blue
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