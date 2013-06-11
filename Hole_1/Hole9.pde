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
    rect(100, 150, 300, 200);
    rect(600, 150, 300, 200);
    fill(255);
    rect(100,200,250,100);
    rect(650,200,250,100);
    strokeWeight(15);
    stroke(90, 54, 26);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(100, 150, 100, 200);
    line(100, 200, 350, 200);
    line(350, 200, 350, 300);
    line(350, 300, 100, 300);
    line(100, 300, 100, 800);
    line(100, 800, 900, 800);
    line(900, 800, 900, 300);
    line(900, 300, 650, 300);
    line(650, 300, 650, 200);
    line(650, 200, 900, 200);
    line(900, 200, 900, 150);
    line(850, 150, 600, 150);
    line(600, 150, 600, 350);
    line(600, 350, 850, 350);
    line(850, 350, 850, 750);
    line(850, 750, 150, 750);
    line(150, 750, 150, 350);
    line(150, 350, 400, 350);
    line(400, 350, 400, 150);
    line(400, 150, 100, 150);
    line(900, 150, 900, 100);
    line(900, 100, 475, 100);
    line(475, 100, 475, 475);
    line(475, 475, 175, 475);
    line(175, 475, 175, 725);
    line(850, 150, 850, 125);
    line(175, 725, 825, 725);
    line(825, 725, 825, 475);
    line(825, 475, 525, 475);
    line(525, 475, 525, 125);
    line(525, 125, 850, 125);
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

