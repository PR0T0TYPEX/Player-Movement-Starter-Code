/// @description lazer attack that harms the boss

if(!obj_player.detained)
{
	show_debug_message(false)
	if(lazer_type == 0)
	{
		var lazer1 = instance_create_layer(448, 236, "Instances", obj_hlazer)
		show_debug_message(true)
		with(lazer1)
		{
			image_blend = obj_tint.image_blend
		}
		
		var lazer2 = instance_create_layer(448, 434, "Instances", obj_hlazer)
		with(lazer2)
		{
			image_blend = obj_tint.image_blend
		}
	}
}