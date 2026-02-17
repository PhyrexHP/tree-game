if array_first(tasks_array) = undefined exit;

var _finished = tasks_array[0].finished_check({x:x,y:y});
if (_finished) {
    tasks_array[0].on_finished();
	array_delete(tasks_array,0,1);
}
else {
	var _task = tasks_array[0];
	var _x_difference = _task.x - x;
	var _y_difference = _task.y - y;
	//move to task location
	if (_x_difference != 0) {
		if (_y_difference != 0) {
			if (random(1.0) > .5){
				x += sign(_x_difference);
			}
			else y += sign(_y_difference);
		}
		else x += sign(_x_difference);
	}
	else if (_y_difference != 0) {
		y += sign(_y_difference);
	}
}