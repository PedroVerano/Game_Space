/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
 if alarm[0] <= 0 {
	image_alpha -= 0.05;
	
	// quando o alpha chega a zero ele se destroi
	if image_alpha <= 0 {
	instance_destroy()
	}
}else{
	image_alpha += 0.05
}