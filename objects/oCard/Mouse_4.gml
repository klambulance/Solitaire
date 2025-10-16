/// @description Insert description here
// You can write your code in this editor
if(!fixed and (topCard or pileNum != -1)){
	grabbed = true;
	if(mySpot != noone){
		myLastSpot = mySpot;
		mySpot.taken=false;
		if(pileNum == -1){
			oControl.cardValueGrid[mySpot.posX,mySpot.posY] = 0;
			oControl.cardSuitGrid[mySpot.posX,mySpot.posY] = "";
		}
		mySpot = noone;
		
	}
	layer = oDeck.layer;
}