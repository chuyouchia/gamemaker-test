/// @description Draw Count of seed
// You can write your code in this editor

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

<<<<<<< Updated upstream
=======
if global.plants[global.plantsIndex] == "basic" {
	var c = c_dkgrey;
	draw_rectangle_color(cx + cw/2 - 110 + 50, cy + 10, cx + cw/2 + 100 + 50, cy + 90, c, c, c, c, false);
	draw_rectangle_color(cx + cw/2 - 110 + 50, cy + 10, cx + cw/2 + 100 + 50, cy + 90, c_ltgray,c_ltgray,c_ltgray,c_ltgray, true);
} else{var c = c_dkgray;draw_rectangle_color(cx + cw/2 - 110 + 50, cy + 10, cx + cw/2 + 100 + 50, cy + 90, c, c, c, c, false);}
>>>>>>> Stashed changes

draw_set_font(fnt_seedsCount);
draw_text(cx + cw/2, cy + 25, string(global.seedCount));
