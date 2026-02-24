repeat(10) 
{
    var _x = mouse_x + irandom(7);
    var _y = mouse_y + irandom(7);
    with array_pop(array_acorns_available) 
    {
        x = _x;
        y = _y;    
    }
}