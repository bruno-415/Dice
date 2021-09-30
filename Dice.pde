void setup()
  {
    size(800,800);
    noLoop();
  }
void draw()
{
    //your code here
    background(0);
    Die test = new Die(100,100);
    test.roll();
    test.show();
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    //member variable declarations here
    int mySize;
    int myX;
    int myY;
    int num;
    int bigDot;
    
    Die(int x, int y) //constructor
    {
        //variable initializations here
        mySize = 600;
        myX = x;
        myY = y;
        bigDot = 80;
    }
    void roll()
    {
        //your code here
        num = (int)(Math.random()*2);
    }
    void show()
    {
        //your code here
        System.out.println(num+1);
        fill(255);
        rect(myX, myY, mySize, mySize, 60);
        fill(0);
        if(num < 1) {
          rect(myX+260,myY+260,bigDot,bigDot,25);
        }
        
      else if(num < 2) {
          ellipse(240,240,bigDot,bigDot);
          ellipse(260,260,bigDot,bigDot);
        }
        /*else if(num < 3) {
          ellipse(240,240,bigDot,bigDot);
          ellipse(250,250,bigDot,bigDot);
          ellipse(260,260,bigDot,bigDot);
        }
        else if(num < 4) {
          ellipse(240,240,bigDot,bigDot);
          ellipse(240,260,bigDot,bigDot);
          ellipse(260,260,bigDot,bigDot);
          ellipse(260,240,bigDot,bigDot);
        }
        else if(num < 5) {
          ellipse(240,240,bigDot,bigDot);
          ellipse(240,260,bigDot,bigDot);
          ellipse(260,260,bigDot,bigDot);
          ellipse(260,240,bigDot,bigDot);
          ellipse(250,250,bigDot,bigDot);
        }
        else if(num < 6) {
          ellipse(240,240,bigDot,bigDot);
          ellipse(240,250,bigDot,bigDot);
          ellipse(240,260,bigDot,bigDot);
          ellipse(260,260,bigDot,bigDot);
          ellipse(260,250,bigDot,bigDot);
          ellipse(260,240,bigDot,bigDot);
        }*/
    }
}
