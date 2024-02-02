/// @description Insert description here
// You can write your code in this editor


global.grid = mp_grid_create(0, 0, room_width/ 30, room_height / 30, 30,30);

mp_grid_add_instances(global.grid, oEntity, false);