class Bullet extends Floater
{
	private int myLife;
	public Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection / 57.2977;
		myDirectionX = 5 * Math.cos(dRadians);
		myDirectionY = 5 * Math.sin(dRadians);
	}

	public void show(float scale)
	{
		noStroke();
		fill(200);
		ellipse((int)myCenterX, (int)myCenterY, 5 * scale, 5 * scale);
	}
	public void move ()   //move the floater in the current direction of travel
  	{      
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;
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