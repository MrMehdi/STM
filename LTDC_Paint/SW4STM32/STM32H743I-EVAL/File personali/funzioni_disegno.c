/*
 *funzioni_disegno.c
 *
 *Created on: Nov 7, 2020
 *     Author: Computer
 */
#include "funzioni_disegno.h"
#include "stm32_lcd.h"
#include <stdint.h>
#include <math.h>

/**
  * @brief  Funzioni per disegnare i vari elementi della UI.
  * @param  None
  * @retval None
  */

void configura_dimensioni_interfaccia(struttura_d_int * d_int, uint32_t x_size, uint32_t y_size)
{
	/*Variabile che controlla lo spessore del bordo delle figure.*/
  (*d_int).spessore_bordo = 5;

	/*Variabili relative al cerchio centrale.*/
  (*d_int).raggio_cerchio_centrale = (y_size/4);
  (*d_int).centro_x_cerchio_centrale = (x_size/2);
  (*d_int).centro_y_cerchio_centrale = (y_size/2);

	/*Variabili relative all'indicatore del cerchio.*/
  (*d_int).raggio_indicatore_cerchio = 5;
  (*d_int).angolo = (2*M_PI)/3;
  (*d_int).angolo_precedente = (*d_int).angolo;

	/*Variabili relative ai rettangoli laterali.*/
  (*d_int).dim_barra_x = (x_size/8);
  (*d_int).dim_barra_y =  2*(y_size/3);
  (*d_int).pan_barra_destra = ((x_size/3)-(*d_int).dim_barra_x)/2;
  (*d_int).pan_barra_alto = (y_size-(*d_int).dim_barra_y)/2;

}


void disegna_cerchio_centrale(uint32_t pos_x, uint32_t pos_y, uint32_t raggio)
{
	UTIL_LCD_DrawCircle(pos_x, pos_y, raggio, COLORE_INTERFACCIA_OK);
}

void disegna_indicatore_cerchio(uint32_t pos_x, uint32_t pos_y, double alfa_prec, double alfa, uint32_t raggio_dal_centro, uint32_t raggio_dimensione_indicatore)
{
	//Disegno un pallino bianco al posto del pallino precedente
	UTIL_LCD_FillCircle(pos_x + raggio_dal_centro* cos(alfa_prec), pos_y + raggio_dal_centro *(-sin(alfa_prec)), raggio_dimensione_indicatore, COLORE_SFONDO);
	//Ridisegno il cerchio centrale
	disegna_cerchio_centrale(pos_x, pos_y, raggio_dal_centro);
	//Disegno il pallino verde nella nuova posizione
	UTIL_LCD_FillCircle(pos_x + raggio_dal_centro* cos(alfa), pos_y + raggio_dal_centro *(-sin(alfa)), raggio_dimensione_indicatore, COLORE_INTERFACCIA_OK);
}

void aggiorna_indicatore_cerchio(uint32_t pos_x, uint32_t pos_y, double alfa_prec, double alfa, uint32_t raggio_dal_centro, uint32_t raggio_dimensione_indicatore)
{
	int numero_frame = abs((alfa - alfa_prec) / (double) DIM_STEP_ANIMAZIONE);
	double delta_per_frame = (alfa - alfa_prec) / (double)numero_frame;

	for(int i = 0; i < numero_frame; i ++)
	{
		disegna_indicatore_cerchio(pos_x, pos_y, alfa_prec + i*delta_per_frame, alfa_prec + (i+1)*delta_per_frame, raggio_dal_centro, raggio_dimensione_indicatore);
		HAL_Delay(1);
	}

}

void disegna_frame_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y)
{
	UTIL_LCD_DrawRect(pos_x-1, pos_y-1, dim_x+2, dim_y+2, COLORE_INTERFACCIA_OK);
	  //UTIL_LCD_FillRect(pos_x, pos_y, dim_x, dim_y, COLORE_INTERFACCIA_OK);
	  //UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y-2*spessore_bordo, COLORE_SFONDO);
}

void disegna_contenuto_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, double percentuale)
{
	UTIL_LCD_FillRect(pos_x, pos_y+dim_y*percentuale, dim_x, dim_y*(1.0-percentuale), COLORE_SFONDO);
	UTIL_LCD_FillRect(pos_x, pos_y, dim_x, dim_y*percentuale, UTIL_LCD_COLOR_YELLOW);
}


void aggiorna_contenuto_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, double percentuale_prec, double percentuale)
{
	int numero_frame = abs((percentuale - percentuale_prec) / (double) DIM_STEP_ANIMAZIONE);
	double delta_per_frame = (percentuale - percentuale_prec) / (double)numero_frame;

	for(int i = 0; i < numero_frame; i ++)
	{
		disegna_contenuto_barra_laterale(pos_x, pos_y, dim_x, dim_y, i*delta_per_frame);
		HAL_Delay(1);
	}
}
