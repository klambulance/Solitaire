// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDealCard(){
	
	//deal with any existing cards on the table
	scrDiscardCards();
	var _card = [];
	
	for(var i=0; i<3; i++;){
		_card[i] = instance_create_layer((i+1)*oControl.cardWidth + oControl.deckPosX,oControl.deckPosY,"Instances",oCard);
		_card[i].mySpot = oControl.deckSpots[i];
		_card[i].x = _card[i].mySpot.x;
		_card[i].y = _card[i].mySpot.y;
		_card[i].suit = oDeck.cards[0][0];
		_card[i].value = oDeck.cards[0][1];
		_card[i].pileNum = i;
		array_delete(oDeck.cards,0,1);
		oDeck.cardsLeft--;
		if(oDeck.cardsLeft<=0){
			i=3;
		}
	}
	return _card;
}

function scrDiscardCards(){
	if(array_length(oDeck.dealtCardArr) > 0){
		for(var j=0;j<array_length(oDeck.dealtCardArr);j++;){
			if(oDeck.dealtCardArr[j].pileNum != -1){
				var discardNum = array_length(oDeck.discards);
				oDeck.discards[discardNum][0] = oDeck.dealtCardArr[j].suit;
				oDeck.discards[discardNum][1] = oDeck.dealtCardArr[j].value;
				instance_destroy(oDeck.dealtCardArr[j]);
			}
		}
		array_delete(oDeck.dealtCardArr,0,array_length(oDeck.dealtCardArr));
	}
}