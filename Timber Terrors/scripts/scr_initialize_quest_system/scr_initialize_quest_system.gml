function scr_initilize_quest_system()
{
	if (!variable_global_exists("quest_list"))
	{
		global.quest_list = ds_list_create();
	}
	
	#region Common Quests
	
	var _quest_common1 = scr_create_quest("c1", "Defeat Enemies", "Defeat 15 enemies", ["coins", 10], "Common", -1);
	ds_list_add(global.quest_list, _quest_common1);
	
	var _quest_common2 = scr_create_quest("c2", "Collect Coins", "Collect 25 coins", ["wood", 10], "Common", -1);
	ds_list_add(global.quest_list, _quest_common2);
	
	var _quest_common3 = scr_create_quest("c3", "Collect Wood", "Collect 10 wood", ["wood", 5], "Common", -1);
	ds_list_add(global.quest_list, _quest_common3);
	
	#endregion
	#region Uncommon Quests
	
	var _quest_uncommon1 = scr_create_quest("uc1", "Defeat Enemies", "Defeat 50 enemies", ["coins", 25, "wood", 15], "Uncommon", -1);
	ds_list_add(global.quest_list, _quest_uncommon1);
	
	var _quest_uncommon2 = scr_create_quest("uc2", "Collect Coins", "Collect 100 coins", ["wood", 35], "Uncommon", -1);
	ds_list_add(global.quest_list, _quest_uncommon2);
	
	#endregion
	#region Rare Quests
	
	
	
	#endregion
	#region Epic Quests
	
	
	
	#endregion
	#region Legendary Quests
	
	
	
	#endregion
	
}