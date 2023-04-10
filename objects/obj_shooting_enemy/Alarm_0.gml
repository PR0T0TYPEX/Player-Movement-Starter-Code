/// @description gets the enemy to fire a bullet

var bullet = instance_create_layer(x, y - 5, "Instances", obj_bullet)

with(bullet)
{
	speed *= -sign(other.stored_speed)
	image_blend = other.image_blend
}

alarm[1] = room_speed