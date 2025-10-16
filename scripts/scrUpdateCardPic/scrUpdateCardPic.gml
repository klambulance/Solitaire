// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrUpdateCardPic(_faceup,_value,_suit){
	
	if(_faceup){
		if(_suit == "spades"){
			sprite_index = oControl.spadesArr[_value];
		}else if(_suit == "hearts"){
			sprite_index = oControl.heartsArr[_value];			
		}else if(_suit == "diamonds"){
			sprite_index = oControl.diamondsArr[_value];			
		}else if(_suit == "clubs"){
			sprite_index = oControl.clubsArr[_value];			
		}
	}else{
		sprite_index = oControl.cardBack;
	}
	
}
function scrUpdateCardPicFromCard(_card){
	var _faceup = _card.faceup;
	var _topCard = _card.topCard;
	var _suit = _card.suit;
	var _value = _card.value;
	if(_faceup or _topCard){
		if(_suit == "spades"){
			_card.sprite_index = oControl.spadesArr[_value];
		}else if(_suit == "hearts"){
			_card.sprite_index = oControl.heartsArr[_value];			
		}else if(_suit == "diamonds"){
			_card.sprite_index = oControl.diamondsArr[_value];			
		}else if(_suit == "clubs"){
			_card.sprite_index = oControl.clubsArr[_value];			
		}
	}else{
		_card.sprite_index = oControl.cardBack;
	}
	
}