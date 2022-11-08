class Bloque {

  int posX, posY, colision;

  Bloque(int _posX, int _posY) {
    posX = _posX;
    posY = _posY;
  }

  void mostrar() {
    fill(0, 0, 200);

    rect(posX, posY, 60, 15);
  }
}
