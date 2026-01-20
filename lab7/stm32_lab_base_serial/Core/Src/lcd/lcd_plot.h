#ifndef __LCDPLOT_H__
#define __LCDPLOT_H__


#define LCD_PLOT_BUFFER_LEN   LCD_X_SIZE

#define LCD_PLOT_COMPONENTS_DATAONLY   0
#define LCD_PLOT_COMPONENTS_GRID   (1<<0)
#define LCD_PLOT_COMPONENTS_X_AXIS (1<<1)
#define LCD_PLOT_COMPONENTS_Y_AXIS (1<<2)

#define LCD_GRID_INVISIBLE      0 //only invert, no grid lines
#define LCD_GRID_VISIBLE      1 //draw grid lines

#define LCD_GRID_LEVEL_NONE     0
#define LCD_GRID_LEVEL_1_LINE   1
#define LCD_GRID_LEVEL_3_LINES    2
#define LCD_GRID_LEVEL_5_LINES    3


#ifndef INVALID_SAMPLE
  #define INVALID_SAMPLE    ((int16_t)0x8000)
#endif
#define LCD_PLOT_INVALID_SAMPLE   INVALID_SAMPLE

//lineThickness limit values 
#define LCD_PLOT_THK_MAX      10
#define LCD_PLOT_THK_SOLID    0

typedef struct{
  int16_t*    buffer;     //data to display
  
  //position/size/scale
  uint32_t    x;        //upper left corner x
  uint32_t    y;        //upper left corner y
  
  //display settingz
  uint8_t     components;     //bit0: solid, bit4: nodesc, data only
  uint32_t    lineColor;
  uint32_t    lineColorNeg; //optional line color for negative values
  uint8_t     lineThickness;
  uint32_t    gridColor;    //axis, zero level and description colors
  
  //x axis
  uint32_t    xLen;     //how many samples to display
  int16_t*    xDesc;      //buffer with x description values in decimal fixed point
  uint16_t    xDescCnt;   //number of descriptions in the buffer
  uint8_t     xDescDot;   //decimal point
  uint8_t     xDescDigLimit;  //digit limit
  uint8_t     xGridSubdiv;
  
  //y axis
  uint32_t    ySize;      //size of graph plot area in pixels
  int16_t     yCenter;    //y middle of the graph
  int16_t     ySpan;      //so many pixels from y center up and down
  uint16_t    yDescCnt;   //number of description on y axis
  uint8_t     yDescDot;   //decimal dot shift for y scale (1->x10, 2->x100, 3->x1000)
  uint8_t     yDescDigLimit;  //digit limit
  uint8_t     yGridSubdiv;
  uint8_t     yOnTheRight;
  uint16_t    yDescWidth;
  
}T_lcdPlot;

int lcdPlot(T_lcdPlot *pPlot);

#endif

