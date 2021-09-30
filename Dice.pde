void setup()
  {
    size(500,500);
    noLoop();
  }
void draw()
{
    //your code here
    background(0);
    Die test = new Die(225,225);
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
    int dot;
    
    Die(int x, int y) //constructor
    {
        //variable initializations here
        mySize = 50;
        myX = x;
        myY = y;
        dot = 8;
    }
    void roll()
    {
        //your code here
        num = (int)(Math.random()*6);
    }
    void show()
    {
        //your code here
        System.out.println(num+1);
        fill(255);
        rect(myX, myY, mySize, mySize, 10);
        fill(0);
        if(num < 1) {
          ellipse(250,250,dot,dot);
        }
        else if(num < 2) {
           ellipse(240,240,dot,dot);
          ellipse(260,260,dot,dot);
        }
        else if(num < 3) {
          ellipse(240,240,dot,dot);
          ellipse(250,250,dot,dot);
          ellipse(260,260,dot,dot);
        }
        else if(num < 4) {
          ellipse(240,240,dot,dot);
          ellipse(240,260,dot,dot);
          ellipse(260,260,dot,dot);
          ellipse(260,240,dot,dot);
        }
        else if(num < 5) {
          ellipse(240,240,dot,dot);
          ellipse(240,260,dot,dot);
          ellipse(260,260,dot,dot);
          ellipse(260,240,dot,dot);
          ellipse(250,250,dot,dot);
        }
        else if(num < 6) {
          ellipse(240,240,dot,dot);
          ellipse(240,250,dot,dot);
          ellipse(240,260,dot,dot);
          ellipse(260,260,dot,dot);
          ellipse(260,250,dot,dot);
          ellipse(260,240,dot,dot);
        }
    }
}
