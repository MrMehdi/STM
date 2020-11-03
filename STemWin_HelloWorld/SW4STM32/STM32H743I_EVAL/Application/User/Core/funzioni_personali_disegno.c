/*
 * funzioni_personali_disegno.c
 *
 *  Created on: Nov 3, 2020
 *      Author: Computer
 */


/*********************************************************************
*                SEGGER MICROCONTROLLER SYSTEME GmbH                 *
*        Solutions for real time microcontroller applications        *
**********************************************************************
*                                                                    *
*        (c) 1996 - 2017  SEGGER Microcontroller Systeme GmbH        *
*                                                                    *
*        Internet: www.segger.com    Support:  support@segger.com    *
*                                                                    *
**********************************************************************

***** emWin - Graphical user interface for embedded applications *****
emWin is protected by international copyright laws.   Knowledge of the
source code may not be used to write a similar product.  This file may
only be used in accordance with a license and should not be re-
distributed in any way. We appreciate your understanding and fairness.
----------------------------------------------------------------------
File        : BASIC_HelloWorld.c
Purpose     : Simple demo drawing "Hello world"
----------------------------------------------------------------------
*/

#include "GUI.h"
#include <stdint.h>
#include <math.h>

#define COLORE_SFONDO GUI_BLACK

/*********************************************************************
*
*       Public code
*
**********************************************************************
*/
/*********************************************************************
*
*       MainTask
*/

#if 0
void MainTask(void) {
  GUI_SetLayerVisEx (1, 0);
  GUI_SetBkColor(GUI_BLACK);
  GUI_Clear();
  GUI_SetColor(GUI_WHITE);
  GUI_SetFont(&GUI_Font32_1);
  GUI_DispStringAt("Hello world!", (LCD_GetXSize()-100)/2, (LCD_GetYSize()-20)/2);
  while(1) {};
}
#endif

 void pulisci_schermo(void) {
  GUI_SetLayerVisEx (1, 0);
  GUI_SetBkColor(COLORE_SFONDO);
  GUI_Clear();
}

/*ATTENZIONE! LO (0,0) è in alto a sx*/
void disegna_cerchio_centrale(uint32_t pos_x, uint32_t pos_y, uint32_t raggio, uint32_t spessore_bordo)
{
	//UTIL_LCD_FillRect(pos_x-raggio-d_int.raggio_indicatore_cerchio, pos_y-raggio-d_int.raggio_indicatore_cerchio, raggio*2+d_int.raggio_indicatore_cerchio, raggio*2+d_int.raggio_indicatore_cerchio, COLORE_SFONDO);

	GUI_SetBkColor(GUI_GREEN);
	GUI_FillCircle(pos_x, pos_y, raggio);
	GUI_SetBkColor(COLORE_SFONDO);
	GUI_FillCircle(pos_x, pos_y, raggio-spessore_bordo);
}

void disegna_indicatore_cerchio(uint32_t pos_x, uint32_t pos_y, double alfa, uint32_t raggio_dal_centro, uint32_t raggio_dimensione_indicatore)
{
  GUI_FillCircle(pos_x+raggio_dal_centro*cos(alfa), pos_y+raggio_dal_centro*(-sin(alfa)), raggio_dimensione_indicatore);
}

void disegna_frame_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, uint32_t spessore_bordo)
{
	GUI_FillRect(pos_x, pos_y, dim_x, dim_y);
	GUI_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y-2*spessore_bordo);
}

void disegna_contenuto_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, uint32_t spessore_bordo, double percentuale)
{
	//UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y*percentuale-0.5*spessore_bordo, UTIL_LCD_COLOR_YELLOW);
	//UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+dim_y*percentuale+0.5*spessore_bordo, dim_x-2*spessore_bordo, dim_y*(1.0-percentuale)-1.5*spessore_bordo, UTIL_LCD_COLOR_RED);

	//TODO: Correggere. verificare per percentuale = 0 e 100
	GUI_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y*percentuale-spessore_bordo);
	//UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+dim_y*percentuale+spessore_bordo, dim_x-2*spessore_bordo, dim_y*(1.0-percentuale)-*spessore_bordo, UTIL_LCD_COLOR_RED);
}

void disegna_pulsante_controllo(uint32_t pos_x, uint32_t pos_y, uint32_t dim_quadrato, uint32_t dim_riquadro_etichetta_x, uint32_t dim_riquadro_etichetta_y)
{
	//TODO: ottimizzare
/*
	  UTIL_LCD_SetTextColor(UTIL_LCD_COLOR_DARKRED);
	  UTIL_LCD_SetFont(&Font20);
	  UTIL_LCD_DisplayStringAt(pos_x, pos_y, (uint8_t *)"+", LEFT_MODE);
*/
	GUI_FillRect(pos_x, pos_y, dim_quadrato, dim_quadrato);
	GUI_FillRect(pos_x+dim_quadrato, pos_y, dim_riquadro_etichetta_x, dim_riquadro_etichetta_y);
	GUI_FillRect(pos_x+dim_quadrato+dim_riquadro_etichetta_x, pos_y, dim_quadrato, dim_quadrato);
}

/*************************** End of file ****************************/
