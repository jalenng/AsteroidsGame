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
		hyperspaceTimer = 0.05;
		for (int i = 0; i < myStars.length; i++)
		{
			myStars[i] = new Star();
		}
	}

	public void show(float scale)
	{
		background(0);
		for (int i = 0; i < myStars.length; i++)
		{
			myStars[i].show(scale);
		}
	}

	public void move(float scale)
	{
		if (hyperspaceMode == "off")
		{
			for (int i = 0; i < myStars.length; i++)
			{
				myStars[i].move(scale);
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
					myStars[i].setY(myStars[i].getY() + Math.sin(myAngle) * hyperspaceTimer);
					myStars[i].setSize(myStars[i].getSize() + 0.001);
				}
			}
			
			if (hyperspaceMode == "entering")
			{
				if (hyperspaceTimer < 20)
				{
					hyperspaceTimer *= 1.1;
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
					hyperspaceTimer /= 1.1;
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
	public String getHyperspaceMode()
	{
		return hyperspaceMode;
	}
	public float getHyperspaceTimer()
	{
		return hyperspaceTimer;
	}
}