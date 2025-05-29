if (room == rm_play_area)
{
	switch (global.chosen_quest[? "id"])
	{
		
		#region Common Quests
		
		case "c1":
	
			if (global.enemies_defeated >= 15)
			{
				scr_update_quest_status(global.chosen_quest, 1);
			}
			
		break;
		
		case "c2":
		
			if (global._collected_coins >= 25)
			{
				scr_update_quest_status(global.chosen_quest, 1);
			}
			
		break;
		
		case "c3":
		
			if (global._collected_wood >= 10)
			{
				scr_update_quest_status(global.chosen_quest, 1);
			}
		
		break;
		
		#endregion
		#region Uncommon Quests
		
		case "uc1":
		
			if (global._defeated_enemy >= 50)
			{
				scr_update_quest_status(global.chosen_quest, 1);
			}
		
		break;
		
		case "uc2":
		
			if (global._collected_coins >= 100)
			{
				scr_update_quest_status(global.chosen_quest, 1);
			}
		
		break;
		
		#endregion
		#region Rare Quests
		#endregion
		#region Epic Quests
		#endregion
		#region Legendary Quests
		#endregion
	}
}
scr_update_quest_status(global.chosen_quest, 1);
with (obj_btn_quests)
{
	/// /// Mouse Clicked /// ///

	if (mouse_check_button_pressed(mb_left)) // Check is lmb is pressed
	{
		// Check is lmb press is within button location
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom))
		{
		
			if (global.chosen_quest[? "status"] == 1)
			{
					
					/// Add code for looping through rewards
					/// Check below code work properly
					
					var _reward = global.chosen_quest[? "reward"];
					var _count = 0;
					
					if (_count != array_length(_reward))
					{
						switch (_reward[_count])
						{
							case "coins":
								obj_player_manager.coins += _reward[_count + 1];
								_count += 2;
							break;
							case "wood":
								obj_player_manager.wood += _reward[_count + 1];
								_count += 2;
							break;
						}
					}
					
					scr_update_quest_status(global.chosen_quest, 2);
					scr_new_quest();
			}
		
		}
	}
}