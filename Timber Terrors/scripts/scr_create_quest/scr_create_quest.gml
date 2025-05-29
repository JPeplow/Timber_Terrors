/// scr_create_quest(id, name, objective, reward, rarity, status)
/// @param id
/// @param name
/// @param objective
/// @param reward
/// @param rarity
/// @param status

function scr_create_quest()
{
	var _new_quest = ds_map_create();
	_new_quest[? "id"] = argument0
	_new_quest[? "name"] = argument1;
	_new_quest[? "objective"] = argument2;
	_new_quest[? "reward"] = argument3;
	_new_quest[? "rarity"] = argument4;
	_new_quest[? "status"] = argument5;
	
	return _new_quest;
	
}