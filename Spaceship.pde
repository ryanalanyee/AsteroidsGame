class Spaceship extends Floater {
  Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(255, 255, 255);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myCenterX = 200;
    myCenterY = 200;
  }

  void setXspeed(double x) {
    myXspeed = x;
  }

  void setYspeed(double y) {
    myYspeed = y;
  }

  void setXCenter(double x2) {
    myCenterX = x2;
  }

  void setYCenter(double y2) {
    myCenterY = y2;
  }

  void resetPosition() {
    setXspeed(0);
    setYspeed(0);
    turn((int)(Math.random() * 300 + 100));
    setXCenter((int)(Math.random() * 300 + 100));
    setYCenter((int)(Math.random() * 300 + 100));
  }
}
