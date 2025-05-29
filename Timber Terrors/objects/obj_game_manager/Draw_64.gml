
switch (state)
{
	case "PLAY":

		if object_exists(obj_paused_screen)
		{
			instance_destroy(obj_button_qtt);
			instance_destroy(obj_button_resume);
			instance_destroy(obj_paused_screen);
			instance_activate_all();
		}
		
		/// Settings
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		///
		
		/// Sprites
		draw_sprite(spr_game_screen_top, 0, 0, 0);
		draw_sprite(spr_pause, 0, 0, 884);
		///
		
		/// Objects
		instance_create_layer(205, 809, "UiElements", obj_joystick);
		///

		/// Getting values for health bar and drawing it
		var _player_health; 
		_player_health = (global.player_hearts / global.player_max_hearts) * 100;

		draw_healthbar(40, 15, 190, 30, _player_health, c_black, c_red, c_green, 0, true, true);
		///
		
		/// Experience Bar
		
		var _xp_bar;
		_xp_bar = (global._xp_amount / xp_level_requirements[global._xp_level]) * 100;
		
		draw_healthbar(40, 55, 190, 70, _xp_bar, c_black, c_aqua, c_aqua, 0, true, true);
		
		if global._xp_amount >= xp_level_requirements[global._xp_level]
		{
			state = "LEVEL UP";
			
			global._xp_amount -= xp_level_requirements[global._xp_level];
			global._xp_level += 1;
		}
		
		///

		/// Draw resource sprites and values
		draw_sprite(spr_coin, 0, 350, 30);
		draw_sprite(spr_wood, 0, 350, 60);

		draw_text_transformed(370, 63, string(global._collected_wood), 1, 1, 0);
		draw_text_transformed(370, 33, string(global._collected_coins), 1, 1, 0);
		
		draw_text_transformed(370, 93, string(global._collected_bones), 1, 1, 0);
		draw_text_transformed(370, 123, string(global._collected_flesh), 1, 1, 0);
		///

		switch (global._seconds)
		{
	
			case 3:
				draw_text_transformed(5, 728, "3", 1, 1, 0);
			break;
	
			case 2:
				draw_text_transformed(5, 728, "2", 1, 1, 0);
			break;
	
			case 1:
				draw_text_transformed(5, 728, "1", 1, 1, 0);
			break;
	
		}
		break;

	case "PAUSED":
		
		instance_deactivate_all(true);
		instance_create_layer(296, 864, "UiElements", obj_button_qtt);
		instance_create_layer(114, 864, "UiElements", obj_button_resume);		
		instance_create_layer(0, 0, "UiElements", obj_paused_screen);
		draw_sprite(spr_pause, 0, 0, 884);
		
	break;
	
	case "DEFEATED":
	
		instance_deactivate_all(true);
		instance_activate_object(obj_player_manager);
		draw_sprite(spr_defeated_screen, 0, 0, 0);
		
		draw_text_transformed(206, 200, string(global.minuets) + ":" + string(global.seconds), 1, 1, 0);
		draw_text_transformed(206, 321, string(global.enemies_defeated), 1, 1, 0);
		draw_text_transformed(137, 418, string(global._collected_coins), 1, 1, 0);
		draw_text_transformed(303, 418, string(global._collected_wood), 1, 1, 0);
		draw_text_transformed(137, 518, string(global._collected_bones), 1, 1, 0);
		draw_text_transformed(303, 518, string(global._collected_flesh), 1, 1, 0);
		
		instance_create_layer(209, 869, "UiElements", obj_button_qtt);
		
	break;
	
	case "LEVEL UP":
	
		/// Creating the screen
		instance_deactivate_all(true);
		draw_sprite(spr_level_up_screen, 0, 51, 114);
		draw_rectangle(5, 889, 26, 910, false);
		
		
		/// 
		
		/// Picking Abilities
		var _chosen_abilities = [];
		var _abilities = ["Bear Trap", "Block O Wood", "Axes", "Falling Logs", "Lighter", "Bee Hive"];
		
		var _i;
		for (_i = 0; _i != 3; _i++)
		{
			if _i == 3
			{
				break; // maybe remove if statement here
			}
			else
			{
				var _ability_chosen = irandom(array_length(_abilities) - 1);
				_ability_chosen = _abilities[_ability_chosen];
				show_debug_message(_i)
		
				switch (_ability_chosen)
				{
					case "Bear Trap":
						if array_contains(_chosen_abilities, _ability_chosen)
						{
							_i--;
						}
						else
						{
							array_push(_chosen_abilities, "Bear Trap");
						}
					break;
			
					case "Block O Wood":
						if array_contains(_chosen_abilities, _ability_chosen)
						{
							_i--;
						}
						else
						{
							array_push(_chosen_abilities, "Block O Wood");
						}
					break;		
					case "Axes":
						if array_contains(_chosen_abilities, _ability_chosen)
						{
							_i--;
						}
						else
						{
							array_push(_chosen_abilities, "Axes");
						}
					break;
					case "Falling Logs":
						if array_contains(_chosen_abilities, _ability_chosen)
						{
							_i--;
						}
						else
						{
							array_push(_chosen_abilities, "Falling Logs");
						}
					break;
			
					case "Lighter":
						if array_contains(_chosen_abilities, _ability_chosen)
						{
							_i--;
						}
						else
						{
							array_push(_chosen_abilities, "Lighter");
						}
					break;		
					case "Bee Hive":
						if array_contains(_chosen_abilities, _ability_chosen)
						{
							_i--;
						}
						else
						{
							array_push(_chosen_abilities, "Bee Hive");
						}
					break;	
				}
			}
		}
		
		show_debug_message(_chosen_abilities);
		
		///
		

			
		
		//instance_activate_object(obj_block_o_wood);
		
		//with (obj_block_o_wood)
		//{
		//	state = "ACTIVE";
		//}
		
		//instance_activate_all();
		//state = "PLAY";
		
	break;

}