class Spaceship extends Floater  
{  
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
    Spaceship()
    {
    	myColor = color(150, 150, 150);
    	corners = 11;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 10;
    	yCorners[0] = 0;
    	xCorners[1] = 8;
    	yCorners[1] = 2;
    	xCorners[2] = 6;
    	yCorners[2] = 2;
    	xCorners[3] = -10;
    	yCorners[3] = 10;
    	xCorners[4] = -3;
    	yCorners[4] = 1;
    	xCorners[5] = -8;
    	yCorners[5] = 2;
    	xCorners[6] = -8;
    	yCorners[6] = -2;
    	xCorners[7] = -3;
    	yCorners[7] = -1;
    	xCorners[8] = -10;
    	yCorners[8] = -10;
    	xCorners[9] = 6;
    	yCorners[9] = -2;
    	xCorners[10] = 8;
    	yCorners[10] = -2;
    	myCenterX = width / 2;
    	myCenterY = height / 2;
    }
}
