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
    rect(150, 250, 100, 250);
    rect(750, 200, 100, 275);
    rect(250, 450, 500, 200);
    fill(255);
    rect(250,500,100,200);
    rect(700, 450, 50, 50);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(150, 250, 150, 500);
    line(150, 500, 350, 500);
    line(350, 500, 350, 650);
    line(350, 650, 750, 650);
    line(750, 650, 750, 575);
    line(750, 575, 850, 575);
    line(850, 575, 850, 300);
    line(850, 300, 750, 300);
    line(750, 300, 750, 500);
    line(750, 500, 700, 500);
    line(700, 500, 700, 450);
    line(700, 450, 250, 450);
    line(250, 450, 250, 250);
    line(250, 250, 150, 250);
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

