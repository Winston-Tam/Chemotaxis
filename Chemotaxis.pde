class Walker{
  int myX, myY, myColor;
  Walker(){
    myX = 0;
    myY = 0;
    myColor = 0;
  }
  
  Walker(int x, int y){ 
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void walk(){
    myX = myX + 1;
    myY = myY + (int)(Math.random()*10)-4;
      if (mousePressed == true){
    myY = myY + (int)(Math.random()*-9);
  }
  
  }

void show(){
  strokeWeight(3);
    stroke(myColor);
  line(myX, myY, myX + 1, myY + (int)(Math.random()*21));}
}
int profit = 0;
Walker stonk;
void setup(){
  size(800, 400);
  stonk = new Walker(0, 230);
  textSize(20);
  textAlign(CENTER);
}

void draw(){
    text("The more you click, the higher the stock will go!", 400, 380);
    for (int i = 0; i < 1; i++){
    stonk.walk();
    stonk.show();
    }
  }
