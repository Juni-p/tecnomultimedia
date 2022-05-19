PImage imagen, ok;
PFont fuente;
int posX;
int posY;
int posXMain;
int posYMain;
int segundos = 0;
boolean pantalla1 = false;
boolean pantalla2 = false;
boolean pantalla3 = false;
boolean pantalla4 = false;

void setup() {
  size(500, 500);
  posXMain = 520;
  imagen = loadImage("main.jpg");
  ok = loadImage("ok.png");
  fuente = createFont("fuente.ttf", 40);
}

void draw() {
  //LOGICA
  posYMain = round(random(55, 65));

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
    posX = round(random(200, 300));
    posY = round(random(200, 300));
  }

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

  //fill(255);
  //text(segundos, 30, 30);

  fill(129, 44, 242);
  textSize(40);
  textFont(fuente);
  //textAlign(CENTER);
  text("SQUAD NATION       SQUAD NATION", posXMain, posYMain);
  posXMain--;
  if (posXMain == -775) {
    posXMain = 520;
  }

  imageMode(CENTER);
  image(imagen, posX, posY, 200, 200);

  if (pantalla1) {
    background(0);

    image(ok, posX, posY, 200, 200);

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
  }

  if (pantalla2) {
    background(0);

    image(imagen, posX, posY, 200, 200);

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
  }
  
  if (pantalla3) {
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
  }
  
  if (pantalla4) {
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
  }
}

void mouseClicked() {
  if (mouseX > 30 && mouseX < 120 && mouseY > 430 && mouseY < 460) {
    pantalla1 = true;
    pantalla2 = false;
    pantalla3 = false;
    pantalla4 = false;
  } else if (mouseX > 150 && mouseX < 240 && mouseY > 430 && mouseY < 460) {
    pantalla2 = true;
    pantalla1 = false;
    pantalla3 = false;
    pantalla4 = false;
  } else if (mouseX > 260 && mouseX < 370 && mouseY > 430 && mouseY < 460) {
    pantalla3 = true;
    pantalla1 = false;
    pantalla2 = false;
    pantalla4 = false;
  } else if (mouseX > 390 && mouseX < 480 && mouseY > 430 && mouseY < 460) {
    pantalla4 = true;
    pantalla1 = false;
    pantalla2 = false;
    pantalla3 = false;
  }
}

//void mousePressed(){
//  cursorHover(30, 120);

//  cursorHover(150, 240);

//  cursorHover(260, 370);

//  cursorHover(390, 480);
//}
