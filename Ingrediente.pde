class Ingrediente {
  int ancho, alto;
  float posX, posY;
  PImage ingredienteImg;
  String tipoIngrediente;

  Ingrediente(float _posX, float _posY, int _ancho, int _alto, String _tipoPez) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    tipoIngrediente = _tipoPez;
    ingredienteImg = loadImage(tipoIngrediente + ".png");
  }

  void mostrar() {
    image(ingredienteImg, posX, posY, ancho, alto);
  }
}
