/// /// Mouse Clicked /// ///

if (mouse_check_button_pressed(mb_left)) // Check is lmb is pressed
{
	// Check is lmb press is within button location
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		with (obj_afk)
		{
			current_datetime = date_current_datetime() 

			time = [date_get_day(current_datetime),
				   date_get_month(current_datetime),
				   date_get_year(current_datetime),
				   date_get_hour(current_datetime),
				   date_get_minute(current_datetime),
				   date_get_second(current_datetime)];


			time_afk = [0, 0, 0, 0, 0, 0];

			saved_datetime = time;
		}
	}
}