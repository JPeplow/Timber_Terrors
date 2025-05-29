/// /// Value Setting /// ///

defeated_enemy = ""; // Defualt on load

loot = floor(random_range(0, 100 + 1)); // One randomise

state = "PLAY"
/// PLAY
/// PAUSED
/// DEFEATED
/// LEVEL UP

/// /// Setting the defualts of different globals


///// Enemies
global.enemies_defeated = 0;


/////

///// Upgrades
//global.damage_level = 0;
//global.health_level = 0;
/////

///
global._collected_coins = 0;
global._collected_wood = 0;
global._collected_bones = 0;
global._collected_flesh = 0;

global._xp_level = 0;
global._xp_amount = 0;

xp_level_requirements = [5,
						 10,
						 15,
						 25]
/////

///// ///
scr_initialise_enemies();