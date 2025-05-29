if (flight_time != 0)
{
	miliseconds += (delta_time * 0.000001) * room_speed;
	
	if (miliseconds >= 60)
	{
		miliseconds -= 60;
		 flight_time -= 1;
	}
	
	if (flight_time = 0)
	{
		instance_destroy();
	}
}
