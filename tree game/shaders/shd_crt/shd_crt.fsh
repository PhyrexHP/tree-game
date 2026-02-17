//
// Shader to add scanlines to the tree game
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_uSurface_Height;
uniform float u_uSurface_Width;

#define GAME_HEIGHT 189.0
#define GAME_WIDTH 336.0
#define PI 3.1415
#define TAU 6.283

void main()
{
    float vertical_division = ((u_uSurface_Height/GAME_HEIGHT));
    
    vec4 color = vec4(1.0, 1.0, 1.0, 1.0);
    vec4 scancolor = vec4(0.4, 0.4, 0.15, 1.0);
    
    //scanlines section
    vec2 pixCoord = vec2(floor(v_vTexcoord.x * u_uSurface_Width), floor(v_vTexcoord.y * u_uSurface_Height));
    float subpixel_y = mod(pixCoord.y,vertical_division) - (vertical_division/2.0);
    //float scanfuzz = clamp(pow(subpixel_y,2.0)/8.0,0.0,1.0);
    float scanfuzz = (cos((subpixel_y+.5)*(TAU/vertical_division)) +1.0)/2.0;
    color = mix(scancolor, color, clamp(scanfuzz+.1,0.0,1.0));
    
    //horizontal blur section
    //plan: make a horizontal kernel adding the 6 pixels to the left and 6 pixels to the right
    color = color * texture2D( gm_BaseTexture, v_vTexcoord );
    
    //output fragment
    //color = vec4(mod(pixCoord.y,vertical_division)/vertical_division,0.0,0.0,1.0);
    gl_FragColor = color;
}
