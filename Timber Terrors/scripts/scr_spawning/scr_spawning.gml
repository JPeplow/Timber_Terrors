/// /// Spawn Basic Enemy /// ///



// Spawn 3 enemies within area around player
function scr_spawn_basic()
{
	
	var _direction = irandom_range(1, 4)
	
	
	switch (_direction)
	{
		
		case 1: // Left
			
			var _left = irandom_range(206,356);
			instance_create_layer(obj_player_character.x + _left, obj_player_character.y, "Characters", obj_basic_enemy);

		break;
		
		case 2: // Right
		
			var _right = irandom_range(-206, -356);
			instance_create_layer(obj_player_character.x + _right, obj_player_character.y, "Characters", obj_basic_enemy);

		break;
		
		case 3: // Up
		
			var _up = irandom_range(-457, -607);
			instance_create_layer(obj_player_character.x, obj_player_character.y + _up, "Characters", obj_basic_enemy);

		break;
		
		case 4: // Down
		
			var _down = irandom_range(457, 607);
			instance_create_layer(obj_player_character.x , obj_player_character.y + _down, "Characters", obj_basic_enemy);

		break;
	
	}
	
}

/// /// Spawn Boss Enemy /// ///

// Spawn boss within area around player
function scr_spawn_boss()
{
	
	var _direction = irandom_range(1, 4)
	
	
	switch (_direction)
	{
		
		case 1: // Left
			
			var _left = irandom_range(206,356);
			instance_create_layer(obj_player_character.x + _left, obj_player_character.y, "Characters", obj_boss_enemy);

		break;
		
		case 2: // Right
		
			var _right = irandom_range(-206, -356);
			instance_create_layer(obj_player_character.x + _right, obj_player_character.y, "Characters", obj_boss_enemy);

		break;
		
		case 3: // Up
		
			var _up = irandom_range(-457, -607);
			instance_create_layer(obj_player_character.x, obj_player_character.y + _up, "Characters", obj_boss_enemy);

		break;
		
		case 4: // Down
		
			var _down = irandom_range(457, 607);
			instance_create_layer(obj_player_character.x , obj_player_character.y + _down, "Characters", obj_boss_enemy);

		break;
	
	}
	
}


