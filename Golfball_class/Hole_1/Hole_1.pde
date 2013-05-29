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
int strokes = 0;
int strokes2 = 0;
void mousePressed(){
  strokes++;
  strokes2++;
}
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
  if (level == 1) {
    Hole1.display();
  }
  if (Hole1.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 2) {
    Hole2.display();
  }
  if (Hole2.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 3) {
    Hole3.display();
  }
  if (Hole3.checkhole(golfball)==true) {
    level++;

    strokes2 = 0;
  }
  if (level == 4) {
    Hole4.display();
  }
  if (Hole4.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 5) {
    Hole5.display();
  }
  if (Hole5.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 6) {
    Hole6.display();
  }
  if (Hole6.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 7) {
    Hole7.display();
  }
  if (Hole7.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 8) {
    Hole8.display();
  }
  if (Hole8.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if (level == 9) {
    Hole9.display();
  }
  if (Hole9.checkhole(golfball)==true) {
    level++;
    strokes2 = 0;
  }
  if(level == 10){
  background(0);
  println("youwin");
}
golfball.shoot();
golfball.display();
textSize(30);
fill(0);
text("Total Score: " + strokes,50,50);
text("Hole Score: " + strokes2,300,50);
textSize(1);
stroke(255);
}

void mouseReleased () {
  float px = (golfball.x-mouseX)*.25;
  float py= (golfball.y-mouseY)*.25;
  golfball.xspeed=px;
  golfball.yspeed=py;
}

