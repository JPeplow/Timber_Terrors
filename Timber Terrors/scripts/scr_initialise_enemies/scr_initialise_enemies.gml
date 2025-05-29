// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialise_enemies(){
	
	if (!variable_global_exists("enemy_data"))
	{	
		global.enemy_data = ds_map_create();
	}
	
	#region Rotclaw (Coded)
	
	global.enemy_data[? "Rotclaw"] = ds_map_create();
	global.enemy_data[? "Rotclaw"][? "Type"] = ["Basic", "Forest"];
	global.enemy_data[? "Rotclaw"][? "Health Points"] = 2;
	global.enemy_data[? "Rotclaw"][? "Damage Points"] = 1;
	global.enemy_data[? "Rotclaw"][? "Speed"] = 1;
	global.enemy_data[? "Rotclaw"][? "Attack Range"] = 1;
	global.enemy_data[? "Rotclaw"][? "Abilities"] = [];
	global.enemy_data[? "Rotclaw"][? "Drops"] = ["Wood"];
	
	#endregion
	#region Splintering Brute (Coded)
	
	global.enemy_data[? "Splintering Brute"] = ds_map_create();
	global.enemy_data[? "Splintering Brute"][? "Type"] = ["Heavy", "Forest"];
	global.enemy_data[? "Splintering Brute"][? "Health Points"] = 20;
	global.enemy_data[? "Splintering Brute"][? "Damage Points"] = 5;
	global.enemy_data[? "Splintering Brute"][? "Speed"] = .75;
	global.enemy_data[? "Splintering Brute"][? "Attack Range"] = 1.25;
	global.enemy_data[? "Splintering Brute"][? "Abilities"] = ["Bone Sharpnel Burst"];
	global.enemy_data[? "Splintering Brute"][? "Drops"] = ["Bone", "Flesh"];
	
	#endregion
	#region Branchbeast (Coded)
	
	global.enemy_data[? "Branchbeast"] = ds_map_create();
	global.enemy_data[? "Branchbeast"][? "Type"] = ["Beast", "Forest"];
	global.enemy_data[? "Branchbeast"][? "Health Points"] = 1;
	global.enemy_data[? "Branchbeast"][? "Damage Points"] = 3;
	global.enemy_data[? "Branchbeast"][? "Speed"] = 1.5;
	global.enemy_data[? "Branchbeast"][? "Attack Range"] = 1;
	global.enemy_data[? "Branchbeast"][? "Abilities"] = ["Charge"];
	global.enemy_data[? "Branchbeast"][? "Drops"] = ["Wood"];
	
	#endregion
	#region Thornspine Revenant (Coded)
	
	global.enemy_data[? "Thornspine Revenant"] = ds_map_create();
	global.enemy_data[? "Thornspine Revenant"][? "Type"] = ["Boss", "Forest"];
	global.enemy_data[? "Thornspine Revenant"][? "Health Points"] = 65;
	global.enemy_data[? "Thornspine Revenant"][? "Damage Points"] = 25;
	global.enemy_data[? "Thornspine Revenant"][? "Speed"] = .5;
	global.enemy_data[? "Thornspine Revenant"][? "Attack Range"] = 2.5;
	global.enemy_data[? "Thornspine Revenant"][? "Abilities"] = ["BoneWhip"];
	global.enemy_data[? "Thornspine Revenant"][? "Drops"] = ["Bone", "Wood", "Bone Whip"];
	
	#endregion
	#region Fractured Scout (Coded)
	
	global.enemy_data[? "Fractured Scout"] = ds_map_create();
	global.enemy_data[? "Fractured Scout"][? "Type"] = ["Basic", "Ranged", "Forest"];
	global.enemy_data[? "Fractured Scout"][? "Health Points"] = 2;
	global.enemy_data[? "Fractured Scout"][? "Damage Points"] = 2;
	global.enemy_data[? "Fractured Scout"][? "Speed"] = 0.75;
	global.enemy_data[? "Fractured Scout"][? "Attack Range"] = 5;
	global.enemy_data[? "Fractured Scout"][? "Abilities"] = [];
	global.enemy_data[? "Fractured Scout"][? "Drops"] = ["Bone"];
	
	#endregion
}