// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrAddCardToPiles(_card,_x,_y){
	var cardToAdd = instance_create_layer(x,y,"Instances",oCard);
	cardToAdd.x = oControl.spotGrid[6-_x,_y].x;
	cardToAdd.y = oControl.spotGrid[6-_x,_y].y;
	oControl.spotGrid[6-_x,_y].myCard = cardToAdd;
	cardToAdd.suit = _card[0];
	cardToAdd.value = _card[1];
	cardToAdd.layer = oControl.spotGrid[6-_x,_y].layer;
	
	cardToAdd.topCard = true;
	cardToAdd.faceup = false;
	if(_y!= 0){
		oControl.spotGrid[6-_x,_y-1].myCard.topCard = false;
	}
}