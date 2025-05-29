/// /// Display /// ///

/// Settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_font1);
///

///// Resources
//draw_sprite(spr_coin, 0, 125, 125);
//draw_sprite(spr_wood, 0, 195, 125);

//draw_text(130, 119, string("x") + string(obj_player_manager.coins));
//draw_text(1100, 119, string("x") + string(obj_player_manager.wood));

/////

// Personal best
draw_text(5, 60, "Personal Best: " + string(global.personal_best[0]) + ":" + string(global.personal_best[1]));