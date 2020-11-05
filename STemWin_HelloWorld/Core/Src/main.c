/**
  ******************************************************************************
  * @file    STemWin/STemWin_HelloWorld/Src/main.c 
  * @author  MCD Application Team
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "WM.h"
#include "funzioni_personali_disegno.h"


/* JNS Struttura che contiene tutte le informazioni sull'interfaccia, come dimensioni eccetera.*/
typedef struct
{
	/*Variabile che controlla lo spessore del bordo delle figure.*/
	int spessore_bordo;

	/*Variabili relative al cerchio centrale.*/
	int raggio_cerchio_centrale;
	int centro_x_cerchio_centrale;
	int centro_y_cerchio_centrale;

	/*Variabili relative all'indicatore del cerchio.*/
	int raggio_indicatore_cerchio;
	double angolo;

	/*Variabili relative ai rettangoli laterali.*/
	int dim_barra_x;
	int dim_barra_y;
	int pan_barra_destra;
	int pan_barra_alto;

	/*Variabili relative ai pulsanti di controllo.*/
	int dim_quadrato_piu_meno;
	int dim_riquadro_etichetta_x;
	int dim_riquadro_etichetta_y;
}struttura_d_int;

struttura_d_int d_int;

/*Contengono le variabili di dimensione dello schermo*/
int x_size =0, y_size=0;
TS_Init_t hTS;

/** @addtogroup STM32H7xx_HAL_Applications
  * @{
  */

/** @addtogroup STemWin_HelloWorld
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/

/* Private function prototypes -----------------------------------------------*/
static void SystemClock_Config(void);
static void Error_Handler(void);
static void MPU_Config(void);
static void CPU_CACHE_Enable(void);
extern void MainTask(void);

//static void GetPosition(void);
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
  /* Configure the MPU attributes as Write Through */
  MPU_Config();

  /* Enable the CPU Cache */
  CPU_CACHE_Enable();

  /* STM32H7xx HAL library initialization:
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Low Level Initialization
     */
  HAL_Init();

  /* Configure the system clock to 400 MHz */
  SystemClock_Config();
  
  /* Initializes the SDRAM device */
  BSP_SDRAM_Init(0);  

  /* Init the STemWin GUI Library */  
  __HAL_RCC_CRC_CLK_ENABLE(); /* Enable the CRC Module */
  
  GUI_Init();

  /*##-2- Touch screen initialization ########################################*/
  BSP_TS_Init(0, &hTS);

  x_size=LCD_GetXSize();
  y_size=LCD_GetYSize();
    
  /* Run the HelloWorld erxample */
  //MainTask();

  /*Variabile che controlla lo spessore del bordo delle figure.*/
  	  d_int.spessore_bordo = 5;

  		/*Variabili relative al cerchio centrale.*/
  	  d_int.raggio_cerchio_centrale = (x_size/4);
  	  d_int.centro_x_cerchio_centrale = (x_size/2);
  	  d_int.centro_y_cerchio_centrale = (y_size/2);

  		/*Variabili relative all'indicatore del cerchio.*/
  	  d_int.raggio_indicatore_cerchio = 5;
  	  d_int.angolo = (2*M_PI)/3;

  		/*Variabili relative ai rettangoli laterali.*/
  	  d_int.dim_barra_x = (x_size/8);
  	  d_int.dim_barra_y =  2*(y_size/3);
  	  d_int.pan_barra_destra = ((x_size/3)-d_int.dim_barra_x)/2;
  	  d_int.pan_barra_alto = (y_size-d_int.dim_barra_y)/2;

  		/*Variabili relative ai pulsanti di controllo.*/
  	  d_int.dim_quadrato_piu_meno=(x_size/16);
  	  d_int.dim_riquadro_etichetta_x=(x_size/8);
  	  d_int.dim_riquadro_etichetta_y=d_int.dim_quadrato_piu_meno;

  	  //pulisci_schermo();

  	  /*Disegno il cerchio centrale su cui far muovere il pallino.*/
  	  disegna_cerchio_centrale(d_int.centro_x_cerchio_centrale, d_int.centro_y_cerchio_centrale, d_int.raggio_cerchio_centrale, d_int.spessore_bordo);

  	  /*Disegno i due rettangoli laterali, spaziati di un certo spazio calcolato dai bordi laterali e superiori.*/
  	  disegna_frame_barra_laterale(d_int.pan_barra_destra, d_int.pan_barra_alto, d_int.dim_barra_x, d_int.dim_barra_y, d_int.spessore_bordo);
  	  //disegna_frame_barra_laterale(x_size-d_int.pan_barra_destra-d_int.dim_barra_x,d_int.pan_barra_alto, d_int.dim_barra_x, d_int.dim_barra_y, d_int.spessore_bordo);

  /* Infinite loop */
  for(;;)
  {}
}

