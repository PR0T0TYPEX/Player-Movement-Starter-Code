/// @description
if(other.image_alpha == 1)
{
	if(image_index == 0)
	{
		image_index = 1
		hit = true
	}
	else
	{
		if(instance_exists(obj_hp_red))
		{
			instance_destroy(obj_hp_red)
		}
		instance_destroy()
	}
}