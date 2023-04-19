/// @description core boss mechanics

red = instance_exists(obj_red) and in_control == 1
green = instance_exists(obj_green) and in_control == 2
blue = instance_exists(obj_blue) and in_control == 3

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
		with(obj_red)
		{
			if point_distance(x, y, 384, 96) > 1
			{
			    move_towards_point(384, 96, 1)
			}
			else
			{
				speed = 0
			}
		}
		alarm[0] = 120
		set_alarm = true	
	}
}
else if(green)
{
	obj_tint.image_blend = c_green
	if(!set_alarm)
	{
		alarm[0] = 300
		set_alarm = true
	}
}
else if(blue)
{
	obj_tint.image_blend = c_blue
	if(!set_alarm)
	{
		alarm[0] = 300
		set_alarm = true
	}
}
else
{
	obj_tint.image_blend = c_white
	if(!set_alarm)
	{
		alarm[0] = 300
		set_alarm = true
	}
}

