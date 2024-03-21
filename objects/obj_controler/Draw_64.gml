/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//variavel que cria um sistema de cores
var _c = make_color_rgb(50, 205, 50);
var _c2 = make_color_rgb(131,68,87);

var _texto = "Parabens! Voce atingiu 1000 pontos ! Se quiser jogar novamente aperte R"

//Pegando a altura e a largura da janela
var _largura =display_get_width();
var _altura = display_get_height();

// faz a hud aparecer somente na "sala" do jogo
if room == rm_jogo {
	draw_set_font(fnt_basica);
	draw_text_color(20, 20,"Vidas: " + string(obj_nave.vida), _c, _c, _c, _c, 1);

	draw_text_color(20, 40, "Score: " + string(global.pont), c_white, c_white, c_white, c_white, 1);
	
}else if room == rm_final {
	//escreve al centro da janela
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_largura/3, _altura/3 , _texto, 80, 900, _c2, _c2, _c2, _c2, 1);
	
	if keyboard_check_pressed(ord("R")) {
		game_restart();
	}
}