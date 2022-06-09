void dibujarCirculo(int posY){
  for (int i = 1; i < cantCirculos; i++) {
    fill(colorEllipse);
    noStroke();
    ellipse(i*115, posY, 90, 90);
  }
}
