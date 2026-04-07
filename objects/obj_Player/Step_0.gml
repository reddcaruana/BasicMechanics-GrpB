/// @description Move the player

hsp = keyboard_check(vk_right) - keyboard_check(vk_left);
vsp = clamp(vsp + gravity_force, -max_speed, max_speed);

// this gives back a true or false
var is_jumping = keyboard_check_pressed(vk_space);
if (is_jumping) // true
{
	vsp = jump_force;
}

if (place_meeting(x + hsp, y, obj_Ground))
{
	while (!place_meeting(x + sign(hsp), y, obj_Ground))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_Ground))
{
	while (!place_meeting(x, y + sign(vsp), obj_Ground))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

// if the player reaches the bottom, move to the top
if (y > 512)
{
	y = -16;
}