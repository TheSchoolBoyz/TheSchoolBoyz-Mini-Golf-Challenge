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
  }
  void shoot() {
    strokeWeight(5);
    stroke(200,100,100,150);
    line(x, y, mouseX, mouseY);
    stroke(0);
  strokeWeight(1);
}
  }

