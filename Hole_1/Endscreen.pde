class Endscreen {
  PImage eagle; 

  Endscreen() {
    eagle= loadImage ("eagle1.png");
  }
  void display() {
    background(eagle);

    fill(#DECE3F,175);
    noStroke();
    rect(100,450,767,300);
    strokeWeight(5);
    stroke(90,54,26,175);
    line(100,450,867,450);
    line(100,750,867,750);
    line(100,450,100,750);
    line(100,550,867,550);
    line(100,650,867,650);
    for(int i=300;i<875;i+=575/9){
      line(i,450,i,750);
    }
    strokeWeight(1);
    stroke(0);
    fill(0);
  }
}

