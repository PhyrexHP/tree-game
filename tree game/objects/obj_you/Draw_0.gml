var _task = array_first(tasks_array);
if array_first(tasks_array) = undefined {
	sprite_index = spr_you;
	draw_self();
	exit;
}
if _task.type = "walk"{
	sprite_index = spr_youWalk;
}
if _task.type = "plant"{
	sprite_index = spr_youPlant;
}
draw_self();