
  size(500, 500);
  background(253, 188, 252);



  println(mouseX, mouseY);
  ellipse(200, 175, 70, 130);
  fill(0);
  ellipse(195, 180, 15, 15);
  fill(255);
  ellipse(199, 181, 5, 5);
  fill(229, 105, 191);
  arc(200, 175, 70, 130, PI, TWO_PI, CHORD);
  fill(229, 105, 191);
  bezier(235, 175, 236, 180, 240, 167, 230, 170);

  fill(255);
  ellipse(290, 175, 70, 130);
  fill(0);
  ellipse(285, 180, 15, 15);
  fill(255);
  ellipse(289, 181, 5, 5);
  fill(229, 105, 191);
  arc(290, 175, 70, 130, PI, TWO_PI, CHORD);
  fill(229, 105, 191);
  bezier(325, 175, 332, 177, 325, 164, 320, 170);
  
  noFill();
  ellipse(314,315, 130, 70);
  
  noFill();
  ellipse(231,318, 155, 70);

  fill(7);
  triangle(175, 290, 350, 260, 275, 375);

  fill(127, 46, 17);
  triangle(180, 290, 348, 262, 295, 300);
  
  strokeWeight(5);
  point(190,320);
  
  strokeWeight(4);
  point(350,300);
  strokeWeight(3);
  point(360,316);
  strokeWeight(2);
  point(345,320);
  
  strokeWeight(1);
  line(165,330, 140, 340);
  strokeWeight(1);
  line(162,316, 140, 325);
  
  strokeWeight(1);
  line(365,310, 395, 315);
  strokeWeight(1);
  line(364,320, 405, 330);
