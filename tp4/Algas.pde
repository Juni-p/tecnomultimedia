class Algas {
  int posY, ancho, alto;
  float posX;
  PImage algasImg;

  Algas(float _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    algasImg = loadImage("algas.png");
  }

  void mostrar() {
    image(algasImg, posX, posY, ancho, alto);
  }
}
