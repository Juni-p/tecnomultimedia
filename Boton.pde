class Boton {
  int posX, posY, ancho, alto;
  String texto;

  Boton(int _posX, int _posY, String _texto) {
    posX = _posX;
    posY = _posY;
    ancho = 150;
    alto = 30;
    texto = _texto;
  }

  void mostrar() {
    if (hiceClick()) {
      fill(153, 131, 199);
    } else {
      fill(115, 84, 177);
    }

    rectMode(CENTER);
    rect(posX, posY, ancho, alto);

    fill(221, 236, 251);
    textSize(15);
    textAlign(CENTER);
    text(texto, posX, posY + 5 );
  }

  boolean hiceClick() {
    if (mouseX > posX - ancho/2 && mouseX < (posX + ancho/2) && mouseY > posY - alto/2 && mouseY < (posY + alto/2) ) {
      return true;
    } else {
      return false;
    }
  }
}
