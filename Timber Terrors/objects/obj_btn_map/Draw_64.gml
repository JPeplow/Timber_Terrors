/// /// Display /// ///

draw_self();

if active == true // Check is pasued eqauls true
{
	draw_set_halign(fa_left); // Set heigh align
	draw_set_valign(fa_bottom); // Set vertical align
	draw_set_font(fnt_font1); // Set font

	instance_create_layer(0, 843, "Instances", obj_map);
	instance_create_layer(80, 820, "Top", obj_button_play); // Button resume
	instance_create_layer(336, 820, "Top", obj_button_quit);
}
else
{
	instance_destroy(obj_button_play);
	instance_destroy(obj_button_quit);
	instance_destroy(obj_map)
}