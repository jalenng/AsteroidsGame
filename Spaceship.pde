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
    	corners = 3;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;
    	myCenterX = width / 2;
    	myCenterY = height / 2;
    }
}
