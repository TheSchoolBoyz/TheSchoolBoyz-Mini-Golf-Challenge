class Hole1 {
  float holex;
  float holey;
  float holediam;

  Hole1() {
    holex=840;
    holey=200;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37,134,44);
    rect(100,100,800,600);
    fill(255);
    strokeWeight(15);
    stroke(90,54,26);
    line(100, 100, 100, 700);
    line(100, 700, 900, 700);
    line(900, 700, 900, 100);
    line(900, 100, 100, 100);
    line(400, 100, 400, 420);
    line(400, 700, 400, 500);
    line(700, 100, 700, 330);
    line(700, 700, 700, 410);
    stroke(0);
    strokeWeight(1);
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

