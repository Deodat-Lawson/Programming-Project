void gameOverScreen(){
highScore = Math.max(highScore,score);
image(EndingScreen,0,0,width,height);
fill(255,0,0);
textSize(80);
text("DEFEAT",width/2,height/5);
textSize(40);
text("HighScore:  " + highScore,width/2,50);

resetButton();
}

void resetButton(){
  fill(0);
  stroke(100);
  strokeWeight(10);
  
  rect(width/2, 4*height/5,200,100);
  fill(255);
  textSize(25);
  text("Reset Game",width/2, 4*height/5);
  
}
void mouseClicksGameOver(){
  
  if(mouseX > width/2 -100 && mouseX < width/2 +100 && mouseY > 4*height/5 - 50 && mouseY < 4*height/5 + 50){
    mode = INTROSCREEN;
    object1XPos = width/2;
    object1YPos = height/2;
    score = 0;
    lives = 100;
    time = 0;
    Vx = random(1,3);
    Vy = random(1,3);
  }
  
}
