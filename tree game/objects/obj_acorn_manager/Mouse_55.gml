repeat(10) 
{
    var _x = mouse_x + irandom(21);
    var _y = mouse_y + irandom(21);
    with array_pop(array_acorns_available) 
    {
        x = _x;
        y = _y;    
    }
}