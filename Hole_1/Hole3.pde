class Hole3 {
  float holex;
  float holey;
  float holediam;
  int holescore;

  Hole3() {
    holex=200;
    holey=600;
    holediam=15;
  }
  void display() {
    fill(0);
    fill(37, 134, 44);
    rect(100, 100, 850, 600);
    fill(255);
    rect(100,300,500,200);
    rect(700,100,300,50);
    rect(700,650,300,50);
    fill(255);
    strokeWeight(15);
    stroke(90, 54, 26);
    line(100, 100, 100, 300);
    line(100, 100, 700, 100);
    line(700, 100, 700, 150);  
    line(700, 150, 950, 150);
    line(950, 150, 950, 650);
    line(950, 650, 700, 650);
    line(700, 650, 700, 700);
    line(700, 700, 100, 700);
    line(100, 700, 100, 500);
    line(100, 500, 600, 500);
    line(600, 500, 600, 300);
    line(600, 300, 100, 300);
    rect(700, 300, 50, 200);
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
  }
  void checkwalls(GolfBall g){
    if(g.y>100 && g.y<700 && g.x<=100+g.diam/2+15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.y>100 && g.y<700 && g.x>=950-g.diam/2-15/2){
      g.x=937;
      g.xspeed=-g.xspeed;
    }
    if(g.x>100 && g.x<900 && g.y<=100+g.diam/2+15/2){
      g.yspeed=-g.yspeed;
    }
    if(g.x>100 && g.x<900 && g.y>=700-g.diam/2-15/2){
      g.y=687;
      g.yspeed=-g.yspeed;
    }
    if(g.y>100 && g.y<150 && g.x>=700-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.y>650 && g.y<700 && g.x>=700-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.x>700 && g.x<950 && g.y>=650-g.diam/2-15/2){
      g.y=637;
      g.yspeed=-g.yspeed;
    }
    if(g.x>700 && g.x<950 && g.y<=150+g.diam/2+15/2){
      g.y=163;
      g.yspeed=-g.yspeed;
    }
    if(g.x>700 && g.x<750 && g.y>=300-g.diam/2-15/2 && g.y<=500+g.diam/2+15/2){
      g.yspeed=-g.yspeed;
    }
     if(g.x>=700-g.diam/2 -15/2 && g.x<=750+15/2 + g.diam/2 && g.y>300 && g.y<500){
      g.xspeed=-g.xspeed;
    }
    if(g.x>100 && g.x<600 && g.y>=300-g.diam/2-15/2 && g.y<=500+g.diam/2+15/2){
      g.yspeed=-g.yspeed;
    }
   if(g.x<=600+15/2 + g.diam/2 && g.y>300 && g.y<500){
      g.xspeed=-g.xspeed;
    }
  }

  boolean checkhole(GolfBall g) {
    if (dist(g.x, g.y, holex, holey)<(g.diam/2+holediam/2)) {
      g.x=200;
      g.y=550;
      g.xspeed=0;
      g.yspeed=0;
      return true;
    }
    else {
      return false;
    }
  }
}

