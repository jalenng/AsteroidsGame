class Spaceship extends Floater  
{  
	Spaceship()
    {
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
	void setX(int x)
	{
		myCenterX = x;
	}
	int getX()
	{
		return (int)myCenterX;
	}
	void setY(int y)
	{
		myCenterY = y;
	}
	int getY()
	{
		return (int)myCenterY;
	}
	void setDirectionX(double x)
	{
		myDirectionX = x;
	}
	double getDirectionX()
	{
		return myDirectionX;
	}
	void setDirectionY(double y)
	{
		myDirectionY = y;
	}
    double getDirectionY()
    {
    	return myDirectionY;
    }
    void setPointDirection(int degrees)
    {
    	myPointDirection = degrees;
    }
    double getPointDirection()
    {
    	return myPointDirection;
    }
}
