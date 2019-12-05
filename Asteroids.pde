class Asteroid extends Floater
{
	private int rotSpeed = (int) (Math.random()*3+1);
	public Asteroid() {
	corners = 6;
	xCorners = new int [corners];
	yCorners = new int [corners];
	xCorners[0] = (int) (Math.random()*5-10);
	yCorners[0] = (int) (Math.random()*8-8);
	xCorners[1] = 7;
	yCorners[1] = -7;
	xCorners[2] = (int) (Math.random()*6+10);
	yCorners[2] = (int) (Math.random()*5-3);
	xCorners[3] = 6;
	yCorners[3] = 9;
	xCorners[4] = -11;
	yCorners[4] = (int) (Math.random()*5+6);
	xCorners[5] = -9;
	yCorners[5] = (int) (Math.random()*7-5);
	myColor = 100;
    myPointDirection = (int) (Math.random()*360);
    myCenterX = (int) (Math.random()*600);
    myCenterY = (int) (Math.random()*600);
	myDirectionX = (Math.random()*2-1);
   	myDirectionY = (Math.random()*2-1);
	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
	public double getPosX()
    {
    	return myCenterX;
    }

    public double getPosY()
    {
    	return myCenterY;
    }
}