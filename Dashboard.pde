public class Dashboard
{
	private PFont myFont;
	private PFont myEmojiFont;
	private int myHearts;
	private int myAsteroidsAmt;
	public Dashboard()
	{
		myFont = createFont("Bahnschrift", 10, true);
		myEmojiFont = createFont("Segoe UI Emoji", 10, true);
	}
	public void setHearts(int hearts)
	{
		myHearts = hearts;
	}
	public void setAsteroidsAmt(int amount)
	{
		myAsteroidsAmt = amount;
	}
	public void show(float scale)
	{
		textFont(myFont);
		textSize(40 * scale);
		fill(255, 150);
		text(myAsteroidsAmt, (3 * scale), height - (35 * scale));
		textFont(myEmojiFont);
		textSize(20 * scale);
		for (int i = 0; i < 3; i++)
		{
			if (i < myHearts)
			{
				fill(255, 0, 0, 150);
			}
			else 
			{
				fill(75, 0, 0, 150);
			}
			text("♡", (3 * scale) + (25 * scale * i), height - (10 * scale));
		}
	}
}