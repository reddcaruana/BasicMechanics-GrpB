/// @description Draws the score wherever I am

draw_set_color(c_white);
draw_text(x, y, "Score: " + string(score));

// string() changes a number to text