class Hole4 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole4() {
    holex=800;
    holey=200;
    holediam=15;
  }
  void display(GolfBall g) {
    fill(0);
    fill(37, 134, 44);
    noStroke();
    rect(100, 500, 800, 100);
    rect(700,175,200,350);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(100, 500, 100, 600);
    line(100, 600, 900, 600);
    line(900, 600, 900, 175);
    line(900, 175, 700, 175);
    line(700, 175, 700, 500);
    line(700, 500, 100, 500);
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
  }
  void checkwalls (GolfBall g) {
    if (g.x<=100+g.diam/2+15/2 && g.y>500 && g.y<600) {
      g.xspeed=-g.xspeed;
    }
    if (g.y<=500+g.diam/2+15/2 && g.x>100 && g.x<700) {
      g.yspeed=-g.yspeed;
    }
    if (g.y>=600-g.diam/2-15/2 && g.x>100 && g.x<900) {
      g.yspeed=-g.yspeed;
    }
    if (g.x>=900-g.diam/2-15/2 && g.y>175 && g.y<600) {
      g.xspeed=-g.xspeed;
    }
    if (g.y<=175+g.diam/2+15/2 && g.x>700 && g.x<900) {
      g.yspeed=-g.yspeed;
    }
    if (g.x<=700+g.diam/2+15/2 && g.y>175 && g.y<500) {
      g.xspeed=-g.xspeed;
    }
  }


  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=200;
      g.y=275;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}

