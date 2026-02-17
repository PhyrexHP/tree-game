function valid_target(_x,_y,_state) {
    var _value = true;
    switch _state {
       case 0:
        _value = true;
       break;
       case 1:
        _value = collision_point(mouse_x,mouse_y,obj_floor_dirt,false,false);
        if (collision_point(mouse_x,mouse_y,obj_grid_entity,false,false)!=noone) {
            _value = noone;
        }
       break;
       case 2:
        _value = collision_point(mouse_x,mouse_y,obj_floor_grass,false,false);
        if (collision_point(mouse_x,mouse_y,obj_grid_entity,false,false)!=noone) {
            _value = noone;
        }
       break;
       case 3:
        
       break;
       case 4:
        
       break;
       case 5:
        
       break;
       case 6:
        
       break;
    }   
    return _value;
}
function Task (_x,_y) constructor {
	type = "";
    x=_x;
	y=_y;
	static finished_check = function(_args={}) {
		return (x == _args.x && y ==_args.y);
	}
    static on_finished = function(_args={}) {
    }
}

function WalkTask (_x,_y) : Task(_x,_y) constructor {
	type = "walk";
}

function PlantTask (_x,_y,_target) : Task(_x,_y) constructor {
	type = "plant";
    target = _target;
    static on_finished = function(_args={}) {
        with target {
            plant();
        }
    }
}

function DigTask (_x,_y,_target) : Task(_x,_y) constructor {
	type = "dig";
    target = _target;
    static on_finished = function(_args={}) {
        with target {
            dig();
        }
    }
}