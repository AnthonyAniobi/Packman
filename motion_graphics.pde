void pacman()
{
  if(right)
  {
    fill(yellow);
    arc(positionX,positionY,pacmanSize,pacmanSize,radians(i),radians(360-i));
    if(i==0)
    {increment=5;}
    if(i==45){increment=-5;}
    i=i+increment;
    positionX=positionX+moveX;
  }
  if(down)
  {
    fill(yellow);
    arc(positionX,positionY,pacmanSize,pacmanSize,radians(90+i),radians(450-i));
    if(i==0)
    {increment=5;}
    if(i==45){increment=-5;}
    i=i+increment;
    positionY=positionY+moveY;
  }
  if(left)
  {
    fill(yellow);
    arc(positionX,positionY,pacmanSize,pacmanSize,radians(180+i),radians(540-i));
    if(i==0)
    {increment=5;}
    if(i==45){increment=-5;}
    i=i+increment;
    positionX=positionX-moveX;
  }
  if(up)
  {
    fill(yellow);
    arc(positionX,positionY,pacmanSize,pacmanSize,radians(270+i),radians(630-i));
    if(i==0)
    {increment=5;}
    if(i==45)
    {increment=-5;}
    i=i+increment;
    positionY=positionY-moveY;
  }
  if(positionX<-pacmanSize){positionX=width+pacmanSize;}
  if(positionX>width+pacmanSize){positionX=0;}
  if(positionY<-pacmanSize){positionY=height+pacmanSize;}
  if(positionY>height+pacmanSize){positionY=0;}
}
void fruit()
{
  float detect=pacmanSize/2;
  if(fruitX>positionX-detect && fruitX<positionX+detect && fruitY>positionY-detect && fruitY<positionY+detect){
  fruitX=int(random(width));
  fruitY=int(random(height));}
  pushMatrix();
  translate(fruitX,fruitY);
  fill(red);
  ellipse(0,0,height/25,height/25);
  popMatrix();
}
void chaser()
{
 if(followX<positionX)
  {
    changeX=+1;
  }
  if(followX>positionX)
  {
    changeX=-1;
  }
  if(followY<positionY)
  {
    changeY=+1;
  }
  if(followY>positionY)
  {
    changeY=-1;
  }
  followX=followX+changeX;
  followY=followY+changeY;
  fill(255);
  ellipse(followX,followY,pacmanSize, pacmanSize);
}