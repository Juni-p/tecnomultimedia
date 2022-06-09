void dibujarFondo(int lineas){
  for (int i = 1; i < lineas; i++) {
    if (i < 17) {
      stroke(36, 139,234, colorAlpha);
    } else if (i < 34) {
      stroke(234, 36, 65, colorAlpha);
    } else {
      stroke(81, 234, 36, colorAlpha);
    }

    strokeWeight(3);
    line(30, i*10, width - 30, i*10);
  }
}
