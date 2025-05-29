/// /// Mouse Clicked /// ///

switch (state)
{
	case "DEFEATED":
	break;
	
	case "PLAY":
		if (mouse_check_button_pressed(mb_left)) // Check if lmb is pressed
		{
			// Check is lmb press is within button location
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 5, 889, 26, 910))
			{
				if state = "PLAY"
				{
					state = "PAUSED";
				}
				else
				{
					state = "PLAY";
				}
			}
		}
	break;

	case "LEVEL UP":
		if (mouse_check_button_pressed(mb_left))
		{
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 85, 556, 152, 573))
			{
				//activate ability 1
				show_debug_message("ability 1");
			}
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 171, 556, 238, 573))
			{
				//activate ability 2
				show_debug_message("ability 2");
			}
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 257, 556, 324, 573))
			{
				//activate ability 3
				show_debug_message("ability 3");
			}
		}
}