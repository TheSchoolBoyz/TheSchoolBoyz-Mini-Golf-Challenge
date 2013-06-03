class Hole6 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole6() {
    holex=800;
    holey=425;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    noStroke();
    rect(150, 350, 100, 250);
    rect(750, 400, 100, 275);
    rect(250, 550, 500, 200);
    fill(255);
    rect(250,600,100,200);
    rect(700, 550, 50, 50);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(150, 350, 150, 600);
    line(150, 600, 350, 600);
    line(350, 600, 350, 750);
    line(350, 750, 750, 750);
    line(750, 750, 750, 675);
    line(750, 675, 850, 675);
    line(850, 675, 850, 400);
    line(850, 400, 750, 400);
    line(750, 400, 750, 600);
    line(750, 600, 700, 600);
    line(700, 600, 700, 550);
    line(700, 550, 250, 550);
    line(250, 550, 250, 350);
    line(250, 350, 150, 350);
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
  }

  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=300;
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

