class Startscreen {

  Startscreen() {
  }
  void display() {
    fill(0);
    textSize(30);
    fill(#41B252);
    rect(0,0,width,height);
    fill(0);
    text("Welcome to the SchoolBoyz Mini-Golf Challenge", 165, 300);
    fill(100, 100, 100);
    noStroke();
    fill(90,54,26);
    rect(400, 400, 200, 100);
    fill(0);
    text("Press B", 445,430);
    text("to Begin",445,480);
    textSize(1);
    fill(255);
  }

  boolean begin() {
    if(mouseX>0 && mouseY>0) {
      return true;
    }
    else {
      return false;
    }
  }
}

