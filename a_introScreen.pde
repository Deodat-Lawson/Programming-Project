void introScreen() {
  background(255);
  image(StartingScreen, 0, 0, width, height);
  //intro button
  fill(0);
  stroke(255);
  strokeWeight(2);

  rect(width/2, 2*height/3, 200, 100);
  fill(255);
  textSize(25);
  text("Start Game", width/2, 2*height/3);
  
  fill(255);
  textSize(60);
  text("Clicker Game", width/2, height/3);
  
  optionMenu();
}
void optionMenu() {
  image(Option, 0, 0);
}

void mouseClicksIntro() {
  if (mouseX > width/2 -100 && mouseX < width/2 +100 && mouseY > 2*height/3 - 50 && mouseY < 2*height/3 + 50) {
    mode = GAMESCREEN;
  }
  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
    mode = OPTIONSCREEN;
  }
}
