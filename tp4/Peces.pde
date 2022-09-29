class Peces {
  int ancho, alto;
  float posX, posY;
  PImage pezImg;
  String tipoPez;

  Peces(float _posX, float _posY, int _ancho, int _alto, String _tipoPez) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    tipoPez = _tipoPez;
    pezImg = loadImage(tipoPez + ".png");
  }

  void mostrar() {
    image(pezImg, posX, posY, ancho, alto);
  }
}
