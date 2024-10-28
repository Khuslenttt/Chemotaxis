Mover[] eater = new Mover[10];
PImage img; 
void setup(){
  size(600,600);
  background(255);
  img = loadImage("newBurger.jpg");
  for(int i = 0; i < eater.length;i++)
  {
    eater[i] = new Mover();
  }
}
void draw(){
  background(255);
  
  image(img,mouseX,mouseY, width/16, height/16);
  //ellipse(150,150, 50, 50);
  for(int i = 0; i < eater.length;i++)
  {
    eater[i].move();
    eater[i].show();
  }

}
class Mover{
  int x, y, myColor;
Mover(){
  x = (int) (Math.random()*600);
  y = (int) (Math.random()*600);
  if(x >300){
  myColor = color(255,0,0);
  }
  if(y>300){
    myColor = color(0,100,100);
  }
  if(x < 300){
    myColor= color(255,100,0);
  }
   }
  void move(){
    if(mouseX > x)
    x = x + (int) (Math.random()*5)-1;
    else
     x = x + (int) (Math.random() *5) -3;
     if(mouseY > y)
    y = y + (int) (Math.random()*5)-1;
    else
     y = y + (int) (Math.random() *5) -3;
  }
  void show(){
  if(dist(x,y,mouseX,mouseY)<25)
    myColor = color(0,255,0);
    fill(myColor);
    ellipse(x,y,30,30);
  }
}
