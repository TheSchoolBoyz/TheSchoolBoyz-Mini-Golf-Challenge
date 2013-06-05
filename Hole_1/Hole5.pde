class Hole5 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole5() {
    holex=825;
    holey=375;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    noStroke();
    rect(150, 350, 200, 100);
    rect(650, 350, 200, 100);
    rect(225, 475, 175, 100);
    rect(600, 475, 175, 100);
    rect(300, 450, 50, 250);
    rect(650, 450, 50, 250);
    rect(350, 575, 300, 125);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(150, 350, 150, 450);
    line(150, 450, 300, 450);
    line(300, 450, 300, 475);
    line(300, 475, 225, 475);
    line(225, 475, 225, 575);
    line(225, 575, 300, 575);
    line(300, 575, 300, 700);
    line(300, 700, 700, 700);
    line(700, 700, 700, 575);
    line(700, 575, 775, 575);
    line(775, 575, 775, 475);
    line(775, 475, 700, 475);
    line(700, 475, 700, 450);
    line(700, 450, 850, 450);
    line(850, 450, 850, 350);
    line(850, 350, 650, 350);
    line(650, 350, 650, 475);
    line(650, 475, 600, 475);
    line(600, 475, 600, 575);
    line(600, 575, 400, 575);
    line(400, 575, 400, 475);
    line(400, 475, 350, 475);
    line(350, 475, 350, 350);
    line(350, 350, 150, 350);
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

