void pauseScreen(){
  fill(0);
  text("Advertisment",width/2, height/3);
  image(PauseScreen,width/2-200,2*height/3-200);
  pauseButton1();
  pauseButton();
  
}
void mouseClicksPause(){
  
  if(mouseX > width/2-50 && mouseX < width/2 +50 && mouseY > height/8 - 50 && mouseY < height/8 + 50){
    mode = GAMESCREEN;
    lives+=5;
    
  }
  
}

void pauseButton1(){
  stroke(0);
  fill(150);
  strokeWeight(5);
  ellipse(width/2, height/8,100,100);
  
  fill(0);
  triangle(width/2-10,height/8+15,width/2-10,height/8-15, width/2+10, height/8);
}
