/// @description Insert description here
// You can write your code in this editor

cardsLeft = 0;
cards = [];
discards = [];
dealtCardArr = [];
val = 1;

for(var i=0;i<52;i++;){
	cards[i] = ["spades",val];
	cards[i+1] = ["hearts",val];
	cards[i+2] = ["clubs",val];
	cards[i+3] = ["diamonds",val];
	cardsLeft += 4;
	i+=3;
	val++;
}

cards = array_shuffle(cards);

var row = 0;
var col = 0;
var cnt = 0;
for(var i=0;i<=6;i++;){
	for(var j=i;j<=6;j++;){
		scrAddCardToPiles(cards[0],col,row);
		array_delete(cards,0,1);
		cardsLeft--;
		col++;
	}
	row++;
	col=0;
}

with(oCard){
	scrUpdateCardPicFromCard(self);
}