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
PImage b;
boolean redo;
int partotal;
int level = 0;
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
  b = loadImage("blue1.png");
  partotal = Hole1.par + Hole2.par + Hole3.par + Hole4.par + Hole5.par + Hole6.par + Hole7.par + Hole8.par + Hole9.par;
}
void draw() {
  if(keyPressed){
    if( key== 'r'){
    redo=true;
    }
  }

  background(255);
  if (level == 0) {
    Startscreen.display();
  }
  if(level>=1 && level<=9){
    background(b);
  }
  if (level == 1) {
      Hole1.display();
    Hole1.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole1.par, 675, 50);
    textSize(1);
    if (Hole1.checkhole(golfball)==true) {
      level++;
      Hole1.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=400;
      redo=false;
    }
  }

  if (level == 2) {
    Hole2.display();
    Hole2.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole2.par, 675, 50);
    textSize(1);
    if (Hole2.checkhole(golfball)==true) {
      level++;
      Hole2.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=400;
      redo=false;
    }
  }

  if (level == 3) {
    Hole3.display();
    Hole3.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole3.par, 675, 50);
    textSize(1);
    if (Hole3.checkhole(golfball)==true) {
      level++;
      Hole3.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=200;
      redo=false;
    }
  }

  if (level == 4) {
    Hole4.display(golfball);
    Hole4.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole4.par, 675, 50);
    textSize(1);
    if (Hole4.checkhole(golfball)==true) {
      level++;
      Hole4.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=550;
      redo=false;
    }
  }

  if (level == 5) {
    Hole5.display();
    Hole5.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole5.par, 675, 50);
    textSize(1);
    if (Hole5.checkhole(golfball)==true) {
      level++;
      Hole5.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=275;
      redo=false;
    }
  }

  if (level == 6) {
    Hole6.display();
    Hole6.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole6.par, 675, 50);
    textSize(1);
    if (Hole6.checkhole(golfball)==true) {
      level++;
      Hole6.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=300;
      redo=false;
    }
  }

  if (level == 7) {
    Hole7.display(golfball);
    Hole7.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole7.par, 675, 50);
    textSize(1);
    if (Hole7.checkhole(golfball)==true) {
      level++;
      Hole7.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=300;
      golfball.y=400;
      redo=false;
    }
  }

  if (level == 8) {
    Hole8.display();
    Hole8.checkwalls(golfball);
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole8.par, 675, 50);
    textSize(1);
    if (Hole8.checkhole(golfball)==true) {
      level++;
      Hole8.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=500;
      redo=false;
    }
  }

  if (level == 9) {
    Hole9.display();
    golfball.shoot();
    golfball.display();
    textSize(30);
    fill(0);
    text("Par " + Hole9.par, 675, 50);
    textSize(1);
    if (Hole9.checkhole(golfball)==true) {
      level++;
      Hole9.holescore = strokes2;
      strokes2 = 0;
    }
    if(redo==true){
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=125;
      golfball.y=175;
      redo=false;
    }
  }

  if (level == 10) {
    textSize(100);
    Endscreen.display();
    stop();
    text("You Win!!", 250, 200);
    textSize(50);
    text("Your Score is: ",275,400);
    if(strokes<partotal){
      fill(#29ED30);
      text(strokes  + " ("  +(strokes-partotal) +")", 625, 400);
    }
    if(strokes==partotal){
      fill(0);
      text(strokes + " (0)", 625,400);
    }
    if(strokes>partotal){
      fill(255,0,0);
      text(strokes + " (+" + (strokes-partotal) + ")", 625, 400);
    }
    fill(0);
    text("Hole     1  2  3  4  5  6  7  8  9", 125, 500);
    text("Par       " + Hole1.par + "  " + Hole2.par+ "  " + Hole3.par+ "  " + Hole4.par+ "  " + Hole5.par+ "  " + Hole6.par+ "  " + Hole7.par+ "  " + Hole8.par+ "  " + Hole9.par, 125, 620);
    text("Score   " + Hole1.holescore + "  " + Hole2.holescore + "  " + Hole3.holescore + "  " + Hole4.holescore + "  " + Hole5.holescore + "  " + Hole6.holescore + "  " + Hole7.holescore + "  " + Hole8.holescore + "  " +Hole9.holescore, 125, 700);
    textSize(0);
  }
  textSize(30);
  fill(255);
  text("Hole # " + level, 525, 50);
  text("Total Score: " + strokes, 50, 50);
  text("Hole Score: " + strokes2, 300, 50);
  
  fill(#46DAE0);
  rect(790,15,175,40);
  fill(0);
  textSize(16);
  text("Press 'r' to redo hole ", 800, 50);
  textSize(1);
  stroke(255);
}

void mouseReleased () {
  float px = (golfball.x-mouseX)*.25;
  float py= (golfball.y-mouseY)*.25;
  golfball.xspeed=px;
  golfball.yspeed=py;
}
