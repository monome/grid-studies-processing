<<<<<<< HEAD
import org.monome.*;
=======
import org.monome.Monome;
>>>>>>> c840ca0dbb7ba72ab9d75a0ce323dad0143004fd
import oscP5.*;

Monome m;
int[][] led;
boolean dirty;
  
public void setup() {
  m = new Monome(this);
  led = new int[8][16];
  dirty = true;
}
  
public void draw() {
  if(dirty) {
    m.refresh(led);
    dirty = false;
  }
}

public void key(int x, int y, int s) {
  led[y][x] = s * 15;
  dirty = true;  
}

