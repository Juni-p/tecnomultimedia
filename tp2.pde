// en todos los videos que hice al final se me tildan la camara y la captura de pantalla
// en este al menos la captura de pantalla se tildo despues de explicar el codigo, creo que 
// pasa por mi internet.
// https://youtu.be/ZMX1xSvZXnM

int cantCirculos = 7;
int ciclosCirculos = 3;
int cantLineas = 50;
int posYCirculo1 = 85;
int posYCirculo2 = 256;
int posYCirculo3 = 416;
int colorEllipse = color(247, 204, 140);
boolean enterActivada;
float colorAlpha;


void setup() {
  size(800, 500);
  background(255);
  colorAlpha = 255;
}

void draw() {
  dibujarIlusion(ciclosCirculos);
  if (enterActivada) {
    colorAlpha = map(mouseX, 0, width, 0, 255);
  } else {
    colorAlpha = 255;
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    enterActivada = true;
  } 
  if (key == 'r') {
    enterActivada = false;
  }
}
