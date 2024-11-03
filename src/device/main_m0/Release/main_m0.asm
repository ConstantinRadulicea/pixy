   1              		.cpu cortex-m0
   2              		.fpu softvfp
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 6
  10              		.eabi_attribute 34, 0
  11              		.eabi_attribute 18, 4
  12              		.code	16
  13              		.file	"main_m0.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.rodata
  18              		.align	2
  19              	.LC0:
  20 0000 4D302073 		.ascii	"M0 start\012\000"
  20      74617274 
  20      0A00
  21 000a 0000     		.section	.text.main,"ax",%progbits
  22              		.align	2
  23              		.global	main
  24              		.code	16
  25              		.thumb_func
  27              	main:
  28              	.LFB32:
  29              		.file 1 "../src/main_m0.c"
   1:../src/main_m0.c **** //
   2:../src/main_m0.c **** // begin license header
   3:../src/main_m0.c **** //
   4:../src/main_m0.c **** // This file is part of Pixy CMUcam5 or "Pixy" for short
   5:../src/main_m0.c **** //
   6:../src/main_m0.c **** // All Pixy source code is provided under the terms of the
   7:../src/main_m0.c **** // GNU General Public License v2 (http://www.gnu.org/licenses/gpl-2.0.html).
   8:../src/main_m0.c **** // Those wishing to use Pixy source code, software and/or
   9:../src/main_m0.c **** // technologies under different licensing terms should contact us at
  10:../src/main_m0.c **** // cmucam@cs.cmu.edu. Such licensing terms are available for
  11:../src/main_m0.c **** // all portions of the Pixy codebase presented here.
  12:../src/main_m0.c **** //
  13:../src/main_m0.c **** // end license header
  14:../src/main_m0.c **** //
  15:../src/main_m0.c **** 
  16:../src/main_m0.c **** #include <debug.h>
  17:../src/main_m0.c **** #include <chirp.h>
  18:../src/main_m0.c **** #include <cycletimer.h>
  19:../src/main_m0.c **** #include <pixyvals.h>
  20:../src/main_m0.c **** #include "exec_m0.h"
  21:../src/main_m0.c **** #include "frame_m0.h"
  22:../src/main_m0.c **** #include "rls_m0.h"
  23:../src/main_m0.c **** 
  24:../src/main_m0.c **** //int g_foo = 0;
  25:../src/main_m0.c **** 
  26:../src/main_m0.c **** int main(void)
  27:../src/main_m0.c **** {
  30              		.loc 1 27 0
  31              		.cfi_startproc
  32 0000 80B5     		push	{r7, lr}
  33              		.cfi_def_cfa_offset 8
  34              		.cfi_offset 7, -8
  35              		.cfi_offset 14, -4
  36 0002 00AF     		add	r7, sp, #0
  37              		.cfi_def_cfa_register 7
  28:../src/main_m0.c **** 	//CTIMER_DECLARE();
  29:../src/main_m0.c **** #if 0
  30:../src/main_m0.c **** 	uint32_t memory = SRAM1_LOC;
  31:../src/main_m0.c **** 	uint32_t lut = SRAM1_LOC;
  32:../src/main_m0.c **** 
  33:../src/main_m0.c **** 	//while(1);
  34:../src/main_m0.c **** 	memset((void *)QQ_LOC, 0x01, 0x3000);
  35:../src/main_m0.c **** 	g_qqueue->writeIndex = 0;
  36:../src/main_m0.c **** 	g_qqueue->produced = 0;
  37:../src/main_m0.c **** 	g_qqueue->consumed = 0;
  38:../src/main_m0.c **** 
  39:../src/main_m0.c ****  	while(1)
  40:../src/main_m0.c ****  		getRLSFrame(&memory, &lut); 
  41:../src/main_m0.c **** #endif
  42:../src/main_m0.c **** #if 0
  43:../src/main_m0.c **** 	int i = 0x12345678;
  44:../src/main_m0.c **** 	foo(&i);
  45:../src/main_m0.c **** 	printf("%d\n", i);
  46:../src/main_m0.c **** 	while(1);
  47:../src/main_m0.c **** #endif
  48:../src/main_m0.c **** #if 0
  49:../src/main_m0.c **** 	int i;
  50:../src/main_m0.c **** 	uint32_t lut = SRAM1_LOC;
  51:../src/main_m0.c ****  	uint32_t memory = SRAM1_LOC+0x1000;
  52:../src/main_m0.c **** 	uint8_t *plut = (uint8_t *)lut;
  53:../src/main_m0.c **** 	for (i=0; i<0x4000; i++)
  54:../src/main_m0.c **** 		plut[i] = i%5==0 ? 1 : 0;
  55:../src/main_m0.c **** 	
  56:../src/main_m0.c ****  	while(1)
  57:../src/main_m0.c ****  		getRLSFrame(&memory, &lut); 
  58:../src/main_m0.c **** 
  59:../src/main_m0.c **** #endif
  60:../src/main_m0.c **** #if 1
  61:../src/main_m0.c **** 	_DBG("M0 start\n");
  38              		.loc 1 61 0
  39 0004 094A     		ldr	r2, .L3
  40 0006 0A4B     		ldr	r3, .L3+4
  41 0008 101C     		mov	r0, r2
  42 000a 191C     		mov	r1, r3
  43 000c FFF7FEFF 		bl	UARTPuts
  62:../src/main_m0.c **** 
  63:../src/main_m0.c **** 	chirpOpen();
  44              		.loc 1 63 0
  45 0010 FFF7FEFF 		bl	chirpOpen
  64:../src/main_m0.c **** 	exec_init();
  46              		.loc 1 64 0
  47 0014 FFF7FEFF 		bl	exec_init
  65:../src/main_m0.c **** 	frame_init();
  48              		.loc 1 65 0
  49 0018 FFF7FEFF 		bl	frame_init
  66:../src/main_m0.c **** 	rls_init();
  50              		.loc 1 66 0
  51 001c FFF7FEFF 		bl	rls_init
  67:../src/main_m0.c **** 
  68:../src/main_m0.c **** #if 0
  69:../src/main_m0.c **** 	while(1)
  70:../src/main_m0.c **** 	{
  71:../src/main_m0.c **** 		if (g_foo)
  72:../src/main_m0.c **** 			loop0();
  73:../src/main_m0.c **** 	}
  74:../src/main_m0.c **** #endif
  75:../src/main_m0.c **** 
  76:../src/main_m0.c **** #if 0
  77:../src/main_m0.c **** 	vsync();
  78:../src/main_m0.c **** #endif
  79:../src/main_m0.c **** #if 0
  80:../src/main_m0.c **** 	//while(g_loop);
  81:../src/main_m0.c **** 	uint8_t type = CAM_GRAB_M1R2;
  82:../src/main_m0.c **** 	uint32_t memory = SRAM1_LOC;
  83:../src/main_m0.c **** 	uint16_t offset = 0;
  84:../src/main_m0.c **** 	uint16_t width = 320;
  85:../src/main_m0.c **** 	uint16_t height = 200;
  86:../src/main_m0.c **** 	while(1)
  87:../src/main_m0.c **** 	{
  88:../src/main_m0.c **** 		 getFrame(&type, &memory, &offset, &offset, &width, &height);
  89:../src/main_m0.c **** 		 i++;
  90:../src/main_m0.c **** 
  91:../src/main_m0.c **** 		 if (i%50==0)
  92:../src/main_m0.c **** 		 {
  93:../src/main_m0.c **** 			 _DBD32(i), _CR();
  94:../src/main_m0.c **** 		 }
  95:../src/main_m0.c **** 	}
  96:../src/main_m0.c **** #endif
  97:../src/main_m0.c **** 	//printf("M0 ready\n");
  98:../src/main_m0.c **** 	exec_loop();
  52              		.loc 1 98 0
  53 0020 FFF7FEFF 		bl	exec_loop
  99:../src/main_m0.c **** #endif
 100:../src/main_m0.c **** #if 0
 101:../src/main_m0.c **** 	while(1)
 102:../src/main_m0.c **** 	{
 103:../src/main_m0.c **** 		CTIMER_START();
 104:../src/main_m0.c **** 		syncM1((uint32_t *)&LPC_GPIO_PORT->PIN[1], 0x2000);
 105:../src/main_m0.c **** 		CTIMER_STOP();
 106:../src/main_m0.c **** 		
 107:../src/main_m0.c **** 		printf("%d\n", CTIMER_GET());
 108:../src/main_m0.c **** 	}	
 109:../src/main_m0.c **** #endif
 110:../src/main_m0.c **** #if 0
 111:../src/main_m0.c **** {
 112:../src/main_m0.c **** 	uint32_t i;
 113:../src/main_m0.c **** 	uint8_t *lut = (uint8_t *)SRAM1_LOC + 0x10000;
 114:../src/main_m0.c **** 	uint32_t memory = SRAM1_LOC;
 115:../src/main_m0.c **** 	uint32_t size = SRAM1_SIZE/2;
 116:../src/main_m0.c **** 	for (i=0; i<0x10000; i++)
 117:../src/main_m0.c **** 		lut[i] = 0;
 118:../src/main_m0.c **** 	lut[0xb400] = 0;
 119:../src/main_m0.c **** 	lut[0xb401] = 1;
 120:../src/main_m0.c **** 	lut[0xb402] = 1;
 121:../src/main_m0.c **** 	lut[0xb403] = 1;
 122:../src/main_m0.c **** 	lut[0xb404] = 0;
 123:../src/main_m0.c **** 	lut[0xb405] = 1;
 124:../src/main_m0.c **** 	lut[0xb406] = 1;
 125:../src/main_m0.c **** 	lut[0xb407] = 0;
 126:../src/main_m0.c **** 	lut[0xb408] = 0;
 127:../src/main_m0.c **** 	lut[0xb409] = 0;
 128:../src/main_m0.c **** 
 129:../src/main_m0.c **** 	while(1)
 130:../src/main_m0.c ****  		getRLSFrame(&memory, &size); //, (uint32_t *)&lut);
 131:../src/main_m0.c **** }
 132:../src/main_m0.c **** #endif
 133:../src/main_m0.c **** 
 134:../src/main_m0.c **** return 0;
  54              		.loc 1 134 0
  55 0024 0023     		mov	r3, #0
 135:../src/main_m0.c **** }
  56              		.loc 1 135 0
  57 0026 181C     		mov	r0, r3
  58 0028 BD46     		mov	sp, r7
  59              		@ sp needed
  60 002a 80BD     		pop	{r7, pc}
  61              	.L4:
  62              		.align	2
  63              	.L3:
  64 002c 00200840 		.word	1074274304
  65 0030 00000000 		.word	.LC0
  66              		.cfi_endproc
  67              	.LFE32:
  69              		.text
  70              	.Letext0:
  71              		.file 2 "c:\\nxp\\lpcxpresso_7.6.2_326\\lpcxpresso\\tools\\arm-none-eabi\\include\\machine\\_defau
  72              		.file 3 "c:\\nxp\\lpcxpresso_7.6.2_326\\lpcxpresso\\tools\\arm-none-eabi\\include\\stdint.h"
  73              		.file 4 "../../common/inc/lpc43xx.h"
DEFINED SYMBOLS
                            *ABS*:00000000 main_m0.c
C:\Users\badboy\AppData\Local\Temp\ccfCUSTT.s:18     .rodata:00000000 $d
C:\Users\badboy\AppData\Local\Temp\ccfCUSTT.s:22     .text.main:00000000 $t
C:\Users\badboy\AppData\Local\Temp\ccfCUSTT.s:27     .text.main:00000000 main
C:\Users\badboy\AppData\Local\Temp\ccfCUSTT.s:64     .text.main:0000002c $d
                     .debug_frame:00000010 $d

UNDEFINED SYMBOLS
UARTPuts
chirpOpen
exec_init
frame_init
rls_init
exec_loop
