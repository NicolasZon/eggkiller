class Egg{
  
  int boxmove;  // = -1;
  int boxi;     // = -1;
  int boxdir;
  int boxX;     // = int(random(-500, 1100));
  int boxY;     // = int(random(-500, 1100));
  
  Egg(){
    boxmove = -1;
    boxi = -1;
    boxX = int(random(-500, 1100));
    boxY = int(random(-500, 1100));
  }
  
  
  void moveCaja() {
    pushMatrix();
  
    if (boxmove<0) {
      boxmove = int(random(100, 200));
      boxdir = int(random(1, 5));
    } else {
      boxmove--;
  
      if (boxdir==1) boxX += 1;
      if (boxdir==2) boxX -= 1;
      if (boxdir==3) boxY += 1;
      if (boxdir==4) boxY -= 1;
  
      //translate(boxX, boxY, 0);
      //delay(145);
  
      if (boxX > 1100) boxX = -500;
      if (boxX < -500) boxX = 1100;
      if (boxY > 1100) boxY = -500;
      if (boxY < -500) boxY = 1100;
    }
  
    //System.out.println(boxX +"\t" + boxY  + "\t-\t" + boxi + " " + boxmove + " " + boxdir);
    // clear out all the transformations
    popMatrix();
  
    // draw another box at the same (x, y, z) coordinate as the other
    pushMatrix();
    translate(boxX, boxY, 0);
    fill(1, 0.6, 0.2);
    stroke(1, 1, 1);
    //box(25);
    for (int iii=0; iii<70; iii++) {
      ellipse(0, 0, 100-iii, 100-iii);
      translate(0, 0, 1);
    }
  
    //ellipse(56, 46, 55, 55);
  
    popMatrix();
  }
  
  boolean killed(){
    if (posygato >= boxY-60 &&  posygato <= boxY+60 && posxgato >= boxX-60 &&  posxgato <= boxX+60) {
      return true;
      //reset();
      //System.out.println("perdio");
    }
    return false;
  }
}