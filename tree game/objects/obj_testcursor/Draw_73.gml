if mouse_check_button(mb_right) {
    draw_sprite(spr_sevenslice,slice,168,95);
    for (var _i = 0; _i < 7; _i++) {
    	if tools_array[_i] {
            draw_sprite(tools_sprites[_i],0,tools_x[_i],tools_y[_i]);
        }
    }
}
draw_self();