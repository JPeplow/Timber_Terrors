//global.upgrade_skill_health = false; // Default value
//global.upgrade_skill_damage = false; // Default value

///// /// Skill Tables /// ///


//global.skills_damage =
//[

///// [Level, Damage, Cost to next level]
//	["Level0", 1, 0],
//	["Level1", 1, 5],
//	["Level2", 2, 7],
//	["Level3", 3, 10],
//	["Level4", 4, 14],
//	["Level5", 6, 24],
//	["Level6", 8, 35],
//	["Level7", 10, 47],
//	["Level8", 12, 60],
//	["Level9", 14, 74],
//	["Level10", 17, 104],
	
//]



//global.skills_health = 
//[
///// [Level, Health, Cost to next level]
//	["Level0", 5, 0],
//	["Level1", 6, 100],
//	["Level2", 7, 140],
//	["Level3", 8, 180],
//	["Level4", 9, 220],
//	["Level5", 10, 260],
//	["Level6", 11, 300],
//	["Level7", 12, 340],
//	["Level8", 13, 380],
//	["Level9", 14, 420],
//	["Level10", 15, 460],
	
//]

//global.skills_aoe =
//[
///// [Level, AoE, Cost to next level]
//	["Level0", 5, 0], // Change cost to requirement
//	["Level1", 6, 100],
//	["Level2", 7, 140],
//	["Level3", 8, 180],
//	["Level4", 9, 220],
//	["Level5", 10, 260],
//	["Level6", 11, 300],
//	["Level7", 12, 340],
//	["Level8", 13, 380],
//	["Level9", 14, 420],
//	["Level10", 15, 460],
	
//]

///// Player data
//global.player_damage = global.skills_damage[real(global.damage_level), 1];
//global.player_max_hearts = global.skills_health[real(global.health_level), 1];
//global.player_hearts = global.player_max_hearts;
///////