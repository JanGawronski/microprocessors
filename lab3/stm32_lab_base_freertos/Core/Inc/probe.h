/*
 * probe.h
 *
 *  Created on: Oct 23, 2025
 *      Author: ada
 */

#ifndef INC_PROBE_H_
#define INC_PROBE_H_

#include "main.h"

#define PROBE_NB  4

void probe_output_set(int idx, uint8_t state);
void probe_output_init(void);
void probe_output_clear_all(void);

#endif /* INC_PROBE_H_ */
