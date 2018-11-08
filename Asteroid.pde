class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid() 
	{
		rotationSpeed = (int)(Math.random() * 21) - 10;
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
	public void move()
	{
		super.turn(rotationSpeed);
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