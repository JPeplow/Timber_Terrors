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

		/// Draw resource sprites and values
		//draw_sprite(spr_coin, 0, 350, 30);
		//draw_sprite(spr_wood, 0, 350, 60);

		//draw_text_transformed(370, 63, string(global._collected_wood), 1, 1, 0);
		//(370, 33, string(global._collected_coins), 1, 1, 0);
		
		//draw_text_transformed(370, 93, string(global._collected_bones), 1, 1, 0);
		//draw_text_transformed(370, 123, string(global._collected_flesh), 1, 1, 0);
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