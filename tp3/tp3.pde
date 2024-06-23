PImage referencia;
int cant = 4; 
int tam = 100;
float w = 100;
float h = 100;

void setup(){

size(800,400);
background(255);
referencia = loadImage("opart.png");

}

void draw(){
background(255);
image (referencia, 0,0);
noStroke();
//cuadrados
translate (450,50);
 for(int x=0; x<cant; x++) {
   for(int y=0; y<cant; y++){
     if ((x+y)%2==0) {
     fill(255);
     } else {
     fill (0);
     }
   rect(x*tam,y*tam,tam,tam);
   }
}
//rombos
for(int x=0; x<cant; x++) {
   for(int y=0; y<cant; y++){
     float centerX = -50 + x * w + w /2;
     float centerY = y * h + h / 36;
     pushMatrix();
      translate(centerX, centerY);
      rotate(radians(45));
     if ((x+y)%2==0) {
     fill(0);
     } else {
     fill (255);
     }
    rectMode (CENTER);
    rect(0,0,70, 70);
    popMatrix();
}
}
//foto referencia
image (referencia, -450,-50);
}
void keyPressed(){
cant = 4;
}
void mousePressed(){
cant--;
}
