public class Dashboard
{
	private PFont myFont;
	private PFont myEmojiFont;
	private int myHearts;
	private int myAsteroidsAmt;
	private int myGameOverAlpha;
	public Dashboard()
	{
		myGameOverAlpha = 0;
		myFont = createFont("Bahnschrift", 10, true);
		myEmojiFont = createFont("Segoe UI Emoji", 10, false);
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
				text("❤", (3 * scale) + (25 * scale * i), height - (10 * scale));
			}
			else 
			{
				text("🖤", (3 * scale) + (25 * scale * i), height - (10 * scale));
			}
			
		}
		if (myHearts <= 0)
		{
			fill(0, myGameOverAlpha);
			rect(0, 0, width, height);
			fill(125, 0, 0, myGameOverAlpha - 200);
			textFont(myFont);
			textSize(30 * scale);
			text("you ran out of lives", 120 * scale, height / 2);
			myGameOverAlpha += 5;
		}
	}
}