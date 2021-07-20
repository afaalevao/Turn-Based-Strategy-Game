/// Variables

image_speed = 0.5;
image_xscale = -1; //faces enemy opposite of player

idleAnim = sprEnemyStandard;
deathAnim = sprTankDeath;
attackAnim = objMissile;
runAnim = sprEnemyStandard;

attacked = false;
moved = false;
acquiredTargets = false;

curNode_x = x;
curNode_y = y;

pace = 1;

pixelDistance = 64;
ogPixelDist = pixelDistance;

myProjectile = objMissile;

// stats
attack = 50;
defense = 100;