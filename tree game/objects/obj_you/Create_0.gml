tasks_array = [];
randomize();
friendColor = make_colour_rgb(irandom_range(0,255),irandom_range(0,255),irandom_range(0,255));
image_blend = friendColor;

function add_task(_task) {
    array_push(tasks_array, _task);
}