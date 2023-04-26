/// @description core boss mechanics

red = instance_exists(obj_red) and in_control == 1

if(red)
{
	obj_tint.image_blend = c_red
	with(obj_red)
	{
		if point_distance(x, y, 448, 176) > 1
		{
		    move_towards_point(448, 176, 1)
		}
		else
		{
			speed = 0
		}
	}
	if(!set_alarm and !instance_exists(obj_enemy) and !instance_exists(obj_shooting_enemy))
	{
		alarm[0] = 240 / obj_red.rage
		set_alarm = true	
	}
}
else
{
	obj_tint.image_blend = c_white
	if(!set_alarm)
	{
		alarm[0] = 240 / obj_red.rage
		set_alarm = true
	}
}

