
#macro SCREENWIDTH 336
#macro SCREENHEIGHT 189
var _window_width = display_get_width();
var _window_height = display_get_height();

var _integer_scaling = min(_window_width div SCREENWIDTH, _window_height div SCREENHEIGHT);

var _w = SCREENWIDTH * _integer_scaling;
var _h = SCREENHEIGHT * _integer_scaling;

var _xoffset = (_window_width-_w)/(2.0);
var _yoffset = (_window_height-_h)/(2.0);

shader_set(shd_crt);
shader_set_uniform_f(shader_get_uniform(shd_crt,"u_uSurface_Width"),_w);
shader_set_uniform_f(shader_get_uniform(shd_crt,"u_uSurface_Height"),_h);
draw_surface_stretched(application_surface,_xoffset,_yoffset,_w,_h);
shader_reset();
