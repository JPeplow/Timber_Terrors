/// /// Window Size /// ///

global.res_width = 412; // Default value for mobile
global.res_height = 915; // Default value for mobile

var _ratio = global.res_width / global.res_height;
var _display_ratio = display_get_width() / display_get_height();

if (_display_ratio < _ratio){
    global.res_height = 1920; // Optional

    global.res_width = global.res_height * _display_ratio;
}