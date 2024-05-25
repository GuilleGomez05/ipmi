//Guille Gomez - Comision 2 - Legajo: 119045/6
PImage fondo;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PFont fuente;
int variable;
String titulo = "STARDEW\nVALLEY";
String texto1 = "Stardew Valley es un juego tipo RPG que\nfue lanzado el 26 de febrero de 2016\nSV fue creado unicamente por\nEric Barone.";
String texto2 = "Contexto del juego:\nNosotros heredamos la granja de nuestro\nabuelo en una pequeña\ncomunidad lejos de la ciudad,\nnosotros tendremos que ir limpiando\nnuestro campo y cultivarlo para\nganar ingresos.";
String texto3 = "NPCs:\nEn el juego se pueden encontrar varios NPCs,\nlos cuales tienen sus propias actividades y\nacciones programadas.";
String estado;
color c;
color b;
boolean button = false;
int x = 500;
int y = 440;
int w = 150;
int h = 150;

void setup() {
  size(640, 480);
  c = color(50, 55, 100);
  b = color(255, 204, 0);
  estado = "menu";
  fondo = loadImage("fondosv.jpg");
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  fuente = loadFont("consolas.vlw");
}

void draw() {
  background(0);

  if (estado == "menu") {
    image(fondo, 0, 0);
    variable += 1;
    fill(c, 0, 0, 150);
    noStroke();
    rect(160, 375 - variable, 320, 150);
    fill(b);
    textFont(fuente);
    textSize(55);
    textAlign(CENTER, CENTER);
    text(titulo, 320, 450 - variable);
    if (variable == 420) {
    }
    if (frameCount / 60 == 10) estado = "imagen1";
  } else if (estado == "imagen1") {
    background(0);
    image(imagen1, 0, 0);
    variable -= 1;
    fill(c, 0, 0, 150);
    noStroke();
    rect(52, 147 - variable, 551, 192);
    fill(b);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(texto1, 320, 250 - variable);
    if (frameCount / 120 == 10) estado = "imagen2";
  } else if (estado == "imagen2") {
    background(0);
    image(imagen2, 0, 0);
    variable += 1;
    fill(c, 0, 0, 150);
    noStroke();
    rect(15, 283 - variable, 583, 340);
    fill(b);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(texto2, 312, 450 - variable);
    if (frameCount / 180 == 10) estado = "imagen3";
  } else if (estado == "imagen3") {
    background(0);
    image(imagen3, 0, 0);
    variable -= 1;
    fill(c, 0, 0, 150);
    noStroke();
    rect(19, 119 - variable, 608, 283);
    fill(b);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(texto3, 322, 250 - variable);
    if (frameCount / 240 == 10) estado = "final";
  }

  if (estado == "final") {
    if (button) {
      fill(255,0, 0);
      stroke(0);
    } else {
      fill(0, 70, 100);
      stroke(100, 150, 100);
    }
    rect(x, y, w, h);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("REINICIAR", 570, 460);
  }
}

void mousePressed() {
  if ((mouseX > x) && (mouseX < x + w) &&
      (mouseY > y) && (mouseY < y + h)) {
    if (button) {
      button = false;
    } else {
      button = true;
      estado = "menu";
      variable = 0;
    }
  }
}
