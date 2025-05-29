switch (state)
{
	case "INACTIVE":
	
	break;
	
	case "ACTIVE":
	
		with (obj_player_character)
		{
			var _enemy_close = collision_circle(x, y, 320, obj_enemy_parent, true, true);
			
			if (_enemy_close)
			{
				instance_create_layer(obj_player_character.x, obj_player_character.y, "AttacksProjectiles", obj_bear_trap_attack);
				
				with (obj_bear_trap)
				{
					_seconds = 3;
					state = "RECHARGING";
				}
			}

			///

		}
	
	break;
	
	case "RECHARGING":
	
		_miliseconds += (delta_time * 0.000001) * room_speed;
		
		if _miliseconds >= 60
		{
			_miliseconds -= 60;
			_seconds -= 1;
		}
		
		if _seconds <= 0
		{
			state = "ACTIVE";
		}
		
	break;
	
}