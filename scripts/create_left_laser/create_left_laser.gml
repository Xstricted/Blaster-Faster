var _distance = sprite_get_width(sprite_index) / 2;
var _angle = 60;

var _x = x + lengthdir_x(_distance, image_angle + _angle);
var _y = y + lengthdir_x(_distance, image_angle + _angle);

var _laser = instance_create_layer(_x, _y, "instances", o_laser);
_laser.direction = image_angle;
_laser.speed = 8;
_laser.image_angle = image_angle;