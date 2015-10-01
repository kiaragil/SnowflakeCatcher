
Snowflake [] snow;
void setup(){
  background(0);
  size (300,300);
  snow = new Snowflake [300];
   for(int i = 0; i < snow.length; i++) {
    snow[i] = new Snowflake();
  } //end loop

} //end steup

void draw(){

  for (int i= 0; i<snow.length; i++){
    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
    snow[i].show();

  } //end loop

} //end draw

void mouseDragged(){
  stroke(255,51,102);
  strokeWeight(3);
  line(pmouseX,pmouseY,mouseX,mouseY);
  strokeWeight(1);
  stroke(0);
}

class Snowflake{
   int x,y,size;
   boolean isMoving;
  Snowflake(){
    x = (int)(Math.random()*301);
    y = (int)(Math.random()*301);
    size = 5;
    isMoving = true;
  } //end constructor

  void show(){
    noStroke();
    fill(255);
    ellipse(x, y, size, size);
  } //end show

  void lookDown(){
    if (y > 0 && y < 290) {
      if(get(x,y+4) != color(0)){
        isMoving = false;
      }
      else {
        isMoving = true;
      }
    }
  } //end lookDown

  void erase(){
    fill(0);
    ellipse(x, y, size+3, size+3);
  } //end erase

  void move(){
    if (isMoving == true){
      y += 3;
    }//end loop

  } //end move

  void wrap(){
    if (y >= 299){
      y = 0;
      x = (int)(Math.random()*299);
    } // end loop

  } //end wrap

} //end class


