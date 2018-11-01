class Star //note that this class does NOT extend Floater
{
	private int myX;
	private int myY;
	private int mySize;
 	public Star()
  	{
  		myX = (int)(Math.random() * width);
  		myY = (int)(Math.random() * height);
  		mySize = (int)(Math.random() * 2);
  	}
  	public void show()
  	{
  		ellipse(myX, myY, mySize, mySize);
  	}
}
