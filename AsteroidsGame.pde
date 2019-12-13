Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocky = new ArrayList <Asteroid>();
ArrayList <Bullets> shooty = new ArrayList <Bullets>();
Star[] starry = new Star[500];
public void setup() 
{
  size(600,600);
  for (int i = 0; i < starry.length; i++)
  {
  	starry[i] = new Star();
  }
      for (int i = 0; i < 15; i++)
  {
  	rocky.add(new Asteroid());
  }
}
public void draw() 
{
	background(0);
	for (int i = 0; i < starry.length; i++)
  {
  	starry[i].show();
  }
	bob.show();
	bob.move();
	for (int i = 0; i < rocky.size(); i++)
  {
  	rocky.get(i).show();
    rocky.get(i).move();
    if (dist((float) bob.getPosX(),(float) bob.getPosY(),(float) rocky.get(i).getPosX(),(float) rocky.get(i).getPosY()) < 20) 
    {
    	rocky.remove(i);
    }
  }
  	for (int i = 0; i < shooty.size(); i++)
  {
  	shooty.get(i).show();
  	shooty.get(i).move();
    if(shooty.get(i).getPosX() > 599 || shooty.get(i).getPosX() < 1 || shooty.get(i).getPosY() > 599 || shooty.get(i).getPosY() < 1)
  	{
		shooty.remove(i);
	}
  }
	
	for(int i = 0; i < rocky.size(); i++)
   {
		for(int j = 0; j < shooty.size(); j++)
	   {
			if (dist((float) rocky.get(i).getPosX(),(float) rocky.get(i).getPosY(), (float) shooty.get(j).getPosX(),(float) shooty.get(j).getPosY()) < 20)
		   {
		   	shooty.remove(j);
			rocky.remove(i);
			break;
		   }
	   }
   }

}
public void keyPressed()
{
	if (keyIsDown(LEFT_ARROW))
	{
		bob.turn(-10);
	}
	if (key == 'd')
	{
		bob.turn(10);
	}
	if (key == 'w')
	{
		bob.accelerate(0.2);
	}
	if (key == 's')
	{
		bob.accelerate(-0.1);
	}
	if (key == 'h')
	{
		bob.hyperspace();
	}
	if (key == 'e')
	{
		shooty.add(new Bullets(bob));
	}
}

