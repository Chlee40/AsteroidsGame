class Star 
{
  private int myX, myY, sizeX, sizeY;
  public Star()
  {
  	myX = (int) (Math.random()*600);
  	myY = (int) (Math.random()*600);
  	sizeX = sizeY = (int) (Math.random()*5);
  }
  public void show()
  {
  	fill(200);
  	ellipse(myX, myY, sizeX, sizeY);
  }
}
