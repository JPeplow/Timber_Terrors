/// /// Mouse Clicked /// ///

if (mouse_check_button_pressed(mb_left)) // Check if lmb is pressed
{
	// Check if lmb press is within buttons location
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		switch (global.health_level)
		{
			
			case 0:
				if global.personal_best[0] >= 5
				{
					global.upgrade_skill_health = !global.upgrade_skill_health;
				}
			break;
			
			case 10:
				//Do nothing
			break;
			
			default:
				if obj_player_manager.wood >= global.skills_health[real(global.health_level), 2]
				{
					global.upgrade_skill_health = !global.upgrade_skill_health;
				}
		}
	}
}