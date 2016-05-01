// scr_player_collision

//List of all objects with collision to check for
CollidableObjects = ds_list_create();

ds_list_add(CollidableObjects, col_solid_block);
//ds_list_add(CollidableObjects, obj_cupboard_open);
//ds_list_add(CollidableObjects, obj_cupboard_closed);

var i

//moving down
if(vspeed > 0 )
{
 
    for (i =0; i < ds_list_size(CollidableObjects); i+=1)
    {
        if(place_meeting(x, y +vspeed, CollidableObjects[|i]))
        {
            while(!place_meeting(x, y+1, CollidableObjects[|i])){y++};
            vspeed = 0;
        }
    }
}

//moving up
if(vspeed < 0)
{
    for (i =0; i < ds_list_size(CollidableObjects); i+=1)
    {
        if(place_meeting(x, y+ vspeed, CollidableObjects[|i]))
        {
            while(!place_meeting(x,y-1,CollidableObjects[|i])){y--};
            vspeed=0;
        }
    }
}
//moving right
if(hspeed > 0)
{
    for (i =0; i < ds_list_size(CollidableObjects); i+=1)
    {
        if(place_meeting(x +hspeed, y, CollidableObjects[|i]))
        {
            while(!place_meeting(x+1,y,CollidableObjects[|i])){x++};
            hspeed=0;
        }
    }
}
//moving left
if(hspeed < 0)
{
    for (i =0; i < ds_list_size(CollidableObjects); i+=1)
    {
        if(place_meeting(x +hspeed, y, CollidableObjects[|i]))
        {
            while(!place_meeting(x-1,y,CollidableObjects[|i])){x--};
            hspeed=0;
        }
    }
}
