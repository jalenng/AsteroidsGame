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
    	corners = 22;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 16;
    	yCorners[0] = 0;
    	xCorners[1] = 10;
    	yCorners[1] = 4;
    	xCorners[2] = 7;
    	yCorners[2] = 4;
    	xCorners[3] = -4;
    	yCorners[3] = 10;
    	xCorners[4] = -4;
    	yCorners[4] = 8;
    	xCorners[5] = -6;
    	yCorners[5] = 8;
    	xCorners[6] = -6;
    	yCorners[6] = 7;
    	xCorners[7] = -4;
    	yCorners[7] = 7;
    	xCorners[8] = -4;
    	yCorners[8] = 3;
    	xCorners[9] = -6;
    	yCorners[9] = 3;
    	xCorners[10] = -6;
    	yCorners[10] = 2;
    	xCorners[11] = -4;
    	yCorners[11] = 2;
    	xCorners[12] = -4;
    	yCorners[12] = -2;
    	xCorners[13] = -6;
    	yCorners[13] = -2;
    	xCorners[14] = -6;
    	yCorners[14] = -3;
    	xCorners[15] = -4;
    	yCorners[15] = -3;
    	xCorners[16] = -6;
    	yCorners[16] = -7;
    	xCorners[17] = -6;
    	yCorners[17] = -8;
    	xCorners[18] = -4;
    	yCorners[18] = -8;
    	xCorners[19] = -4;
    	yCorners[19] = -10;
    	xCorners[20] = 7;
    	yCorners[20] = -4;
    	xCorners[21] = 10;
    	yCorners[21] = -4;
    	myCenterX = width / 2;
    	myCenterY = height / 2;
    }
}
