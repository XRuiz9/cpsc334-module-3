# Squeeze It Out

Squeeze It Out is piece that uses a wireless arm enclosure with a force-sensing resistor to detect when you squeeze the hand and plays positive affirmations upon squeezing. I created this piece to replicate a routine phenomenon from my childhood where me and my friends would take our fear, anger, or pain and channel it into squeezing the other's hand.

![Squeeze It Out Enclosure](https://github.com/XRuiz9/cpsc334-module-3/blob/master/closeup.JPG)

## Install It Yourself!

In order to replicate this device you'll need the following:

- A device with Processing IDE and Arduino IDE installed on it
- An ESP32 Development Board and USB to Micro-USB Cable
- A DIY force resisting sensor
- A lipo battery
- A bread board
- A number of wires
- A bluetooth speaker or bluetooth headphones (Optional)
- Cardboard, hot glue, fabric, and pipe cleaners for the arm enclosure (Optional)

First what you'll want to do is clone this git repository. Then, with your ESP32 plugged into your laptop via Micro-USB, you'll want to open the ESP_UDP.ino and upload it to your ESP32. With this code you will be able to create a wifi network that allows the ESP32 to send data wirelessly to your computer.

Then you'll want to wire your DIY sensor to the breadboard and ESP32. I used this tutorial to create my DIY sensor: https://www.instructables.com/id/DIY-Force-Sensitive-Resistor-FSR/

![Wiring](https://github.com/XRuiz9/cpsc334-module-3/blob/master/wiring.JPG)

![Enclosure Stripped](https://github.com/XRuiz9/cpsc334-module-3/blob/master/stripped.JPG)

Here is a picture of the wiring

Then once you've got it wired, power your ESP32 with the battery and it should create a wifi network named "XR_Wifi" (unless you changed the name of the network in the script) and you will want to connect your laptop to this wifi network. Once this is done, you can open and run the squeeze.pde file and it should work. For my project, I had my laptop connected to a bluetooth speaker so I could change the origin of the sound, but you could also use bluetooth headphones for a more immersive experience.

