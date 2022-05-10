#include 	"PmodGPIO.h"
#include 	"PmodOLED.h"
#include 	"xparameters.h"
#include 	"sleep.h"

#define oled_adr  XPAR_OLED_PMOD_AXI_LITE_GPIO_BASEADDR
#define oled_spi  XPAR_OLED_PMOD_AXI_LITE_SPI_BASEADDR
#define swt_adr	  XPAR_SWITCHES_PMOD_AXI_LITE_GPIO_BASEADDR
#define led_adr	  XPAR_LED_PMOD_AXI_LITE_GPIO_BASEADDR

#define swt0 0x02
#define swt1 0x01
#define swt2 0x04
#define swt3 0x03

#define width 	128
#define height	32

int main()
{
	PmodGPIO myLeds, mySwts;

	//initialize switches and led PMODs
	GPIO_begin(&myLeds, led_adr, 0xF0);
	GPIO_begin(&mySwts, swt_adr, 0xFF);

	PmodOLED myOled;

	u8 bmp[] = {
			// 'csun_logo2', 128x32px
			0xff, 0xff, 0xff, 0x7f, 0xbf, 0xdf, 0x2f, 0x57, 0xb7, 0x3b, 0xfb, 0x7d, 0x9d, 0x69, 0xf3, 0xf6,
			0x96, 0xc6, 0xce, 0xce, 0x06, 0x16, 0x16, 0x42, 0x57, 0x29, 0x3d, 0x7d, 0x7b, 0x3b, 0xb7, 0x17,
			0xaf, 0xdf, 0xbf, 0x7f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f, 0x7f, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f, 0x7f, 0x7f, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0x1f, 0xf3, 0xfc, 0x1f, 0xce, 0x1f, 0x1c, 0xfc, 0xfd, 0xfa, 0xc1, 0xc3, 0xfb, 0xfb, 0xc3, 0xc3,
			0xfb, 0xfb, 0xc3, 0xff, 0x00, 0x02, 0x7c, 0x3c, 0x7e, 0x1c, 0x28, 0x41, 0x01, 0x03, 0x0d, 0x7d,
			0x6d, 0x7f, 0xce, 0x9f, 0xdc, 0xf3, 0x1f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x1f,
			0x07, 0x03, 0x01, 0xc1, 0xf8, 0xfc, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfc, 0xf8, 0xf0, 0xe0,
			0xff, 0xff, 0xff, 0x83, 0x01, 0x00, 0x1c, 0x1e, 0x3e, 0x3e, 0x3e, 0x3e, 0x7c, 0x7c, 0xf8, 0xfc,
			0xfe, 0xfe, 0xfe, 0xfe, 0xfc, 0x00, 0x00, 0x00, 0x00, 0xfe, 0xfe, 0xfe, 0xff, 0xff, 0xff, 0xff,
			0xfe, 0xfe, 0xfc, 0x00, 0x00, 0xfe, 0xfe, 0xfe, 0xfe, 0xfc, 0x00, 0x00, 0xf0, 0xe0, 0xc1, 0x03,
			0x07, 0x0f, 0x1f, 0x7f, 0xff, 0xfe, 0xfe, 0xfc, 0x00, 0x00, 0xfe, 0xfe, 0xfe, 0xff, 0xff, 0xff,
			0xf8, 0xcf, 0x3f, 0xff, 0x4f, 0x98, 0xa1, 0xc7, 0x90, 0x00, 0x10, 0x90, 0x30, 0x3c, 0x3c, 0x3c,
			0x4c, 0x08, 0x00, 0xc7, 0xcf, 0x9f, 0x8b, 0xef, 0xef, 0xff, 0xfb, 0xfb, 0x3f, 0x17, 0x1f, 0x8f,
			0xb6, 0xdb, 0x43, 0xdf, 0x3f, 0xcf, 0xf8, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xf8,
			0xe0, 0xc0, 0x80, 0x83, 0x0f, 0x1f, 0x3f, 0x3f, 0x7f, 0x7f, 0x7f, 0x7f, 0x3f, 0xbf, 0x9f, 0xcf,
			0xef, 0xff, 0xff, 0x07, 0x0f, 0x3f, 0x3e, 0x7e, 0x7e, 0x7c, 0x7c, 0x7c, 0x78, 0x00, 0x80, 0xc1,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0xc0, 0x80, 0x00, 0x1f, 0x3f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
			0x7f, 0xbf, 0x9f, 0xc0, 0xf0, 0xff, 0xff, 0x7f, 0x7f, 0x3f, 0x00, 0x00, 0x3f, 0x7f, 0x7f, 0xff,
			0xfe, 0xfc, 0xf8, 0xf0, 0xe0, 0xc1, 0x83, 0x07, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xfe, 0xfd, 0xfb, 0xf7, 0xeb, 0xef, 0xdc, 0xd2, 0xb6, 0xb6, 0x96, 0xfe, 0x7e,
			0x78, 0x68, 0x60, 0x4b, 0x43, 0x63, 0x75, 0x7f, 0xff, 0x96, 0xb5, 0xb4, 0xd0, 0xd8, 0xef, 0xeb,
			0xf7, 0xfb, 0xfd, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
			0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
			};

	while(1)
	{
		int ib = 1;
		GPIO_setPins(&myLeds, GPIO_getPins(&mySwts));
		if(GPIO_getPin(&mySwts, swt0))
		{

			OLED_Begin(&myOled, oled_adr, oled_spi, 0, GPIO_getPin(&mySwts, swt1));

			OLED_SetCursor(&myOled, 0, 0);
			OLED_PutString(&myOled, "Initialized");


			OLED_SetCursor(&myOled, 0, 2);
			if(GPIO_getPin(&mySwts, swt1))
			{
				OLED_PutString(&myOled, "Inverted");

			}
			else
			{
				OLED_PutString(&myOled, "Non-inverted");
			}

			OLED_SetFillPattern(&myOled, OLED_GetStdPattern(0));
			// Turn automatic updating off
			OLED_SetCharUpdate(&myOled, 0);
			OLED_SetDrawMode(&myOled, 0);

			OLED_Update(&myOled);
		}

		//while switch 2 is flipped up
		while(GPIO_getPin(&mySwts, swt2))
		{
			GPIO_setPins(&myLeds, GPIO_getPins(&mySwts));

			for (ib; ib < 8; ib++)
			{

				OLED_ClearBuffer(&myOled);
				OLED_SetFillPattern(&myOled, OLED_GetStdPattern(ib));

				OLED_MoveTo(&myOled, 1, 1);
				OLED_FillRect(&myOled, 26, 27);
				OLED_DrawRect(&myOled, 26, 27);

				OLED_MoveTo(&myOled, 33, 1);
				OLED_FillRect(&myOled, 58, 27);
				OLED_DrawRect(&myOled, 58, 27);

				OLED_MoveTo(&myOled, 65, 1);
				OLED_FillRect(&myOled, 90, 27);
				OLED_DrawRect(&myOled, 90, 27);

				OLED_MoveTo(&myOled, 97, 1);
				OLED_FillRect(&myOled, 122, 27);
				OLED_DrawRect(&myOled, 122, 27);

				OLED_Update(&myOled);

				sleep(1);
			}

		}

		//while switch 3 is fliiped
		while(GPIO_getPin(&mySwts, swt3))
		{
			GPIO_setPins(&myLeds, GPIO_getPins(&mySwts));

			OLED_ClearBuffer(&myOled);
			OLED_MoveTo(&myOled, 0, 0);
			OLED_PutBmp(&myOled, width ,height, bmp);
			OLED_Update(&myOled);
			sleep(1);
		}
	}
	OLED_End(&myOled);

	return 0;
}
