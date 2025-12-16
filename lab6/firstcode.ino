#include <Adafruit_GFX.h>
#include <Adafruit_ILI9341.h>
#define TFT_BACKLIGHT 10

enum{
TFT_CS = 8,
TFT_RST = 6,
TFT_DC = 5,
TFT_MOSI = 3,
TFT_CLK = 2,
TFT_MISO = 0
};


Adafruit_ILI9341* display = nullptr;

void setup() {
  // put your setup code here, to run once:
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
  //konfiguracja SPI wspomaganego sprzętowo - przed inicjalizacją wyświelacza
  //SPI.setRX(TFT_MISO);
  //SPI.setTX(TFT_MOSI);
  //SPI.setSCK(TFT_CLK);
  //SPI.begin();
  //inicjalizacja obiektu reprezentującego wyświetlacz ze sprzętowym SPI
  //display = new Adafruit_ILI9341(&SPI, TFT_DC, TFT_CS, TFT_RST);
  display = new Adafruit_ILI9341(TFT_CS, TFT_DC, TFT_MOSI, TFT_CLK, TFT_RST, TFT_MISO);
  
  //...oraz właściwa inicjalizacja sterownika wyświetlacza
  display->begin();
  //próba odczytu danych z wyświetlacza:
  uint8_t rd = display->readcommand8(ILI9341_RDMODE);
  Serial.printf("Response to RDMODE: 0x%02X",rd);
  //przygotowanie i wypisanie tekstu
  display->fillScreen(ILI9341_BLACK); //czyszczenie całego ekranu (na czarno;))
  display->setRotation(3); //orientacja/obrót obrazu pasująca do jego fizycznego ułożenia
  display->setFont(NULL); //czcionka wbudowana (na razie)
  display->setTextSize(3); //wybór rozmiaru tekstu
  display->setTextColor(ILI9341_RED); //kolor tekstu
  display->setCursor(10, 30); //ustawienie kursora (w pikselach)
  display->printf("ILI9341 Test\n"); //wypisanie komunikatu na wyświetlaczu
}

void loop() {
  // put your main code here, to run repeatedly:

}
