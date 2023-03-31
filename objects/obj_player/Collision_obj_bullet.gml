/// @description bullet collision

if(!detained and !immunity and !slidedelay > 0)
{
	image_alpha /= 2
	detained = true
	alarm[0] = room_speed * 2
}