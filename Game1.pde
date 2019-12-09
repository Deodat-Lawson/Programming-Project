int mode = 0;
final int OPTIONSCREEN = -1;
final int INTROSCREEN = 1;
final int PAUSESCREEN = 2;
final int GAMESCREEN = 3;
final int GAMEOVERSCREEN = 4;

color ballColor = color(255,0,0);
int highScore = 0;

// Target Variables
float object1XPos, object1YPos;
int score, lives;

float Vx = random(5, 10);
float Vy = random(5, 10);

PImage StartingScreen = new PImage();
PImage EndingScreen = new PImage();
PImage PauseScreen = new PImage();
PImage Option = new PImage();
int time=0;

color blue = color(0,118,232);
color indigo = #1FF9FF;
color green = #00E811;
color yellow = #FFDE1F;
color orange = #FFA61F;
color red = #FF0A0A;
color purple = #E01FFF;
color black = #000000;


float sliderY;
int gameMode = 0;
float thickness = 25;




//--------------------------------------------------------

void setup() {
  size(800, 800);
  mode = INTROSCREEN;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  StartingScreen = loadImage("background.jpg");
  EndingScreen = loadImage("Broken ball.bmp");
  PauseScreen = loadImage("CRL.jpg");
  Option = loadImage("option.png");
  //Inalize Target
  object1XPos = width/2;
  object1YPos = height/2;
  score = 0;
  lives = 20;
  sliderY = height /7 + 50;
  //------------------------
  mode = INTROSCREEN;
}


void draw() {
  if (mode == INTROSCREEN) {
    introScreen();
  } else if (mode == PAUSESCREEN) {
    pauseScreen();
  } else if (mode == GAMESCREEN) {
    gameScreen();
  } else if (mode == GAMEOVERSCREEN) {
    gameOverScreen();
  } else if (mode == OPTIONSCREEN) {
    optionScreen();
  } else {
    print("Mode Error: Mode is " + mode +"\n");
  }
}

int val() {
  return 5;
}
