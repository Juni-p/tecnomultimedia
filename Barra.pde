class Barra {
  int posX, posY;
  PImage plataforma;

  Barra(int _posX, int _posY) {
    posX = _posX;
    posY = _posY;
    plataforma = loadImage("plataforma.png");
  }

  void mostrar() {
    image(plataforma, posX, posY, 90, 25);

    mover();
  }

  void mover() {
    if (keyPressed) {
      if (keyCode == LEFT) {
        if (posX > 5) {
          posX -= 8;
        }
      }
      if (keyCode == RIGHT) {
        if (posX < 410) {
          posX += 8;
        }
      }
    }
  }

  boolean colision(int bolaPosX, int bolaPosY) {
    boolean esColision = false;
    if ((bolaPosX + 15) < posX || bolaPosX > (posX + 90)) {
      esColision = false;
    } else if ((bolaPosY + 15) < posY || bolaPosY > posY) {
      esColision = false;
    } else {
      esColision = true;
    }
    return esColision;
  }
}
