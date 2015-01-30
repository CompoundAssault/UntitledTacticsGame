/*
Class purpose:
------------------------------------------------------------------------------------
The UserInterface class will be the parent class of BoardWindow, InfoWindow, and 
Tooltip which composes the UserInterface to begin with.

Implementation
------------------------------------------------------------------------------------
A function that draw all subclasses windows at once. This implemetation will also 
provide the option to swap the window positions. This could later be used as a subset
or child class for a bigger */

class UserInterface{
  //Member Variables
  
  SelectionScreen s_window;
  BoardWindow b_window;
  Tooltip tt;
  InfoWindow i_window;
  WorldMap m_window;
  
  //Constructor
  UserInterface(){
  i_window = new InfoWindow(0,0 , 0, false);
  b_window = new BoardWindow(350,0, false);
  s_window = new SelectionScreen(350,0,2,4, false);
  m_window = new WorldMap(false);
  tt = new Tooltip(352,400);
  
  }
  
  //Member Variables
 void drawUI(){
   
  
  i_window.drawWindow(); 
  if(s_window.startGame == false && s_window.on == true){
    
    s_window.drawWindow();
    s_window.nextButton();
      for(int i = 0;i < s_window.a;i++){
        for(int j = 0;j<s_window.b;j++){
          if(s_window.units[i][j].playerCard == true){
           i_window.unitCard = loadImage(i_window.cardList[i][j]);
           i_window.drawPlayerCard(); 
          }
        }
      }
    
    s_window.updateSelectionScreen();
  }
  else if(m_window.On == true)
  {
    m_window.drawMap();
  }
  else{
    b_window.drawWindow();
   tt.display();
  }
 }

}

