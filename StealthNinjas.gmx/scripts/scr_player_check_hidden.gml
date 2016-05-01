///scr_player_check_hidden()

//are you in a hiding place?
if(place_meeting(x,y,col_hiding_block)){hidden = true};
else{hidden = false};
//make the necessary adjustements

if(hidden)
{
    max_speed = max_speed_hidden;
    skin.image_alpha = .7;
}
else
{
    //ensure we arent slow walk already
   if(!obj_player.crouched){
     max_speed = max_speed_normal;
     }
    
    skin.image_alpha = 1.0;
}
