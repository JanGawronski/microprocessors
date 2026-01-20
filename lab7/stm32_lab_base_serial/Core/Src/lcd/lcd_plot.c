#include "main.h"
#include "cmsis_os.h"
#include "dbgu.h"
#include "term_io.h"
#include "lcd.h"
#include "lcd_plot.h"


static void generateYAxis(T_lcdPlot *pPlot);
static void generateXAxis(T_lcdPlot *pPlot);
static int computeYfromValue(T_lcdPlot *pPlot, uint32_t* y, int16_t value);
static int16_t computeValueAtY(T_lcdPlot *pPlot, float y);
static void drawPlot(T_lcdPlot *pPlot);
static void generateGrid(T_lcdPlot *pPlot);


int lcdPlot(T_lcdPlot *pPlot)
{
  //backup lcd font and transparency settingz
  uint8_t fontBackup = lcdGetFont();
  uint8_t transparentBackup = lcdGetTransparent();
  
  drawPlot(pPlot);
  
  if(pPlot->components & LCD_PLOT_COMPONENTS_X_AXIS)
    generateXAxis(pPlot);
  if(pPlot->components & LCD_PLOT_COMPONENTS_Y_AXIS)
    generateYAxis(pPlot);
  if(pPlot->components & LCD_PLOT_COMPONENTS_GRID)
    generateGrid(pPlot);
  
  //restore lcd library settings
  lcdSetTransparent(transparentBackup);
  lcdSetFont(fontBackup);
  
  return(0);
}



static void drawPlot(T_lcdPlot *pPlot)
{
  uint32_t x;
  uint32_t rel_y=0, rel_zero=0;
  int plotPos,zeroPos;
  zeroPos = computeYfromValue(pPlot,&rel_zero,0);
  x = pPlot->x;
  int16_t *pBuf = pPlot->buffer;
  static uint32_t previous_y;
  uint32_t current_y;
  int16_t value;
  for(int i=0;i<pPlot->xLen;i++)
  {
    value = *pBuf++;
    plotPos = computeYfromValue(pPlot,&rel_y,value);
    
    if(plotPos < 0)
    {
      current_y = pPlot->y+pPlot->ySize;
    }
    else if(plotPos > 0)
    {
      current_y = pPlot->y;
    }
    else
    {
      current_y = pPlot->y+rel_y;
    }
    
    if(i>0)
    {
      //dot type plot
      if(pPlot->lineThickness > 0)
      {
        if(current_y > previous_y)
        {
          for(int y=previous_y; y<current_y; y++)
          {
            if(plotPos==0)
            {
              if(value != LCD_PLOT_INVALID_SAMPLE){
                for(int i=0;i<pPlot->lineThickness;i++){
                  for(int width=x;width<(x+pPlot->lineThickness);width++)
                    lcdPixel(width,y+i,pPlot->lineColor);
                }
              }
            }
          }
        }
        else if(current_y < previous_y)
        {
          for(int y=current_y; y<previous_y; y++)
          {
            if(plotPos==0)
            {
              if(value != LCD_PLOT_INVALID_SAMPLE){
                for(int i=0;i<pPlot->lineThickness;i++){
                  for(int width=x;width<(x+pPlot->lineThickness);width++)
                    lcdPixel(width,y+i,pPlot->lineColor);
                }
              }
            }
          }
        }
        else
        {
          if(plotPos==0)
          {
            if(value != LCD_PLOT_INVALID_SAMPLE){
              for(int i=0;i<pPlot->lineThickness;i++){
                for(int width=x;width<(x+pPlot->lineThickness);width++)
                  lcdPixel(width,current_y+i,pPlot->lineColor);
              }
            }
          }
        }
      }
      else  // --- solid type graph ---
      {
        //lcdPixel(x,current_y,pPlot->lineColor);
        uint32_t yStart=0,yEnd=0;
        if(plotPos > 0)
        {
          if(zeroPos>0)
          {
            //everything above
          }
          else if(zeroPos<0)
          {
            //whole frame
            yStart = pPlot->y;
            yEnd = pPlot->y+pPlot->ySize;
          }
          else  //zeroPos==0
          {
            yStart = pPlot->y;
            yEnd = pPlot->y+rel_zero;
          }
        }
        else if(plotPos<0)
        {
          if(zeroPos>0)
          {
            yStart = pPlot->y;
            yEnd = pPlot->y+pPlot->ySize;
          }
          else if(zeroPos<0)
          {
            //everything below
          }
          else  //zeroPos==0
          {
            yStart = pPlot->y+rel_zero;
            yEnd = pPlot->y+pPlot->ySize;
          }
        }
        else  //plotPos==0
        {
          if(zeroPos>0)
          {
            yStart = pPlot->y;
            yEnd = pPlot->y + rel_y;
          }
          else if(zeroPos<0)
          {
            yStart = pPlot->y + rel_y;
            yEnd = pPlot->y+pPlot->ySize;
          }
          else  //zeroPos==0
          {
            yStart = pPlot->y+rel_zero;
            yEnd = pPlot->y + rel_y;
          }
        }
        
        if(yStart > yEnd)
        {
          uint32_t temp = yEnd;
          yEnd = yStart;
          yStart = temp;
        }
        
        if(value>0)
          lcdSetColor(pPlot->lineColor);
        else
          lcdSetColor(pPlot->lineColorNeg);
        
        if(yStart && yEnd && (value != LCD_PLOT_INVALID_SAMPLE) )
          lcdVerticalLine(x,yStart,yEnd);
        
      }
    }//if(i>0)
    
    previous_y = current_y;
    x++;
  }
}


