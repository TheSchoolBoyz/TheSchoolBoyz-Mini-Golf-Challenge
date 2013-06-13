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

PImage bluebackground;
boolean redo;
int partotal;
int level = 0;
int strokes = 0;
int strokes2 = 0;

void mousePressed() {
  strokes++;
  strokes2++;
}

void mouseReleased () {
  float px = (golfball.x-mouseX)*.25;
  float py= (golfball.y-mouseY)*.25;
  golfball.xspeed=px;
  golfball.yspeed=py;
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
  bluebackground = loadImage("blue1.png");
  partotal = Hole1.par + Hole2.par + Hole3.par+ Hole4.par + Hole5.par + Hole6.par+ Hole7.par + Hole8.par + Hole9.par;
}
void draw() {
  if (keyPressed) {
    if ( key== 'r') {
      redo=true;
    }
  }
  
  if (level == 0) {
    Startscreen.display();
  }
  
  if (level>=1 && level<=9) {
    background(bluebackground);
    textSize(30);
    fill(255);
    text("Hole # " + level, 525, 50);
    text("Total Score: " + strokes, 50, 50);
    text("Hole Score: " + strokes2, 300, 50);
    noStroke();
    fill(#46DAE0, 100);
    rect(790, 15, 175, 40);
    fill(0);
    textSize(16);
    text("Press 'r' to redo hole ", 800, 45);
    textSize(1);
    stroke(255);
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
    if (redo==true) {
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
    if (redo==true) {
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
    if (redo==true) {
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
    if (redo==true) {
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
    if (redo==true) {
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
    if (redo==true) {
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
    if (redo==true) {
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
    if (redo==true) {
      strokes=strokes-strokes2;
      strokes2=0;
      golfball.x=200;
      golfball.y=500;
      redo=false;
    }
  }

  if (level == 9) {
    Hole9.display();
    Hole9.checkwalls(golfball);
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
    if (redo==true) {
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
    fill(255);
    text("You Win!!", 500, 120);
    textSize(40);
    text("Your Score is: ", 500, 200);
    if (strokes<partotal) {
      fill(#29ED30);
      text(strokes  + " ("  +(strokes-partotal) +")", 775, 200);
    }
    if (strokes==partotal) {
      fill(0);
      text(strokes + " (0)", 625, 400);
    }
    if (strokes>partotal) {
      fill(255, 0, 0);
      text(strokes + " (+" + (strokes-partotal) + ")", 625, 400);
    }
    fill(0);
    textSize(50);
    int spacing = (875-300)/9;
    fill(#35B43E);
    text("Hole", 125, 520);
    for (int j=0;j<9;j++) {
      text(1 +j, 315 + spacing*j, 520);
    }
    fill(0);
    text("Par", 125, 620);
    text(Hole1.par, 315 + spacing*0, 620);
    text(Hole2.par, 315 + spacing*1, 620);
    text(Hole3.par, 315 + spacing*2, 620);
    text(Hole4.par, 315 + spacing*3, 620);
    text(Hole5.par, 315 + spacing*4, 620);
    text(Hole6.par, 315 + spacing*5, 620);
    text(Hole7.par, 315 + spacing*6, 620);
    text(Hole8.par, 315 + spacing*7, 620);
    text(Hole9.par, 315 + spacing*8, 620);
    fill(0);
    text("Score", 125, 720);
    text(Hole1.holescore, 315 + spacing*0, 720);
    text(Hole2.holescore, 315 + spacing*1, 720);
    text(Hole3.holescore, 315 + spacing*2, 720);
    text(Hole4.holescore, 315 + spacing*3, 720);
    text(Hole5.holescore, 315 + spacing*4, 720);
    text(Hole6.holescore, 315 + spacing*5, 720);
    text(Hole7.holescore, 315 + spacing*6, 720);
    text(Hole8.holescore, 315 + spacing*7, 720);
    text(Hole9.holescore, 315 + spacing*8, 720);
    textSize(0);
  }
}
