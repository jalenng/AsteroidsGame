class Starfield
{
	private Star[] myStars;
	private boolean isInHyperspace;
	private float hyperspaceTimer;

	Starfield(int stars)
	{
		myStars = new Star[stars];
		isInHyperspace = false;
		for (int i = 0; i < myStars.length; i++)
		{
			myStars[i] = new Star();
		}
	}

	public void show()
	{
		for (int i = 0; i < myStars.length; i++)
		{
			myStars[i].show();
		}
	}

	public void move()
	{
		if (!isInHyperspace)
		{
			for (int i = 0; i < myStars.length; i++)
			{
				myStars[i].move();
			}
		}
		else if (hyperspaceTimer < 100)
		{
			for (int i = 0; i < myStars.length; i++)
			{
				double myAngle = Math.atan2(myStars[i].getX() - (width / 2), myStars[i].getY() - (height / 2));
				myStars[i].setX(myStars[i].getX() - Math.cos(myAngle) * hyperspaceTimer);
				myStars[i].setY(myStars[i].getY() - Math.sin(-myAngle) * hyperspaceTimer);
				myStars[i].setSize(myStars[i].getSize() + 0.05);
				println(myAngle);
			}
			hyperspaceTimer += 0.1;
		}	
	}

	public void setHyperspace (boolean status)
	{
		isInHyperspace = status;
	}
}