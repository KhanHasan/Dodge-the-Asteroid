PImage background; // assign all variables
PImage spaceship;
PImage asteroid;
float randomX = random(360);
float randomX2 = random(360);
float randomX3 = random(360);
float randomX4 = random(360);
float y1 = 0;
float y2 = -40;
float y3 = -80;
float y4 = -120;
int x = 150;
int y = 400;
int score = 0;
int stage = 0;
PImage Title;
PImage home;
PImage exp;
String pl = "PLAY";
String ints = "HELP";
String ba = "Back";
String struc = "Instructions";


void setup() {  
size(360,480);
frameRate(120);
background = loadImage("Background.png"); // load all images
spaceship = loadImage("spaceship.png");
asteroid = loadImage("asteroid.png");
Title = loadImage("Title.png");
home = loadImage("home.png");
exp = loadImage("exp.png");
text(score,330,40); // add scoreboard on top right
}



void draw () {
  
if(stage == 0){ // set as home screen
home.resize(500,500);
image(home,-75,-10);
image(Title,0,25);
textSize(30);
text(pl,145,160); // play button
text(ints,145,220); // instruction or hgelp button
} 

if((mousePressed == true) && stage == 0 && (mouseX > 145 && mouseX < 215 && mouseY > 100 && mouseY < 160)){//changes stage to game screen stage
    stage = 1;
   }
   
if((mousePressed == true) && stage == 0 && (mouseX > 145 && mouseX < 215 && mouseY > 180 && mouseY < 220)){//changes stage to instruction screen stage
    stage = 2;
   }   
   
if((mousePressed == true) && stage == 2 && (mouseX > 145 && mouseX < 215 && mouseY > 380 && mouseY < 420)){//changes stage to home screen stage
    stage =0;
   }   
   
if(stage == 2){ // instructions page
  image(background,0,0);
  image(exp,0,0);
  text(struc,100,70);
  text(ba,145,420);
}

if(stage == 1){  // game page
image(background,0,0);
spaceship.resize(50,50); // make spaceship smaller
image(spaceship,x,y);
asteroid.resize(50,50); // set size of asteroids
image(asteroid,randomX,y1);
image(asteroid,randomX2,y2);
image(asteroid,randomX3,y3);
image(asteroid,randomX4,y4);

textSize(30);
text(score,300,40);

y1=y1+random(2); //set random values for asteroids
y2=y2+random(4);
y3=y3+random(6);
y4=y4+random(8);

if(y1>480){
y1=-50;
score = score + 5; // add score of 5 each time asteroid gets to the bottom
randomX=random(480);
  }
  
  if(y2>480){
score = score + 5;
y2=-50;
randomX2=random(480);
  }
  
  if(y3>480){
score = score + 5;
y3=-50;
randomX3=random(480);
  }
  
  if(y4>480){
score = score + 5;
y4=-50;
randomX4=random(480);
  }
  
  
if(keyCode==UP){ // keys for game
     y =y-2;
     }
     if(keyCode==DOWN){
     y =y+2;
     }
     if(keyCode==RIGHT){
     x =x+2;
     }
     if(keyCode==LEFT){
     x =x-2;
     }
     
     if(y <= 30){
     y = 30;
     }
     if(y >= 450){
     y = 450;
     }
     if(x > 330){
     x= 330;
     }
     if(x < 30){
     x = 30;
     }
  
  
if(randomX<x && randomX+50>x && y1<y && y1+50>y){ // instructions if asteroid hits spaceship
  noLoop();
  background(0);
  text("GAME OVER",100,240);
  text("Score: " + score,120,290);
  }
  if(randomX2<x && randomX2+50>x && y2<y && y2+50>y){
  noLoop();
  background(0);
  text("GAME OVER",100,240);
    text("Score: " + score,120,290);
  }
  if(randomX3<x && randomX3+50>x && y3<y && y3+50>y){
  noLoop();
    background(0);
  text("GAME OVER",100,240);
    text("Score: " + score,120,290);
  }
  if(randomX4<x && randomX4+50>x && y4<y && y4+50>y){
  noLoop();
    background(0);
  text("GAME OVER",100,240);
    text("Score: " + score,120,290);
  }
}

}