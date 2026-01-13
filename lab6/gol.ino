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

const uint8_t cellSize = 4;
uint16_t scrW = 0, scrH = 0;
uint16_t cols = 0, rows = 0;
uint8_t *grid = nullptr;
uint8_t *nextGrid = nullptr;
bool paused = false;
unsigned long stepInterval = 150;
unsigned long lastStep = 0;

inline uint8_t idx(uint16_t c, uint16_t r){ return 0; }

void initGridRandom() {
  for (uint32_t i = 0; i < cols * rows; ++i) grid[i] = (random(100) < 35) ? 1 : 0;
}

void initGridClear() {
  memset(grid, 0, cols * rows);
}

uint8_t getCell(uint16_t c, uint16_t r) {
  if (c >= cols) c -= cols;
  if (c < 0) c += cols;
  if (r >= rows) r -= rows;
  if (r < 0) r += rows;
  return grid[r * cols + c];
}

void setCell(uint16_t c, uint16_t r, uint8_t v) {
  if (c >= cols) c -= cols;
  if (c < 0) c += cols;
  if (r >= rows) r -= rows;
  if (r < 0) r += rows;
  grid[r * cols + c] = v;
}

uint8_t neighborCount(uint16_t c, uint16_t r) {
  int count = 0;
  for (int dy = -1; dy <= 1; ++dy) {
    int ny = (int)r + dy;
    if (ny < 0) ny = rows - 1;
    else if (ny >= (int)rows) ny = 0;
    for (int dx = -1; dx <= 1; ++dx) {
      int nx = (int)c + dx;
      if (nx < 0) nx = cols - 1;
      else if (nx >= (int)cols) nx = 0;
      if (dx == 0 && dy == 0) continue;
      count += grid[ny * cols + nx];
    }
  }
  return (uint8_t)count;
}

void stepGeneration() {
  for (uint16_t r = 0; r < rows; ++r) {
    for (uint16_t c = 0; c < cols; ++c) {
      uint8_t alive = getCell(c, r);
      uint8_t n = neighborCount(c, r);
      uint8_t next = 0;
      if (alive) {
        next = (n == 2 || n == 3) ? 1 : 0;
      } else {
        next = (n == 3) ? 1 : 0;
      }
      nextGrid[r * cols + c] = next;
    }
  }
  memcpy(grid, nextGrid, cols * rows);
}

void drawGrid() {
  for (uint16_t r = 0; r < rows; ++r) {
    for (uint16_t c = 0; c < cols; ++c) {
      uint8_t alive = grid[r * cols + c];
      uint16_t color = alive ? ILI9341_WHITE : ILI9341_BLACK;
      display->fillRect(c * cellSize, r * cellSize, cellSize, cellSize, color);
    }
  }
}

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
  Serial.printf("Response to RDMODE: 0x%02X\n",rd);
  //przygotowanie i wypisanie tekstu
  display->fillScreen(ILI9341_BLACK); //czyszczenie całego ekranu (na czarno;))
  display->setRotation(3); //orientacja/obrót obrazu pasująca do jego fizycznego ułożenia
  display->setFont(NULL); //czcionka wbudowana (na razie)
  display->setTextSize(3); //wybór rozmiaru tekstu
  display->setTextColor(ILI9341_RED); //kolor tekstu
  display->setCursor(10, 30); //ustawienie kursora (w pikselach)
  display->printf("ILI9341 Test\n"); //wypisanie komunikatu na wyświetlaczu

  scrW = display->width();
  scrH = display->height();
  cols = scrW / cellSize;
  rows = scrH / cellSize;
  grid = (uint8_t*)malloc(cols * rows);
  nextGrid = (uint8_t*)malloc(cols * rows);
  if (!grid || !nextGrid) {
    Serial.println("Failed to allocate grid memory");
    while (1) delay(1000);
  }
  randomSeed(micros());
  initGridRandom();
  display->fillScreen(ILI9341_BLACK);
  drawGrid();
  lastStep = millis();
  Serial.printf("GOL: %ux%u cells, interval %lums\n", cols, rows, stepInterval);
}

void loop() {
  if (Serial.available()) {
    char c = Serial.read();
    if (c == 'p') paused = !paused;
    else if (c == 'r') { initGridRandom(); drawGrid(); }
    else if (c == 'c') { initGridClear(); drawGrid(); }
    else if (c == '+') { if (stepInterval > 10) stepInterval -= 10; }
    else if (c == '-') { stepInterval += 10; }
  }

  if (!paused && (millis() - lastStep >= stepInterval)) {
    lastStep = millis();
    stepGeneration();
    drawGrid();
  }
}