/*
 * services.c
 *
 *  Created on: Dec 28, 2014
 *      Author: daymoon
 */

#include "services.h"

/* private prototypes */

// extern
void LED_service(void)
{
	volatile uint16_t led_port;

	led_port = GPIO_ReadOutputData(LED_PORT);
	if (led_port & GREEN_LED)
	{
		GPIO_ResetBits(LED_PORT, GREEN_LED);				// zelena LED on
	}
	else
	{
		GPIO_SetBits(LED_PORT, GREEN_LED);					// zelena LED off
	}
}

// extern
void Delay_service(void)
{
	Set_Delay_finished(DELAY_FINISHED);
}

void Regulators_service(void)
{
	powerbit_regulator_process();
}

// obsluzna sluzba zavolana z IRQ rutiny UART1
void Command_service(void)
{
	// dekodovani a zpracovani zpravy z UART
	commands_process();

	// uvolneni Rx bufferu
	usart_release_Rx_buffer();
}

