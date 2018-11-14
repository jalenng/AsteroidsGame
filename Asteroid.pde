class Asteroid extends Floater
{
	private int rotationSpeed;
	private double myInitSpeed;
	private double myInitAngle;
	public Asteroid() 
	{
		rotationSpeed = (int)(Math.random() * 11) - 5;
		myCenterX = (int)(Math.random() * width);
    	myCenterY = (int)(Math.random() * height);
    	myInitSpeed = Math.random() * 2;
    	myInitAngle = Math.random() * 2 * PI;
    	myDirectionX = myInitSpeed * Math.cos(myInitAngle);
    	myDirectionY = myInitSpeed * Math.sin(myInitAngle);
    	myColor = color(100);
    	corners = 17;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	int[] xS = {20, 20, 15, 11, 8, 0, -8, -11, -17, -20, -20, -19, -10, -1, 7, 14, 18};
    	int[] yS = {0, 2, 11, 15, 16, 16, 15, 13, 6, -2, -4, -6, -13, -16, -15, -10, -5};
    	xCorners = xS;
    	yCorners = yS;
	}
	public void move()
	{
		super.turn(rotationSpeed);
		super.move();
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