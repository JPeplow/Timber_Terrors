var _current_datetime = date_current_datetime() 

/// Calculating time afk, based on saved_datetime

time_afk[3] = date_get_hour(_current_datetime) - saved_datetime[3];
time_afk[4] = date_get_minute(_current_datetime) - saved_datetime[4];
time_afk[5] = date_get_second(_current_datetime) - saved_datetime[5];

// Fixing an issue where timer goes to negatives
if time_afk[5] < 0
{
	time_afk[4] -= 1;
	time_afk[5] = (60 + time_afk[5]);
}

if time_afk[4] < 0
{
	time_afk[3] -= 1;
	time_afk[4] = (60 + time_afk[4]);
}

if time_afk[3] < 0
{
	time_afk[3] = (60 + time_afk[3]);
}
//

///