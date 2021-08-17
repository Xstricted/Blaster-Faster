/// @description player movement
var mouse_direction = point_direction (x,y,mouse_x,mouse_y);
image_angle = mouse_direction;

var _thrust = mouse_check_button(mb_right);

if (_thrust) {
	motion_add(image_angle, acceleration);
} else {
	friction = 0.05;
}


direction = mouse_direction
