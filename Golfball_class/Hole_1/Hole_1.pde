GolfBall golfball;
Startscreen Startscreen;
Endscreen Endscreen;
Hole1 Hole1;
Hole2 Hole2;
Hole3 Hole3;
Hole4 Hole4;
Hole5 Hole5;
Hole6 Hole6;
Hole7 Hole7;
Hole8 Hole8;
Hole9 Hole9;
float level = 10;
int strokes = 0;
int strokes2 = 0;
void mousePressed() {
  strokes++;
  strokes2++;
}
void keyPressed() {
  if (key=='b') {
    if (Startscreen.begin()==true) {
      level++;
      strokes=0;
      strokes2=0;
    }
  }
}

void setup() {
  size(1000, 800);
  golfball = new GolfBall(200, height/2);
  Startscreen = new Startscreen();
  Endscreen = new Endscreen();
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
  if (level == 0) {
    Startscreen.display();
  }
  if (level == 1) {
    Hole1.display();
    Hole1.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    if (Hole1.checkhole(golfball)==true) {
      level++;
      Hole1.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 2) {
    Hole2.display();
    golfball.shoot();
    golfball.display();
    if (Hole2.checkhole(golfball)==true) {
      level++;
      Hole2.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 3) {
    Hole3.display();
    golfball.shoot();
    golfball.display();
    if (Hole3.checkhole(golfball)==true) {
      level++;
      Hole3.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 4) {
    Hole4.display();
    golfball.shoot();
    golfball.display();
    if (Hole4.checkhole(golfball)==true) {
      level++;
      Hole4.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 5) {
    Hole5.display();
    golfball.shoot();
    golfball.display();
    if (Hole5.checkhole(golfball)==true) {
      level++;
      Hole5.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 6) {
    Hole6.display();
    golfball.shoot();
    golfball.display();
    if (Hole6.checkhole(golfball)==true) {
      level++;
      Hole6.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 7) {
    Hole7.display();
    golfball.shoot();
    golfball.display();
    if (Hole7.checkhole(golfball)==true) {
      level++;
      Hole7.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 8) {
    Hole8.display();
    golfball.shoot();
    golfball.display();
    if (Hole8.checkhole(golfball)==true) {
      level++;
      Hole8.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 9) {
    Hole9.display();
    golfball.shoot();
    golfball.display();
    if (Hole9.checkhole(golfball)==true) {
      level++;
      Hole9.holescore = strokes2;
      strokes2 = 0;
    }
  }

  if (level == 10) {
    textSize(50);
    Endscreen.display();
    text("You win", 400, 300);
    text("Your score is: " + strokes, 400, 400);
    text("Hole     1  2  3  4  5  6  7  8  9", 125, 500);
    text("Par       1  2  3  4  5  6  7  8  9", 125, 600);
    text("Score    " + Hole1.holescore + "  " + Hole2.holescore + "  " + Hole3.holescore + "  " + Hole4.holescore + "  " + Hole5.holescore + "  " + Hole6.holescore + "  " + Hole7.holescore + "  " + Hole8.holescore + "  " +Hole9.holescore, 125, 700);
    textSize(0);
  }
  textSize(30);
  fill(0);
  text("Total Score: " + strokes, 50, 50);
  text("Hole Score: " + strokes2, 300, 50);
  textSize(1);
  stroke(255);
}

void mouseReleased () {
  float px = (golfball.x-mouseX)*.25;
  float py= (golfball.y-mouseY)*.25;
  golfball.xspeed=px;
  golfball.yspeed=py;
}

