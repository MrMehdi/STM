#include "funzioni_disegno.h"
#include "funzioni_pulsanti.h"
#include "stm32_lcd.h"
#include <stdint.h>
#include <stdbool.h>

void configura_pulsante(struttura_d_pulsanti *d_pulsanti, uint32_t x_size, uint32_t y_size, uint32_t pos_x, uint32_t pos_y)
{
	(*d_pulsanti).pos_x = pos_x;
	(*d_pulsanti).pos_y = pos_y;
	/*Variabili relative ai pulsanti di controllo.*/
	(*d_pulsanti).dim_quadrato_piu_meno = (x_size / 16);
	(*d_pulsanti).dim_riquadro_etichetta_x = (x_size / 8);
	(*d_pulsanti).dim_riquadro_etichetta_y = ((*d_pulsanti).dim_quadrato_piu_meno);

	(*d_pulsanti).dim_simbolo_piu_meno_x = ((*d_pulsanti).dim_quadrato_piu_meno / 6);
	(*d_pulsanti).dim_simbolo_piu_meno_y = ((*d_pulsanti).dim_quadrato_piu_meno / 1.5);

	(*d_pulsanti).padding_scritta_x =  (x_size / 64);
	(*d_pulsanti).padding_scritta_y =  (*d_pulsanti).padding_scritta_x;
}

bool verifica_pressione_piu(struttura_d_pulsanti d_pulsanti, uint32_t ts_x, uint32_t ts_y)
{
	return ((ts_x > d_pulsanti.pos_x) &
			(ts_x<(d_pulsanti.pos_x+d_pulsanti.dim_quadrato_piu_meno))&
			(ts_y > d_pulsanti.pos_y) &
			(ts_y<(d_pulsanti.pos_y+ d_pulsanti.dim_riquadro_etichetta_y)));
}

bool verifica_pressione_meno(struttura_d_pulsanti d_pulsanti, uint32_t ts_x, uint32_t ts_y)
{
	return ((ts_x > d_pulsanti.pos_x + d_pulsanti.dim_quadrato_piu_meno + d_pulsanti.dim_riquadro_etichetta_x)&
			(ts_x < (d_pulsanti.pos_x + d_pulsanti.dim_quadrato_piu_meno + 2*(d_pulsanti.dim_riquadro_etichetta_x)))&
		(ts_y > d_pulsanti.pos_y) &
		(ts_y<(d_pulsanti.pos_y + d_pulsanti.dim_riquadro_etichetta_y)));
}

void disegna_pulsante_controllo(struttura_d_pulsanti d_pulsanti)
{
	//Disegno lo sfondo
	  UTIL_LCD_FillRect(d_pulsanti.pos_x, d_pulsanti.pos_y, d_pulsanti.dim_quadrato_piu_meno, d_pulsanti.dim_quadrato_piu_meno, UTIL_LCD_COLOR_RED);
	  UTIL_LCD_FillRect(d_pulsanti.pos_x+d_pulsanti.dim_quadrato_piu_meno, d_pulsanti.pos_y, d_pulsanti.dim_riquadro_etichetta_x, d_pulsanti.dim_riquadro_etichetta_y, UTIL_LCD_COLOR_WHITE);
	  UTIL_LCD_FillRect(d_pulsanti.pos_x+d_pulsanti.dim_quadrato_piu_meno+d_pulsanti.dim_riquadro_etichetta_x, d_pulsanti.pos_y, d_pulsanti.dim_quadrato_piu_meno, d_pulsanti.dim_quadrato_piu_meno, UTIL_LCD_COLOR_BLUE);

	  //DIsegno le lettere ecc
	  //+
	  UTIL_LCD_FillRect(d_pulsanti.pos_x + (d_pulsanti.dim_quadrato_piu_meno/2 - d_pulsanti.dim_simbolo_piu_meno_x/2),
				  d_pulsanti.pos_y + (d_pulsanti.dim_riquadro_etichetta_y/2-d_pulsanti.dim_simbolo_piu_meno_y/2),
				  d_pulsanti.dim_simbolo_piu_meno_x,
				  d_pulsanti.dim_simbolo_piu_meno_y,
				  UTIL_LCD_COLOR_WHITE);

	  UTIL_LCD_FillRect(d_pulsanti.pos_x + (d_pulsanti.dim_riquadro_etichetta_y/2-d_pulsanti.dim_simbolo_piu_meno_y/2),
	  				  d_pulsanti.pos_y + (d_pulsanti.dim_quadrato_piu_meno/2 - d_pulsanti.dim_simbolo_piu_meno_x/2),
	  				  d_pulsanti.dim_simbolo_piu_meno_y,
	  				  d_pulsanti.dim_simbolo_piu_meno_x,
	  				  UTIL_LCD_COLOR_WHITE);
	  //-
	  UTIL_LCD_FillRect(d_pulsanti.pos_x + d_pulsanti.dim_quadrato_piu_meno+d_pulsanti.dim_riquadro_etichetta_x + (d_pulsanti.dim_riquadro_etichetta_y/2-d_pulsanti.dim_simbolo_piu_meno_y/2),
	  				  d_pulsanti.pos_y + (d_pulsanti.dim_quadrato_piu_meno/2 - d_pulsanti.dim_simbolo_piu_meno_x/2),
	  				  d_pulsanti.dim_simbolo_piu_meno_y,
	  				  d_pulsanti.dim_simbolo_piu_meno_x,
	  				  UTIL_LCD_COLOR_WHITE);

	  //SCRITTA
	  UTIL_LCD_SetTextColor(UTIL_LCD_COLOR_BLACK);
	  UTIL_LCD_SetFont(&Font24);
	  UTIL_LCD_DisplayStringAt(d_pulsanti.pos_x + d_pulsanti.dim_quadrato_piu_meno + d_pulsanti.padding_scritta_x, d_pulsanti.pos_y + d_pulsanti.padding_scritta_y, (uint8_t *) d_pulsanti.etichetta, LEFT_MODE);

}
