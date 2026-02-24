int_acorn_pool_size = 1024;
array_acorns_available = array_create(int_acorn_pool_size);
for(var _i = 0; _i < int_acorn_pool_size; _i++)
{
    array_acorns_available[_i]=instance_create_layer(1000,1000,"Instances",obj_acorn);
}