Spaceship bob = new Spaceship();
public void setup() 
{
  size(600,600);
}
public void draw() 
{
	background(0);
	bob.show();
	bob.move();
}
public void keyPressed()
{
	if (key == 'a')
	{
		bob.turn(5);
		System.out.print("a");
	}
	if (key == 'd')
	{
		bob.turn(-5);
		System.out.print("d");
	}
	if (key == 'w')
	{
		bob.accelerate(1);
		System.out.print("w");
	}
}

