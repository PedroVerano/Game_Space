/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//altera o "outro" objeto que foi colidido. no caso o asteroide grande
audio_play_sound(snd_hit, 1, false);
var _dano = dano
with(other){
	vida -= _dano
}

instance_destroy();


