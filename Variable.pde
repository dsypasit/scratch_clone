public class Variable extends Tree{
  color c = color(#42a5f5);
  void drawBlock(float x, float y){
    fill(c);
    width = textWidth(command);
    height = textAscent()+10;
    rect(x, y, width, height);
    fill(0);
    textSize(32);
    text(command, x, y+32);
  }

  Variable(){
    setCommand("a=");
  }

  void setCommand(String s){
    command = s;
  }

  void drawSelf(float x, float y){
    fill(c);
    circle(x, y, 50);
    fill(255);
  }

  String getCommand(){
    return command+";";
  }
}
