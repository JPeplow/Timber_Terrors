/// /// Mouse Clicked /// ///

if (mouse_check_button_pressed(mb_left)) // Check is lmb is pressed
{
	// Check is lmb press is within the buttons location
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		with (obj_game_manager)
		{
			switch (state)
			{
				case "PAUSED":
					
					room_goto(rm_menu);
					
				break;
				
				case "DEFEATED":
					
					global.total_coins += global._collected_coins;
					global.total_wood += global._collected_wood;
					global.total_bones += global._collected_bones;
					global.total_flesh += global._collected_flesh;
					
					save_game_new();
					room_goto(rm_menu);
					
				break;
				
			}

		}
	}
}