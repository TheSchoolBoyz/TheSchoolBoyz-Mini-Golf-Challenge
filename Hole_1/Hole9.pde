class Hole9 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=13;

  Hole9() {
    holex=800;
    holey=650;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    rect(100, 100, 300, 200);
    rect(600, 100, 300, 200);
    fill(255);
    rect(100,150,250,100);
    rect(650,150,250,100);
    strokeWeight(15);
    stroke(90, 54, 26);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(100, 100, 100, 150);
    line(100, 150, 350, 150);
    line(350, 150, 350, 250);
    line(350, 250, 100, 250);
    line(100, 250, 100, 750);
    line(100, 750, 900, 750);
    line(900, 750, 900, 250);
    line(900, 250, 650, 250);
    line(650, 250, 650, 150);
    line(650, 150, 900, 150);
    line(900, 150, 900, 100);
    line(850, 100, 600, 100);
    line(600, 100, 600, 300);
    line(600, 300, 850, 300);
    line(850, 300, 850, 700);
    line(850, 700, 150, 700);
    line(150, 700, 150, 300);
    line(150, 300, 400, 300);
    line(400, 300, 400, 100);
    line(400, 100, 100, 100);
    line(900, 100, 900, 50);
    line(900, 50, 475, 50);
    line(475, 50, 475, 425);
    line(475, 425, 175, 425);
    line(175, 425, 175, 675);
    line(850, 100, 850, 75);
    line(175, 675, 825, 675);
    line(825, 675, 825, 425);
    line(825, 425, 525, 425);
    line(525, 425, 525, 75);
    line(525, 75, 850, 75);
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

