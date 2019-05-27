/// @description Insert description here

// Gets the ID of the response
var wp_json_response = async_load[? "id"]

if (init_wp_http_request != noone) && (init_wp_http_request == wp_json_response)
	{
	//Get Nonce
	var wp_http_result = json_decode(async_load[? "result"]);
	show_debug_message("Result of wp_init_api(" + wp_url + ") is " + async_load[? "result"]);	
	
	wp_nonce = wp_http_result[? "nonce"];
	show_debug_message("wp_nonce was been set to " + wp_nonce)
	}