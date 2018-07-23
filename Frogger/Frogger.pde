int x= 350;
int y=350;
int x1=50;
int y2= 50;
Cars c= new Cars(250,250);
Cars c2= new Cars(200,300);
Cars c3= new Cars(150,200);
Cars c4= new Cars(50,100);
Cars c5= new Cars(25,50);
void setup(){
  size(400,400);
  c2.x=150;
}

void draw(){
  background(#89D5F2);
  fill(#1B4305);
  checkFrogBounds();

  ellipse(x,y,30,30);

  c.update();

  c2.update();

  c3.update();

  c4.update();
   
  c5.update();
}
  void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
     y-=30;
                  //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
           y+=30;
                  //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
              x+=30;
                  //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              x-=30;
                  //Frog X position goes left
            }
      }
}

void  checkFrogBounds(){
  if (x<0){
    x=0;
  }

if(x>400){
  x=400;
}

  if(y<0){
    y=0;
  }
if(y>400){
  y=400;
}
}
class Cars{
  int x=60;
  int y=60;
  int s= 20;
  int width=30;
  int Xspeed=10;
  
  Cars(int x, int y){
    this.x=x;
    this.y=y;
    Xspeed=(int)random(1,10);
    int random= (int)random(2);
    if(random==0){
      Xspeed*=-1;
    }
  }
  void draw(){
    fill(#A73B31);
    rect(x,y,s,width);
 
  }
  
  void update(){
    x+=Xspeed;
    draw();
    if(x<0){
      x=200;
    }
    if(x>width){
      x=200;
    }
    
    
    
  }
  
}
