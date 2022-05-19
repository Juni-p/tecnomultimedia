PImage imagen;
PImage imagenCreditos;
PFont fuente;
int numImagen = 1;
int pantalla;
int posXImageMain;
int posYImageMain;
int posXTextMain;
int posYTextMain;
int segundos = 0;
int posX;

void setup() {
  size(500, 500);
  posXTextMain = 520;
  imagen = loadImage("main.jpg");
  imagenCreditos = loadImage("foto" + numImagen + ".png");
  fuente = createFont("fuente.ttf", 40);
}

void draw() {
  //LOGICA

  posYTextMain = round(random(55, 65));

  if (mouseX > 30 && mouseX < 120 && mouseY > 430 && mouseY < 460) {
    cursor(HAND);
  } else if (mouseX > 150 && mouseX < 240 && mouseY > 430 && mouseY < 460) {
    cursor(HAND);
  } else if (mouseX > 260 && mouseX < 370 && mouseY > 430 && mouseY < 460) {
    cursor(HAND);
  } else if (mouseX > 390 && mouseX < 480 && mouseY > 430 && mouseY < 460) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }

  if (frameCount % 120 == 0) {
    segundos++;
  }

  if (segundos % 2 == 0) {
    posXImageMain = round(random(200, 300));
    posYImageMain = round(random(200, 300));
  }

  //DISEÑO

  background(0);

  fill(49, 21, 100);
  rect(30, 430, 90, 30);
  fill(0);
  textSize(15);
  text("CASTING", 36, 452);

  fill(49, 21, 100);
  rect(150, 430, 90, 30);
  fill(0);
  textSize(15);
  text("MUSIC", 168, 452);

  fill(49, 21, 100);
  rect(270, 430, 90, 30);
  fill(0);
  textSize(15);
  text("DESIGN", 282, 452);

  fill(49, 21, 100);
  rect(390, 430, 90, 30);
  fill(0);
  textSize(15);
  text("DEVELOP", 393, 452);

  fill(129, 44, 242);
  textSize(40);
  textFont(fuente);
  text("SQUAD NATION       SQUAD NATION", posXTextMain, posYTextMain);
  posXTextMain--;
  if (posXTextMain == -775) {
    posXTextMain = 520;
  }

  imageMode(CENTER);
  image(imagen, posXImageMain, posYImageMain, 200, 200);
  
  //LOGICA PANTALLAS

  if (pantalla == 1) {
    background(0);
    numImagen = pantalla;

    imagenCreditos = loadImage("foto" + numImagen + ".png");
    image(imagenCreditos, 350, height/2, 200, 200);

    fill(49, 21, 100);
    rect(30, 430, 90, 30);
    fill(0);
    textSize(15);
    text("CASTING", 36, 452);

    fill(49, 21, 100);
    rect(150, 430, 90, 30);
    fill(0);
    textSize(15);
    text("MUSIC", 168, 452);

    fill(49, 21, 100);
    rect(270, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DESIGN", 282, 452);

    fill(49, 21, 100);
    rect(390, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DEVELOP", 393, 452);

    fill(235, 237, 134);
    smooth();
    textSize(40);
    text("CAST      CAST     CAST", posXTextMain, posYTextMain);
    textSize(20);
    text("K.SHIMONETA\nN.SATO\nUMECHAN\nS.KITAMOTO", posX, 150, 400, 250);

    posXTextMain--;
    if (posXTextMain < -500) {
      posXTextMain = 520;
    }

    if (posX <= 50) {
      posX+=2;
    }
  } else if (pantalla == 2) {
    background(0);
    numImagen = pantalla;

    imagenCreditos = loadImage("foto" + numImagen + ".png");
    image(imagenCreditos, 350, height/2, 200, 200);

    fill(49, 21, 100);
    rect(30, 430, 90, 30);
    fill(0);
    textSize(15);
    text("CASTING", 36, 452);

    fill(49, 21, 100);
    rect(150, 430, 90, 30);
    fill(0);
    textSize(15);
    text("MUSIC", 168, 452);

    fill(49, 21, 100);
    rect(270, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DESIGN", 282, 452);

    fill(49, 21, 100);
    rect(390, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DEVELOP", 393, 452);

    fill(123, 234, 232);
    smooth();
    textSize(40);
    text("SOUNDs CREATORS", posXTextMain, posYTextMain);
    textSize(20);
    text("H.MAEZAWA\nK.SADA", posX, 150, 400, 250);

    posXTextMain--;
    if (posXTextMain < -600) {
      posXTextMain = 520;
    }

    if (posX <= 50) {
      posX+=2;
    }
  } else if (pantalla == 3) {
    background(0);
    numImagen = pantalla;

    imagenCreditos = loadImage("foto" + numImagen + ".png");
    image(imagenCreditos, 350, height/2, 200, 200);

    fill(49, 21, 100);
    rect(30, 430, 90, 30);
    fill(0);
    textSize(15);
    text("CASTING", 36, 452);

    fill(49, 21, 100);
    rect(150, 430, 90, 30);
    fill(0);
    textSize(15);
    text("MUSIC", 168, 452);

    fill(49, 21, 100);
    rect(270, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DESIGN", 282, 452);

    fill(49, 21, 100);
    rect(390, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DEVELOP", 393, 452);

    fill(153, 252,154);
    smooth();
    textSize(40);
    text("GRAPHIC DESIGNERS", posXTextMain, posYTextMain);
    textSize(20);
    text("T.UEYAMA\nS.MURAKI\nM.FUJIWARA\nT.NISHIKAWA\nC.OZAWA", posX, 150, 400, 250);

    posXTextMain--;
    if (posXTextMain < -620) {
      posXTextMain = 520;
    }

    if (posX <= 50) {
      posX+=2;
    }
  } else if (pantalla == 4) {
    background(0);
    numImagen = pantalla;

    imagenCreditos = loadImage("foto" + numImagen + ".png");
    image(imagenCreditos, 350, height/2, 200, 200);

    fill(49, 21, 100);
    rect(30, 430, 90, 30);
    fill(0);
    textSize(15);
    text("CASTING", 36, 452);

    fill(49, 21, 100);
    rect(150, 430, 90, 30);
    fill(0);
    textSize(15);
    text("MUSIC", 168, 452);

    fill(49, 21, 100);
    rect(270, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DESIGN", 282, 452);

    fill(49, 21, 100);
    rect(390, 430, 90, 30);
    fill(0);
    textSize(15);
    text("DEVELOP", 393, 452);

    fill(60, 222, 91);
    smooth();
    textSize(40);
    text("PROGRAMMERS    PROGRAMMERS", posXTextMain, posYTextMain);
    textSize(20);
    text("S.KISHIWADA\nS.KISHIWADA\nK.YAMASHITA\nT.DANJYO\nM.OGAWA", posX, 150, 400, 250);

    posXTextMain--;
    if (posXTextMain < -775) {
      posXTextMain = 520;
    }

    if (posX <= 50) {
      posX+=2;
    }
  }
}

void mouseClicked() {
  if (mouseX > 30 && mouseX < 120 && mouseY > 430 && mouseY < 460) {
    pantalla = 1;
    posX = -170;
    posXTextMain = 520;
  } else if (mouseX > 150 && mouseX < 240 && mouseY > 430 && mouseY < 460) {
    pantalla = 2;
    posX = -170;
    posXTextMain = 520;
  } else if (mouseX > 260 && mouseX < 370 && mouseY > 430 && mouseY < 460) {
    pantalla = 3;
    posX = -170;
    posXTextMain = 520;
  } else if (mouseX > 390 && mouseX < 480 && mouseY > 430 && mouseY < 460) {
    pantalla = 4;
    posX = -170;
    posXTextMain = 520;
  }
}

