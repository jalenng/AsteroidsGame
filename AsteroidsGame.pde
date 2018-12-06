boolean wIsPressed;
boolean aIsPressed;
boolean sIsPressed;
boolean dIsPressed;
boolean shiftIsPressed;
boolean spaceIsPressed;

//your variable declarations here
Spaceship spaceship;
Starfield sky;
Bullet die;
ArrayList <Asteroid> asteroidsList = new ArrayList <Asteroid>();
ArrayList <Bullet> bulletsList = new ArrayList <Bullet>();

public void setup() 
{
	frameRate(60);
	size(500, 500);
	spaceship = new Spaceship();
	sky = new Starfield(700);
	for (int i = 0; i < 10; i++)
	{
		asteroidsList.add(new Asteroid());
	}
}

public void draw() 
{
	sky.show();
	sky.move();
	for (int i = 0; i < asteroidsList.size(); i++)
	{
		asteroidsList.get(i).show();
		asteroidsList.get(i).move();
		if (dist(spaceship.getX(), spaceship.getY(), 
			asteroidsList.get(i).getX(), asteroidsList.get(i).getY()) < 15)
		{
			asteroidsList.remove(i);
		}
	}
	for (int i = 0; i < bulletsList.size(); i++)
	{
		bulletsList.get(i).show();
		bulletsList.get(i).move();
		for (int j = 0; j < asteroidsList.size(); j++)
		{
			if (dist(bulletsList.get(i).getX(), bulletsList.get(i).getY(), 
				asteroidsList.get(j).getX(), asteroidsList.get(j).getY()) < 15)
			{
				bulletsList.remove(i);
				asteroidsList.remove(j);
				break;
			}
		}
		if (bulletsList.get(i).getX() < -10 || bulletsList.get(i).getX() > width + 10 || 
			bulletsList.get(i).getY() < -10 || bulletsList.get(i).getY() > height + 10)
		{
			bulletsList.remove(i);
			break;
		}
	}
	spaceship.show();
	spaceship.move();
	if (keyPressed) {keyDownMethod();}
}

public void keyPressed()
{
  if (key == 'w')
  {
    wIsPressed = true;
  }
  if (key == 'a')
  {
    aIsPressed = true;
  }
  if (key == 's')
  {
    sIsPressed = true;
  }
  if (key == 'd')
  {
    dIsPressed = true;
  }
  if (key == CODED && keyCode == SHIFT)
  {
  	shiftIsPressed = true;
  }
  if (key == ' ')
  {
	spaceIsPressed = true;
  }
}
public void keyReleased()
{
  if (key == 'w')
  {
    wIsPressed = false;
  }
  if (key == 'a')
  {
    aIsPressed = false;
  }
  if (key == 's')
  {
    sIsPressed = false;
  }
  if (key == 'd')
  {
    dIsPressed = false;
  }
  if (key == CODED && keyCode == SHIFT)
  {
  	shiftIsPressed = false;
  }
  if (key == ' ')
  {
	spaceIsPressed = false;
  }
}

public void keyDownMethod()
{	
	if (wIsPressed)	{
		spaceship.accelerate(0.04);
	}
	if (sIsPressed)
	{
		spaceship.accelerate(-0.02);
	}
	if (aIsPressed)
	{
		spaceship.turn(-5);
	}
	if (dIsPressed)
	{
		spaceship.turn(5);
	}
	if (shiftIsPressed)
	{
		spaceship.hyperspace();
		sky.setHyperspace("entering");
	}
	if (spaceIsPressed)
	{
		bulletsList.add(new Bullet(spaceship));
	}
}
