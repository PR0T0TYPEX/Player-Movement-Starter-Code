/// @description checks if player hits the lazer

if(other.image_alpha == 1 and !(slidedelay > 0) and !detained and !immunity)
{
	lives -= 1
	image_alpha /= 2
	detained = true
	alarm[0] = room_speed * 2
	obj_boss_control.count = 0
}