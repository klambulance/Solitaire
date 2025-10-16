// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCheckIfCardLegal(_nearestSpot, _cardValue, _cardSuit){
	
	var legal = false;
	//checks if the spot is empty and checks for number legality
	if(!_nearestSpot.taken){
		if(_nearestSpot.posY == 0 and _cardValue == 13){
			legal = true;
		}else if(_nearestSpot.posY == 0){
			legal = false;	
		}else if(oControl.cardValueGrid[_nearestSpot.posX,_nearestSpot.posY-1] == _cardValue+1){
			legal = true;
		}else{
			legal = false;	
		}
	}
	
	//checks for suit legality
	var cardColour = "";
	var upperCardColour = "";
	if(_nearestSpot.posY != 0){
		var upperCardSuit = oControl.cardSuitGrid[_nearestSpot.posX,_nearestSpot.posY-1];
		if(_cardSuit == "spades" or _cardSuit == "clubs"){
			cardColour = "black";	
		}else{
			cardColour = "red";
		}
		if(upperCardSuit == "spades" or upperCardSuit == "clubs"){
			upperCardColour = "black";	
		}else{
			upperCardColour = "red";
		}
		if(legal){
			if(upperCardColour == cardColour){
				legal = false;
			}
		}
	}
	
	
	return legal;
}
