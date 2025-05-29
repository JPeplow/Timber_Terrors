/// scr_dispaly_quest_info(quest_index)
/// @param quest_index

function scr_display_quest_info()
{

	var _quest_index = argument0;
	var _quest = global.quest_list[| _quest_index];
	
	if (_quest != undefined)
	{
		show_debug_message("Quest name" + _quest[? "name"]);
		show_debug_message("Quest status" + string(_quest[? "status"]));
	}
	else
	{
		show_debug_message("Quest not found");
	}

}