/// @description Insert description here
// You can write your code in this editor
if(grabbed){
	x = mouse_x;
	y = mouse_y;
	if(mouse_check_button_released(mb_left) and grabbed){
		grabbed = false;
		var itFits = false;
		if(collision_circle(mouse_x,mouse_y,40,oCardBay,0,1)!= noone){
			var cardBay = collision_circle(mouse_x,mouse_y,40,oCardBay,0,1);
			itFits = scrCheckValFits(cardBay, suit, value);
			
			if(itFits){
				cardBay.sprite_index = sprite_index;
				cardBay.currVal++;
				if(cardBay.suit == ""){
					cardBay.suit = suit;
				}
				fixed = true;
				scrRemoveDealt(pileNum);
				array_delete(oDeck.dealtCardArr,pileNum+1,1);
				//pileNum=-1;
				//but what if I change this?
			}
		}else{
			if(collision_circle(mouse_x,mouse_y,40,oCardSpot,0,1) != noone){
				nearestSpot = instance_nearest(mouse_x,mouse_y,oCardSpot);
				isItLegal = scrCheckIfCardLegal(nearestSpot, value, suit);
				if(isItLegal){
					nearestSpot.myCard = self;
					x = nearestSpot.x;
					y = nearestSpot.y;
					layer = nearestSpot.layer;
					oControl.cardValueGrid[nearestSpot.posX,nearestSpot.posY] = value;
					oControl.cardSuitGrid[nearestSpot.posX,nearestSpot.posY] = suit;
					topCard = true;
					if(nearestSpot.posY != 0){
						oControl.spotGrid[nearestSpot.posX,nearestSpot.posY-1].myCard.topCard = false;
					}
					mySpot = nearestSpot;
					mySpot.taken = true;
					scrRemoveDealt(pileNum);
					array_delete(oDeck.dealtCardArr,pileNum+1,1);
					pileNum=-1;
				}else{
					mySpot = myLastSpot;
					x = myLastSpot.x;
					y = myLastSpot.y;
				}
				
			}else{
				x = tempX;
				y = tempY;
			}
		}
		
		
		if(itFits){
			instance_destroy();	
		}
	}
}