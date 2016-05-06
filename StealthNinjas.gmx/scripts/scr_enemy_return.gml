/// scr_enemy_return();
// The reference to the ggrid
grid = obj_guard_controller.guard_grid;
//return to start point
mp_grid_path(grid, path, x,y, return_x, return_y, true);

if(awareness!=0){awareness=0};

//show_debug_message(string(return_x));

path_start(path, move_speed, 0, false);

show_debug_message("ENEMY RETURN CALLED");
