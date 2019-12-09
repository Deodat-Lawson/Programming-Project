void optionScreen() {
  background(200);
  fill(0);
  textSize(25);
  text("Ball Color", width/2, height/8);
  fill(red);
  ellipse(width/2, height/4, 50, 50);
  fill(blue);
  ellipse(width/2 - 100, height/4, 50, 50);
  fill(green);
  ellipse(width/2 + 100, height/4, 50, 50);
  fill(yellow);
  ellipse(width/2, height/4 + 100, 50, 50);
  fill(orange);
  ellipse(width/2 - 100, height/4 + 100, 50, 50);
  fill(purple);
  ellipse(width/2 + 100, height/4 + 100, 50, 50);
  
  fill(100);
  rect(width/2, 2*height/3, 200, 100);
  fill(255);
  textSize(25);
  text("Back", width/2, 2*height/3);
  
  fill(255,0,0);
  rect(width/2-200,5*height/6,100,50);
  textSize(10);
  fill(0);
  text("Classic Mode", width/2-200,5*height/6);
  fill(0,255,0);
  rect(width/2+200,5*height/6,100,50);
  fill(0);
  text("Sudden Death", width/2+200,5*height/6);
  fill(0,0,255);
  rect(width/2,5*height/6,100,50);
  fill(0);
  text("Blood Drain Mode", width/2,5*height/6);
  tactileness();
  
  
  fill(0);
  textSize(25);
  text("Ball Size",width - 100, height/8);
  slider();
  
}


void slider() {
  fill(200);
  line(width - 100, height /7 + 50, width - 100, 5*height/7);
  ellipse(width - 100, sliderY, 50, 50);
  float distVal = dist(width - 100, sliderY, mouseX, mouseY);
  
  
  if (mousePressed && distVal <= 50) {
    sliderY = mouseY;
    if (sliderY < height /7+50) {
      sliderY = height /7+50;
    } else if (sliderY > 5*height /7) {
      sliderY = 5*height /7;
    }
    thickness = map(sliderY, height /7 + 50, 5*height/7, 25, 100);// dependent variable = map(independent variable, small range for independent variable, big rangefor independent variable, small range for dependent variable, big rangefor dependent variable,    
  }
  if(distVal <= 50) {
    fill(50);
    ellipse(width - 100, sliderY, 50, 50);
  }
}


void tactileness(){
    if (dist(mouseX, mouseY, width/2, height/4) <=25) {
  fill(red, 0,50,100);
  ellipse(width/2, height/4, 50, 50);
  }
  if (dist(mouseX, mouseY, width/2 - 100, height/4) <=25) {
  fill(blue,0,50,100);
  ellipse(width/2 - 100, height/4, 50, 50);
  }
  if (dist(mouseX, mouseY, width/2 + 100, height/4) <=25) {
  fill(green,0,50,100);
  ellipse(width/2 + 100, height/4, 50, 50);
  }
  if (dist(mouseX, mouseY, width/2, height/4 + 100) <=25) {
  fill(yellow,0,50,100);
  ellipse(width/2, height/4 + 100, 50, 50);
  }
  if (dist(mouseX, mouseY, width/2 - 100, height/4 + 100) <=25) {
  fill(orange,0,50,100);
  ellipse(width/2 - 100, height/4 + 100, 50, 50);
  }
  if (dist(mouseX, mouseY, width/2 + 100, height/4 + 100) <=25) {
  fill(purple,0,50,100);
  ellipse(width/2 + 100, height/4 + 100, 50, 50);
  }
  if (mouseX > width/2 -100 && mouseX < width/2 +100 && mouseY > 2*height/3 - 50 && mouseY < 2*height/3 + 50) {
   fill(150);
   rect(width/2, 2*height/3, 200, 100);
   fill(255);
  textSize(25);
  text("Back", width/2, 2*height/3);
  }
  if(mouseX > width/2-250&& mouseX < width/2-150&& mouseY > 5*height/6-25 && mouseY < 5*height/6+25){
    fill(#F77070);
    rect(width/2-200,5*height/6,100,50);
    fill(0);
  text("Classic Mode", width/2-200,5*height/6);
  }
  if(mouseX > width/2-50&& mouseX < width/2+50&& mouseY > 5*height/6-25 && mouseY < 5*height/6+25){
    fill(#626BFF);
      rect(width/2,5*height/6,100,50);
  fill(0);
  text("Blood Drain Mode", width/2,5*height/6);
  }
  if(mouseX > width/2+150&& mouseX < width/2+250&& mouseY > 5*height/6-25 && mouseY < 5*height/6+25){
    fill(#62FF6B);
    rect(width/2+200,5*height/6,100,50);
  fill(0);
  text("Sudden Death", width/2+200,5*height/6);
  }
  
}
void mouseClicksOption() {
  if (dist(mouseX, mouseY, width/2, height/4) <=25) {
    ballColor = red;
  }
  if (dist(mouseX, mouseY, width/2 - 100, height/4) <=25) {
    ballColor = blue;
  }
  if (dist(mouseX, mouseY, width/2 + 100, height/4) <=25) {
    ballColor = green;
  }
  if (dist(mouseX, mouseY, width/2, height/4 + 100) <=25) {
    ballColor = yellow;
  }
  if (dist(mouseX, mouseY, width/2 - 100, height/4 + 100) <=25) {
    ballColor = orange;
  }
  if (dist(mouseX, mouseY, width/2 + 100, height/4 + 100) <=25) {
    ballColor = purple;
  }
  if (mouseX > width/2 -100 && mouseX < width/2 +100 && mouseY > 2*height/3 - 50 && mouseY < 2*height/3 + 50) {
    mode = INTROSCREEN;
  }
  if(mouseX > width/2-250&& mouseX < width/2-150&& mouseY > 5*height/6-25 && mouseY < 5*height/6+25){
    gameMode = 0;
    lives = 20;
    Vx = random(5,10);
    Vy = random(5,10);
  }
  if(mouseX > width/2-50&& mouseX < width/2+50&& mouseY > 5*height/6-25 && mouseY < 5*height/6+25){
    gameMode = 1;
    lives = 100;
    Vx = random(1,3);
    Vy = random(1,3);
  }
  if(mouseX > width/2+150&& mouseX < width/2+250&& mouseY > 5*height/6-25 && mouseY < 5*height/6+25){
    gameMode = 2;
    lives = 1;
  }
}
