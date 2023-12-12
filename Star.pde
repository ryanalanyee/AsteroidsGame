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
  public int getMyX() {
    return myX;
  }
  public void setMyX(int x) {
    myX = x;
  }
  public int getMyY() {
    return myY;
  }
  public void setMyY(int y) {
    myY = y;
  }
}
