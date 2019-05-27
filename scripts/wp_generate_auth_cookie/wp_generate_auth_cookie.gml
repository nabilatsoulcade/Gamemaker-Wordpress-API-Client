/// @function wp_generate_auth_cookie(url)
/// @description Requests an authentication cookie to be generated for the provided user
/// @param email The email of the user
/// @param password The password of the user

//Initialize Wordpress variables
var wp_useremail = argument0;
var wp_userpassword = argument1;

//Create Request URL
var request_url = wp_url + "/api/user/generate_auth_cookie/?email=" + wp_useremail + "&password=" + wp_userpassword "&nonce=" + wp_nonce;

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