class Star //note that this class does NOT extend Floater
{
	private double myX;
	private double myY;
	private double myZ;
  private double mySpeed;
	private float myBrightness;
	private float mySize;
  private float myHyperspaceTimer;

 	public Star()
  	{
  		myX = (Math.random() * width);
  		myY = (Math.random() * height);
  		myZ = (Math.random() * 100) + 1;
  		myBrightness = (float)(myZ * 2);
  		mySize = (int)(Math.random() * 4);
      myHyperspaceTimer = 0;
  	}
  	public void show()
  	{
  		noStroke();
  		fill(myBrightness);
  		ellipse((int)myX, (int)myY, mySize, mySize);
  	}
  	public void move()
  	{
      mySpeed = -4 * spaceship.getDirectionX() / myZ;
  		myX += mySpeed;
  		myY += mySpeed;
      if (myX > width + 20) {myX = -20;}
  		if (myY > height + 20) {myY = -20;}
  		if (myX < -20) {myX = width + 20;}
  		if (myY < -20) {myY = height + 20;}
  	}

    public double getX()
    {
      return myX;
    }

    public double getY()
    {
      return myY;
    }

    public float getSize()
    {
      return mySize;
    }

    public void setX(double x)
    {
      myX = x;
    }

    public void setY(double y)
    {
      myY = y;
    }

    public void setSize(float size)
    {
      mySize = size;
    }
}
