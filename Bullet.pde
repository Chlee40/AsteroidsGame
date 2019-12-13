class Bullets extends Floater
{
	public Bullets(Spaceship bob) 
	{
		myCenterX = bob.getPosX();
		myCenterY = bob.getPosY();
		myPointDirection = bob.getPoint();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = bob.getDirX();
		myDirectionY = bob.getDirY();
		accelerate(6.0);
	}
	public void show()
	{
		noStroke();
		fill(255, 135, 43);
		ellipse((float) myCenterX, (float) myCenterY, (float) 5, (float) 5);
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