//draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_font1);
draw_set_color(c_black);

switch (global.current_pfp)
{
	case "spr_icon_player":
		sprite_index = spr_icon_player;
	break;
	case "spr_icon_frank":
		sprite_index = spr_icon_frank;
	break;
}

switch (transition)
{
	case "INACTIVE":
	break;
	#region PROFILE TO STATS
	case "PROFILE TO STATS":
		instance_destroy(obj_change_pfp);
		instance_destroy(obj_stats);
		instance_destroy(obj_settings);
		instance_destroy(obj_profile_exit);
		instance_destroy(obj_profile_screen);
		state = "OPEN STATS";
		transition = "INACTIVE";
	break;
	#endregion
	#region STATS TO PROFILE
	case "STATS TO PROFILE":
		instance_destroy(obj_profile_back);
		instance_destroy(obj_profile_exit);
		instance_destroy(obj_profile_screen);
		state = "OPEN PROFILE";
		transition = "INACTIVE";
	break;
	#endregion
	#region PROFILE TO SETTINGS
	case "PROFILE TO SETTINGS":
		instance_destroy(obj_change_pfp);
		instance_destroy(obj_stats);
		instance_destroy(obj_settings);
		instance_destroy(obj_profile_exit);
		instance_destroy(obj_profile_screen);
		state = "OPEN SETTINGS";
		transition = "INACTIVE";
	break;
	#endregion
	#region SETTINGS TO PROFILE
	case "SETTINGS TO PROFILE":
		instance_destroy(obj_volume);
		instance_destroy(obj_profile_back);
		instance_destroy(obj_profile_exit);
		instance_destroy(obj_profile_screen);
		state = "OPEN PROFILE";
		transition = "INACTIVE";
	break;
	#endregion
	#region PROFILE TO CHANGE PFP
	case "PROFILE TO CHANGE PFP":
		instance_destroy(obj_change_pfp);
		instance_destroy(obj_stats);
		instance_destroy(obj_settings);
		instance_destroy(obj_profile_exit);
		instance_destroy(obj_profile_screen);
		state = "OPEN CHANGE PFP";
		transition = "INACTIVE";
	break;
	#endregion
	#region CHANGE PFP TO PROFILE
	case "CHANGE PFP TO PROFILE":
		instance_destroy(obj_change_icon_frank);
		instance_destroy(obj_change_icon_player);
		instance_destroy(obj_profile_back);
		instance_destroy(obj_profile_exit);
		instance_destroy(obj_profile_screen);
		state = "OPEN PROFILE";
		transition = "INACTIVE";
	break;
	#endregion
}

switch (state)
{
	#region CLOSE PROFILE
	case "CLOSE PROFILE":
		if object_exists(obj_profile_screen)
		{
			instance_destroy(obj_volume);
			instance_destroy(obj_change_icon_frank);
			instance_destroy(obj_change_icon_player);
			instance_destroy(obj_profile_back);
			instance_destroy(obj_change_pfp);
			instance_destroy(obj_stats);
			instance_destroy(obj_settings);
			instance_destroy(obj_profile_exit);
			instance_destroy(obj_profile_screen);
		}
	break;
	#endregion
	#region OPEN PROFILE
	case "OPEN PROFILE":
		instance_create_layer(206, 350, "Top", obj_change_pfp);
		instance_create_layer(206, 300, "Top", obj_stats);
		instance_create_layer(206, 250, "Top", obj_settings);
		instance_create_layer(362, 75, "Top", obj_profile_exit);	
		instance_create_layer(50, 75, "Top", obj_profile_screen);
	
		draw_set_font(fnt_font1_big);
		draw_text_transformed(206, 150, "Profile", 1, 1, 0);
	break;
	#endregion
	#region OPEN STATS
	case "OPEN STATS":
		instance_create_layer(50, 815, "Top", obj_profile_back);
		instance_create_layer(362, 75, "Top", obj_profile_exit);	
		instance_create_layer(50, 75, "Top", obj_profile_screen);
	
		draw_set_font(fnt_font1_big);
		draw_text_transformed(206, 150, "Stats", 1, 1, 0);
		
		draw_set_valign(fa_top);
		draw_set_font(fnt_font1);
		draw_text_transformed(206, 200, 
										"Damage: " + string(global.player_damage) + "\n" +
										"Health: " + string(global.player_max_hearts) + "\n" +
										"Enemies Defeated: " + string(global.total_enemies_defeated) + "\n" +
										"Total Coins: " + string(global.total_coins) + "\n" +
										"Total Wood: " + string(global.total_wood) + "\n" +
										"Total Bones: " + string(global.total_bones) + "\n" +
										"Total Flesh: " + string(global.total_flesh),
							1, 1, 0);
	break;
	#endregion
	#region OPEN SETTINGS
	case "OPEN SETTINGS":
		instance_create_layer(75, 450, "Top", obj_volume);
		instance_create_layer(50, 815, "Top", obj_profile_back);
		instance_create_layer(362, 75, "Top", obj_profile_exit);	
		instance_create_layer(50, 75, "Top", obj_profile_screen);
	
		draw_set_font(fnt_font1_big);
		draw_text_transformed(206, 150, "Settings", 1, 1, 0);
		
		draw_set_font(fnt_font1_small);
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom);
		draw_text_transformed(60, 808,
										"Game Version: 0.1.4" + "\n" +
										"Developed by RogueHorizon Studios",
							1, 1, 0);
	break;
	#endregion
	#region	OPEN CHANGE PFP
	case "OPEN CHANGE PFP":
		instance_create_layer(206, 250, "Top", obj_change_icon_frank);
		instance_create_layer(106, 250, "Top", obj_change_icon_player);
		instance_create_layer(50, 815, "Top", obj_profile_back);
		instance_create_layer(362, 75, "Top", obj_profile_exit);	
		instance_create_layer(50, 75, "Top", obj_profile_screen);
	
		draw_set_font(fnt_font1_big);
		draw_text_transformed(206, 150, "Change Pfp", 1, 1, 0);
	break;
	#endregion
}