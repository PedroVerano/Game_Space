/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//variavel que cria um sistema de cores
var _c = make_color_rgb(50, 205, 50);

draw_set_font(fnt_basica);
draw_text_color(20, 20,"Vidas: " + string(obj_nave.vida), _c, _c, _c, _c, 1);

draw_text_color(20, 40, "Score: " + string(global.pont), c_white, c_white, c_white, c_white, 1);