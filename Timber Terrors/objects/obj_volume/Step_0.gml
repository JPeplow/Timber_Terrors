/// /// Mouse Clicked /// ///

if (mouse_check_button_pressed(mb_left)) // Check if lmb is pressed
{
	// Check is lmb press is within button location
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x + 2, y + 2, x + 41, y + 32))
	{
		global.volume_level = 0.25;
		with (obj_music_sounds)
		{
			audio_sound_gain(_bkg_music, 0.25, 500);
		}
	}
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x + 44, y + 2, x + 83, y + 32))
	{
		global.volume_level = 0.5;
		with (obj_music_sounds)
		{
			audio_sound_gain(_bkg_music, 0.5, 500);
		}
	}
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x + 86, y + 2, x + 125, y + 32))
	{
		global.volume_level = 0.75;
		with (obj_music_sounds)
		{
			audio_sound_gain(_bkg_music, 0.75, 500);
		}
	}
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x + 128, y + 2, x + 167, y + 32))
	{
		global.volume_level = 1;
		with (obj_music_sounds)
		{
			audio_sound_gain(_bkg_music, 1, 500);
		}
	}
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x + 170, y + 2, x + 209, y + 32))
	{
		global.volume_level = 0;
		with (obj_music_sounds)
		{
			audio_sound_gain(_bkg_music, 0, 0);
		}
	}
}

