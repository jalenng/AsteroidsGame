boolean wIsPressed;
boolean aIsPressed;
boolean sIsPressed;
boolean dIsPressed;
boolean spaceIsHeld;

//your variable declarations here
Spaceship spaceship;
Starfield sky;
ArrayList <Asteroid> asteroidsList = new ArrayList <Asteroid>();

public void setup() 
{
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
	background(0);
	sky.show();
	sky.move();
	for (int i = 0; i < asteroidsList.size(); i++)
	{
		asteroidsList.get(i).show();
		asteroidsList.get(i).move();
		if (dist(spaceship.getX(), spaceship.getY(), 
			asteroidsList.get(i).getX(), asteroidsList.get(i).getY()) < 20)
		{
			asteroidsList.remove(i);
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
	if (key == ' ' && !spaceIsHeld)
	{
		spaceship.hyperspace();
		sky.setHyperspace(true);
		spaceIsHeld = true;
	}
	else if (key != ' ')
	{
		spaceIsHeld = false;
	}
}
