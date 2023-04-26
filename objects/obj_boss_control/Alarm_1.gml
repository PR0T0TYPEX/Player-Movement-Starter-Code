/// @description the different attacks each boss can do

obj_tint.image_blend = c_red
if(obj_red.image_index = 0)
{
	if(count == 0)
	{
		attack = choose(0, 1, 2)
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
	else if(attack == 1)
	{
		lazer_type = choose(0, 1)
		if(count != 3)
		{
			alarm[2] = 1
			alarm[1] = room_speed * 4.5 / obj_red.rage
			count += 1
		}
		else
		{
			count = 0
			var lazer = instance_create_layer(448, 258, "Instances", obj_vlazer)
			with(lazer)
			{
				image_blend = obj_tint.image_blend
			}
		}
	}
	else
	{
		_y = 144
		repeat(20)
		{
			_x = choose(80, 832)
			var bullet = instance_create_layer(_x, _y, "Instances", obj_bullet)
			with(bullet)
			{
				image_blend = c_red
				if(obj_boss_control._x != 80)
				{
					speed *= -1
				}
			}
			_y += 16
		}
	}
}


set_alarm = false