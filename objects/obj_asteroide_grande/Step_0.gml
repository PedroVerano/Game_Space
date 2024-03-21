/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true,true,0)

image_angle += rotac;

if vida <=0 {
	repeat(3){
	instance_create_layer(x,y,"Instances",obj_asteroide_medio);
	}
	repeat(13){
	instance_create_layer(x,y,"Instances",obj_detritos);
	}
	instance_destroy();
	
}