/// @description checks if player hits the lazer

extra = 1

if(other.image_alpha == 1 and !(slidedelay > 0) and !detained and !immunity)
{
	
	if(instance_exists(obj_hp_1))
	{
		show_debug_message("hit1")
		instance_destroy(obj_hp_1)
	}
	else if(instance_exists(obj_hp_2))
	{
		show_debug_message("hit2")
		instance_destroy(obj_hp_2)
	}
	else if(instance_exists(obj_hp_3))
	{
		show_debug_message("hit3")
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