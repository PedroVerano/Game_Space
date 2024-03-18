/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_up){
	//Troca o sprite quando apertar a tecla
	sprite_index = spr_nave_andando;
	speed = veloc;
} else if keyboard_check(vk_down){
	sprite_index = spr_nave_andando;
	speed = -veloc;
} else {
	sprite_index = spr_nave_parada;
	speed = lerp(speed,0,0.05);
}
if keyboard_check(vk_left){
	direc = 3;
} else if keyboard_check(vk_right){
	direc = -3;
} else {
	direc = lerp(direc, 0, 0.08);
}

if keyboard_check_pressed(vk_space){
	// cria o projetil
	var _inst =  instance_create_layer(x,y,"Instances",obj_projetil);
	_inst.speed = 6;
	_inst.direction = direction;
	_inst.image_angle = direction;
}


direction += direc
// muda o angulo do sprite para ser igual a direção
image_angle = direction;
// Teleporta a nave para o outro lado se ela sair dos limetes da cena
move_wrap(true, true, 0);

