class Bullet extends Floater
{
	private int myLife;
	public Bullet(Spaceship theShip)
	{
		int myLife = 1000;
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection * (Math.PI / 180);
		myDirectionX = 5 * Math.cos(dRadians);
		myDirectionY = 5 * Math.sin(dRadians);
	}

	public void show()
	{
		noStroke();
		fill(200, 200, 200);
		ellipse((float)myCenterX, (float)myCenterY, 5, 5);
	}
	public void setLife(int life)
	{
		myLife = life;
	}
	public int getLife()
	{
		return myLife;
	}
	public void setX(int x)
	{
		myCenterX = x;
	}
	public int getX()
	{
		return (int)myCenterX;
	}
	public void setY(int y)
	{
		myCenterY = y;
	}
	public int getY()
	{
		return (int)myCenterY;
	}
	public void setDirectionX(double x)
	{
		myDirectionX = x;
	}
	public double getDirectionX()
	{
		return myDirectionX;
	}
	public void setDirectionY(double y)
	{
		myDirectionY = y;
	}
    public double getDirectionY()
    {
    	return myDirectionY;
    }
    public void setPointDirection(int degrees)
    {
    	myPointDirection = degrees;
    }
    public double getPointDirection()
    {
    	return myPointDirection;
    }
}