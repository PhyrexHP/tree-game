/// @description location tracking and switching
x = mouse_x;
y = mouse_y;

switch (global.cursor_state) {
    //cursor mode
    case 0:
        
        break;
    //seed mode
    case 1:
        
        break;
    //dig mode
    case 2:
        
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

if mouse_check_button(mb_left){
	image_index = 1;
} else {
	image_index = 0;
}

if mouse_check_button(mb_right) {
	slice = (floor(((darctan2(mouse_y - 95,mouse_x - 168)+90)) / (360/7)) + 7) % 7;
}
if mouse_check_button_released(mb_right) {
    global.cursor_state = slice;
    sprite_index = tools_sprites[slice];
}