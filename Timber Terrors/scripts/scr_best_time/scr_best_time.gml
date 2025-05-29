/// /// Best Time /// ///

function best_time()
{

	var _best_time = [global.personal_best[0], global.personal_best[1]]; // Current best time
	
	/// Compare and overwrite if higher
	if global.minuets >= _best_time[0]
	{
		global.personal_best[0] = global.minuets;
		
		if global.seconds > _best_time[1]
		{
			global.personal_best[1] = global.seconds;
		}
	}

}
