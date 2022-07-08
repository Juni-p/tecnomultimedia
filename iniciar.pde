void iniciarJuego() {
  //mezclar(cartas);
  background(43, 168, 224);
  int ejeX = 50;
  int ejeY = 50;
  if (gano) {
    //ejeX= 50;
    //ejeY = 50;
    push();
    rectMode(CENTER);
    fill(222, 213, 36);
    rect(width/2, height/2, 400, 300);
    textSize(60);
    fill(43, 168, 224);
    text("GANASTE!", width/2, height/2);
    fill(222, 213, 36);
    rect(width/2, 550, 100, 50);
    rect(100, 550, 100, 50);
    textSize(20);
    fill(43, 168, 224);
    text("Reiniciar", width/2, 550);
    text("Salir", 100, 550);
    pop();
  } else {
    {
      for (int i = 0; i < cartas.length; i++) {
        if (cartasGiradas[i] == 1) {
          fill(43, 168, 224);
          rect(ejeX, ejeY, 100, 200);
          fill(0);

          text(cartas[i], ejeX+50, ejeY + 100);
        } else {
          fill(222, 213, 36);
          rect(ejeX, ejeY, 100, 200);
        } 
        ejeX += 200;
        if (ejeX >= width) {
          ejeY += 250;
          ejeX = 50;
        }
      }

      if (ejeX >= width) {
        ejeY += 250;
        ejeX = 50;
      }
    }
  }
}
