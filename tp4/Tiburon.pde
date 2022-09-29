class Tiburon {
  int posX, posY, ancho, alto;
  PImage tiburonImg;

  Tiburon(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    tiburonImg = loadImage("tiburon.png");
  }

  void mostrar() {
    image(tiburonImg, posX, posY, ancho, alto);
  }
}
