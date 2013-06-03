class Hole4 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole4() {
    holex=850;
    holey=50;
    holediam=15;
  }
  void display(GolfBall g) {
    fill(0);
    fill(37, 134, 44);
    noStroke();
    rect(150, 350, 800, 100);
    rect(750,25,200,350);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(150, 350, 150, 450);
    line(150, 450, 950, 450);
    line(950, 450, 950, 25);
    line(950, 25, 750, 25);
    line(750, 25, 750, 350);
    line(750, 350, 150, 350);
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