//computes value for an y from top
static int16_t computeValueAtY(T_lcdPlot *pPlot, float y)
{
  //compute % of graph height
  float height = y / (float)pPlot->ySize;
  float top = pPlot->yCenter + pPlot->ySpan;
  float bottom = pPlot->yCenter - pPlot->ySpan;
  float fullRange = top - bottom;
  float value;
  if(height > 0.9)
    value = bottom;
  else
    value = top - height * fullRange;
  return (int16_t)value;
}


//returns y by reference
//returns -1 if dot is below or 1 if dot is above
static int computeYfromValue(T_lcdPlot *pPlot, uint32_t* y, int16_t value)
{
  //compute % of graph height
  if(value > (pPlot->yCenter + pPlot->ySpan)) return 1;
  if(value < (pPlot->yCenter - pPlot->ySpan)) return -1;
  float top = pPlot->yCenter + pPlot->ySpan;
  float bottom = pPlot->yCenter - pPlot->ySpan;
  float fullRange = top - bottom;
  value = value - (pPlot->yCenter - pPlot->ySpan);  //compute value relative to bottom
  float height = 1.0 - ((float)value / fullRange);
  float temp_y = height * (float)pPlot->ySize;
  *y = (int16_t) temp_y;
  return 0;
}


static void generateGrid(T_lcdPlot *pPlot)
{
//  lcdSetColor(pPlot->gridColor);
  
  uint32_t x = pPlot->x;
  float xShift = (float)pPlot->xLen / ((float)(pPlot->xDescCnt-1)*(float)(pPlot->xGridSubdiv+1));
  for(uint32_t i=0;i<(pPlot->xDescCnt*(pPlot->xGridSubdiv+1)-pPlot->xGridSubdiv);i++)
  {
    
    float yShift = (float)pPlot->ySize / ((float)(pPlot->yDescCnt-1)*(float)(pPlot->yGridSubdiv+1));
    float y = pPlot->y;
    for(uint32_t j=0;j<(pPlot->yDescCnt*(pPlot->yGridSubdiv+1)-pPlot->yGridSubdiv);j++)
    {
      //lcdIntFixedPoint(value,pPlot->yDescDigLimit,pPlot->yDescDot,x,y-(lcdGetFont()/2));
      lcdPixel(x,(uint32_t)y,pPlot->gridColor);
      y+=yShift;
    }
    
    x+= (uint32_t)(xShift);
  }

}

