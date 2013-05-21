GolfBall golfball;
void setup(){
  size(1000,800);
  golfball = new GolfBall(200,height/2);
}
void draw(){
  background(0);
golfball.display();
golfball.move();
}
