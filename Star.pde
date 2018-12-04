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
  		if (myX > width) {myX = 0;}
  		if (myY > height) {myY = 0;}
  		if (myX < 0) {myX = width;}
  		if (myY < 0) {myY = height;}
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
