#include <WebServer.h>
#include <WiFi.h>
#include <WiFiUdp.h>

/* Put your SSID & Password */
const char* ssid = "XR_Wifi";  // Enter SSID here
const char* password = "12345678";  // Enter Password here

int fsrPin = 34;

/* Put IP Address details */
IPAddress local_ip(192, 168, 1, 1);
IPAddress gateway(192, 168, 1, 1);
IPAddress subnet(255, 255, 255, 0);

WebServer server(80);

WiFiUDP udp;

void setup() {
    Serial.begin(9600);

    WiFi.softAP(ssid, password);
    WiFi.softAPConfig(local_ip, gateway, subnet);

    server.begin();

    pinMode(fsrPin, INPUT);
}

void loop() {
    int squish = analogRead(fsrPin);
    Serial.println(squish);
  
    udp.beginPacket("192.168.1.2", 57222);
    udp.print(String(squish));
    udp.endPacket();

    // Wait for 1 second
    delay(100);
}
