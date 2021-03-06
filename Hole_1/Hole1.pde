class Hole1 {
  float holex;
  float holey;
  float holediam;
  int holescore;
  int par=3;
  float y1;
  float y2;
  float y1speed;
  float y2speed;
  Hole1() {
    holex=840;
    holey=200;
    holediam=15;
    y1=200;
    y2=400;
    y1speed=3;
    y2speed=6;
  }
  void display() {
    fill(0);
    fill(37,134,44);
    rect(100,100,800,600);
    fill(255);
    strokeWeight(15);
    stroke(90,54,26);
    line(100, 100, 100, 700);
    line(100, 700, 900, 700);
    line(900, 700, 900, 100);
    line(900, 100, 100, 100);
    line(400, 100, 400, y1);
    line(400, 700, 400, (y1+100));
    line(700, 100, 700, y2);
    line(700, 700, 700, (y2+100));
    stroke(0);
    strokeWeight(1);
    fill(0);
    ellipse(holex, holey, holediam, holediam);
    fill(255);
   
      y1+=y1speed;
      y2+=y2speed;
      if(y1>=600){
        y1speed=-y1speed;
      }
      if(y1<=100){
        y1speed=-y1speed;
      }
      if(y2<=100){
        y2speed=-y2speed;
      }
      if(y2>=600){
        y2speed=-y2speed;
      }
    }
      
  
  void checkwalls(GolfBall g){
    if(g.y>100 && g.y<700 && g.x<=100+g.diam/2+15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.y>100 && g.y<700 && g.x>=900-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.x>100 && g.x<900 && g.y<=100+g.diam/2+15/2){
      g.yspeed=-g.yspeed;
    }
    if(g.x>100 && g.x<900 && g.y>=700-g.diam/2-15/2){
      g.yspeed=-g.yspeed;
    }
    if(g.y>100 && g.y<y1 && g.x<=400+g.diam/2+15/2&&g.x>=400-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.y>y1+100 && g.y<700 && g.x<=400+g.diam/2+15/2&&g.x>=400-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.y>100 && g.y<y2 && g.x<=700+g.diam/2+15/2&&g.x>=700-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
    }
    if(g.y>y2+100 && g.y<700 && g.x<=700+g.diam/2+15/2&&g.x>=700-g.diam/2-15/2){
      g.xspeed=-g.xspeed;
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

