if attack_cooldown == false
{		
	_seconds = 10;
	attack_cooldown = !attack_cooldown;
	global.player_hearts -= 5;
}
	
if attack_cooldown == true // If cooldown true, start countdown
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