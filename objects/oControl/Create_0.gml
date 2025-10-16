/// @description Insert description here
// You can write your code in this editor

cardBack = sCardBackDiamond;

//instance_create_layer(500,500,"Instances",oFrog);

//card arrays
spadesArr = [sCardBackDiamond,sSpadeAce,sSpade2,sSpade3,sSpade4,sSpade5,sSpade6,sSpade7,sSpade8,sSpade9,sSpade10,sSpadeJack,sSpadeQueen,sSpadeKing];
diamondsArr = [sCardBackDiamond,sDiamondAce,sDiamond2,sDiamond3,sDiamond4,sDiamond5,sDiamond6,sDiamond7,sDiamond8,sDiamond9,sDiamond10,sDiamondJack,sDiamondQueen,sDiamondKing];
heartsArr = [sCardBackDiamond,sHeartAce,sHeart2,sHeart3,sHeart4,sHeart5,sHeart6,sHeart7,sHeart8,sHeart9,sHeart10,sHeartJack,sHeartQueen,sHeartKing];
clubsArr = [sCardBackDiamond,sClubAce,sClub2,sClub3,sClub4,sClub5,sClub6,sClub7,sClub8,sClub9,sClub10,sClubJack,sClubQueen,sClubKing];

//init
deckPosX = 90;
deckPosY = 100;
gridPosX = 200;
gridPosY = 240;
cardWidth = 90;
cardHeight = 100;
gridWidth = 110;
gridHeight = 50;
spotGrid = [];
cardValueGrid = [];
cardSuitGrid = [];

for(var i=0; i<7; i++;){
	for(var j=0; j<15; j++;){
		cardValueGrid[i,j] = 0;
	}
}
for(var i=0; i<7; i++;){
	for(var j=0; j<15; j++;){
		cardSuitGrid[i,j] = "notasuit";
	}
}

for(var i=0; i<7; i++;){
	for(var j=0; j<15; j++;){
		var layerName = string_concat("Card"+string(j+1));
		spotGrid[i,j] = instance_create_layer(gridPosX + i*gridWidth,gridPosY + j*gridHeight,layerName,oCardSpot);
		spotGrid[i,j].posX = i;
		spotGrid[i,j].posY = j;
	}
}


//create deck
instance_create_layer(90,100,"Instances",oDeck);

//create deck spots
deckSpots[0] = instance_create_layer(2*oControl.cardWidth + oControl.deckPosX,oControl.deckPosY,"Instances",oCardSpot);
deckSpots[1] = instance_create_layer(3*oControl.cardWidth + oControl.deckPosX,oControl.deckPosY,"Instances",oCardSpot);
deckSpots[2] = instance_create_layer(4*oControl.cardWidth + oControl.deckPosX,oControl.deckPosY,"Instances",oCardSpot);
//instance_create_layer(90,100,"Instances",mousePointer);

//create card bays
instance_create_layer(590,100,"Instances",oCardBay);
instance_create_layer(690,100,"Instances",oCardBay);
instance_create_layer(790,100,"Instances",oCardBay);
instance_create_layer(890,100,"Instances",oCardBay);




/*
hor = 1;
vert=1;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpadeAce;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade2;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade3;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade4;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade5;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade6;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade7;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade8;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade9;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpade10;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpadeJack;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpadeQueen;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sSpadeKing;
hor=1;
vert++;

card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeartAce;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart2;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart3;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart4;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart5;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart6;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart7;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart8;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart9;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeart10;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeartJack;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeartQueen;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sHeartKing;
hor=1;
vert++;

card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClubAce;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub2;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub3;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub4;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub5;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub6;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub7;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub8;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub9;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClub10;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClubJack;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClubQueen;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sClubKing;
hor=1;
vert++;

card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamondAce;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond2;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond3;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond4;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond5;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond6;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond7;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond8;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond9;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamond10;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamondJack;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamondQueen;
hor++;
card =instance_create_layer(hor*90,140*vert,"Instances",oCard);
card.sprite_index = sDiamondKing;
hor=1;*/