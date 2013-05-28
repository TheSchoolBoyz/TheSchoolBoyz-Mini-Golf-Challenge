class GolfBall {
  boolean released = false;
  int releaseX;
  int releaseY;
  float x;
  float y;
  float diam;
  float xspeed;
  float yspeed;
  float accelerate=.925;

  GolfBall(float tx, float ty) {
    x=tx;
    y=ty;
    diam=10;
  }
  void display() {
    ellipse(x, y, diam, diam);
  }

  void shoot() {
    strokeWeight(5);
    stroke(200, 100, 100, 150);
    line(x, y, mouseX, mouseY);
    stroke(0);
    strokeWeight(1);
    x+=xspeed;
    y+=yspeed;
    xspeed*=accelerate;
    yspeed*=accelerate;
    
  }
  
 
}
