class GolfBall {
  boolean released = false;
  int releaseX;
  int releaseY;
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

  void shoot() {
    strokeWeight(5);
    stroke(200, 100, 100, 150);
    line(x, y, mouseX, mouseY);
    stroke(0);
    strokeWeight(1);
    if (keyPressed) {
      if (key=='a' && !released) {

        released = true;
        releaseX = mouseX;
        releaseY = mouseY;
      }
    }
    if (!released) {
      xspeed= (mouseX-x)/20;
      yspeed= (mouseY-y)/20;
    }
    else {
      xspeed= (releaseX-x)/20;
      yspeed= (releaseY-y)/20;
      x+=xspeed;
      y+=yspeed;
    }
    System.out.println(releaseX + ", " + releaseY);
  }
}

