class Hole5 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole5() {
    holex=825;
    holey=275;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    noStroke();
    rect(150, 250, 200, 100);
    rect(650, 250, 200, 100);
    rect(225, 375, 175, 100);
    rect(600, 375, 175, 100);
    rect(300, 350, 50, 250);
    rect(650, 350, 50, 250);
    rect(350, 475, 300, 125);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(150, 250, 150, 350);
    line(150, 350, 300, 350);
    line(300, 350, 300, 375);
    line(300, 375, 225, 375);
    line(225, 375, 225, 475);
    line(225, 475, 300, 475);
    line(300, 475, 300, 600);
    line(300, 600, 700, 600);
    line(700, 600, 700, 475);
    line(700, 475, 775, 475);
    line(775, 475, 775, 375);
    line(775, 375, 700, 375);
    line(700, 375, 700, 350);
    line(700, 350, 850, 350);
    line(850, 350, 850, 250);
    line(850, 250, 650, 250);
    line(650, 250, 650, 375);
    line(650, 375, 600, 375);
    line(600, 375, 600, 475);
    line(600, 475, 400, 475);
    line(400, 475, 400, 375);
    line(400, 375, 350, 375);
    line(350, 375, 350, 250);
    line(350, 250, 150, 250);
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
  }
  void checkwalls(GolfBall g){
     if(g.y>100 && g.y<700 && g.x<=100+g.diam/2+15/2){
      g.xspeed=-g.xspeed;
    }
  }
  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=200;
      g.y=300;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}

