/*
 * funzioni_personali_disegno.h
 *
 *  Created on: Nov 3, 2020
 *      Author: Computer
 */

#ifndef APPLICATION_USER_CORE_FUNZIONI_PERSONALI_DISEGNO_H_
#define APPLICATION_USER_CORE_FUNZIONI_PERSONALI_DISEGNO_H_

void pulisci_schermo(void);
void disegna_cerchio_centrale(int pos_x, int pos_y, int raggio, int spessore_bordo);
void disegna_frame_barra_laterale(int pos_x, int pos_y, int dim_x, int dim_y, int spessore_bordo);
void disegna_indicatore_cerchio(int pos_x, int pos_y, double alfa, int raggio_dal_centro, int raggio_dimensione_indicatore);;



#endif /* APPLICATION_USER_CORE_FUNZIONI_PERSONALI_DISEGNO_H_ */
