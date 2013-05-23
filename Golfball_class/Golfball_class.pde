class GolfBall {
  boolean released = false;
  int releaseX;
  int releaseY;
  float x;
  float y;
  float diam;
  float xspeed;
  float yspeed;
  float xspeed0;
  float yspeed0;

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
    if (keyPressed) {
      if (key=='a' && !released) {
        xspeed=xspeed0;
        yspeed=yspeed0;
        released = true;
        releaseX = mouseX;
        releaseY = mouseY;
      }
    }
    if (!released) {
      xspeed0= (mouseX-x)/20;
      yspeed0= (mouseY-y)/20;
    }
    else {
      xspeed0= (releaseX-x)/20;
      yspeed0= (releaseY-y)/20;
      x+=xspeed;
      y+=yspeed;
      xspeed-=.5;
      if (xspeed<=0) {
        xspeed=0;
      }
    }
  }
}
