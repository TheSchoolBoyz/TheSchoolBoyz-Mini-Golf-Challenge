class Startscreen {

  Startscreen() {
  }
  void display() {
    fill(0);
    textSize(30);
    text("Welcome to the SchoolBoyz Mini-Golf Challenge", 175, 400);
    fill(100, 100, 100);
    rect(400, 500, 200, 100);
    fill(0);
    text("Press B to begin",400,600);
    textSize(1);
    fill(255);
  }

  boolean begin() {
    if(mouseX>0) {
      return true;
    }
    else {
      return false;
    }
  }
}

