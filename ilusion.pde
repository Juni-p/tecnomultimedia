void dibujarIlusion(int ciclos) {
  for(int i = 0;i < ciclos; i++){
    if(i == 0){
      dibujarCirculo(posYCirculo1);
    } else if(i == 1){
      dibujarCirculo(posYCirculo2);
    } else {
      dibujarCirculo(posYCirculo3);
    }
  }
  
  dibujarFondo(cantLineas);
}
