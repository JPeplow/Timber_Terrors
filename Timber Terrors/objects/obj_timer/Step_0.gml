miliseconds += (delta_time * 0.000001) * room_speed; // Start timer

/// Miliseconds to seconds
if miliseconds >= 60
{
	miliseconds -= 60;
	global.seconds += 1;
	
	switch (global.seconds)
	{
		
		//case 5:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 10:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 15:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 20:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 25:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 30:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//	_enemies_to_spawn += 1;
		//break;
		
		//case 35:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 40:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 45:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//	global.basic_enemy_damage += 1;
		//break;
		
		//case 50:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		//case 55:
		//	repeat (_enemies_to_spawn)
		//	{
		//		scr_spawn_basic();
		//	}
		//break;
		
		case 60:
			//global.basic_enemy_max_hearts += 1;
			global.seconds -= 60;
			global.minuets += 1;
			
			//switch (global.minuets)
			//{
				
			//	case 5:
			//		scr_spawn_boss();
			//		with (obj_enemy_parent)
			//		{
			//			instance_destroy();
			//		}
			//	break;
				
			//}
			
		break;
		
	}
	
}
///


