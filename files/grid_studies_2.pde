<<<<<<< HEAD
import org.monome.*;
=======
import org.monome.Monome;
>>>>>>> c840ca0dbb7ba72ab9d75a0ce323dad0143004fd
import oscP5.*;

Monome m;
  
public void setup() {
  m = new Monome(this);
  frameRate(10);
}
  
public void draw() {
  int[][] led = new int[8][16];
  led[0][0] = 15;
  led[2][0] = 5;
  led[0][2] = 5;
  m.refresh(led);
}

public void key(int x, int y, int s) {
  System.out.println("key received: " + x + ", " + y + ", " + s);
}

