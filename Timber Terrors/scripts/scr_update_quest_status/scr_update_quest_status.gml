/// scr_update_quest_status( quest_index, new_status)
/// @param quest_index
/// @param new_status

function scr_update_quest_status()
{

	var _quest_index = argument0;
	var _new_status = argument1;
	
	var _quest = global.quest_list[| _quest_index];
	if (_quest != undefined)
	{
		_quest[? "status"] = _new_status;
	}

}