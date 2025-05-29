if enemy_data[? "Health Points"]  <= 0 // Check is hearts are below 0
{
	
	loot_table(enemy_name); // Run the loots table
	instance_destroy(); // Destroy the instance
	
}