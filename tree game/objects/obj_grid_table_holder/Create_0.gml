/// @description Insert description here
// You can write your code in this editor
level_arraytable = [[-1,-1,-1,-1,-1,-1,-1],
					[-1,-1,-1,-1,-1,-1,-1],
					[-1,-1,-1,-1,-1,-1,-1],
					[-1,-1,-1,-1,-1,-1,-1],
					[-1,-1,-1,-1,-1,-1,-1],
					[-1,-1,-1,-1,-1,-1,-1],
					[-1,-1,-1,-1,-1,-1,-1]];

//populate
for (var _x = 0; _x < 7; ++_x) {
    for (var _y = 0; _y < 7; ++_y) {
		var _floor = instance_create_layer(_x*21,_y*21,layer,obj_grid_floor);
		with _floor {
			grid_x = _x;
			grid_y = _y;
		}
		level_arraytable[_x][_y] = _floor;
	}
}