/*
 *funzioni_disegno.h
 *
 *Created on: Nov 7, 2020
 *     Author: Computer
 */
#ifndef APPLICATION_USER_FUNZIONI_DISEGNO_H_
#define APPLICATION_USER_FUNZIONI_DISEGNO_H_
#include <stdint.h>
#include "stm32_lcd.h"

#define COLORE_SFONDO UTIL_LCD_COLOR_BLACK
#define COLORE_INTERFACCIA_OK UTIL_LCD_COLOR_GREEN
#define COLORE_INTERFACCIA_NON_OK UTIL_LCD_COLOR_RED


/*Struttura che contiene tutte le informazioni sull'interfaccia, come dimensioni eccetera.*/
typedef struct
{
	/*Variabile che controlla lo spessore del bordo delle figure.*/
	uint32_t spessore_bordo;

	/*Variabili relative al cerchio centrale.*/
	uint32_t raggio_cerchio_centrale;
	uint32_t centro_x_cerchio_centrale;
	uint32_t centro_y_cerchio_centrale;

	/*Variabili relative all'indicatore del cerchio.*/
	uint32_t raggio_indicatore_cerchio;
	double angolo_precedente;
	double angolo;

	/*Variabili relative ai rettangoli laterali.*/
	uint32_t dim_barra_x;
	uint32_t dim_barra_y;
	uint32_t pan_barra_destra;
	uint32_t pan_barra_alto;


}struttura_d_int;

//Funzioni di configurazione
void configura_dimensioni_interfaccia(struttura_d_int * d_int, uint32_t x_size, uint32_t y_size);

//Funzioni disegno
void disegna_cerchio_centrale(uint32_t pos_x, uint32_t pos_y, uint32_t raggio);
void disegna_indicatore_cerchio(uint32_t pos_x, uint32_t pos_y, double alfa, uint32_t raggio_dal_centro, uint32_t raggio_dimensione_indicatore);
void disegna_frame_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y);

//Funzioni di aggiornamento
void aggiorna_indicatore_cerchio(uint32_t pos_x, uint32_t pos_y, double alfa_prec, double alfa, uint32_t raggio_dal_centro, uint32_t raggio_dimensione_indicatore);
void disegna_contenuto_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, double percentuale);

#endif /*APPLICATION_USER_FUNZIONI_DISEGNO_H_ */
