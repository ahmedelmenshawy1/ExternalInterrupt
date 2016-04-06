/*
 * mian.c
 *
 *  Created on: ??þ/??þ/????
 *      Author: ahmed
 */
#include "delay.h"
#include "Types.h"
#include "DIO_Private.h"
#include "DIO_interface.h"
#include "ExtInt_Interface.h"
void Toggle(void);
int main (void)
{
	DIO_VoidInit();
	ExtInt_Init();
	//ExtInt_voidSetExtInt0(Toggle);
	ExtInt_EnableGlobalInt();

	ExtInt_voidSetExtInt1(Toggle);
	//ExtInt_voidSetExtInt2(Toggle);

	while(1)
	{

	}
	return 0;
}

void Toggle(void)
{
	PORTC^=0xff;
}
