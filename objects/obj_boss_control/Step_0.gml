/// @description core boss mechanics

red = instance_exists(obj_red)
green = instance_exists(obj_green)
blue = instance_exists(obj_blue)

if(in_control == 1 and red)
{
	obj_tint.image_blend = c_red
}
if(in_control == 2 and green)
{
	obj_tint.image_blend = c_green
}
if(in_control == 3 and blue)
{
	obj_tint.image_blend = c_blue
}