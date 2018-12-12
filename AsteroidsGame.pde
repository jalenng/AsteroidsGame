boolean wIsPressed;
boolean aIsPressed;
boolean sIsPressed;
boolean dIsPressed;
boolean shiftIsPressed;
boolean spaceIsPressed;
int lastBulletTimer;

float masterScale;

//your variable declarations here
Dashboard dash;
Spaceship spaceship;
Starfield sky;
Bullet die;
ArrayList <Asteroid> asteroidsList = new ArrayList <Asteroid>();
ArrayList <Bullet> bulletsList = new ArrayList <Bullet>();

public void setup() 
{
	frameRate(60);
	size(500, 500);
	masterScale = Math.min(width, height) / 400;
	dash = new Dashboard();
	spaceship = new Spaceship();
	sky = new Starfield(700);
	for (int i = 0; i < 15; i++)
	{
		asteroidsList.add(new Asteroid());
	}
}

public void draw() 
{
	sky.show(masterScale);
	sky.move(masterScale);
	float scale = (19.5 - sky.getHyperspaceTimer()) / 20;
	for (int i = 0; i < asteroidsList.size(); i++)
	{
		asteroidsList.get(i).show(masterScale * scale);
		asteroidsList.get(i).move(masterScale);
		if (dist(spaceship.getX(), spaceship.getY(), 
			asteroidsList.get(i).getX(), asteroidsList.get(i).getY()) < 15)
		{
			spaceship.setHealth(spaceship.getHealth() - 1);
			asteroidsList.remove(i);
		}
	}
	for (int i = 0; i < bulletsList.size(); i++)
	{
		bulletsList.get(i).show(masterScale * scale);
		bulletsList.get(i).move(masterScale);
		if (bulletsList.get(i).getX() < -10 || bulletsList.get(i).getX() > width + 10 || 
			bulletsList.get(i).getY() < -10 || bulletsList.get(i).getY() > height + 10)
		{
			bulletsList.remove(i);
			break;
		}
		for (int j = 0; j < asteroidsList.size(); j++)
		{
			if (dist(bulletsList.get(i).getX(), bulletsList.get(i).getY(), 
				asteroidsList.get(j).getX(), asteroidsList.get(j).getY()) < 15 * masterScale)
			{
				bulletsList.remove(i);
				asteroidsList.remove(j);
				break;
			}
		}
	}
	if (scale <= 0)
	{
		spaceship.hyperspace();
	}
	spaceship.show(masterScale * scale);
	spaceship.move(masterScale);
	dash.setHearts(spaceship.getHealth());
	dash.setAsteroidsAmt(asteroidsList.size());
	dash.show(masterScale);
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
  	if (!spaceIsPressed)
	{
		spaceIsPressed = true;
		lastBulletTimer = 0;
	}
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
	if (sky.getHyperspaceMode() == "off")
	{
		if (wIsPressed)	{
			spaceship.accelerate(0.1);
		}
		if (sIsPressed)
		{
			if(spaceship.getDirectionX() > 0.05 || spaceship.getDirectionY() > 0.05)
			{
				spaceship.deccelerate();
			}
			else
			{
				sky.setHyperspace("entering");
			}
		}
		if (aIsPressed)
		{
			spaceship.turn(-5);
		}
		if (dIsPressed)
		{
			spaceship.turn(5);
		}
		if (spaceIsPressed)
		{
			if (lastBulletTimer == 0)
			{
				bulletsList.add(new Bullet(spaceship));
				lastBulletTimer = 10;
			}
			else
			{
				lastBulletTimer--;
			}
		}
	}
}
