/// @description player movement
var mouse_direction = point_direction (x,y,mouse_x,mouse_y);
image_angle = mouse_direction;

var _thrust = mouse_check_button(mb_right);
image_index = _thrust;

if (_thrust) {
	motion_add(image_angle, acceleration);
	if (speed > max_speed) {
		speed = max_speed;
	}
	var _offset = random_ramge(-4, 4);
	var _length = -14;
	var _x = x+ lengthdir_x(_length, image_angle) + _offset;
	var _y = y+ lengthdir_y(_length, image_angle) + _offset;
	instance_create_layer(x , y, "effects", o_explosion_particle);
} else {
	friction = friction_amount;
}