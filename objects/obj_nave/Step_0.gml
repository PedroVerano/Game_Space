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

if keyboard_check_pressed(vk_space){
	// cria o projetil
	var _inst =  instance_create_layer(x,y,"Instances",obj_projetil);
	_inst.speed = 6;
	_inst.direction = direction;
	_inst.image_angle = direction;
}


// muda o angulo do sprite para ser igual a direção
image_angle = direction;
// Teleporta a nave para o outro lado se ela sair dos limetes da cena
move_wrap(true, true, 0);

