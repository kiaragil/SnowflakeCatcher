
Snowflake [] snow;
void setup(){
  background(0);
  size (600,600);
  snow = new Snowflake [1000];
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
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    size = 3;
    isMoving = true;
  } //end constructor

  void show(){
    noStroke();
    fill(255);
    ellipse(x, y, size, size);
  } //end show

  void lookDown(){
    if (y > 0 && y < 590) {
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
      y += 1;
    }//end loop

  } //end move

  void wrap(){
    if (y >= 599){
      y = 0;
      x = (int)(Math.random()*601);
    } // end loop

  } //end wrap

} //end class


