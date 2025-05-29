current_datetime = date_current_datetime() 

time = [date_get_day(current_datetime),
		date_get_month(current_datetime),
		date_get_year(current_datetime),
		date_get_hour(current_datetime),
		date_get_minute(current_datetime),
		date_get_second(current_datetime)];
		
time_afk = [0, 0, 0, 0, 0, 0];

saved_datetime = [];