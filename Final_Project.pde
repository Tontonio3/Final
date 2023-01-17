Point p;

void setup() {
  size(600, 600);
  p = new Point(400, height/2);
  strokeWeight(15);
  frameRate(30);
}

void draw() {
  
  background(255);
  p.fall();
  p.updatePosition();
  p.drawMe();
}
