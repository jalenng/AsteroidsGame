class Asteroid extends Floater
{
	private int rotationSpeed;
	private double myInitSpeed;
	private double myInitAngle;
	private double myScale;
	private double myMaxRad;
	private int[] xSOriginal = {15, 15, 11, 8, 6, 0, -6, -8, -13, -15, -15, -14, -8, -1, 6, 11, 14};
   	private int[] ySOriginal = {0, 2, 8, 11, 12, 12, 11, 11, 5, -2, -3, -5, -9, -12, -11, -7, -4};
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
    	myScale = (Math.random() * 1.5) + 0.5;
    	myMaxRad = 15 * myScale;
    	corners = 17;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	for (int i = 0; i < corners; i++)
    	{
    		xCorners[i] = (int)(xSOriginal[i] * myScale);
    		yCorners[i] = (int)(ySOriginal[i] * myScale);
    	}
	}
	public void move(float scale)
	{
		super.turn(rotationSpeed);
		super.move(scale);
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
    public double getMaxRad()
    {
    	return myMaxRad;
    }
}

//POOP!