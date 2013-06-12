class Hole9 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=3;

  Hole9() {
    holex=800;
    holey=700;
    holediam=15;
  }
  void display() {
    fill(0);
    noStroke();
    fill(37, 134, 44);
    rect (100,150,300,50);
    rect (350, 150, 50, 200);
    rect (150, 300, 250, 50);
    rect (600, 300, 300,50);
    rect (600,150, 50, 200);
    rect (600, 150, 300, 50);
    rect (100,300,50,500);
    rect (100,750,775,50);
    rect (850,300,50,500);
    rect (850, 100,50,100);
    rect (475,100,400,30);
    rect (475, 100,50,400);
    rect (175,475,650,250);

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
  void checkwalls (GolfBall g) {
    if(g.x<=100+15/2+g.diam/2){
      g.x=113;
      g.xspeed=-g.xspeed;
    }
    if(g.y>200 && g.y<300 && g.x<=350+15/2+g.diam/2){
      g.x=363;
      g.xspeed=-g.xspeed;
    }
    if(g.y>150 && g.y<350 && g.x>=400-15/2-g.diam/2 && g.x<425){
      g.x=387;
      g.xspeed=-g.xspeed;
    }
    if(g.y>100 && g.y<475 && g.x<=475+15/2+g.diam/2 && g.x>425){
      g.x=488;
      g.xspeed=-g.xspeed;
    }
    if(g.y>350 && g.y<750 && g.x>=150-15/2-g.diam/2 && g.x<163){
      g.x=137;
      g.xspeed=-g.xspeed;
    }
    if(g.y>350 && g.y<750 && g.x<=175+15/2+g.diam/2 && g.x>163){
      g.x=198;
      g.xspeed=-g.xspeed;
    }
    if(g.x>=900-15/2-g.diam/2){
      g.x=887;
      g.xspeed=-g.xspeed;
    }
    if(g.y>200 && g.y<300 && g.x>=650-15/2-g.diam/2){
      g.x=637;
      g.xspeed=-g.xspeed;
    }
    if(g.y>150 && g.y<350 && g.x<=600+15/2+g.diam/2 && g.x>575){
      g.x=613;
      g.xspeed=-g.xspeed;
    }
    if(g.y>125 && g.y<475 && g.x>=525-15/2-g.diam/2 && g.x<575){
      g.x=512;
      g.xspeed=-g.xspeed;
    }
    if(g.y>350 && g.y<750 && g.x<=850+15/2+g.diam/2 && g.x>837){
      g.x=863;
      g.xspeed=-g.xspeed;
    }
    if(g.y>350 && g.y<750 && g.x>=825-15/2-g.diam/2 && g.x<837){
      g.x=812;
      g.xspeed=-g.xspeed;
    }
    if(g.y>125 && g.y<150 && g.x<=850+g.diam/2+15/2 && g.x>700){
      g.x=863;
      g.xspeed=-g.xspeed;
    }  
    
    if(g.y<=100+g.diam/2+15/2){
      g.y=112;
      g.yspeed=-g.yspeed;
    }
    if(g.x>525 && g.x<850 && g.y>125-g.diam/2-15/2 && g.y<137){
      g.y=113;
      g.yspeed=-g.yspeed;
    }
    if(g.x>525 && g.x<850 && g.y<=150+g.diam/2+15/2 && g.y>137){
      g.y=163;
      g.yspeed=-g.yspeed;
    }
    if (g.x>100 && g.x<400 && g.y<=150+g.diam/2+15/2) {
      g.y=163;
      g.yspeed=-g.yspeed;
    }
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

