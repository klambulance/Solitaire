// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrRemoveDealt(_pileNum){
	for(var i=_pileNum; i<array_length(oDeck.dealtCardArr); i++;){
		oDeck.dealtCardArr[i].pileNum--;
	}
}