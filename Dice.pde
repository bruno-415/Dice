void setup()
  {
    size(800,800);
    noLoop();
  }
void draw()
{
    //your code here
    background(0);
    BigDie test = new BigDie(100,100);
    test.roll();
    test.show();
}
void mousePressed()
{
    redraw();
}
class BigDie //models one single dice cube
{
    //member variable declarations here
    int mySize;
    int myX;
    int myY;
    int num;
    MediumDie medium;
    
    BigDie(int x, int y) //constructor
    {
        //variable initializations here
        mySize = 600;
        myX = x;
        myY = y;
    }
    void roll()
    {
        //your code here
        num = (int)(Math.random()*6+1);
    }
    void show()
    {
        //your code here
        System.out.println(num);
        fill(255);
        rect(myX, myY, mySize, mySize, 60);
        fill(0);
        
        if(num == 1) { //roll a 1
          medium = new MediumDie(350,350);
          medium.roll();
          medium.show();
        }
        
        else if(num == 2) { //roll a 2
          medium = new MediumDie(220,220);
          medium.roll();
          medium.show();
          medium = new MediumDie(480,480);
          medium.roll();
          medium.show();
        }
        else if(num == 3) { //roll a 3
          medium = new MediumDie(220,220);
          medium.roll();
          medium.show();
          medium = new MediumDie(350,350);
          medium.roll();
          medium.show();
          medium = new MediumDie(480,480);
          medium.roll();
          medium.show();
        }
        else if(num == 4) { //roll a 4
          for(int y = 220; y <= 480; y += 260) {
            for (int x = 220; x <= 480; x += 260) {
              medium = new MediumDie(x, y);
              medium.roll();
              medium.show();
            }
          }
        }
        else if(num == 5) { //roll a 5
          for(int y = 220; y <= 480; y += 260) {
            for (int x = 220; x <= 480; x += 260) {
              medium = new MediumDie(x, y);
              medium.roll();
              medium.show();
            }
          }
          medium = new MediumDie(350,350);
          medium.roll();
          medium.show();
        }
        else if(num == 6) { //roll a 6
          for(int y = 220; y <= 480; y += 130) {
            for (int x = 220; x <= 480; x += 260) {
              medium = new MediumDie(x, y);
              medium.roll();
              medium.show();
            }
          }
        }
    }
}

class MediumDie
{
  int mySize;
  int myX;
  int myY;
  int num;
  SmallDie small;
  
  MediumDie(int x, int y){
    mySize = 80;
    myX = x;
    myY = y;
  }
  void roll()
    {
        //your code here
        num = (int)(Math.random()*2+1);
    }
  void show()
  {
      //your code here
      //System.out.println(num);
      fill(0);
      rect(myX, myY, mySize, mySize, 60);
      
        if(num == 1) { //roll a 1
          small = new SmallDie(myX+32, myY+32);
          small.show();
        }
        else if(num == 2) { //roll a 2
          small = new SmallDie(myX+22, myY+22);
          small.show();
          small = new SmallDie(myX+42, myY+42);
          small.show();
        }
        /*else if(num == 3) { //roll a 3
          small = new SmallDie(220,220);
          small.show();
          small = new SmallDie(350,350);
          small.show();
          small = new SmallDie(480,480);
          small.show();
        }
        else if(num == 4) { //roll a 4
          for(int y = 220; y <= 480; y += 260) {
            for (int x = 220; x <= 480; x += 260) {
              small = new SmallDie(x, y);
              small.show();
            }
          }
        }
        else if(num == 5) { //roll a 5
          for(int y = 220; y <= 480; y += 260) {
            for (int x = 220; x <= 480; x += 260) {
              small = new SmallDie(x, y);
              small.show();
            }
          }
          small = new SmallDie(350,350);
          small.show();
        }
        else if(num == 6) { //roll a 6
          for(int y = 220; y <= 480; y += 130) {
            for (int x = 220; x <= 480; x += 260) {
              small = new SmallDie(x, y);
              small.show();
            }
          }
        }*/
  }
}

  class SmallDie
{
  int mySize;
  int myX;
  int myY;
  int num;
  
  SmallDie(int x, int y){
    mySize = 16;
    myX = x;
    myY = y;
  }
  void roll()
  {
      //your code here
      num = (int)(Math.random()*2+1);
  }
  void show()
  {
      //your code here
      //System.out.println(num);
      fill(255);
      rect(myX, myY, mySize, mySize, 10);
      System.out.println("here");
  }
}
