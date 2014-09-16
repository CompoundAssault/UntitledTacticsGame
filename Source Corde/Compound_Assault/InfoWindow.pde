
/*
Class purpose:
------------------------------------------------------------------------------------
The InfoWindow will be in charge of  Menu Interaction in game and displaying 
information and relevant to the game.

Implementation:
------------------------------------------------------------------------------------
This is a child class of UserInterface.*/

class InfoWindow{
  //Member Variables
  float x;
  float y;
  PImage unitCard;
  String[] cardList = {"Soldier PlayerCard.png" , "Demo Guy PlayerCard.png" , "The Linguist PlayerCard.png" , "The Medic PlayerCard.png" , "The Heavy PlayerCard.png" , "The Leader PlayerCard.png" , "Recon Expert PlayerCard.png" , "The Tech PlayerCard.png"};
  int cardNumber;
  //Constructor
InfoWindow(float x, float y , int cardNumber){
  this.x = x;
  this.y = y;
  unitCard = loadImage(cardList[cardNumber]);
}

 //Member Funcions
  void drawWindow(){
   stroke(0);
   fill(74,88,67);
   rectMode(CORNER);
   
   rect(x,y,350,500);
   noStroke();
   
  }
  void drawPlayerCard(){
    image(unitCard,x,y);
  }
}
