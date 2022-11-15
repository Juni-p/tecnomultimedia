class Bloque {
  PImage bloqueImg;

  int posX, posY, colision;

  Bloque(int _posX, int _posY) {
    bloqueImg = loadImage("bloque.png");

    posX = _posX;
    posY = _posY;
  }

  void mostrar() {
    image(bloqueImg, posX, posY, 60, 15);
  }

  boolean colision(int bolaPosX, int bolaPosY) {
    boolean esColision = false;
    if ((bolaPosX + 15) < posX || bolaPosX > (posX + 60)) {
      esColision = false;
    } else if ((bolaPosY + 15) < posY || bolaPosY > (posY + 15)) {
      esColision = false;
    } else {
      esColision = true;
    }
    return esColision;
  }
}
