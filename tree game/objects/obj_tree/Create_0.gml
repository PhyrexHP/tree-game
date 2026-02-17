event_inherited();
height_int = 0;
age_int = 0;
genome_b = 0b00000000;
stretch = irandom(4)+2;
//0 = sapling, 1 = roots, 2 = trunk, 3 = canopy
sprites_array = [spr_sapling, spr_roots, spr_trunk, spr_cap];
//append tree subimage choices
subimages_b = irandom(1);

randomise();

age = function() {
    age_int++;
    if (1/(stretch+.01)) < random(1) {
        stretch--;
        height_int++;
        subimages_b = subimages_b + (irandom(1) << height_int);
    }
}