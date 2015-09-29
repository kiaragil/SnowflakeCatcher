
Snowflake [] snow;
void setup(){
  size (600,600);
  background(0);
  snow = new Snowflake [555];
   for(int i = 0; i < snow.length; i++) {
    snow[i] = new Snowflake();
  } //end loop

} //end steup

void draw(){

  for (int i= 0; i<snow.length; i++){
    snow[i].show();
    snow[i].erase();
    snow[i].move();
    snow[i].wrap();
  } //end loop

} //end draw

void mouseDragged(){
  noStroke();
  fill(255,51,102);
  ellipse(mouseX, mouseY, 10,10);
}

class Snowflake{
   int x,y,size;
   boolean isMoving, startTop;
  Snowflake(){
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    size = 4;
    isMoving = true;
  } //end constructor

  void show(){
    noStroke();
    fill(255);
    ellipse(x, y, size, size);
  } //end show

  void lookDown(){

  } //end lookDown

  void erase(){
    fill(0);
    ellipse(x, y, 3, 3);
  } //end erase

  void move(){
    if (isMoving == true){
      y = y+1;
    }//end loop

  } //end move

  void wrap(){
    if (y >= 599){
      y = 0;
    } // end loop

  } //end wrap

} //end class


