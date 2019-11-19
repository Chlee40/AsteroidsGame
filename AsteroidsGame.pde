Spaceship bob = new Spaceship();
Star[] starry = new Star[400];
public void setup() 
{
  size(600,600);
  for (int i = 0; i < starry.length; i++)
  {
  	starry[i] = new Star();
  }
}
public void draw() 
{
	background(0);
	bob.show();
	bob.move();
	for (int i = 0; i < starry.length; i++)
  {
  	starry[i].show();
  }
}
public void keyPressed()
{
	if (key == 'a')
	{
		bob.turn(-5);
	}
	if (key == 'd')
	{
		bob.turn(5);
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
}

