/// @description key variables made
randomize()

in_control = irandom_range(1,3)
red = instance_exists(obj_red) and in_control == 1
green = instance_exists(obj_green) and in_control == 2
blue = instance_exists(obj_blue) and in_control == 3
set_alarm = false