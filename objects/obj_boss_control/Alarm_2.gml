/// @description lazer attack that harms the boss

if(!obj_player.detained)
{
	if(lazer_type == 0)
	{
		var lazer1 = instance_create_layer(448, 266, "Instances", obj_hlazer)
		with(lazer1)
		{
			image_blend = obj_tint.image_blend
		}
		
		var lazer2 = instance_create_layer(448, 454, "Instances", obj_hlazer)
		with(lazer2)
		{
			image_blend = obj_tint.image_blend
		}
	}
	else
	{
		var lazer3 = instance_create_layer(280, 256, "Instances", obj_vlazer)
		with(lazer3)
		{
			image_blend = obj_tint.image_blend
		}
		
		var lazer4 = instance_create_layer(616, 256, "Instances", obj_vlazer)
		with(lazer4)
		{
			image_blend = obj_tint.image_blend
		}
	}
}

set_alarm = false