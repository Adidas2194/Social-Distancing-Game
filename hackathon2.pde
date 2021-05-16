int circX= 500;
int circY=550;
int circPos=circY+circX;
int bodyX=mouseX-20;
int bodyY= mouseY-20;
int z=500;
int firstRandom = 3;
int secondRandom = 5;
int objX= 78;
int objY=40;
int sizeX=40;
int sizeW=40;
int sizeR=120;
int speedInc=5;
int speedInc2=5;
PFont font;
int score=0;
int objColor=objX-objY;
int objX2=78;
int objY2=40;
boolean endL=false;
//boolean var = lose;
//lose = false;
void setup() {
size(1000, 1000);
}







void keyPressed() {

  

    if (key=='a'){
    circX=circX-20;
    
    }
   if (key=='d'){
     circX=circX+20;
   }
    /*if(key=='y' && lose==true) {
  fill(50,50,100);
rect(0,0,1000,1000);
  int circX= 500;
int circY=550;
int circPos=circY+circX;
int bodyX=mouseX-20;
int bodyY= mouseY-20;
int z=500;
int firstRandom = 3;
int secondRandom = 5;
int objX= 78;
int objY=40;
int sizeX=40;
int sizeW=40;
int sizeR=120;
int speedInc=5;
int speedInc2=5;
PFont font;
int score=0;
int objColor=objX-objY;
int objX2=78;
int objY2=40;
lost=false;
  loop();
}
}*/
}
 void draw() {
   
   if (circX>=960) {
       circX=circX-20;
   }
   if (circX<=40) {
       circX=circX+20;
   }

   if (endL=true){
     fill(int(random(0,255)), int(random(0,255)), int(random(0,255)));
     ellipse(int(random(width)), int(random(height)), 20, 20);
   }
    

    if (objY>=960){
        objX=int(random(40, 960));
        objX2=int(random(40, 960));
        objY=40;
        objY2=40;
        sizeR=int(random(100,200));
        score=score+1;
        speedInc=speedInc+int(random(0.5,1.7));
        speedInc2=speedInc2+int(random(0.5,1.7));
        
    }
    
 
    


    if (circX>=0){
      objY=objY+speedInc;
      objY2=objY2+speedInc2;
   }
 
    
   
  background(50,50,100);


 fill(209, 147, 100);
  ellipse(circX, 920, 40, 40);
  
  textSize(45);
  fill(255,0,90);
  text(score,480,60);

  fill(255, 0, 0);
  rect(circX-20, 920, 40, 40);

   noFill();
  ellipse(circX, 935, 120, 120);
 fill(209, 147, 100);
  ellipse(objX, objY, 40, 40);
  
  fill(objX, objY, objY-objX);
  rect(objX-20, objY, 40, 40);

  noFill();
  ellipse(objX, objY+15, sizeR, sizeR);
 //number 2
  fill(209, 147, 100);
  ellipse(objX2, objY2, 40, 40);
  
  fill(90, objY, objY-objX);
  rect(objX2-20, objY2, 40, 40);

  noFill();
  ellipse(objX2, objY2+15, sizeR, sizeR);
  if  (dist(objX, objY, circX,935) < sizeR+13){
      //lose == true;
      noLoop();
      fill(0, 0, 0);
      rect(0, 0, 1000, 1000);
      boolean endL=true;
      textSize(45);
      fill(255);
      text("GAME OVER! YOU GOT COVID! \nPress Y to play again.", 180,500);
  }
    if  (dist(objX2, objY2, circX,935) < sizeR+13){
     // /lose==true;
      noLoop();
      fill(0, 0, 0);
      rect(0, 0, 1000, 1000);

  boolean endL=true;

      textSize(45);
      fill(255);
      text("GAME OVER! YOU GOT COVID! \nPress Y to play again.", 180,500);
  }
  if (score>9) {
     noLoop();
     fill(0, 0, 0);
     rect(0, 0, 1000, 1000);
     textSize(45);
     fill(255);
     text("CONGRATULATIONS! \nYOU MAINTAINED YOUR DISTANCE!\nFor more information about \nCOVID, go to cdc.gov/coronavirus",100,400);
   }
   

 }