//show cursor selection in world
var _entity;
switch global.cursor_state {
    case 1:
        _entity = valid_target(mouse_x,mouse_y,global.cursor_state);
        if (_entity!=noone) draw_sprite(spr_tile_select,0,_entity.x, _entity.y);
        /*entity = collision_point(mouse_x,mouse_y,obj_floor_dirt,false,false);
        if (_entity!=noone && collision_point(mouse_x,mouse_y,obj_grid_entity,false,false)==noone) {
            draw_sprite(spr_tile_select,0,_entity.x, _entity.y);
        }*/
        break;
    case 2:
        _entity = valid_target(mouse_x,mouse_y,global.cursor_state);
        if (_entity!=noone) draw_sprite(spr_tile_select,0,_entity.x, _entity.y);
        //_entity = collision_point(mouse_x,mouse_y,obj_floor_grass,false,false);
        //if (_entity!=noone && collision_point(mouse_x,mouse_y,obj_grid_entity,false,false)==noone) {
            //draw_sprite(spr_tile_select,0,_entity.x, _entity.y);
        //}
        break;
}
