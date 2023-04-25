/// @description switches which boss is in control

if((instance_exists(obj_red) and instance_exists(obj_green)) or (instance_exists(obj_red) and instance_exists(obj_blue)) or (instance_exists(obj_blue) and instance_exists(obj_green)))
	{
		
		if(in_control == 0)
		{
			in_control = 1
		}
		red = instance_exists(obj_red) and in_control == 1
		green = instance_exists(obj_green) and in_control == 2
		blue = instance_exists(obj_blue) and in_control == 3
		
		alarm[1] = 120
	}