class Spaceship extends Floater 
{   
	
    public Spaceship() 
    {
    corners = 3;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = 200;
   	myCenterX = 300;
   	myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    }
    public void hyperspace()
    {
    	myPointDirection = (int) (Math.random()*360);
    	myCenterX = (int) (Math.random()*600);
    	myCenterY = (int) (Math.random()*600);
    	myDirectionX = 0;
   		myDirectionY = 0;
    }
}
