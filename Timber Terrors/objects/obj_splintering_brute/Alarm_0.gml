if enemy_data[? "Health Points"]  <= 0 // Check is hearts are below 0
{
	
	loot_table("Splintering Brute"); // Run the loots table
	instance_destroy(); // Destroy the instance
	instance_create_layer(x, y, "AttacksProjectiles", obj_splintering_brute_death);
	
}