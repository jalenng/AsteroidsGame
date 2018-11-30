class Star //note that this class does NOT extend Floater
{
	private double myX;
	private double myY;
	private double myZ;
  private double mySpeed;
  private double myAngle;
	private float myBrightness;
	private int mySize;

 	public Star()
  	{
  		myX = (Math.random() * width);
  		myY = (Math.random() * height);
  		myZ = (Math.random() * 100) + 1;
  		myBrightness = (float)(myZ * 2);
  		mySize = (int)(Math.random() * 4);
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
    public void move(String direction, int speed)
    {
      if (direction == "out")
      {
        myAngle = Math.atan2(myX, myY);
        myX -= Math.cos(myAngle) * speed;
        myY -= Math.sin(myAngle) * speed;
      }
    }
}
