class Starfield
{
	private Star[] myStars;
	private String hyperspaceMode;
	private float hyperspaceTimer;
	private float backgroundAlpha;

	Starfield(int stars)
	{
		backgroundAlpha = 255;
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
		fill(0, backgroundAlpha);
		rect(0, 0, width, height);
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
				if (hyperspaceTimer < 20)
				{
					hyperspaceTimer *= 1.03;
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
					hyperspaceTimer /= 1.03;
				}
				else
				{
					hyperspaceMode = "off";	
				}
			}
			backgroundAlpha = 100 * (1 - (hyperspaceTimer / 30));
			println(backgroundAlpha);
		}
	}

	public void setHyperspace (String status)
	{
		hyperspaceMode = status;
	}
}