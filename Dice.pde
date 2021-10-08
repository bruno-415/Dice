int sumOfDots;

void setup() {
  size(800,800);
  noLoop();
}

void draw() {
  sumOfDots = 0;
  BigDie big = new BigDie(100,100);
  big.roll();
  big.show();
  System.out.println(sumOfDots);
  fill(255);
  text(sumOfDots + " dots", 370, 750);
}

void mousePressed() {
  redraw();
}

class BigDie {
  int mySize;
  int myX;
  int myY;
  int num;
  MediumDie medium;
  
  BigDie(int x, int y) {
      //variable initializations here
      mySize = 600;
      myX = x;
      myY = y;
  }
  void roll() {
    //your code here
    num = (int)(Math.random()*6+1);
    sumOfDots += num;
  }
  void show() {
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
  
  MediumDie(int x, int y) {
    mySize = 80;
    myX = x;
    myY = y;
  }
  void roll() {
      //your code here
      num = (int)(Math.random()*6+1);
      sumOfDots += num;
  }
  void show() {
    //your code here
    //System.out.println(num);
    fill(0);
    rect(myX, myY, mySize, mySize, 60);
    
    if(num == 1) { //roll a 1
      small = new SmallDie(myX+32, myY+32);
      small.roll();
      small.show();
    }
    else if(num == 2) { //roll a 2
      small = new SmallDie(myX+16, myY+16);
      small.roll();
      small.show();
      small = new SmallDie(myX+48, myY+48);
      small.roll();
      small.show();
    }
    else if(num == 3) { //roll a 3
      small = new SmallDie(myX+16,myY+16);
      small.roll();
      small.show();
      small = new SmallDie(myX+32,myY+32);
      small.roll();
      small.show();
      small = new SmallDie(myX+48,myY+48);
      small.roll();
      small.show();
    }
    else if(num == 4) { //roll a 4
      for(int y = myY+16; y <= myY+48; y += 32) {
        for (int x = myX+16; x <= myX+48; x += 32) {
          small = new SmallDie(x, y);
          small.roll();
          small.show();
        }
      }
    }
    else if(num == 5) { //roll a 5
      for(int y = myY+16; y <= myY+48; y += 32) {
        for (int x = myX+16; x <= myX+48; x += 32) {
          small = new SmallDie(x, y);
          small.roll();
          small.show();
        }
      }
      small = new SmallDie(myX+32,myY+32);
      small.roll();
      small.show();
    }
    else if(num == 6) { //roll a 6
      for(int y = myY+16; y <= myY+48; y += 16) {
        for (int x = myX+16; x <= myX+48; x += 32) {
          small = new SmallDie(x, y);
          small.roll();
          small.show();
        }
      }
    }
  }
}

  class SmallDie
{
  int mySize;
  int myX;
  int myY;
  int num;
  TinyDie tiny;
  
  SmallDie(int x, int y){
    mySize = 16;
    myX = x;
    myY = y;
  }
  void roll()
  {
      //your code here
      num = (int)(Math.random()*6+1);
      sumOfDots += num;
  }
  void show()
  {
      //your code here
      //System.out.println(num);
      fill(255);
      rect(myX, myY, mySize, mySize, 10);
      
      if(num == 1) { //roll a 1
        tiny = new TinyDie(myX+7, myY+7);
        tiny.show();
      }
      else if(num == 2) { //roll a 2
        tiny = new TinyDie(myX+4, myY+4);
        tiny.show();
        tiny = new TinyDie(myX+10, myY+10);
        tiny.show();
      }
      else if(num == 3) { //roll a 3
        tiny = new TinyDie(myX+4,myY+4);
        tiny.show();
        tiny = new TinyDie(myX+7,myY+7);
        tiny.show();
        tiny = new TinyDie(myX+10,myY+10);
        tiny.show();
      }
      else if(num == 4) { //roll a 4
        for(int y = myY+4; y <= myY+10; y += 6) {
          for (int x = myX+4; x <= myX+10; x += 6) {
            tiny = new TinyDie(x, y);
            tiny.show();
          }
        }
      }
      else if(num == 5) { //roll a 5
        for(int y = myY+4; y <= myY+10; y += 6) {
          for (int x = myX+4; x <= myX+10; x += 6) {
            tiny = new TinyDie(x, y);
            tiny.show();
          }
        }
        tiny = new TinyDie(myX+7,myY+7);
        tiny.show();
      }
      else if(num == 6) { //roll a 6
        for(int y = myY+4; y <= myY+10; y += 3) {
          for (int x = myX+4; x <= myX+10; x += 6) {
            tiny = new TinyDie(x, y);
            tiny.show();
          }
        }
      } 
  }
}

class TinyDie
{
  int mySize;
  int myX;
  int myY;
  int num;
  
  TinyDie(int x, int y){
    mySize = 1;
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    num = (int)(Math.random()*6+1);
    sumOfDots += num;
  }
  void show()
  {
    //your code here
    //System.out.println(num);
    fill(0);
    rect(myX, myY, mySize, mySize);
  }
}
