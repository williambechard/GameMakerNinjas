/// scr_enemy_return();

//return to start point
mp_grid_path(grid, path, x,y, return_x, return_y, true);

show_debug_message(string(return_x));

path_start(path, move_speed, 0, false);

show_debug_message("ENEMY RETURN CALLED");
