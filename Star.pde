class Star {
  private int myX, myY;

  Star() {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
  }

  void show() {
    fill(255);
    ellipse(myX, myY, 3, 3);
  }

  // Getter for myX
  public int getMyX() {
    return myX;
  }

  // Setter for myX
  public void setMyX(int x) {
    myX = x;
  }

  // Getter for myY
  public int getMyY() {
    return myY;
  }

  // Setter for myY
  public void setMyY(int y) {
    myY = y;
  }
}
