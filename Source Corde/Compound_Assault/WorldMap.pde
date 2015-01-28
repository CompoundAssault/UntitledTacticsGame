class WorldMap{
private String mission1 = "There seems to have been some sort of strange disturbance in the area: take a small team and check it out.";
private String funds1 = "Funds: $1000";
private String mission2 = "The mission is simple: get in there and annihilate any of those creatures you find. Be prepared for moderate resistance, this seems to be seem sort of breeding ground for the creeps. Insane amount of text for the purpose of checking text box correctness ensuing now: begin The quick brown fox jumped over the lazy dog and then it jumped over another lazy dog and jumped over a third lazy dog. Hopefully this amount of text will nicely fill up the text box, but who knows, am I right? Cutoff at this point.";
private String funds2 = "Funds: $1500";
private String mission3 = "We've located the area where the creatures seem to be coming from, we just need you to get there now.";
private String funds3 = "Funds: $2000";
private String mission4 = "This is it: you've reached the gates of hell. Be prepared for anything, it doesn't look like the creatures will take kindly to having their portal shut down.";
private String funds4 = "Funds: $3000";
private boolean mission1Beaten = false;
private boolean mission2Beaten= false;
private boolean mission3Beaten= false;
private boolean mission4Beaten = false;
private boolean On;
private PImage boardImage;
public WorldMap(boolean On)
{
  this.On = On;
  }
  
  public void drawMap()
  {
    fill(255);
    background(0);
    //If mission1 is beaten, blacks it out
    if (mission1Beaten == true)
    {
      fill(0);
    }
    //draw the ellipses and lines connecting levels
    ellipse(70,70,80,80);
    fill(255);
    ellipse(70 + 200,350,80,80);
    ellipse(70 + 200 * 2, 200, 80, 80);
    ellipse(70 + 200 * 3, 400, 80, 80);
    stroke(255);
    line(70,70, 270, 350);
    line(270,350, 470, 200);
    line(470,200, 670, 400);
    noStroke();
    //check if mouse is over one of the ellipses, and draw the upper right window
    if ((mouseX > 30 && mouseX < 110) && (mouseY > 30 && mouseY <110))
    {
      fill(125,125,0);
      rect(550, 0, 400, 300);
      fill(50);
      text(mission1, 550, 16, 400, 250);
      text(funds1, 550, 275, 400, 50);
      //if the mouse is clicked, change mission1 to the beaten state
    }
    else if((mouseX > 230 && mouseX < 310) && (mouseY >290 && mouseY < 370))
    {
      fill(125,125,0);
      rect(550,0,400,300);
      fill(50);
      text(mission2, 550, 16, 400, 250);
      text(funds2, 550, 275, 400, 50);
    }
    else if ((mouseX > 430 && mouseX < 510) && (mouseY >160 && mouseY < 240))
    {
      fill(125,125,0);
      rect(550,0,400,300);
      fill(50);
      text(mission3, 550, 16, 400, 250);
      text(funds3, 550, 275, 400, 50);
    }
    else if ((mouseX > 630 && mouseX < 710) && (mouseY >360 && mouseY < 440))
    {
      fill(125,125,0);
      rect(550,0,400,300);
      fill(50);
      text(mission4, 550, 16, 400, 250);
      text(funds4, 550, 275, 400, 50);
    }
  }
  void mapInteraction()
    {
      if(On)
      {
          if ((mouseX > 30 && mouseX < 110) && (mouseY > 30 && mouseY <110))
    {
     this.mission1Beaten = true;
     UI.m_window.On = false;
     UI.s_window.on = true;
    } 
    else if((mouseX > 230 && mouseX < 310) && (mouseY >290 && mouseY < 370))
    {
      this.mission2Beaten = true;
    }
    else if ((mouseX > 430 && mouseX < 510) && (mouseY >160 && mouseY < 240))
    {
      this.mission3Beaten = true;
    }
    else if ((mouseX > 630 && mouseX < 710) && (mouseY >360 && mouseY < 440))
    {
      this.mission4Beaten = true;
     }  
    }
}
}
