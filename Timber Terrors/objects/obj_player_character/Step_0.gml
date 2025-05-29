/// /// Movement /// ///

var _move_x = 0; // X axix
var _move_y = 0; // Y axix

with (obj_joystick)
{
        _move_x = joy_x / radius;
        _move_y = joy_y / radius;		
}

x += _move_x * move_speed;
y += _move_y * move_speed;
		
/// /// Player Rotation /// ///

/// Left
if _move_x <= -0.1
{
	sprite_index = spr_player_character_side;
	image_index = 0;
}
///

/// Right
if _move_x >= 0.1
{
	sprite_index = spr_player_character;
	image_index = 0;
}
///

/// /// Automatic Attack /// ///

/// Set detection range
var _enemy_close = collision_circle(x, y, 75, obj_enemy_parent, true, true);
///

/// Attack
if (_enemy_close)
{
	if attack_cooldown == false // If cooldown false, attack
	{
		attack_cooldown = !attack_cooldown; // Flip value to true
		instance_create_layer(x + 0, y + 0, "AttacksProjectiles", obj_axe_attack);
	}
}
///

/// /// Cooldown	
if attack_cooldown == true // If cooldown true, start countdown
{
	_miliseconds += (delta_time * 0.000001) * room_speed; // timer

	/// Seconds
	if _miliseconds >= 60
	{
		_miliseconds -= 60;
		global._seconds -= 1;
	}
	///
	
	/// End of cooldown
	if global._seconds <= 0
	{
		attack_cooldown = !attack_cooldown;
	}
	///
}
/// ///