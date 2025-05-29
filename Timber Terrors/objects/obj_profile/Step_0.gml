/// /// Mouse Clicked /// ///

if (mouse_check_button_pressed(mb_left)) // Check if lmb is pressed
{
	// Check is lmb press is within button location
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		if state = "CLOSE PROFILE"
		{
			state = "OPEN PROFILE";
		}
		else
		{
			state = "CLOSE PROFILE";
		}
	}
}

