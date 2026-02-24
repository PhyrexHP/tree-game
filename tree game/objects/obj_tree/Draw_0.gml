//if the tree is growing up, draw the parts
if (height_int > 0) 
{
    //roots
    draw_sprite(sprites_array[1], real(subimages_b & 0b1), x, y);
    
    //canopy
    draw_sprite(sprites_array[3], real(subimages_b & 0b10), x, y-((height_int*TILESIZE)));
    
    //trunk
    for (var _i = 1; _i < height_int; _i++) {
    	draw_sprite(sprites_array[2], real(subimages_b & (0b00 + (0b10 <<(_i)))), x, y-(_i*TILESIZE));
    }
    
}
//if age is 0 just make a sapling
else 
{
    draw_sprite(sprites_array[0], 0, x, y);
}