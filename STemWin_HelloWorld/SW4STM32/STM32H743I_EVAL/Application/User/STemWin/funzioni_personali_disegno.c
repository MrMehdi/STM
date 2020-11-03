#include "GUI.h"

/* JNS Struttura che contiene tutte le informazioni sull'interfaccia, come dimensioni eccetera.*/
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
	double angolo;

	/*Variabili relative ai rettangoli laterali.*/
	uint32_t dim_barra_x;
	uint32_t dim_barra_y;
	uint32_t pan_barra_destra;
	uint32_t pan_barra_alto;

	/*Variabili relative ai pulsanti di controllo.*/
	uint32_t dim_quadrato_piu_meno;
	uint32_t dim_riquadro_etichetta_x;
	uint32_t dim_riquadro_etichetta_y;
}struttura_d_int;
double test_percentuale = 0.0;

struttura_d_int d_int;

void MainTask(void) {
  GUI_SetLayerVisEx (1, 0);
  GUI_SetBkColor(GUI_BLACK);
  GUI_Clear();
  GUI_SetColor(GUI_WHITE);
  GUI_SetFont(&GUI_Font32_1);
  GUI_DispStringAt("Hello world!", (LCD_GetXSize()-100)/2, (LCD_GetYSize()-20)/2);
  while(1) {};
}


/*ATTENZIONE! LO (0,0) è in alto a sx*/
static void disegna_cerchio_centrale(uint32_t pos_x, uint32_t pos_y, uint32_t raggio, uint32_t spessore_bordo)
{
	//UTIL_LCD_FillRect(pos_x-raggio-d_int.raggio_indicatore_cerchio, pos_y-raggio-d_int.raggio_indicatore_cerchio, raggio*2+d_int.raggio_indicatore_cerchio, raggio*2+d_int.raggio_indicatore_cerchio, COLORE_SFONDO);
	GUI_FillCircle(pos_x, pos_y, raggio, UTIL_LCD_COLOR_GREEN);
	GUI_FillCircle(pos_x, pos_y, raggio-spessore_bordo, COLORE_SFONDO);
}

static void disegna_indicatore_cerchio(uint32_t pos_x, uint32_t pos_y, double alfa, uint32_t raggio_dal_centro, uint32_t raggio_dimensione_indicatore)
{
  GUI_FillCircle(pos_x+raggio_dal_centro*cos(alfa), pos_y+raggio_dal_centro*(-sin(alfa)), raggio_dimensione_indicatore, UTIL_LCD_COLOR_GREEN);
}

static void disegna_frame_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, uint32_t spessore_bordo)
{
	GUI_FillRect(pos_x, pos_y, dim_x, dim_y, UTIL_LCD_COLOR_GREEN);
	GUI_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y-2*spessore_bordo, COLORE_SFONDO);
}

static void disegna_contenuto_barra_laterale(uint32_t pos_x, uint32_t pos_y, uint32_t dim_x, uint32_t dim_y, uint32_t spessore_bordo, double percentuale)
{
	//UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y*percentuale-0.5*spessore_bordo, UTIL_LCD_COLOR_YELLOW);
	//UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+dim_y*percentuale+0.5*spessore_bordo, dim_x-2*spessore_bordo, dim_y*(1.0-percentuale)-1.5*spessore_bordo, UTIL_LCD_COLOR_RED);

	//TODO: Correggere. verificare per percentuale = 0 e 100
	GUI_FillRect(pos_x+spessore_bordo, pos_y+spessore_bordo, dim_x-2*spessore_bordo, dim_y*percentuale-spessore_bordo, UTIL_LCD_COLOR_YELLOW);
	//UTIL_LCD_FillRect(pos_x+spessore_bordo, pos_y+dim_y*percentuale+spessore_bordo, dim_x-2*spessore_bordo, dim_y*(1.0-percentuale)-*spessore_bordo, UTIL_LCD_COLOR_RED);
}

static void disegna_pulsante_controllo(uint32_t pos_x, uint32_t pos_y, uint32_t dim_quadrato, uint32_t dim_riquadro_etichetta_x, uint32_t dim_riquadro_etichetta_y)
{
	//TODO: ottimizzare
/*
	  UTIL_LCD_SetTextColor(UTIL_LCD_COLOR_DARKRED);
	  UTIL_LCD_SetFont(&Font20);
	  UTIL_LCD_DisplayStringAt(pos_x, pos_y, (uint8_t *)"+", LEFT_MODE);
*/
	GUI_FillRect(pos_x, pos_y, dim_quadrato, dim_quadrato, UTIL_LCD_COLOR_RED);
	GUI_FillRect(pos_x+dim_quadrato, pos_y, dim_riquadro_etichetta_x, dim_riquadro_etichetta_y, UTIL_LCD_COLOR_WHITE);
	GUI_FillRect(pos_x+dim_quadrato+dim_riquadro_etichetta_x, pos_y, dim_quadrato, dim_quadrato, UTIL_LCD_COLOR_BLUE);
}
