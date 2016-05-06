/// scr_enemy_investigate(targetx, targety);
targetx = argument0;
targety = argument1;

// The reference to the ggrid
grid = obj_guard_controller.guard_grid;
//start following a path to the investigation point
mp_grid_add_instances(grid, col_solid_block, false);
if(mp_grid_path(grid,path, x, y, argument0, argument1, true)){
path_start(path, move_speed, 0, false);

//stop the alarm if its in progress
alarm[0] = -1;
return true;

}else{
//show_message("NO PATH FOUND");
return false;
}
