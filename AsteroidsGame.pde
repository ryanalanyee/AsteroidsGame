Spaceship bob;
Star[] nightSky;

void setup() {
  size(400, 400);
  bob = new Spaceship();
  nightSky = new Star[200];
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
}

void draw() {
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
    fill(255);
  }
}

void keyPressed() {
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
    bob.resetPosition();
  }
}

