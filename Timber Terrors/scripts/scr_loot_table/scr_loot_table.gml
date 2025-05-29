/// loot_table(defeated_enemy);
/// @param defeated_enemy

function loot_table(){
	
	defeated_enemy = argument0

	switch (defeated_enemy)
	{
		case "Rotclaw":
		
			loot = irandom_range(0, 100);
			instance_create_layer(x, y, "WorldObjects", obj_xp_small);
			
			if loot <= 65
			{
				instance_create_layer(x, y, "WorldObjects", obj_wood);
			}
			
		break;
			
		case "Splintering Brute":
		
			loot = irandom_range(0, 100);
			instance_create_layer(x, y, "WorldObjects", obj_xp_small);
			
			if loot <= 85
			{
				instance_create_layer(x, y, "WorldObjects", obj_bone);
			}
			
			if loot <= 45
			{
				instance_create_layer(x, y, "WorldObjects", obj_flesh);
			}
			
		break;
			
		case "Branchbeast":
			
			loot = irandom_range(0, 100);
			instance_create_layer(x, y, "WorldObjects", obj_xp_small);
			
			if loot <= 45
			{
				instance_create_layer(x, y, "WorldObjects", obj_wood);
			}
			
		break;
			
		case "Thornspine Revenant":
		
			loot = irandom_range(0, 100);
			instance_create_layer(x, y, "WorldObjects", obj_xp_small);
			
			if loot <= 85
			{
				instance_create_layer(x, y, "WorldObjects", obj_bone);
			}
			
			if loot <= 45
			{
				instance_create_layer(x, y, "WorldObjects", obj_flesh);
			}
			
			if loot <= 5
			{
				instance_create_layer(x, y, "WorldObjects", obj_bone_whip);
			}
			
		break;
			
		case "Fractured Scout":
			
			loot = irandom_range(0, 100);
			instance_create_layer(x, y, "WorldObjects", obj_xp_small);
			
			if loot <= 65
			{
				instance_create_layer(x, y, "WorldObjects", obj_bone);
			}
			
		break;
			
	}
}