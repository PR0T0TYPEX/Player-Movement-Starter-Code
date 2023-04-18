/// @description switches which boss is in control

if((instance_exists(obj_red) and instance_exists(obj_green)) or (instance_exists(obj_red) and instance_exists(obj_blue)) or (instance_exists(obj_blue) and instance_exists(obj_green)))
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
			if(obj_red.image_index = 0)
			{
				attack = 0//choose(0, 1)
				if(attack == 0)
				{
					enemy_type = 0//choose(0, 1)
					if(enemy_type == 0)
					{
						enemy_pos1 = choose(0, 1)
						if(enemy_pos1 == 0)
						{
							var enemy1 = instance_create_layer(160, 272, "Instances", obj_enemy)
						}
						else
						{
							var enemy1 = instance_create_layer(736, 272, "Instances", obj_enemy)
						}
						with(enemy1)
						{
							image_blend = c_red
						}
						enemy_pos2 = choose(0, 1)
						if(enemy_pos2 == 0)
						{
							var enemy2 = instance_create_layer(160, 464, "Instances", obj_enemy)
						}
						else
						{
							var enemy2 = instance_create_layer(736, 464, "Instances", obj_enemy)
						}
						with(enemy2)
						{
							image_blend = c_red
						}
					}
				}
			}
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