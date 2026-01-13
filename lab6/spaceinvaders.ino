#include <Adafruit_GFX.h>
#include <Adafruit_ILI9341.h>
#include <Fonts/FreeSansBold18pt7b.h>
#include <math.h>
enum{
  TFT_CS = 8,
  TFT_RST = 6,
  TFT_DC = 5,
  TFT_MOSI = 3,
  TFT_CLK = 2,
  TFT_MISO = 0
};

#define TFT_BACKLIGHT 10

Adafruit_ILI9341* display = nullptr;
uint16_t shipPosition = 0;
uint64_t aliens = 0xFFFFFFFFFFFFFFFF;
uint64_t alienx = 0;
uint64_t alieny = 0;
uint64_t direction = 0;
uint64_t shotx = 0;
uint64_t shoty = 0;

void setup() {
  //inicjalizujemy komunikację przez port szeregowy ttyACMx
  Serial.begin(115200);
  //dzięki temu zmniejszymy szansę "zgubienia" pierwszych komunikatów
  delay(1000);
  //konfigurujemy jako wyjście pin sterujący włączaniem podświetlenia wyświetlacza
  pinMode(TFT_BACKLIGHT, OUTPUT);
  //włączamy podświetlenie
  digitalWrite(TFT_BACKLIGHT, HIGH);
  //Komunikat "żyję"
  Serial.printf("ILI9341 Display Test\n");
  //wreszcie inicjalizacja obiektu reprezentującego wyświetlacz
  // display = new Adafruit_ILI9341(TFT_CS, TFT_DC, TFT_MOSI, TFT_CLK, TFT_RST, TFT_MISO);

  //konfiguracja SPI wspomaganego sprzętowo - przed inicjalizacją wyświelacza
  SPI.setRX(TFT_MISO);
  SPI.setTX(TFT_MOSI);
  SPI.setSCK(TFT_CLK);
  SPI.begin();
  //inicjalizacja obiektu reprezentującego wyświetlacz ze sprzętowym SPI
  display = new Adafruit_ILI9341(&SPI, TFT_DC, TFT_CS, TFT_RST);

  //...oraz właściwa inicjalizacja sterownika wyświetlacza
  display->begin();
  //próba odczytu danych z wyświetlacza:
  uint8_t rd = display->readcommand8(ILI9341_RDMODE);
  Serial.printf("Response to RDMODE: 0x%02X",rd);
  //przygotowanie i wypisanie tekstu
  display->fillScreen(ILI9341_BLACK); //czyszczenie całego ekranu (na czarno;))
  display->setRotation(3); //orientacja/obrót obrazu pasująca do jego fizycznego ułożenia
  // display->setFont(NULL); //czcionka wbudowana (na razie)
  // display->setTextSize(3); //wybór rozmiaru tekstu

  display->setFont(&FreeSansBold18pt7b);

  display->setTextColor(ILI9341_RED); //kolor tekstu
  display->setCursor(10, 30); //ustawienie kursora (w pikselach)
}

void loop() {
  display->fillScreen(ILI9341_BLACK); 
  if (Serial.available()) {

    char c = Serial.read();
    if (c == 'd' && shipPosition < display->width() - 30) shipPosition += 10;
    if (c == 'a' && shipPosition >= 10) shipPosition -= 10;
    if (c == 's' && shotx == 0 && shoty == 0) {shotx = shipPosition + 15; shoty = display->height() - 10;}
  }

  if (alienx == 64) {
    direction = 1;
    alieny += 8;
  }

  if (alienx == 0) {
    direction = 0;
    alieny += 8;
  }

  if (direction == 0) {
    alienx += 4;
  } else {
    alienx -= 4;
  }

  for (uint8_t i = 0; i < 16; i++) {
    for (uint8_t j = 0; j < 4; j++) {
      if (aliens & (1 << (j * 16 + i))) {
        display->fillRect(i * 16 + alienx, 60 + 16 * j + alieny, 14, 10, ILI9341_WHITE);
        if (shotx >= i * 16 + alienx && shotx < i * 16 + alienx + 14 && shoty >= 60 + 16 * j + alieny && shoty < 60 + 16 * j + alieny + 10) {
          aliens ^= (1 << (j * 16 + i));
          shotx = 0;
          shoty = 0;
        }
      }
    }
  }

  if (!(shotx == 0 && shoty == 0)) {
      display->fillRect(shotx, shoty, 2, 2, ILI9341_WHITE);
      shoty -= 10;
  }

  if (shoty < 10) {
    shotx = 0;
    shoty = 0;
  }


  display->fillRect(shipPosition, display->height() - 10, 30, 10, ILI9341_WHITE);
  delay(100);
}
