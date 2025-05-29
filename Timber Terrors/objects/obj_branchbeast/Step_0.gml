if activate_ability = true
{
	
	direction = direction + random_range(-4, 4);
	speed = 3;
	
	miliseconds += (delta_time * 0.000001) * room_speed;
	
	if miliseconds >= 60
	{
		seconds += 1;
		miliseconds -= 60;
	}
	
	if seconds = 3
	{
		activate_ability = !activate_ability;
		branchbeast_data[? "Damage Points"] = 3;
		speed = real(branchbeast_data[? "Speed"]);
		seconds = 0;
		ability_cooldown = !ability_cooldown;
	}

}
else
{

	var _player_close = collision_circle(x, y, 96, obj_player_character, true, true);

	if (_player_close)
	{
	
		if ability_cooldown = false
		{
			speed = 0;
		
			miliseconds += (delta_time * 0.000001) * room_speed;
		
			if miliseconds >= 60
			{
				seconds += 1;
				miliseconds -= 0;
			}
		
			if seconds = 2
			{
				activate_ability = !activate_ability;
				enemy_data[? "Damage Points"] += 3;
				seconds = 0;
			}
		}
		else
		{
			enemy_data[? "Damage Points"] = 3;
			speed = real(enemy_data[? "Speed"]);
			event_inherited();
		}
	}
	else
	{
		enemy_data[? "Damage Points"] = 3;
		speed = real(enemy_data[? "Speed"]);
		event_inherited();
	}

	/// Ability Cooldown

	if ability_cooldown == true
	{
		miliseconds += (delta_time * 0.000001) * room_speed; // timer

		/// Seconds
		if miliseconds >= 60
		{
			miliseconds -= 60;
			seconds += 1;
		}
		///
	
		/// End of cooldown
		if seconds = 10
		{
			ability_cooldown = !ability_cooldown;
			seconds = 0;
		}
		///
	}

	///
}