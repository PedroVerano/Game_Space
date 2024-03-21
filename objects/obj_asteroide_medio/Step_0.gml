/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true,true,0)

image_angle += rotac;

if vida <=0 {
	audio_play_sound(snd_esplosao_asteroide, 1, false);
	global.pont +=20;
	repeat(3){
	instance_create_layer(x,y,"Instances",obj_asteroide_pequeno);
	}
	repeat(10){
	instance_create_layer(x,y,"Instances",obj_detritos);
	}
	instance_destroy();
}