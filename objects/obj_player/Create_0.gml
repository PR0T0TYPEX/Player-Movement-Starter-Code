/// @description Establish key vars

//instance_exists()

hsp = 0;
hsp_wjump = 9;
vsp = 0;
vsp_wjump = -9;

grv = 0.3;
grv_wall = 0.05;

walksp = 1;
max_walksp = 3;

hsp_fric_ground = 0.2;
hsp_fric_air = 0.05;
hsp_fric_slide = 0.01;

jumpsp = 7;

maxjumps = 1;
currjumps = 0;

on_ground = false;
on_wall = 0;
going_right = true;

walljumpdelay = 0;
walljumpdelay_max = 35;

slideresetdelay = 0;
slideresetdelay_max = 30;
slidedelay = 0;
slidedelay_max = 15;
slidestuck_spd = 2;
slidestuck = false;

detained = false
immunity = false
normal_color = image_blend

lives = 3

extra = 1