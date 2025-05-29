function scr_new_quest()
{

	random_quest = irandom(ds_list_size(global.quest_list) - 1);
	global.chosen_quest = global.quest_list[| random_quest];
	
	
		
	if (global.chosen_quest[? "status"] == 2)
	{
		random_quest = irandom(ds_list_size(global.quest_list) - 1);
		show_debug_message("Selected quest: " + string(random_quest));
		show_debug_message(global.quest_list[| random_quest]);
		global.chosen_quest = global.quest_list[| random_quest];
	}
		
	
	scr_update_quest_status(random_quest, 0);
}

