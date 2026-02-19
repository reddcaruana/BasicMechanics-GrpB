/// @description Moves the bird

// Move down
y += gravity_force;
gravity_force += 0.4;

// A variable that only exists here
var is_jumping = keyboard_check_pressed(vk_space);

if (is_jumping) // checks if true
{
	gravity_force = jump_force;
}

// If y is more than the screen height
// reset y to zero
if (y > 512)
{
	y = 0;
}