import java.nio.IntBuffer;
import frames.input.*;
import frames.input.event.*;
import frames.primitives.*;
import frames.core.*;
import frames.processing.*;

Scene scene;

boolean animate = true;

PShader cubemapShader;
PShape domeSphere;

IntBuffer fbo;
IntBuffer rbo;
IntBuffer envMapTextureID;

int envMapSize = 1024;   

int catx, caty, catz;
int catmovex, catmovey, catmovez;



int posxgato;
int posygato;
int puntos;
int pospanx;
int pospany;
int panx=int(random(-500, 1100));
int pany=int(random(-500, 1100));

Egg killer, killer2;

PFont font;

void setup() {
  size(640, 640, P3D);
  //  bread = loadShape("bread/Bread.obj");
  initCubeMap();

  font = createFont("Arial Bold", 48);
  reset();
  killer = new Egg();
  killer2 = new Egg();
  //colorMode(RGB, 1);
  //fill(0.4);
}

void draw() {
  background(0);

  drawCubeMap();
  fill(1);
  textFont(font, 30); //texto de la fuente del FPS
  text("Egg Killer", -80, -height/2.3);
  if(puntos==0){
    text("> Game Over <", -100, 0.05);
  }else{
    text(puntos, 0.05, 0.05);
  }
}

void drawScene() {  
  background(0);
  stroke(255, 0, 0);
  strokeWeight(2);
  for (int i = -width; i < 2 * width; i += 50) {
    line(i, -height, -100, i, 2 *height, -100);
  }
  for (int i = -height; i < 2 * height; i += 50) {
    line(-width, i, -100, 2 * width, i, -100);
  }

  pushMatrix();
  translate(panx, pany, 0);

  //shape(bread);

  fill(0, 0, 255);
  stroke(255, 255, 255);
  box(40);

  popMatrix();

  /*
  for (int i=0; i<3; i++){
   box(100,100,350);
   translate(x++,y++);
   }
   */
  
  killer.moveCaja(); // = new Egg();
  killer2.moveCaja();
  //moveCaja();

  pushMatrix();
  lights();
  noStroke();
  //translate(mouseX, mouseY);
  //System.out.println(mouseX + " " + mouseY);
  //rotateX(frameCount * 0.01);
  //rotateY(frameCount * 0.01);  
  //sphere(100);


  //System.out.println("panx"+panx);
  //System.out.println("pany"+pany);

  movimientoGato();



  // colorMode(RGB, 1);
  colorMode(RGB, 1);
  fill(0.4);

  lightSpecular(1, 1, 1);
  directionalLight(0.8, 0.8, 0.8, 0, 0, -1);
  float s = 1 - (sqrt((pow(panx-posxgato, 2) + pow(pany-posygato, 2))) / 400 );  //mouseX / float(width); sqrt(width*height)
  specular(s, s, s);
  //System.out.println("sssssssssssv "+s);

  sphere(30);
  popMatrix();
  //translate(-150,-150);
}

void movimientoGato() {
  switch (keyCode) {
  case RIGHT:
    //System.out.println("entrando a derecha");

    posxgato+=1;//.3*frameCount;
    if(posxgato==1100){
      keyCode = LEFT;
      break;
    }
    translate(posxgato, posygato, 0);
    puntos();
    break;
  case LEFT:
    posxgato-=1;//.3*frameCount;
    if(posxgato==-500){
      keyCode = RIGHT;
      break;
    }
    translate(posxgato, posygato, 0);
    puntos();
    break;
  case UP:
    //System.out.println("entrado arriba");
    posygato-=1;//.1*frameCount;
    if(posygato==-500){
      keyCode = DOWN;
      break;
    }
    translate(posxgato, posygato, 0);
    puntos(); 
    break;
  case DOWN:
    //System.out.println("entrando abajo");
    posygato+=1;//.1*frameCount;
    if(posygato==1100){
      keyCode = UP;
      break;
    }
    translate(posxgato, posygato, 0);
    puntos();
    break;
  }

  //System.out.println("pospanx--------------------\t"+pospanx);
  //System.out.println("pospany--------------------\t"+pospany);
  //System.out.println("posxgato-------------------\t"+posxgato);
  //System.out.println("moveygato------------------\t"+posygato);
}

int diferenciax = 40, diferenciay = 40;

void puntos() {
  /*
  if (posygato >= boxY-60 &&  posygato <= boxY+60 && posxgato >= boxX-60 &&  posxgato <= boxX+60) {
    reset();
    System.out.println("perdio");
    
  }*/
  if(killer.killed()){
    reset();
    System.out.println("perdio");
  }
  else if(killer2.killed()){
    reset();
    //System.out.println("perdio");
  }
  else if (posygato >= pany-diferenciay &&  posygato <= pany+diferenciay && posxgato >= panx-diferenciax &&  posxgato <= panx+diferenciax) {
    puntos++;
    for (int i = 0; i < 10; i++) {
      panx=int(random(-500, 1100));
      pany=int(random(-500, 1100));
      println(panx + " " + pany);
    }
    //System.out.println("puntos"+puntos);
  }
}



void reset(){
  catx=100;
  caty=100;
  catz=100;
  catmovex=0;
  catmovey=0;
  catmovez=0;
  
  posxgato=0;
  posygato=0;
  puntos=0;
  pospanx=0;
  pospany=0;
  panx=int(random(-500, 1100));
  pany=int(random(-500, 1100));
  keyCode = RIGHT;
}