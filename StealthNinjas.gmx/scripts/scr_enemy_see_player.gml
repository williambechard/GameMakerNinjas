if(!collision_line(x,y, obj_player.x, obj_player.y, col_solid_block, true, true))//if yes...
{
    //set vision cone
    cone_left = skin.image_angle + sight_cone_left;
    if(cone_left > 359){cone_left = cone_left -359};
    cone_right = skin.image_angle+sight_cone_right;
    if(cone_right<0){cone_right = 359 + cone_right};
    

    

    
    //get angel to player
    p_angle = point_direction(x,y, obj_player.x, obj_player.y);
    
    // is plyaer in the cone?
    if(cone_right > cone_left)
    {
        if(p_angle <= cone_left or p_angle >= cone_right){ in_cone = true};
        else{
           // debugText ="Not in Cone";
           in_cone = false;
        }
    }
    else
    {
        if(p_angle <= cone_left and p_angle >= cone_right ){ in_cone = true};
        else {
          // debugText ="Not in Cone";
           in_cone = false;
        }
    }

    //do stuff if they are
    
    if(in_cone)
    {
        //debugText = "In Cone";
        
        //get the distance to the player
        dist_to_player = point_distance(x,y,obj_player.x, obj_player.y);
        
        //get player visibility
        
       if(dist_to_player <= sight_limit){
            //direction = point_direction(x,y,obj_player.x,obj_player.y);
            direction =  point_direction(x,y,obj_player.x,obj_player.y);
            return true;
       }
  }
  
  return false;

}
