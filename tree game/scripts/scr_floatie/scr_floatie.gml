function floatie(_x,_y,_value,_time=1,_color=c_white,_size=1){
    with instance_create_layer(_x,_y,layer,obj_floatie) {
        time_float = _time;
        color = _color;
        value_string = _value;
        size = _size;
    }
}
