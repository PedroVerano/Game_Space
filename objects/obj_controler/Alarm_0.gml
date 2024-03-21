/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomize();

if room == rm_jogo {

var _melhoria = choose(obj_melhoria_escudo, obj_melhoria_projetil);
instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Instances", _melhoria);

alarm[0] = 600;
}
