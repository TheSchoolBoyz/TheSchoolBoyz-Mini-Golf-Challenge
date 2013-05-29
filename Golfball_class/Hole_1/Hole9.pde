class Hole9 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole9() {
    holex=100;
    holey=100;
    holediam=15;
  }
  void display() {
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
  }

  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=200;
      g.y=400;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}
