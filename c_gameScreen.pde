void gameScreen() {

  textSize(25);
  background(100, 200, 100);
  fill(100);
  //target
  target();
  object1XPos+= Vx;
  object1YPos+= Vy;

  fill(0);
  text("Score: " + score, 80, 40);
  text("Lives: " + lives, 80, 100);
  text("High Score: " + Math.max(highScore, score), width - 120, 100);
  
  if (object1XPos <= thickness/2 || object1XPos >= width-thickness/2) {
    Vx = -1*Vx;
  }
  if (object1YPos <= thickness/2 || object1YPos >= height-thickness/2) {
    Vy = -1*Vy;
  }
  
  pauseButton();
  if(gameMode == 0){
  }
  else if (gameMode == 1){
    BloodDrain();
  }
  else if (gameMode == 2){
    
  }



  if ( lives <= 0) {
    mode = GAMEOVERSCREEN;
  }
}


void pauseButton() {
  fill(100);
  strokeWeight(5);
  stroke(0);
  ellipse(width-50, 50, 50, 50);
  fill(0);
  noStroke();
  
  if(mode == GAMESCREEN){
  rect(width-55, 50, 5, 20);
  rect(width-45, 50, 5, 20);
  }
  if(mode == PAUSESCREEN){
  triangle(width-60,35,width-60,65, width-40, 50);
  }
  
}

void mouseClicksGame() {
  
  if(gameMode == 1){
  if ( dist(mouseX, mouseY, object1XPos, object1YPos) <= thickness/2+2) {
    score++;
    lives+=3;
  } else {
    lives-= 5;
  }
  }
  else{
    if (dist(mouseX, mouseY, object1XPos, object1YPos) > thickness/2+2) {
    lives-= 5;
  }
  else{
    score++;
  }
}
}

void BloodDrain(){
    time++;
  if (time >1000) {
    if (time%10 == 0) {
      lives--;
    }
    textSize(50);
    fill(255, 0, 0);
    text("Blood Drain!!!", width/2, 100);
    textSize(25);
  }

  if (time%10 == 0) {
    Vx = Vx *1.01;
    Vy = Vy *1.01;
  }
    
}
