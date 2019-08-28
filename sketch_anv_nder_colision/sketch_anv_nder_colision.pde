float speedY = 4.2;

float speed = 4.8;

boolean isClicked = false;

float x = 400;

float y = 100;
void setup()
{

  background(0);
  size(800, 800);
}


void draw()
{

  ellipse(x, y, 50, 50);

  if (0>y)
  {
    speedY = 3.2;
    background(random(255), random(255), random(255));
  }
  if (y>800)
  {
    speedY = -4.4;
    background(random(255), random(255), random(255));
  }
  if (isClicked == true)
  {
    y = y + speedY;
  }

  if (0>x)
  {
    speed = 4.7;
    background(random(255), random(255), random(255));
  }
  if (x>800)
  {

    speed = -6.4;
    background(random(255), random(255), random(255));
  }
  if (isClicked == true)
  {
    x = x + speed;
  }

  float distance = dist(mouseX, mouseY, x, y);
  if (distance < 25)
  {
    if (mousePressed)
    {
      background(random(255), random(255), random(255));

      isClicked =true;
    }
  }
}
