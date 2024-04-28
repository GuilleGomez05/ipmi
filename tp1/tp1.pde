//Guille Gomez - Comision 2 - TP1
PImage fondo;
void setup() {
  size(800, 400 );
  fondo = loadImage("atardecer.jpg");
  
}
void draw(){
  //atardecer
  background(255, 207, 150);
  noStroke();
  fill(255, 203, 120);
  rect(0,60,800,100);
  fill(255, 169, 101);
  rect(0,111,800,100);
  fill(195, 108, 96);
  rect(0,161,800,100);
  fill(100);
  rect(0,180,800,195);
  fill(100);
  //montaña 1
  triangle(292,430,378,99,991,400);
  triangle(296,458,453,121,1173,400);
  rect(0,143,616,167);
  triangle(296,436,581,132,1175,284);
  fill(200);
  rect(0,227,806,16);
  //montaña 2
  fill(50);
  rect(0,187,536,256);
  triangle(159,358,536,188,790,346);
  //montaña 3
  fill(40);
  rect(0,320,817,256);
  triangle(411,355,788,259,844,363);
   //montaña 4
  fill(28);
  triangle(395,424,377,274,620,411);
  //Imagen de referencia
  image(fondo, 0, 0);
}
