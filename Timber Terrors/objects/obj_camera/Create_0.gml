/// Variables
var _dwidth = display_get_width();
var _dheight = display_get_height();
///



/// Initialise Viewports
view_enabled = true;
view_visible[0] = true;
///
 
/// Viewport Properties
view_xport[0] = 0; // x offset
view_yport[0] = 0; // y offset
view_wport[0] = 412//_dwidth; // width
view_hport[0] = 915//_dheight; // height
///

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player_character);
camera_set_view_target(view_camera[0], obj_player_character);
camera_set_view_border(view_camera[0], 206, 457.5);

/// Changing window size
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
//window_set_rectangle(0, 0, _dwidth, _dheight);
///

/// Changing application surface size
//surface_resize(application_surface, _dwidth, _dheight);