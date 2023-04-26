/// @description switches which boss is in control

		
if(in_control == 0)
{
	in_control = 1
}
red = instance_exists(obj_red) and in_control == 1
alarm[1] = 120 / obj_red.rage