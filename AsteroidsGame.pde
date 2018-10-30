//your variable declarations here
Spaceship spaceship;

public void setup() 
{
   spaceship = new Spaceship();
}

public void draw() 
{
	background(255);
	spaceship.show();
	spaceship.move();
	if (keyPressed) {keyDownMethod();}
}

public void keyDownMethod()
{
	if (key == 'a')
	{
		spaceship.turn(5);
	}
	if (key == 'd')
	{
		spaceship.turn(-5);
	}
	if (key == 'w')
	{
		spaceship.setDirectionX(spaceship.getDirectionX() + (0.05 * Math.cos(spaceship.getPointDirection())));
		spaceship.setDirectionY(spaceship.getDirectionY() - (0.05 * Math.sin(spaceship.getPointDirection())));
	}
}
