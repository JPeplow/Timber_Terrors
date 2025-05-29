/// /// Mouse Clicked /// ///

if (mouse_check_button_pressed(mb_left)) // Check if lmb pressed
{
	// Check if lmb press is within buttons location
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom))
	{
		
		switch (global.damage_level)
		{
		
			case 0:
				if global.total_enemies_defeated >= 5
				{
					global.upgrade_skill_damage = !global.upgrade_skill_damage;
				}
			break;
			
			case 10:
				// Do nothing
			break;
			
			default:
				if obj_player_manager.coins >= global.skills_damage[real(global.damage_level), 2] // Check player currency
				{
					global.upgrade_skill_damage = !global.upgrade_skill_damage; // Upgrade skill
				}
			break;
		
		}
	}
}