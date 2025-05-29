/// Decection range
var _player_close = collision_circle(x, y, 160, obj_player_character, true, true);
///

/// Attack

if (_player_close)
{
	
	speed = 0;
	
	if attack_cooldown = false
	{		
		_seconds = 3;
		attack_cooldown = !attack_cooldown;
		instance_create_layer(x, y, "AttacksProjectiles", obj_fractured_scout_attack);
	}
}
else
{
	speed = real(enemy_data[? "Speed"]);
	event_inherited(); // Movement towards player
	// Parent event has to be here so that when the player comes within range
	// it doesnt keep moving
}

///

/// Attack Cooldown

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

///