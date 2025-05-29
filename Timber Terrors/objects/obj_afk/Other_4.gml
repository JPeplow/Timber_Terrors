if global.last_afk_claim[0] = undefined
{
	/// Setting data for first time players
	saved_datetime = time;
	global.last_afk_claim = time;
	
}
else
{
	/// Setting data for returning players
	saved_datetime = global.last_afk_claim;
	
}