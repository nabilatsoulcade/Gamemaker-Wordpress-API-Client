/// @function wp_init_api(url)
/// @description Initializes Wordpress variables and returns a nonce (Needed for cookie authentication)
/// @param url The URL of the wordpress site

//Initialize Wordpress variables
globalvar wp_url, wp_nonce, wp_auth_cookie;
wp_url = argument0;
wp_nonce = noone;
wp_auth_cookie = noone;

//Create Request URL
var request_url = wp_url + "/api/get_nonce/?controller=user&method=generate_auth_cookie";

//Create Header Map
var header_map = ds_map_create();
ds_map_add(header_map, "cache-control", "no-cache");
ds_map_add(header_map, "Content-Type", "application/x-www-form-urlencoded");

//Send Request
var request_id = http_request(request_url, "GET", header_map, "");

//Cleanup Data Structures
ds_map_destroy(header_map);

//Return HTTP Request ID
return request_id;