/// @description the different attacks each boss can do

		
if(red)
{
	obj_tint.image_blend = c_red
	if(obj_red.image_index = 0)
	{
		if(count == 0)
		{
			attack = 1//choose(0, 1)
		}
		else attack = 1
		if(attack == 0)
		{
			enemy_type = choose(0, 1)
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
					image_blend = obj_tint.image_blend
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
					image_blend = obj_tint.image_blend
				}
			}
			else
			{
				enemy_pos1 = choose(0, 1)
				if(enemy_pos1 == 0)
				{
					var enemy1 = instance_create_layer(160, 272, "Instances", obj_shooting_enemy)
				}
				else
				{
					var enemy1 = instance_create_layer(736, 272, "Instances", obj_shooting_enemy)
				}
				with(enemy1)
				{
					image_blend = obj_tint.image_blend
				}
				enemy_pos2 = choose(0, 1)
				if(enemy_pos2 == 0)
				{
					var enemy2 = instance_create_layer(160, 464, "Instances", obj_shooting_enemy)
				}
				else
				{
					var enemy2 = instance_create_layer(736, 464, "Instances", obj_shooting_enemy)
				}
				with(enemy2)
				{
					image_blend = obj_tint.image_blend
				}
			}
		}
		else
		{
			lazer_type = 0//choose(0, 1)
			if(count != 3)
			{
				alarm[2] = 1
				alarm[1] = room_speed * 3
				count += 1
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


set_alarm = false