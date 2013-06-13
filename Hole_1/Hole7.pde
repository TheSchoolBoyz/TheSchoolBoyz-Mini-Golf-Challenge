class Hole7 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=1;

  Hole7() {
    holex=700;
    holey=500;
    holediam=15;
  }
  void display(GolfBall g) {
    fill(0);
    fill(37, 134, 44);
    rect(200, 200, 600, 400);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(200, 200, 800, 200);
    line(800, 200, 800, 600);
    line(800, 600, 200, 600);
    line(200, 600, 200, 200);
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    ellipse(700, 300, 15, 15);
    ellipse(700, 400, 15, 15);
    if(dist(g.x, g.y, 700, 300)<(g.diam/2+holediam/2) || dist(g.x, g.y, 700, 400)<(g.diam/2+holediam/2)){
      g.x=300;
      g.y=400;
      g.xspeed=0;
      g.yspeed=0;
    }
    fill(255);
  }
  void checkwalls (GolfBall g) {
    if (g.x<=200+g.diam/2+15/2) {
      g.xspeed=-g.xspeed;
    }
    if (g.x>=800-g.diam/2-15/2) {
      g.xspeed=-g.xspeed;
    }

    if (g.y>=600-g.diam/2-15/2) {
      g.yspeed=-g.yspeed;
    }
    if (g.y<=200+g.diam/2+15/2) {
      g.yspeed=-g.yspeed;
    }
  }


  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=200;
      g.y=500;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}

