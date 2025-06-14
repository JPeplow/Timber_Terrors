/// @desc SaveStringToFile Saves a string out to a file.
/// @arg filename
/// @arg string

/// /// Saving to string /// ///

function savetostring()
{
	var _filename = argument0;
	var _string = argument1;

	var _buffer = buffer_create( string_byte_length( _string) +1 , buffer_fixed, 1);
	buffer_write( _buffer, buffer_string, _string);
	buffer_save( _buffer, _filename);
	buffer_delete( _buffer);
}

/// /// Loading from string /// ///

function loadfromstring()
{
	var _filename = argument0
	
	var _buffer = buffer_load( _filename);
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete( _buffer);
	
	var _json = json_decode( _string);
	return _json;
	
}