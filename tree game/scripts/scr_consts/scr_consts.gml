#macro TILESIZE 21
function dec_to_bin(dec, len = 1) 
{
    var bin = "";
 
    if (dec < 0) {
        len = max(len, ceil(logn(2, 2 * abs(dec))));
    }
 
    while (len-- || dec) {
        bin = ((dec & 1) ? "1" : "0") + bin;
        dec = dec >> 1;
    }
 
    return bin;
}