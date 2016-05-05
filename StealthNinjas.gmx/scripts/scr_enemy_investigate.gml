/// scr_enemy_investigate();

// The reference to the ggrid
grid = obj_guard_controller.guard_grid;
//start following a path to the investigation point
mp_grid_add_instances(grid, col_solid_block, false);
mp_grid_path(grid,path, x, y, investigate_x, investigate_y, true);
path_start(path, move_speed, 0, false);

//stop the alarm if its in progress
alarm[0] = -1;

show_debug_message("ENEMY INVESTIGATE CALLED");
