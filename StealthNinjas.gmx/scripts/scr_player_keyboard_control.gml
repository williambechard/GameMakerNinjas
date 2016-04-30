/// scr_player_keyboard_controls()

//get key input
key_w = keyboard_check(ord('W'));
key_a = keyboard_check(ord('A'));
key_s = keyboard_check(ord('S'));
key_d = keyboard_check(ord('D'));
key_e = keyboard_check(ord('E'));
key_ctrl = keyboard_check(vk_control);

// move with input
if(key_ctrl){max_speed = max_speed_hidden};
if(key_w){ vspeed -= move_speed};
if(key_d){ hspeed += move_speed};
if(key_s){vspeed += move_speed};
if(key_a){hspeed -= move_speed};
if(key_a and key_d){hspeed = 0};
if(key_w and key_s){vspeed = 0};
if(!key_a and !key_d){hspeed =0};
if(!key_w and !key_s){vspeed = 0};
//limit speed
if(hspeed > max_speed){hspeed = max_speed};
if(hspeed < - max_speed){hspeed = -max_speed};
if(vspeed > max_speed){vspeed = max_speed};
if(vspeed < -max_speed){vspeed = -max_speed};

