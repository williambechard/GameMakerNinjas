///SoundWaveAdd(argument0)
a = argument0;

SoundWaves = ds_list_create();

if(ds_list_find_index(SoundWaves, argument0) !=-1){
ds_list_add(SoundWaves, argument0);
}
