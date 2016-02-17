public void setup()
{
	size(500,500);
	background(0);
}

public void draw()
{
	sierpinski(0,500,500);
}

public void sierpinski(int x, int y, int length) 
{
	if(length <= 25)
	{
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		triangle(x,y,x+(length/2),y-length,x+length,y);
	}
	else
	{
		sierpinski(x,y,length/2);
		sierpinski(x+(length/2),y,length/2);
		sierpinski(x+(length/4),y-(length/2),length/2);
	}
}