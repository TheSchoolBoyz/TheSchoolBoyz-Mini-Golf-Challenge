class Hole8 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=3;

  Hole8() {
    holex=800;
    holey=200;
    holediam=15;
  }
  void display() {
fill(0);
    noStroke();
    fill(37, 134, 44);
    rect(150, 150, 100, 400);
    rect (250,150,200,100);
    rect (350, 250, 100, 300);
    rect (450, 450, 500, 100);
    rect (650, 300, 300, 250); 
    rect (750, 150, 100, 200);

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
void checkwalls (GolfBall g) {
    if (g.x<=150+g.diam/2+15/2 && g.y>150 && g.y<550) {
      g.x=163;
      g.xspeed=-g.xspeed;
    }
    if (g.x>=250-g.diam/2-15/2 && g.x<=350+g.diam/2+15/2 && g.y>250 && g.y<550) {
      g.xspeed=-g.xspeed;
    }
    if (g.x>=450-g.diam/2-15/2 && g.x<650+g.diam/2 +15/2 && g.y>150 && g.y<450) {
      g.xspeed=-g.xspeed;
    }
    if (g.x>500 && g.x<=750+g.diam/2+15/2 && g.y>150 && g.y<300) {
      g.xspeed=-g.xspeed;
    }
    if (g.x>=850-g.diam/2-15/2 && g.y>150 && g.y<300) {
      g.x=837;
      g.xspeed=-g.xspeed;
    }
    if (g.x>=950-g.diam/2-15/2 && g.y>300 && g.y<550) {
      g.x=937;
      g.xspeed=-g.xspeed;
    }


    if (g.y>=550-g.diam/2-15/2 && g.x>150 && g.x<950) {
      g.y=537;
      g.yspeed=-g.yspeed;
    }
    if (g.y<=450+g.diam/2+15/2 && g.x>450 && g.x<650) {
      g.y=463;
      g.yspeed=-g.yspeed;
    }
    if (g.y<=300+g.diam/2+15/2 && g.x>850 && g.x<950) {
      g.y=313;
      g.yspeed=-g.yspeed;
    }
    if (g.y<=300+g.diam/2+15/2 && g.x>650 && g.x<750) {
      g.y=313;
      g.yspeed=-g.yspeed;
    }
    if (g.y>=250-g.diam/2-15/2 && g.x>250 && g.x<350) {
      g.y=237;
      g.yspeed=-g.yspeed;
    }
    if (g.y<=150+g.diam/2+15/2 && g.x>750 && g.x<850) {
      g.y=163;
      g.yspeed=-g.yspeed;
    }
    if (g.y<=150+g.diam/2+15/2 && g.x>150 && g.x<450) {
      g.y=163;
      g.yspeed=-g.yspeed;
    }
  }

  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=125;
      g.y=175;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}

