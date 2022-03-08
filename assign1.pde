PImage bgImg;
PImage groundhogImg;
PImage life1Img;
PImage life2Img;
PImage life3Img;
PImage soilImg;
PImage soldierImg;
PImage robotImg;
int speedS;
int soldierX;
int soldierY;
int a;
int robotX;
int robotY;
int b;
int laserA;
int laserB;
int speedL;

void setup() {
	size(640, 480, P2D);

// load the image of background, groundhog, life, and soil
  bgImg=loadImage("img/bg.jpg");
  groundhogImg=loadImage("img/groundhog.png");
  life1Img=loadImage("img/life.png");
  life2Img=loadImage("img/life.png");
  life3Img=loadImage("img/life.png");
  soilImg=loadImage("img/soil.png");
  soldierImg=loadImage("img/soldier.png");
  robotImg=loadImage("img/robot.png");
  
//set soldier's speed
  speedS=2;
  
//make soldier appear at a random level
  a=floor(random(2,5));
  soldierY=80*a;
  
//robot  
  robotX =floor(random(160,560));
  b=floor(random(2,5));
  robotY=80*b;
  
//laser  
  speedL=-2;
  laserA=robotX+25;
  laserB=robotX+65;
}


void draw() {
 
//set the position of the images
  image(bgImg,0,0);
  image(life1Img,10,10);
  image(life2Img,80,10);
  image(life3Img,150,10);
  
//draw a sun
  stroke(255,255,0);
  strokeWeight(5);
  ellipse(590,50,120,120);
  fill(253,184,19);
  
//draw the lawn
  stroke(124,204,25);
  strokeWeight(15);
  line(0,160,640,160);
 
//set the position of soil and groundhog
  image(soilImg,0,160);
  image(groundhogImg,280,80);

//set the position of the soldier
  image(soldierImg,soldierX,soldierY);
  soldierX+=speedS;
  soldierX = soldierX %720;
  
//laser
  stroke(#FF0000);
  strokeWeight(10);
  line(laserA,robotY+37,laserB,robotY+37);
  laserA+=speedL;
  laserB+=speedL;  
  if(laserA<robotX-160){
  laserA=robotX+25;
  laserB=robotX+65;
  }
  

//set the position of the robot 
  image(robotImg,robotX,robotY);

}
