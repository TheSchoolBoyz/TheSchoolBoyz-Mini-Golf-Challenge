class Endscreen {

  Endscreen() {
  }
  void display() {
    noStroke();
    fill(#41B252);
    rect(0,0,width,height);
    strokeWeight(15);
    fill(#DECE3F);
    noStroke();
    rect(100,450,775,300);
    stroke(90,54,26);
    line(100,450,875,450);
    line(100,750,875,750);
    line(100,450,100,750);
    line(875,450,875,750);
    line(100,550,875,550);
    line(100,650,875,650);
    for(int i=300;i<875;i+=575/9){
      line(i,450,i,750);
    }
    strokeWeight(1);
    stroke(0);
    fill(0);
  }
}

