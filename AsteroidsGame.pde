//your variable declarations here
Spaceship spaceship;
Star[] stars = new Star[50];

public void setup() 
{
	size(500, 500);
	spaceship = new Spaceship();
	for (int i = 0; i < stars.length; i++)
	{
		stars[i] = new Star();
	}
}

public void draw() 
{
	background(0);
	spaceship.show();
	spaceship.move();
	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}
	if (keyPressed) {keyDownMethod();}
}

public void keyDownMethod()
{	
	if (key == 'w')
	{
		spaceship.accelerate(0.04);
	}
	if (key == 's')
	{
		spaceship.accelerate(-0.02);
	}
	if (key == 'a' && key != 'w')
	{
		spaceship.turn(-5);
	}
	if (key == 'd' && key != 'w')
	{
		spaceship.turn(5);
	}
}
