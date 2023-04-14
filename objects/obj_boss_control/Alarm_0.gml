/// @description switches which boss is in control

if(true)//(instance_exists(obj_red) and instance_exists(obj_green)) or (instance_exists(obj_red) and instance_exists(obj_blue)) or (instance_exists(obj_blue) and instance_exists(obj_green)))
{
	previous = in_control
	while(in_control == previous)
	{
		in_control = irandom_range(1,3)
	}
	red = instance_exists(obj_red) and in_control == 1
	green = instance_exists(obj_green) and in_control == 2
	blue = instance_exists(obj_blue) and in_control == 3

	if(red)
	{
		obj_tint.image_blend = c_red
	}
	else if(green)
	{
		obj_tint.image_blend = c_green
	}
	else if(blue)
	{
		obj_tint.image_blend = c_blue
	}
	else
	{
		while(in_control == previous)
			{
				in_control = irandom_range(1,3)
			}
	}
}

set_alarm = false