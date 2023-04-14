/// @description core boss mechanics

red = instance_exists(obj_red) and in_control == 1
green = instance_exists(obj_green) and in_control == 2
blue = instance_exists(obj_blue) and in_control == 3

if(red)
{
	obj_tint.image_blend = c_red
	if(!set_alarm)
	{
		alarm[0] = 300
		set_alarm = true
	}
}
else if(green)
{
	obj_tint.image_blend = c_green
	if(!set_alarm)
	{
		alarm[0] = 300
		set_alarm = true
	}
}
else if(blue)
{
	obj_tint.image_blend = c_blue
	if(!set_alarm)
	{
		alarm[0] = 300
		set_alarm = true
	}
}
else
{
	in_control = irandom_range(1,3)
}
