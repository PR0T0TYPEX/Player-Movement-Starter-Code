/// @description boss damage
rage = image_index + 1

if(hit)
{
	if(image_index != 2)
	{
		hit = false
		immune = true
		alarm[0] = 60
		image_index += 1
	}
	else instance_destroy()
}