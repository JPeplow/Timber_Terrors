with (obj_btn_quests)
{
	
	switch (global.chosen_quest[? "status"])
	{
		case 0:
	
			draw_text(x + 128, y + 20, global.chosen_quest[? "name"]);
			draw_text(x + 128, y + 40, global.chosen_quest[? "objective"]);
			
		break;
		
		case 1:
		
			draw_text(x + 128, y + 20, global.chosen_quest[? "name"]);
			draw_text(x + 128, y + 40, "Completed");
			
		break;
		
		case -1:
			draw_text(x + 128, y + 20, "");
			draw_text(x + 128, y + 40, "");
		break;
		
		case 2:
		break;
	}

}