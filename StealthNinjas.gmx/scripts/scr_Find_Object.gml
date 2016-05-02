///scr_Find_Object(id, obj_to_check)
objectID = argument0;
obj_to_Check = argument1;

//how many Enemys are there
    
    total_Enemies = instance_number(argument1);
    
    for(i = 0; i < total_Enemies; i++)
    {
        //find the object instance
        k = instance_find(argument1, i);
        
        //determine if this is the
        if((k).id == objectID)
        {
            show_message("ID FOUND");
        }
    }
