// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCheckValFits(_cardBay, _cardSuit, _cardVal){
	var doesIt = false;
	if(_cardBay.currVal == _cardVal-1 and (_cardBay.suit == "" or _cardBay.suit == _cardSuit)){
		doesIt = true;
	}
	
	return doesIt;
}