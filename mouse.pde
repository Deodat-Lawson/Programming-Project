void mouseReleased() {
  if (mode == INTROSCREEN) {
    mouseClicksIntro();
  } else if (mode == PAUSESCREEN) {
    mouseClicksPause();
    if ( dist(mouseX, mouseY, width-50, 50) < 25) {
      mode = GAMESCREEN;
      lives+=5;
    }
  } else if (mode == GAMESCREEN) {
    mouseClicksGame();
    if ( dist(mouseX, mouseY, width-50, 50) < 25) {
      mode = PAUSESCREEN;
    }
  } else if (mode == GAMEOVERSCREEN) {
    mouseClicksGameOver();
  } 
  else if (mode == OPTIONSCREEN) {
    mouseClicksOption();
  }
  else {
    print("Mouse Error: Mouse is " + mode +"\n");
  }
}
