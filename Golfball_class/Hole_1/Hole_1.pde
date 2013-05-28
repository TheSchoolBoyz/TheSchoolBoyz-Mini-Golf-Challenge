GolfBall golfball;
Hole1 Hole1;
Hole2 Hole2;
Hole3 Hole3;
Hole4 Hole4;
Hole5 Hole5;
Hole6 Hole6;
Hole7 Hole7;
Hole8 Hole8;
Hole9 Hole9;
float level;
void setup() {
  size(1000, 800);
  level = 1;
  golfball = new GolfBall(200, height/2);
  Hole1 = new Hole1();
  Hole2 = new Hole2();
  Hole3 = new Hole3();
  Hole4 = new Hole4();
  Hole5 = new Hole5();
  Hole6 = new Hole6();
  Hole7 = new Hole7();
  Hole8 = new Hole8();
  Hole9 = new Hole9();

}
void draw() {
  background(255);
  golfball.shoot();
  golfball.display();
  if(level == 1){
   Hole1.display();
  }
  if(Hole1.checkhole(golfball)==true){
    level++;
  }
  if(level == 2){
    Hole2.display();
  }
  if(Hole2.checkhole(golfball)==true){
    level++;
  }
  if(level == 3){
   Hole3.display();
  }
  if(Hole3.checkhole(golfball)==true){
    level++;
  }
  if(level == 4){
    Hole4.display();
  }
  if(Hole4.checkhole(golfball)==true){
    level++;
  }
  if(level == 5){
   Hole5.display();
  }
  if(Hole5.checkhole(golfball)==true){
    level++;
  }
  if(level == 6){
    Hole6.display();
  }
  if(Hole6.checkhole(golfball)==true){
    level++;
  }
  if(level == 7){
   Hole7.display();
  }
  if(Hole7.checkhole(golfball)==true){
    level++;
  }
  if(level == 8){
    Hole8.display();
  }
  if(Hole8.checkhole(golfball)==true){
    level++;
  }
  if(level == 9){
   Hole9.display();
  }
  if(Hole9.checkhole(golfball)==true){
    background(0);
    print(ln);
  }
}

void mouseReleased () {
  float px = (golfball.x-mouseX)*.25;
  float py= (golfball.y-mouseY)*.25;
  golfball.xspeed=px;
  golfball.yspeed=py;
}

