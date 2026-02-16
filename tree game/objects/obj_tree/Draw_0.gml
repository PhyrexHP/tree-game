//if the tree is growing up, draw the parts
if age > 0 {
    //roots
    draw_sprite(sprites_table[1], 0, x, y);
    //trunk
    for (var _i = 1; _i < age-1; _i++) {
    	draw_sprite(sprites_table[2], 0, x, y-(_i*TILESIZE));
    }
    //canopy
    draw_sprite(sprites_table[3], 0, x, y-((age-1)*TILESIZE));
}
//if age is 0 just make a sapling
else {
    draw_sprite(sprites_table[0], 0, x, y);
}