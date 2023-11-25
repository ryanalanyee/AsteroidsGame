Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];

public void setup() {
  size(400, 400);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
}

public void draw() {
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
    fill(255);
  }
}

public void keyPressed() {
  if (key == 'w') {
    bob.accelerate(.25);
  }
  if (key == 'a') {
    bob.turn(-10.0);
  }
  if (key == 's') {
    bob.accelerate(-.25);
  }
  if (key == 'd') {
    bob.turn(10.0);
  }
  if (key == ' ') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn((int)(Math.random() * 300 + 100));
    bob.setXCenter((int)(Math.random() * 300 + 100));
    bob.setYCenter((int)(Math.random() * 300 + 100));
  }
}

class Floater {  
  protected int corners;
  protected int[] xCorners;
  protected int[] yCorners;
  protected int myColor;
  protected double myCenterX, myCenterY;
  protected double myXspeed, myYspeed;
  protected double myPointDirection;

  public void accelerate(double dAmount) {    
    double dRadians = myPointDirection * (Math.PI / 180);    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));      
  }

  public void turn(double degreesOfRotation) {    
    myPointDirection += degreesOfRotation;  
  }

  public void move() {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    

    if (myCenterX > width) {    
      myCenterX = 0;    
    } else if (myCenterX < 0) {    
    
