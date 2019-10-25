Bacteria [] blob;
 void setup()   
 {     
   
   size(1000,1000);
   blob = new Bacteria [250];
   for (int i = 0; i < blob.length; i++) {
     blob[i] = new Bacteria();
   }
   
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
    background(0);
     
   
   for (int u = 0; u < blob.length; u++) {
      blob[u].show();
      blob[u].move();
      blob[u].countSpeed(); 
      blob[u].bacXSpeed*= 0.9;
      blob[u].bacYSpeed*= 0.9;
   }
   
   //move and show the bacteria   
 }
 void mousePressed(){
   for (int u = 0; u < blob.length; u++) {
     blob[u].bacX = 500;
     blob[u].bacY = 500;
     blob[u].bacXSpeed = 0;
     blob[u].bacYSpeed = 0;
   }
 }
 class Bacteria    
 {     
    
   float bacX = 500;
   float bacY = 500;
   float bacXSpeed = 0;
   float bacYSpeed = 0;
   float direction;
   Bacteria() {
     
     
   }
   void countSpeed(){
    
    direction = (int) (Math.random()*4+1);
    if (950 < bacX && bacX < 1000) {
     direction = 2;
    } else if (0 < bacX && bacX < 50) {
      direction = 1;
    } else if(950<bacY && bacY <1000) {
      direction = 4;
    } else if (0 < bacY && bacY < 50) {
      direction = 3;
    }
    if (direction==1) {
      bacXSpeed+= 2;
    } else if (direction==2) {
      bacXSpeed-= 2;
    } else if (direction==3) {
      bacYSpeed+= 2;
    } else if (direction==4) {
      bacYSpeed-= 2;
    }
   }
   void show() {
     fill(255,0,0);
     ellipse (bacX,bacY,25,25);
   }
   void move() {
    bacX+=bacXSpeed;
    bacY+=bacYSpeed;
     

   }
 } 