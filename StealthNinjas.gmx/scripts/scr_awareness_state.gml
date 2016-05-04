///scr_awareness_state(question, alert);

var qObj = argument0;
var aObj = argument1;

if(awareness==0)
{
    //ensure ? and ! are off
    instance_deactivate_object(aObj);
    instance_deactivate_object(qObj);
}else if(awareness ==1)
{
    
        instance_deactivate_object(aObj);
        instance_activate_object(qObj);
}else if(awareness ==2)
{
    
        instance_deactivate_object(qObj);
        instance_activate_object(aObj);
}
