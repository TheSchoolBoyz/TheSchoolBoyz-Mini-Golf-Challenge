class Hole2 {
  float holex;
  float holey;
  float holediam;

  Hole2() {
    holex=800;
    holey=200;
    holediam=20;
  }
  void display() {
    fill(0);
    ellipse(holex, holey, holediam, holediam);
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
