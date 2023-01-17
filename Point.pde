
class Point {
  
  float x, y, sX, sY, aX, aY, s, a;
  ArrayList<Point> pC;
  
  Point (float x, float y) {
    
    this.x = x;
    this.y = y;
    this.sX = 0;
    this.sY = 0;
    this.aX = 0;
    this.aY = 0;
    this.s = 0;
    this.a = 0;
    
    this.pC = new ArrayList<Point> ();
    
  }
  
  void updatePosition () {
    
    this.x += this.sX;
    this.y += this.sY;
    
  }
  
  void drawMe() {
    point(this.x, this.y);
  }
  
  void fall() {
    
    float distX = x - width/2;
    float distY = height/2 - y;
    
    float distT = sqrt(pow(distX,2)+pow(distY,2));
    
    float theta = acos(distX/distT);
     
    if (distY < 0) theta = 2*PI-theta;
    
    this.calcS(theta);
    
    float dTheta = this.s/distT;
    
    theta -= dTheta;
    
    this.sX = distT*cos(theta) - distX;
    this.sY = distY - distT*sin(theta);

  }
  
  void calcS(float theta) {
    
    theta = theta - 3*PI/2;
    
    this.a = sin(theta)*0.2;
    this.s += this.a;
    this.s = this.s*0.998;
  }
  
}
