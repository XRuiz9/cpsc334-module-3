import hypermedia.net.*;
import ddf.minim.*;
import ddf.minim.ugens.*;

//Setting up UDP
int PORT = 57222;
String IP = "192.168.1.2";
UDP udp;
int sensorValue = 0;

//Set up Audio
Minim minim;
AudioOutput out;
Sampler[] affs = new Sampler[12];
int counter = 0;

void setup() {
  udp = new UDP(this, PORT, IP);
  udp.listen(true);
  String filename;

  size(500, 500);
  colorMode(HSB);
  
  //Load Sounds
  minim = new Minim(this);
  out = minim.getLineOut();
  for (int i = 0; i < 12; i++) {
    filename = "aff" + str(i + 1) + ".wav";
    affs[i] = new Sampler(filename, 4, minim);
    affs[i].patch(out);
  }
}

void draw() {

  if (sensorValue >= 3000) {
    affs[counter].trigger();
    counter++;
    
    delay(4000);
    
    if (counter == 12) {
      counter = 0;
    }
  }

}

void receive(byte[] data, String PORT, int IP) {
   String value = new String(data);
   sensorValue = int(value);
   println(int(value));
}
