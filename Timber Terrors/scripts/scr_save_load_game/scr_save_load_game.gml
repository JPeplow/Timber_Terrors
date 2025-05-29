/// /// Save Game /// ///

function save_game_new()
{
	
	/// Create map
	var _root_list = ds_list_create();
	
	var _map = ds_map_create();
	ds_list_add( _root_list, _map);
	ds_list_mark_as_map( _root_list, ds_list_size( _root_list) -1 );
	///
	
	/// Save relevant data
	ds_map_add( _map, "saved_coins", global.total_coins);
	ds_map_add( _map, "saved_wood", global.total_wood);
	ds_map_add( _map, "saved_bones", global.total_bones);
	ds_map_add( _map, "saved_flesh", global.total_flesh);
	ds_map_add( _map, "saved_pb0", global.personal_best[0]);
	ds_map_add( _map, "saved_pb1", global.personal_best[1]);
	ds_map_add( _map, "damage_level", global.damage_level);
	ds_map_add( _map, "health_level", global.health_level);
	ds_map_add( _map, "total_enemies_defeated", global.total_enemies_defeated);
	ds_map_add( _map, "quest_levels_easy", global.quest_level_easy);
	ds_map_add( _map, "current_pfp", global.current_pfp);
	ds_map_add( _map, "volume_level", global.volume_level);
	ds_map_add( _map, "last_afk_claim[0]", global.last_afk_claim[0]);
	ds_map_add( _map, "last_afk_claim[1]", global.last_afk_claim[1]);
	ds_map_add( _map, "last_afk_claim[2]", global.last_afk_claim[2]);
	ds_map_add( _map, "last_afk_claim[3]", global.last_afk_claim[3]);
	ds_map_add( _map, "last_afk_claim[4]", global.last_afk_claim[4]);
	ds_map_add( _map, "last_afk_claim[5]", global.last_afk_claim[5]);
	///
	
	/// Wrap and save
	var _wrapper = ds_map_create();
	ds_map_add_list( _wrapper, "ROOT", _root_list);
	
	var _string = json_encode( _wrapper);
	savetostring("savedgame.txt", _string);
	///
	
	ds_map_destroy( _wrapper); // Destroy map
	
}

/// /// Load Game /// ///

function load_game_new()
{
	
	if ( file_exists("savedgame.txt"))
	{
		
		/// Load save data
		var _wrapper = loadfromstring("savedgame.txt");
		var _list = _wrapper[? "ROOT"];
		
		var _map = _list[| 0];
		///
			
		/// Loading relevant data
		var _saved_coins = _map[? "saved_coins"];
		var _saved_wood = _map[? "saved_wood"];
		var _saved_bones = _map[? "saved_bones"];
		var _saved_flesh = _map[? "saved_flesh"];
		var _saved_pb0 = _map[? "saved_pb0"];
		var _saved_pb1 = _map[? "saved_pb1"];
		var _saved_damage_level = _map[? "damage_level"];
		var _saved_health_level = _map[? "health_level"];
		var _saved_total_enemies_defeated = _map[? "total_enemies_defeated"];
		var _saved_quest_levels_easy = _map[? "quest_levels_easy"];
		var _saved_current_pfp = _map[? "current_pfp"];
		var _saved_volume_level = _map[? "volume_level"];
		var _saved_last_afk_claim = [_map[? "last_afk_claim[0]"],
									 _map[? "last_afk_claim[1]"],
									 _map[? "last_afk_claim[2]"],
									 _map[? "last_afk_claim[3]"],
									 _map[? "last_afk_claim[4]"],
									 _map[? "last_afk_claim[5]"]];

		///
		
		/// Updating game data
		global.total_coins = _saved_coins;
		global.total_wood = _saved_wood;
		global.total_bones = _saved_bones;
		global.total_flesh = _saved_flesh;
		global.personal_best[0] = _saved_pb0;
		global.personal_best[1] = _saved_pb1;
		global.damage_level = _saved_damage_level;
		global.health_level = _saved_health_level;
		global.total_enemies_defeated = _saved_total_enemies_defeated;
		global.quest_level_easy = _saved_quest_levels_easy;
		global.current_pfp = _saved_current_pfp;
		global.volume_level = _saved_volume_level;
		global.last_afk_claim = _saved_last_afk_claim;
		///

		
		ds_map_destroy( _wrapper); // Destroy map
		
	}
}