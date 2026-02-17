var _valid_target = valid_target(mouse_x,mouse_y,global.cursor_state);
switch global.cursor_state {
    case 0:
        add_task(new WalkTask(mouse_x + round(random_range(-7,7)),mouse_y + round(random_range(-7,7))));
    break;
    case 1:
        if (_valid_target!=noone) add_task(new PlantTask(mouse_x,mouse_y,_valid_target));
    break;
    case 2:
        if (_valid_target!=noone) add_task(new DigTask(mouse_x,mouse_y,_valid_target));
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

