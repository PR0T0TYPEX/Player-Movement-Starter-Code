/// @description shoots bullet and sets enemy time to walk again

var bullet = instance_create_layer(x,y,"Instances",obj_bullet)

with(bullet)
{
    speed *= sign(other.stored_speed) * -1
    image_xscale *= sign(other.image_xscale);
}

alarm[1] = room_speed