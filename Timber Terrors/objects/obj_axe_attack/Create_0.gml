/// /// Rotation /// ///

/// Rotated Left
if obj_player_character.sprite_index = spr_player_character_side
{
	sprite_index = spr_axe_attack_side;
}
///

/// Rotated Right
if obj_player_character.sprite_index = spr_player_character
{
	sprite_index = spr_axe_attack;
}
///

global._seconds = 3;