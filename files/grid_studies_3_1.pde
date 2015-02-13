<<<<<<< HEAD
import org.monome.*;
=======
import org.monome.Monome;
>>>>>>> c840ca0dbb7ba72ab9d75a0ce323dad0143004fd
import oscP5.*;

Monome m;
boolean dirty;

int[][] step;
  
public void setup() {
  m = new Monome(this);
  
  dirty = true;
  
  step = new int[6][16];
}
  
public void draw() {
  if(dirty) {
    int[][] led = new int[8][16];
    
    // display steps
    for(int x=0;x<16;x++)
      for(int y=0;y<6;y++)
        led[y][x] = step[y][x] * 15;
    
    // update grid
    m.refresh(led);
    dirty = false;
  }
}

public void key(int x, int y, int s) {
  // toggle steps
  if(s == 1 && y < 6) {
    step[y][x] ^= 1;
    
    dirty = true; 
  }
}

