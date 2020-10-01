//pacman reloaded 
//what has pacman gotten himself into now
// to be chase by a snake!!!
int i,pacmanSize,fruitX,fruitY;
int followX, followY;
int increment,positionX,positionY,moveX,moveY;
color blue=color(0,0,255);
color red=color(255,0,0);
color green=color(0,255,0);
color white=color(255);
color black=color(0);
color yellow=color(255,255,0);
boolean up,down,left,right;
float chaserX=0;
float chaserY=0;
int changeX;
int changeY;
void setup()
{
  size(500,300);
  pacmanSize=width/25;
  positionY=height/2;
  positionX=width/2;
  moveX=1;
  moveY=1;
  right=true;
  noStroke();
}
void draw()
{
  background(blue);
  fruit();
  pacman();
  //chaser();
  //imageMazeSimple();
}
  
