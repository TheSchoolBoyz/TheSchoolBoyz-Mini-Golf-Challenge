class Startscreen {
  PImage tiger; 
  Startscreen() {    
    tiger= loadImage ("fire cropped.png");
  }
  void display() {
    background(255);
    image (tiger, 0, 0);
     fill (#FFF303);    textSize(30);
    text("Welcome to the SchoolBoyz Mini-Golf Challenge", 185, 360);
    fill (#FFF303);
    text("Press B", 430, 680);
    text("to Begin", 430, 730);
    textSize(30);
    fill(255);
  }

  boolean begin() {
    if (mouseX>0 && mouseY>0) {
      return true;
    }
    else {
      return false;
    }
  }
}

