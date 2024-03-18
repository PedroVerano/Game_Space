/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_up){
	//Troca o sprite quando apertar a tecla
	sprite_index = spr_nave_andando;
	speed = 2;
} else if keyboard_check(vk_down){
	sprite_index = spr_nave_andando;
	speed = -2;
} else {
	sprite_index = spr_nave_parada;
	speed = 0;
}
if keyboard_check(vk_left){
	direction += 3;
}
if keyboard_check(vk_right){
	direction -= 3;
}

// muda o angulo do sprite para ser igual a direção
image_angle = direction;
// Teleporta a nave para o outro lado se ela sair dos limetes da cena
move_wrap(true, true, 0)