#if 0
/**
  * @brief  Configures and gets Touch screen position.
  * @param  None
  * @retval None
  */
static void GetPosition(void)
{
  /* Get Touch screen position */
  BSP_TS_GetState(0,&TS_State);

  /* Read the coordinate */
  x = TS_State.TouchX;
  y = TS_State.TouchY;

  if ((TS_State.TouchDetected))
  {

	  d_int.angolo+=0.1;
  pulisci_schermo();

  disegna_cerchio_centrale(d_int.centro_x_cerchio_centrale, d_int.centro_y_cerchio_centrale, d_int.raggio_cerchio_centrale, d_int.spessore_bordo);

  disegna_indicatore_cerchio(d_int.centro_x_cerchio_centrale, d_int.centro_y_cerchio_centrale, d_int.angolo, d_int.raggio_cerchio_centrale, d_int.raggio_indicatore_cerchio);

  }
}
#endif

/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSE)
  *            SYSCLK(Hz)                     = 400000000 (CPU Clock)
  *            HCLK(Hz)                       = 200000000 (AXI and AHBs Clock)
  *            AHB Prescaler                  = 2
  *            D1 APB3 Prescaler              = 2 (APB3 Clock  100MHz)
  *            D2 APB1 Prescaler              = 2 (APB1 Clock  100MHz)
  *            D2 APB2 Prescaler              = 2 (APB2 Clock  100MHz)
  *            D3 APB4 Prescaler              = 2 (APB4 Clock  100MHz)
  *            HSE Frequency(Hz)              = 25000000
  *            PLL_M                          = 5
  *            PLL_N                          = 160
  *            PLL_P                          = 2
  *            PLL_Q                          = 4
  *            PLL_R                          = 2
  *            VDD(V)                         = 3.3
  *            Flash Latency(WS)              = 4
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;
  HAL_StatusTypeDef ret = HAL_OK;
  
  /*!< Supply configuration update enable */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);

  /* The voltage scaling allows optimizing the power consumption when the device is
     clocked below the maximum system frequency, to update the voltage scaling value
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}
  
  /* Enable HSE Oscillator and activate PLL with HSE as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_OFF;
  RCC_OscInitStruct.CSIState = RCC_CSI_OFF;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;

  RCC_OscInitStruct.PLL.PLLM = 5;
  RCC_OscInitStruct.PLL.PLLN = 160;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLQ = 4;

  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_2;
  ret = HAL_RCC_OscConfig(&RCC_OscInitStruct);
  if(ret != HAL_OK)
  {
    Error_Handler();
  }
  
/* Select PLL as system clock source and configure  bus clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_D1PCLK1 | RCC_CLOCKTYPE_PCLK1 | \
                                 RCC_CLOCKTYPE_PCLK2  | RCC_CLOCKTYPE_D3PCLK1);

  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;  
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2; 
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2; 
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2; 
  ret = HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4);
  if(ret != HAL_OK)
  {
    Error_Handler();
  }
  
  /*activate CSI clock mondatory for I/O Compensation Cell*/  
  __HAL_RCC_CSI_ENABLE() ;
    
  /* Enable SYSCFG clock mondatory for I/O Compensation Cell */
  __HAL_RCC_SYSCFG_CLK_ENABLE() ;
  
  /* Enables the I/O Compensation Cell */    
  HAL_EnableCompensationCell();  
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
static void Error_Handler(void)
{
  /* User may add here some code to deal with this error */
  while(1)
  {
  }
}

/**
  * @brief  Configure the MPU attributes as Write Through for External SDRAM.
  * @note   The Base Address is SDRAM_DEVICE_ADDR .
  *         The Configured Region Size is 32MB because same as SDRAM size.
  * @param  None
  * @retval None
  */
static void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct;
  
  /* Disable the MPU */
  HAL_MPU_Disable();

  /* Configure the MPU attributes as WT for SDRAM */
  MPU_InitStruct.Enable           = MPU_REGION_ENABLE;
  MPU_InitStruct.BaseAddress      = SDRAM_DEVICE_ADDR;
  MPU_InitStruct.Size             = MPU_REGION_SIZE_32MB;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.IsBufferable     = MPU_ACCESS_NOT_BUFFERABLE;
  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE; 
  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.Number           = MPU_REGION_NUMBER1;
  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL0;
  MPU_InitStruct.SubRegionDisable = 0x00;
  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_DISABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /* Enable the MPU */
  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);
}

/**
  * @brief  CPU L1-Cache enable.
  * @param  None
  * @retval None
  */
static void CPU_CACHE_Enable(void)
{
  /* Enable I-Cache */
  SCB_EnableICache();

  /* Enable D-Cache */
  SCB_EnableDCache();
}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
