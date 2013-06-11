class Hole2 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=3;


  Hole2() {
    holex=750;
    holey=550;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    rect(100, 100, 800, 600);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(100, 100, 900, 100);
    line(900, 100, 900, 700);
    line(900, 700, 100, 700);
    line(100, 700, 100, 100);
    line(900, 400, 600, 400);
    line(600, 400, 600, 665);
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
  }
  void checkwalls(GolfBall g) {
    if (g.y>100 && g.y<700 && g.x<=100+g.diam/2+15/2) {
      g.xspeed=-g.xspeed;
    }
    if (g.y>100 && g.y<700 && g.x>=900-g.diam/2-15/2) {
      g.x=887;
      g.xspeed=-g.xspeed;
    }
    if (g.x>100 && g.x<900 && g.y<=100+g.diam/2+15/2) {
      g.yspeed=-g.yspeed;
    }
    if (g.x>100 && g.x<900 && g.y>=700-g.diam/2-15/2) {
      g.y=687;
      g.yspeed=-g.yspeed;
    }
    if (g.x>592 && g.x<900 && g.y<=(400+g.diam/2 +15/2) && g.y>=(400-g.diam/2 - 15/2)) {
      g.yspeed=-g.yspeed;
    }
    if (g.y>392 && g.y<665 && g.x<=(600+g.diam/2 +15/2) && g.x>=(600-g.diam/2 - 15/2)) {
      g.xspeed=-g.xspeed;
    }
    if (g.x<=(600+g.diam/2 +15/2) && g.x>=(600-g.diam/2 - 15/2) && g.y<=665+g.diam/2+15/2 && g.y>=665 ) {
      g.yspeed=-g.yspeed;
    }
  }

  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=200;
      g.y=200;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}

