//PImage pictureOfRecord;  //as member variable
//pictureOfRecord= loadImage("record.jpg");  //in setup method  
//image(pictureOfRecord, xPosition, yPosition);//in draw method

PImage pictureOfRecord;
int b=24;

void setup(){
  size(500,500);
pictureOfRecord= loadImage("record.jpeg");
pictureOfRecord.resize(width,height);
}
void draw(){
rotateImage(pictureOfRecord,2);
  image(pictureOfRecord, 0, 0);
  b++;
}
void 
rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);

}
