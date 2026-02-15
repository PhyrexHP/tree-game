function Task () constructor {
	type = "";
	static finished_check = function(_args) {
	}
}

function WalkTask (_x,_y) : Task() constructor {
	type = "walk";
	x=_x;
	y=_y;
	
	static finished_check = function(_args) {
		return (x == _args.x && y ==_args.y);
	}
}

function PlantTask () : Task() constructor {
	type = "plant";
	x=_x;
	y=_y;
}