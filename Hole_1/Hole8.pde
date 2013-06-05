class Hole8 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole8() {
    holex=800;
    holey=200;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    rect(150, 150, 800, 400);
    fill(255);
    rect(250,250,100,300);
    rect(450,150,300,150);
    rect(450,300,200,150);
    rect(850,150,100,150);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(150, 550, 150, 150);
    line(150, 150, 450, 150);
    line(450, 150, 450, 450);
    line(450, 450, 650, 450);
    line(650, 450, 650, 300);
    line(650, 300, 750, 300);
    line(750, 300, 750, 150);
    line(750, 150, 850, 150);
    line(850, 150, 850, 300);
    line(850, 300, 950, 300);
    line(950, 300, 950, 550);
    line(950, 550, 350, 550);
    line(350, 550, 350, 250);
    line(350, 250, 250, 250);
    line(250, 250, 250, 550);
    line(250, 550, 150, 550);
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

