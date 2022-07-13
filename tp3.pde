int arraysCant = 5;
int valorArrays = 1;
int cartasArray = arraysCant * 2;
int[] array1 = new int[arraysCant];
int[] array2 = new int[arraysCant];
int [] cartas = new int[cartasArray];
int [] cartasGiradas = new int[cartasArray];
int girar = -1;
int girar1 = -1;
Boolean gano = false;
Boolean sobreBotonVideo = false;
int pantalla;

void setup() {
  size(1000, 600);
  background(43, 168, 224);
  textAlign(CENTER, CENTER);
  textSize(45);
  pantalla = 1;

  for (int i = 0; i < arraysCant; i++ ) {
    array1[i] = valorArrays;
    array2[i] = valorArrays;
    cartasGiradas[i] = 0;
    valorArrays++;
  }

  cartas = (int[])concat(array1, array2);
  mezclar(cartas);
}

void draw() {
  if (pantalla == 1) {
    background(43, 168, 224);
    push();
    rectMode(CENTER);
    fill(222, 213, 36);
    rect(width/2, height/2, 300, 100);
    rect(200, height/2, 200, 50);
    rect(800, height/2, 200, 50);
    textMode(CENTER);
    textSize(40);
    fill(43, 168, 224);
    text("JUGAR", width/2, height/2);
    textSize(25);
    text("INSTRUCCIONES", 200, height/2);
    text("CREDITOS", 800, height/2);
    pop();
  }

  if (pantalla == 2) {
    iniciarJuego();
  }
  if (pantalla == 3) {
    background(43, 168, 224);
    push();
    rectMode(CENTER);
    fill(222, 213, 36);
    rect(width/2, height/2, 400, 400);
    rect(width/2, 550, 100, 50);
    textSize(20);
    fill(43, 168, 224);
    text("Para jugar debe hacer click en las cartas, si encuentra un par de cartas iguales estara más cerca de la victoria, el juego termina cuando haya encontrado todos los pares de cartas.", width/2, height/2, 400, 400);
    text("VOLVER", width/2, 550);
    pop();
  }

  if (pantalla == 4) {
    background(43, 168, 224);
    push();
    rectMode(CENTER);
    fill(222, 213, 36);
    rect(width/2, height/2, 400, 400);
    rect(width/2, 550, 100, 50);
    if (sobreBotonVideo == true) {
      fill(22, 146, 201);
    } else {
      fill(22, 167, 201);
    }
    rect(width/2, 370, 100, 50);
    textSize(20);
    fill(43, 168, 224);
    text("Juego diseñado y programado por Junior Vitteri.", width/2, height/2, 400, 400);
    text("VOLVER", width/2, 550);
    fill(222, 213, 36);
    text("VIDEO", width/2, 370);
    pop();
  }
}


void mousePressed() {
  //--------------------------BOTON CON HIPERVINCULO-----------------------
  if (sobreBotonVideo) { 
    link("https://www.youtube.com/watch?v=VMZ8T6sHoJg");
  }
  //--------------------------LOGICA BOTONES-----------------------
  if (mouseX > 350 && mouseX < 650 && mouseY > 250 && mouseY < 350 && pantalla == 1) {
    pantalla = 2;
  }
  if (mouseX > 100 && mouseX < 300 && mouseY > 275 && mouseY < 325 && pantalla == 1) {
    pantalla = 3;
  }
  if (mouseX > 700 && mouseX < 900 && mouseY > 275 && mouseY < 325 && pantalla == 1) {
    pantalla = 4;
  }
  if (mouseX > 450 && mouseX < 550 && mouseY > 525 && mouseY < 575 && pantalla == 3) {
    pantalla = 1;
  }
  if (mouseX > 450 && mouseX < 550 && mouseY > 525 && mouseY < 575 && pantalla == 4) {
    pantalla = 1;
  }
  if (mouseX > 450 && mouseX < 550 && mouseY > 525 && mouseY < 575 && pantalla == 2) {
    for (int i = 0; i < cartasArray; i++ ) {
      cartasGiradas[i] = 0;
    }
    gano = false;
    mezclar(cartas);
    iniciarJuego();
  }
  if (mouseX > 50 && mouseX < 150 && mouseY > 525 && mouseY < 575 && pantalla == 2) {
    pantalla = 1;
  }
  //-----------------LOGICA CARTAS----------------------
  if (girar != -1 && girar1 != -1) {
    if (cartas[girar] != cartas[girar1]) {
      cartasGiradas[girar] = 0;
      cartasGiradas[girar1] = 0;
    }
    girar = girar1 = -1;
  }

  if (girar == -1 || girar1 == -1 ) {
    int ejeX;
    int ejeY;
    if (mouseX-50 < 0 || mouseY-50 < 0) {
      ejeX = -1;
      ejeY = -1;
    } else {
      ejeX = int((mouseX-50)/200);
      ejeY = int((mouseY-50)/250);
    }
    if ((mouseX-50)%200 > 100 || (mouseY-50)%250 > 200)
    {
      ejeX = -1;
      ejeY = -1;
    }
    int index = ejeX + 5*ejeY;
    if (index >= 0 && index < cartas.length) {
      if (cartasGiradas[index] != 1) {
        cartasGiradas[index] = 1;
        if (girar == -1) girar = index;
        else if (girar1 == -1) girar1 = index;
      }
    }
  }
  if (girar != -1 && girar1 != -1) {
    if (cartas[girar] == cartas[girar1]) {
      gano = true;
      for (int i = 0; i < cartasGiradas.length; i++) {
        if (cartasGiradas[i] == 0) {
          gano = false;
          break;
        }
      }
    }
  }
}
void mouseMoved() { 
  estadosBotonVideo();
}