#define ABS(x)  ( ( (x) < 0) ? -(x) : (x) )

//dot: how many digits to display after dot
//digits_limit: how many (max) digits to display before dot.
//example:
//  val=1234, dot=1, digits_limit=2, on a display will appear: 23.4
static int32_t lcdIntFixedPoint(int16_t val, uint8_t digits_limit, uint8_t dot, int32_t x, int32_t y)
{
  lcdSetTextCursor(x,y);
  
  switch(dot)
  {
    case 0:
    {
      //x = lcdInt(val,digits_limit,x,y);
      lcd("%d",val);
      break;
    }
    case 1:
    {
      int ipart = val/10;
      int fpart = ABS(val%10);
      lcd("%d.%01d",ipart,fpart);
      break;
    }
    case 2:
    {
      int ipart = val/100;
      int fpart = ABS(val%100);
      lcd("%d.%02d",ipart,fpart);
      break;
    }
    case 3:
    {
      int ipart = val/1000;
      int fpart = ABS(val%1000);
      lcd("%d.%03d",ipart,fpart);
      break;
    }
    case 4:
    {
      int ipart = val/10000;
      int fpart = ABS(val%10000);
      lcd("%d.%04d",ipart,fpart);
      break;
    }
  }
  
  int endx,endy;
  lcdGetTextCursor(&endx,&endy);
  return(endx);
}



static void generateYAxis(T_lcdPlot *pPlot)
{
  lcdSetFont(LCD_FONT_5);
  //lcdSetTransparent(LCD_TRANSPARENT);
  lcdSetColor(pPlot->gridColor);
  int x;
  
  if(pPlot->yOnTheRight)
  {
    lcdVerticalLine(pPlot->x+pPlot->xLen,pPlot->y,pPlot->y+pPlot->ySize);
    x = pPlot->x + pPlot->xLen + 5;
  }
  else
  {
    lcdVerticalLine(pPlot->x,pPlot->y,pPlot->y+pPlot->ySize);
    x = pPlot->x - pPlot->yDescWidth;
  }
  
  if(x < 0)
  {
    xprintf("graph.c, generateYAxis, x=%d\r\n",x);
    x = 0;
  }
  float yShift = (float)pPlot->ySize / (float)(pPlot->yDescCnt-1);
  float y = pPlot->y;
  for(uint32_t i=0;i<pPlot->yDescCnt;i++)
  {
    int16_t value = computeValueAtY( pPlot, y - (float)pPlot->y );
    //value = roundValue(pPlot,value);
    lcdIntFixedPoint(value,pPlot->yDescDigLimit,pPlot->yDescDot,x,y-(lcdGetFont()/2));
    y+=yShift;
  }
  
//  tempPos = lcdIntFixedPoint(high,5,pPlot->yUnitDivider,pPlot->x+2,descYHi);
}


static void generateXAxis(T_lcdPlot *pPlot)
{
  lcdSetColor(pPlot->gridColor);
  lcdSetFont(LCD_FONT_5);
  uint32_t y = pPlot->y + pPlot->ySize;
  lcdHorizontalLine(pPlot->x,pPlot->x+pPlot->xLen,y);
  y+=3;
  uint32_t x = pPlot->x;
  int16_t* desc = pPlot->xDesc;
  float xShift = (float)pPlot->xLen / ((float)pPlot->xDescCnt-1);
  for(uint32_t i=0;i<pPlot->xDescCnt;i++)
  {
    lcdSetFont(LCD_FONT_5);
    lcdIntFixedPoint(*desc++,pPlot->xDescDigLimit,pPlot->xDescDot,x,y);
    x+= (uint32_t)(xShift);
  }
}



