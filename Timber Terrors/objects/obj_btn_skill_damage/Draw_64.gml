/// /// Display /// ///

/// Settings
draw_self();
draw_set_font(fnt_font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
///

/// Visuals
switch (global.damage_level)
{
	case 0:
		sprite_index = spr_button_damge_unlock;
		image_index = 0;
		
		draw_set_font(fnt_font1_small);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		
		draw_text_transformed(x + 90, y + 12, "Kill 5\nenemies", 1, 1, 0);
	break;
	
	case 10:
		draw_text_transformed(x + 50, y + 26, "MAX", 0.75, 1, 0);
		draw_text_transformed(x + 112, y +26, "Max", 0.75, 1, 0);
	break;
	
	default:
		sprite_index = spr_button_damge;
		image_index = 0;
		
		draw_text_transformed(x + 50, y + 26, string(global.damage_level), 1, 1, 0);
		draw_text_transformed(x + 112, y + 26, string(global.skills_damage[real(global.damage_level), 2]), 1, 1, 0);
	break;
}
///