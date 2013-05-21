class GolfBall {
  float x;
  float y;
  float diam;
  float xspeed;
  float yspeed;

  GolfBall(float tx, float ty) {
    x=tx;
    y=ty;
    diam=10;
  }
  void display() {
    ellipse(x, y, diam, diam);
  }
  void move() {
    if (mousePressed) {
      x+=xspeed;
      y+=yspeed;
    }
//    xspeed=speed*COS(angle);
//    yspeed=speed*SIN(angle);
  }
}

