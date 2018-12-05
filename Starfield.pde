class Starfield
{
	private Star[] myStars;
	private String hyperspaceMode;
	private float hyperspaceTimer;

	Starfield(int stars)
	{
		myStars = new Star[stars];
		hyperspaceMode = "off";
		hyperspaceTimer = 0.1;
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
		if (hyperspaceMode == "off")
		{
			for (int i = 0; i < myStars.length; i++)
			{
				myStars[i].move();
			}
		}
		else
		{
			for (int i = 0; i < myStars.length; i++)
			{
				double myAngle = Math.atan2(myStars[i].getX() - (width / 2), myStars[i].getY() - (height / 2)) + (PI / 2);
				if (dist((float)myStars[i].getX(), (float)myStars[i].getY(), (float)width / 2, (float)height / 2) 
					> dist(0, 0, (float)width / 2, (float)height / 3))
				{
					myStars[i] = new Star();
				}
				else
				{
					myStars[i].setX(myStars[i].getX() - Math.cos(myAngle) * hyperspaceTimer);
					myStars[i].setY(myStars[i].getY() - Math.sin(-myAngle) * hyperspaceTimer);
					myStars[i].setSize(myStars[i].getSize() + 0.005);
				}
			}
			
			if (hyperspaceMode == "entering")
			{
				if (hyperspaceTimer < 30)
				{
					hyperspaceTimer *= 1.05;
				}
				else
				{
					hyperspaceMode = "exiting";
				}
			}
			else
			{
				if (hyperspaceTimer > 1)
				{
					hyperspaceTimer /= 1.05;
				}
				else
				{
					hyperspaceMode = "off";	
				}
			}
		}
	}

	public void setHyperspace (String status)
	{
		hyperspaceMode = status;
	}
}