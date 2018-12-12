class Spaceship extends Floater  
{  
	private int myHealth;
	public Spaceship()
    {
    	myHealth = 3;
    	myCenterX = width / 2;
    	myCenterY = height / 2;
    	myColor = color(150, 150, 150);
    	corners = 11;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	int[] xS = {10, 8, 6, -10, -3, -8, -8, -3, -10, 6, 8};
    	int[] yS = {0, 2, 2, 10, 1, 2, -2, -1, -10, -2, -2};
    	xCorners = xS;
    	yCorners = yS;
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
    public int getHealth()
    {
    	return myHealth;
    }
    public void setHealth(int health)
    {
    	myHealth = health;
    }
    public void decelerate()
    {
    	myDirectionX *= 0.9;
    	myDirectionY *= 0.9;
    }
    public void setPointDirection(int degrees)
    {
    	myPointDirection = degrees;
    }
    public double getPointDirection()
    {
    	return myPointDirection;
    }
    public void hyperspace()
    {
    	myDirectionX = 0;
    	myDirectionY = 0;
		myCenterX = (int)(Math.random() * width);
    	myCenterY = (int)(Math.random() * height);
    	myPointDirection = (int)(Math.random() * 360);
    }
}
