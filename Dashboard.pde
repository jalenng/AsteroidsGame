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
		textAlign(LEFT, BOTTOM);
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
		if (myHearts <= 0 || myAsteroidsAmt <= 0)
		{
			noStroke();
			fill(0, myGameOverAlpha);
			rect(0, 0, width, height);
			textFont(myFont);
			textAlign(CENTER, CENTER);
			if (myHearts <= 0)
			{
				fill(125, 0, 0, myGameOverAlpha - 200);
				textSize(20 * scale);
				text("you ran out of lives", width / 2, height / 2);
			}
			else if (myAsteroidsAmt <= 0)
			{
				fill(255, myGameOverAlpha - 200);
				textSize(40 * scale);
				text("you won!", width / 2, height / 2);
			}
			myGameOverAlpha += 5;
		}
	}
}