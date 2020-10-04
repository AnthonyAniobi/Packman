color blue = color(0,0,255);
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color white = color(255);
color black = color(0);
color yellow = color(255, 255, 0);
boolean right, left, up, down;

int pSize, posX, posY, i, increment, moveX, moveY, fsize;
int fX=width/2;
int fY=height/2;

void setup()
{
  size(500, 500);
  pSize = width/20;
  fsize = width/25;
  posX = height/2;
  posY = width/2;
  moveX=3;
  moveY=3;
  right = true;
  noStroke();
}

void draw()
{
  background(blue);
  fruit();
  pacman();
}

void pacman()
{
    if(right)
    {
      fill(yellow);
      arc(posX, posY, pSize, pSize, radians(i), radians(360-i));
      if(i==0){increment = 5;}
      if(i==45){increment=-5;}
      i = i+increment;
      posX=posX+moveX;
    }
    if(down)
    {
      fill(yellow);
      arc(posX, posY, pSize, pSize, radians(90+i), radians(450-i));
      if(i==0){increment = 5;}
      if(i==45){increment=-5;}
      i = i+increment;
      posY=posY+moveY;
    }
    if(left)
    {
      fill(yellow);
      arc(posX, posY, pSize, pSize, radians(180+i), radians(540-i));
      if(i==0){increment = 5;}
      if(i==45){increment=-5;}
      i = i+increment;
      posX=posX-moveX;
    }
    if(up)
    {
      fill(yellow);
      arc(posX, posY, pSize, pSize, radians(270+i), radians(630-i));
      if(i==0){increment = 5;}
      if(i==45){increment=-5;}
      i = i+increment;
      posY=posY-moveY;
    }
    if(posX<-pSize){posX=width+pSize;}
    if(posX>width+pSize){posX=0;}
    if(posY<-pSize){posY=height+pSize;}
    if(posY>height+pSize){posY=0;}
}
void fruit()
{
  float see = pSize/2;
  if(fX>posX-see && fX<posX+see && fY>posY-see && fY<posY+see)
  {
    fX=int(random(width));
    fY=int(random(height));
  }
  fill(red);
  ellipse(fX, fY, fsize, fsize);
}

void keyPressed()
{
  if(keyCode==LEFT)
  {
  left=true;
  right=false;
  up=false;
  down=false;
  }
  if(keyCode==RIGHT)
  {
  right=true;
  left=false;
  up=false;
  down=false;
  }
  if(keyCode==UP)
  {
    up=true;
    down=false;
    right=false;
    left=false;
  }
  if(keyCode==DOWN)
  {
    up=false;
    down=true;
    right=false;
    left=false;
  }
}
