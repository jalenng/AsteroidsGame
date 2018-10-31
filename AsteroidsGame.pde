//your variable declarations here
Spaceship spaceship;

public void setup() 
{
	size(500, 500);
	spaceship = new Spaceship();
}

public void draw() 
{
	background(0);
	spaceship.show();
	spaceship.move();
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
	if (key == 'a')
	{
		spaceship.turn(-5);
	}
	if (key == 'd')
	{
		spaceship.turn(5);
	}
}
