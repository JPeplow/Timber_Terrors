if room_get_name(room) = "rm_play_area"
{
	/// Check if player still alive
	if global.player_hearts <= 0
	{
		best_time()
		save_game_new();
		//global.defeated = !global.defeated;
		with (obj_game_manager)
		{
			state = "DEFEATED";
		}
		
	}
	///
}