view_enabled = true; // Enable viewport
view_visible[0] = true; // Select viewport 0

var _w = global.res_width; // Screen width
var _h = global.res_height; // Screen height
var _cam = camera_create_view(0, 0, _w, _h); // Creating camera eual to screen size

camera_set_view_target(_cam, obj_player_character); // Setting target of camera to player
camera_set_view_border(_cam, _w / 2, _h / 2); // Setting border

view_camera[0] = _cam; // Assigning camera to a viewport