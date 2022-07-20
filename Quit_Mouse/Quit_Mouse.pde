//Global Variables
float rectX, rectY, rectWidth, rectHeight;
float Xcenter, Ycenter;
color blue = #41ABBF, lightBlue = #2BC6EA, resetButtonColour, buttonFill; //Not Night Mode Friendly Colours
//
void setup() 
{
  size (500, 500);
  //
  //Pouplation
  //
  int Xcenter = width/2;
  int Ycenter = height/2;
  int centeringButtonX = width/4;
  int centeringButtonY = height/4;
  rectX = Xcenter-centeringButtonX;
  rectY = Ycenter-centeringButtonY;
  rectWidth = width/2;
  rectHeight = height/2;
}//End setup
//
void draw() 
{
  //Hover-over
  if ( mouseX>rectX && mouseX<rectX+rectWidth && mouseY>rectY && mouseY<rectY+rectHeight ) {
  buttonFill = lightBlue;
  } else {
    buttonFill = blue;
  }//End Hover-over
  fill(buttonFill); //2-Colours to start, remember that nightMode adds choice
  rect (rectX, rectY, rectWidth, rectHeight);
  fill(resetButtonColour);
  //
  //Repeating CONSOL values illisttrating mouseX, mouseY related to a formula, mouse buttons
  println("X-Value", rectX, "\t", mouseX, "\t", rectX+rectWidth, "\t\t Look at the middle value");
  println("Y-Value", rectY, "\t", mouseY, "\t", rectY+rectHeight, "\t\t Look at the middle value");
}//End draw
//
void keyPressed() 
{
  if (key == 'k' || key=='K') exit();
}//End keyPressed
//
void mousePressed() 
{
  if ( mouseX>rectX && mouseX<rectX+rectWidth && mouseY>rectY && mouseY<rectY+rectHeight ) exit();
  //
}// End mousePressed
//
//End MAIN Program
