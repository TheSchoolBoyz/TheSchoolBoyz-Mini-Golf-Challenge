GolfBall golfball;
void setup(){
  size(1000,800);
  golfball = new GolfBall(200,height/2);
}
void draw(){
  background(255);
golfball.shoot();
golfball.display();
}
 void mouseReleased (){
   float px = (golfball.x-mouseX)*.25;
   float py= (golfball.y-mouseY)*.25;
   golfball.xspeed=px;
   golfball.yspeed=py;
  }
