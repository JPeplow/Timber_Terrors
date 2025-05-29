/// /// Touch Controls Multi-Touch /// ///

var _max_devices = 4; // Max num of touches 4

for (var _i = 0; _i < _max_devices ; _i++)
{
	var _touch_x = device_mouse_x_to_gui(_i); // x location to screen
	var _touch_y = device_mouse_y_to_gui(_i); // y location to screen
	
	var _ui_at_pos = instance_position(_touch_x, _touch_y, obj_ui_parent);
	var _held = device_mouse_check_button(_i, mb_left);
	
	if (_ui_at_pos != noone && _held)
	{
		_ui_at_pos.input(_i, _touch_x, _touch_y);
	}
}