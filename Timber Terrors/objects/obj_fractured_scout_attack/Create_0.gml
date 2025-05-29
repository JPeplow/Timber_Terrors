flight_time = 5;
miliseconds = 0;
seconds = 0;


// Target destination
target_x = obj_player_character.x;
target_y = obj_player_character.y;

direction = point_direction(x, y, target_x, target_y);
direction = direction + random_range(-4, 4);
speed = 2;
image_angle = direction;