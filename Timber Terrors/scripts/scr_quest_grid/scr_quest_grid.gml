/////@descrpition create_ds_grid_from_array
/////@arg array

//function create_ds_grid_from_array()
//{
//	var _ds_grid;
//	var _array = argument0
//	var _array_num_quests = array_length(_array);
//	var _array_w = array_length(_array[0]);

//	_ds_grid = ds_grid_create(_array_w, _array_num_quests);

//	var _yy = 0; repeat(_array_num_quests)
//	{
//		var _quest_array = _array[_yy];
	
//		var _xx = 0; repeat(_array_w)
//		{
//			_ds_grid[# _xx, _yy] = _quest_array[_xx];
//			_xx++;
//		}

//		_yy++;
//	}

//	return _ds_grid;
//}