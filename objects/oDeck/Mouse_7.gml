/// @description Insert description here
// You can write your code in this editor
if(cardsLeft>0){
	dealtCardArr = scrDealCard();
	
	scrUpdateCardPicFromCard(dealtCardArr[0]);
	scrUpdateCardPicFromCard(dealtCardArr[1]);
	scrUpdateCardPicFromCard(dealtCardArr[2]);
	
}else{
	scrDiscardCards();
	for(var i=0; i<array_length(discards); i++;){
		cards[i][0] = discards[i][0];
		cards[i][1] = discards[i][1];
		cardsLeft++;
	}
	array_delete(discards,0,array_length(discards));
}

if(cardsLeft<=0){
	sprite_index = sEmptyDeck;
}else{
	sprite_index = sCardBackDiamond;
}