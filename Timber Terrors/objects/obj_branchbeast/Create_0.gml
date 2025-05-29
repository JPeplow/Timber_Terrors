enemy_data = global.enemy_data[? enemy_name];
/// Type
/// Health Points
/// Damage Points
/// Speed
/// Attack Range
/// Abilities
/// Drops

speed = real(enemy_data[? "Speed"]);



attack_cooldown = false;
miliseconds = 0;
seconds = 0;

activate_ability = false;
ability_cooldown = false;

if activate_ability = true
{	
	var _target_x = obj_player_character.x;
	var _target_y = obj_player_character.y;

	direction = point_direction(x, y, _target_x, _target_y);
}