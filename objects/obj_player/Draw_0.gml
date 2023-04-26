/// @description shows player lives

_x = (room_width / 2) - ((lives - 1) * 32) - 16

repeat(lives)
{
	draw_sprite_ext(spr_hp, 0, _x, room_height - 20, 1, 1, 0, c_white, 1)
	_x += 64;
}