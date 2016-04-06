# 1 "ExtInt_Prog.c"
# 1 "<command-line>"
# 1 "ExtInt_Prog.c"






# 1 "delay.h" 1





# 1 "types.h" 1




typedef unsigned short int u16;
typedef short int s16;

typedef unsigned long int u32;
typedef signed long int s32;

typedef unsigned char u8;
typedef signed char s8;

typedef unsigned long long int u64;
typedef signed long long int s64;

typedef float f32;
typedef double d64;
# 7 "delay.h" 2
# 1 "delay_config.h" 1
# 8 "delay.h" 2
# 8 "ExtInt_Prog.c" 2
# 1 "ExtInt_Config.h" 1
# 9 "ExtInt_Prog.c" 2
# 1 "ExtInt_Private.h" 1
# 19 "ExtInt_Private.h"
typedef union
 {
   struct
   {
    u8 ISC00 :1 ;
    u8 ISC01 :1 ;
    u8 ISC10 :1 ;
    u8 ISC11 :1 ;
    u8 SM0 :1 ;
    u8 SM1 :1 ;
    u8 SM2 :1 ;
    u8 SE :1 ;
   };
 }MCUCR_Reg;
# 10 "ExtInt_Prog.c" 2
# 1 "ExtInt_Interface.h" 1
# 11 "ExtInt_Interface.h"
void ExtInt_Init(void);
# 11 "ExtInt_Prog.c" 2





void (*ptr_EXT0)(void);
void (*ptr_EXT1)(void);

void ExtInt_Init(void)
{
 (*(volatile u8 *) (0x55) )|=(0<<1)|(0<<0)|(0<<3)|(0<<2);
 (*(volatile u8 *) (0x5B) )|=(1<<6)|(1<<7)|(1<<5);
 (*(volatile u8 *) (0x54))|=(1<<6);
}


void __vector_1(void) __attribute__((signal,used,externally_visible)); void __vector_1(void)
{
 ptr_EXT0();
}

void __vector_2(void) __attribute__((signal,used,externally_visible)); void __vector_2(void)
{
 ptr_EXT1();
}
