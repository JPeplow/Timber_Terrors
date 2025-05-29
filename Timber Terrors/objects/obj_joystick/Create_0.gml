event_inherited(); // Inherit parents events

joy_x = 0; // Joystick x defualt value
joy_y = 0; // Joystick y default value
touch_id = -1; // Default value

radius = sprite_width / 6; // Radius that joystick can move

// Move controls
input = function (_touch_id, _touch_x, _touch_y)
{
        touch_id = _touch_id;
}