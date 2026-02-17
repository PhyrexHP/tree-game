level_width = 14;
level_height = 7;

level_arraytable = [0][0];

//populate
for (var _x = 0; _x < level_width; ++_x) {
    for (var _y = 0; _y < level_height; ++_y) {
        //center the grid on the screen
        var _xx = (_x + ((16 - level_width) div 2))*TILESIZE;
        var _yy = (_y + ((9 - level_height) div 2))*TILESIZE;
		var _floor = instance_create_layer(_xx,_yy,layer,obj_floor_grass);
		with _floor {
			grid_x = _x;
			grid_y = _y;
		}
		level_arraytable[_x][_y] = _floor;
	}
}

//levelgen
