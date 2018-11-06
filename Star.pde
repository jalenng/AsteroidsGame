class Star //note that this class does NOT extend Floater
{
	private double myX;
	private double myY;
	private double myZ;
	private int mySize;
 	public Star()
  	{
  		myX = (Math.random() * width);
  		myY = (Math.random() * height);
  		myZ = (Math.random() * 150) + 1;
  		mySize = (int)(Math.random() * 4);
  	}
  	public void show()
  	{
  		noStroke();
  		fill(150, 150, 150);
  		ellipse((int)myX, (int)myY, mySize, mySize);
  	}
  	public void move()
  	{
  		myX += -1 * spaceship.getDirectionX() / myZ;
  		myY += -1 * spaceship.getDirectionY() / myZ;
  		if (myX > width) {myX = 0;}
  		if (myY > height) {myY = 0;}
  		if (myX < 0) {myX = width;}
  		if (myY < 0) {myY = height;}
  	}
}
