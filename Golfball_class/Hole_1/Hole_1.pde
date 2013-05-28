GolfBall golfball;
Hole1 Hole1;
Hole2 Hole2;
void setup() {
  size(1000, 800);
  golfball = new GolfBall(200, height/2);
  Hole1 = new Hole1();
}
void draw() {
  background(255);
  golfball.shoot();
  golfball.display();
  if(Hole1.checkhole(golfball)==false){;
   Hole1.display();
  }
  if(Hole1.checkhole(golfball)==true && Hole2.checkhole(golfball)==false){
    Hole2.display();
  }
//  if(Hole2.checkhole(golfball)==true){
//    Hole3.display();
//  }
}

void mouseReleased () {
  float px = (golfball.x-mouseX)*.25;
  float py= (golfball.y-mouseY)*.25;
  golfball.xspeed=px;
  golfball.yspeed=py;
}

