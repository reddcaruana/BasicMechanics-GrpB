/// @description Spawns a coin

// Generate a random value between 32 and 480
var target_y = random_range(32, 480);

// Choose between the two coins I have now
var coin = choose(obj_Coin, obj_SpecialCoin);

// Spawn a new coin on the Instances layer
instance_create_layer(300, target_y, "Instances", coin);
alarm[0] = 45;