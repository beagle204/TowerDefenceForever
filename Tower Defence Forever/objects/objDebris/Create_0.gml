/// @description Insert description here
// You can write your code in this editor
mySprite = 0;
destructionCost = 0;
destructionReward = 0;
mySpriteName = 0;
ImBeingHoveredOver = 0;
animateHelper = 0;
sawHelper = 0;
shouldbeX = 0;
xHelper = 0;

randomize();
var myRandomSeed = irandom_range(1,3);//should be big tree's and small and medium rocks too
if(myRandomSeed == 1){
	mySpriteName = "small tree";
	mySprite = sprSmallTree;
	destructionCost = 50;
	destructionReward = 1;
}else if (myRandomSeed ==2){
	mySpriteName = "medium tree";
	mySprite = sprMediumTree;
	destructionCost = 100;
	destructionReward = 3;
}else if (myRandomSeed ==3){
	instance_destroy();
}else{
	instance_destroy();
}
alarm[0] = 30;