/*
 * funzioni_pulsanti.h
 *
 *  Created on: Nov 7, 2020
 *      Author: Computer
 */

#ifndef FILE_PERSONALI_FUNZIONI_PULSANTI_H_
#define FILE_PERSONALI_FUNZIONI_PULSANTI_H_
#include "stm32_lcd.h"
#include "funzioni_disegno.h"
#include <stdint.h>
#include <stdbool.h>

typedef struct
{
	/*Variabili relative ai pulsanti di controllo.*/
	uint32_t pos_x;
	uint32_t pos_y;
	uint32_t dim_quadrato_piu_meno;
	uint32_t dim_riquadro_etichetta_x;
	uint32_t dim_riquadro_etichetta_y;

	uint32_t dim_simbolo_piu_meno_x;
	uint32_t dim_simbolo_piu_meno_y;

	uint32_t padding_scritta_x;
	uint32_t padding_scritta_y;

	bool premuto;

	char etichetta[5];
}struttura_d_pulsanti;

void configura_pulsante(struttura_d_pulsanti * d_pulsanti, uint32_t x_size, uint32_t y_size, uint32_t pos_x, uint32_t pos_y);
bool verifica_pressione_piu(struttura_d_pulsanti d_pulsanti, uint32_t ts_x, uint32_t ts_y);
bool verifica_pressione_meno(struttura_d_pulsanti d_pulsanti, uint32_t ts_x, uint32_t ts_y);
void disegna_pulsante_controllo(struttura_d_pulsanti d_pulsanti);


#endif /* FILE_PERSONALI_FUNZIONI_PULSANTI_H_ */
