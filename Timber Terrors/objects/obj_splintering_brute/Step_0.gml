event_inherited();

var _player_close = collision_circle(x, y, 40, obj_player_character, true, true);

if (_player_close)
{
	
	if attack_cooldown = false
	{		
		_seconds = 3;
		attack_cooldown = !attack_cooldown;
		global.player_hearts -= enemy_data[? "Damage Points"];
	}
}

if attack_cooldown == true
{
	_miliseconds += (delta_time * 0.000001) * room_speed; // timer

	/// Seconds
	if _miliseconds >= 60
	{
		_miliseconds -= 60;
		_seconds -= 1;
	}
	///
	
	/// End of cooldown
	if _seconds <= 0
	{
		attack_cooldown = !attack_cooldown;
	}
	///
}