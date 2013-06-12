class Hole6 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=4;


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
    rect(750, 300, 100, 275);
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
  void checkwalls (GolfBall g) {
    if (g.x<=150+g.diam/2+15/2 && g.y>250 && g.y<500) {
      g.x=163;
      g.xspeed=-g.xspeed;
    }
    if (g.x<750+g.diam/2+15/2 && g.x>=250-g.diam/2-15/2 && g.y>250 && g.y<450) {
      g.xspeed=-g.xspeed;
    }
    if(g.x>150 && g.x<250 && g.y<=250+g.diam/2+15/2){
      g.y=263;
      g.yspeed=-g.yspeed;
    }
    if(g.x>150 && g.x<350 && g.y>=500-g.diam/2-15/2){
      g.y=487;
      g.yspeed=-g.yspeed;
    }
    if(g.x>250 && g.x<700 && g.y<=450+g.diam/2+15/2){
      g.y=463;
      g.yspeed=-g.yspeed;
    }  
    if (g.x<750+g.diam/2+15/2 && g.x>=700-g.diam/2-15/2 && g.y>450 && g.y<500) {
      g.xspeed=-g.xspeed;
    }
    if (g.x<750&& g.x>=700 && g.y<=500+g.diam/2+15/2) {
      g.yspeed=-g.yspeed;
    }
    if (g.x<=350+g.diam/2+15/2 && g.y>500 && g.y<700) {
      g.x=363;
      g.xspeed=-g.xspeed;
    }
    if (g.x>=850-g.diam/2-15/2 && g.y>250 && g.y<600) {
      g.x=837;
      g.xspeed=-g.xspeed;
    }
    if(g.x>750 && g.x<850 && g.y<=300+g.diam/2+15/2){
      g.y=313;
      g.yspeed=-g.yspeed;
    }
    if(g.x>350 && g.x<750 && g.y>=650-g.diam/2-15/2){
      g.y=637;
      g.yspeed=-g.yspeed;
    }
    if(g.x>750 && g.x<850 && g.y>=575-g.diam/2-15/2){
      g.y=562;
      g.yspeed=-g.yspeed;
    }
    if (g.x>=750-g.diam/2-15/2 && g.y>575 && g.y<750) {
      g.x=737;
      g.xspeed=-g.xspeed;
    }    
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

