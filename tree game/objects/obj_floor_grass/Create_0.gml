event_inherited();
image_speed = 0;
image_index = irandom_range(0,2);

dig = function() {
    with instance_create_layer(x,y,layer,obj_floor_dirt) {
        grid_x = other.grid_x;
        grid_y = other.grid_y;
    }
    instance_destroy();
}