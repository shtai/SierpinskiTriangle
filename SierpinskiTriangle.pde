public void setup()
{
	size(500,500);
	noStroke();
	fill(0,0,0);
}
public void draw()
{
	sierpinski(0,500,500);
}
public void sierpinski(int x, int y, int len) 
{
	if (len<=20)
		triangle(x, y, x+len, y, x+(len/2), y-len);
	else
	{
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x,y,len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
}