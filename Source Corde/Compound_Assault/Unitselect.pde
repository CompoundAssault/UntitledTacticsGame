/*
This class will house the units that are available for the game.
*/



class Unitselect{
  int x,y;
  int s = 0;
  int sw = 5;
  boolean playerCard;
  boolean on;
  //PImage soldier;
  PImage unitPicture;
  PImage background_deploy;
  PImage background_noDeploy;
  boolean is_selected;
 
  int unitNumber;
  String[] unitList = {"Soldier.png" , "Demo Guys.png" , "Linguist.png" , "Medic.png" , "The Heavy.png" , "The Leader.png" , "The Recon.png" , "The Technician.png"};
 
 Unitselect(int x,int y , int unitNumber, boolean on){
  this.x = x;
  this.y = y;
  this.unitNumber = unitNumber;
  this.on = on;
 
  playerCard = false;
  unitPicture = loadImage(unitList[unitNumber]);
 } 
 void drawRect(){
  image(unitPicture,x,y,100,100);
     noFill();
     stroke(0,s,0);
   strokeWeight(sw);
  rect(x,y,100,100);
 }
 void nextButton(){
    background_noDeploy = loadImage("Selection Screen .png");
    background_deploy = loadImage("Selection Screen Deploy.png");
    if(mouseX > 740 && mouseX < 890 && mouseY > 410 && mouseY < 460){
       background(background_deploy);
     // fill(255,0,0); //204 was 255
      //stroke(6);
     rect(740,410,150,50); 
    }
    else{
      background(background_noDeploy);
      rect(740,410,150,50);
      }
 }
}
