CoDeSys+"                      @        @   2.3.9.59    @/    @                             
d +    @                           %Ж d        |   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         фљ66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             фљ66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             фљ66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             фљ66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         фљ66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     фљ66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         фљ66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         фљ66     џџџџ           LEN               STR               §џ                 LEN                                     фљ66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         фљ66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         фљ66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         фљ66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       фљ66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       фљ66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       фљ66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             фљ66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             фљ66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             фљ66     џџџџ    R    @                                                                                          MAIN           pezzo_magazzino                   IX                    %           fine_corsa_nastro                   IX                   %           pistone_avanti                   IX                   %           pistone_indietro                   IX                   %           pulsante                             reset               	           	   nastro_on                   QX                    %        
   pistone_on                   QX                   %           timer                             mytime                            timer_nastro                    TON                    conta_pezzi_nastro                    CTU                 	   mycounter                          	   contatore                                              8{d  @   џџџџ            
 Н   !   §џџџ    ( g      K   u     K        K        K   І                 Г         +     КЛlocalhost   Ќаu    Ъ э  -RД-RИе sЦ6w]           hг№@ pсбuјНaёўџџџМе >    а­  ­г№@       АR        э         Ф­         ­         hќ­џџџџј­ае Т6w        4 шRж   4 г№@      4 г№@ сY И№   Фж №  eџџџџаж ЭB№     ,   ,                                                        K        @   %Ж d  /*BECKCONFI3*/
        !9О @   @           3               
   Standard            	ш8d                        VAR_GLOBAL
END_VAR
                                                                                  "                          Standard
         MAINџџџџ           џџџџ %Ж d                 $ћџџџ                         (nvad oj           Standard %Ж d	%Ж d      аё` Ћ                         	О d                        VAR_CONFIG
END_VAR
                                                                                   '                                   Global_Variables %Ж d	О d                        VAR_GLOBAL
END_VAR
                                                                                               '           	                        Variable_Configuration %Ж d	%Ж d	                        VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '         ,     Њ           MAIN шd	8{d                        PROGRAM MAIN
VAR

	pezzo_magazzino  AT%IX0.0:BOOL;
	fine_corsa_nastro  AT%IX0.6:BOOL;
	pistone_avanti AT%IX0.2:BOOL;
	pistone_indietro AT%IX0.4:BOOL;
	pulsante:BOOL;
         reset:BOOL;

	nastro_on  AT%QX0.0:BOOL;
	pistone_on  AT%QX0.2:BOOL;

	timer:BOOL;
	mytime: TIME;
	timer_nastro: TON;


	conta_pezzi_nastro: CTU;
	mycounter: REAL;
	contatore: BOOL;

END_VAR      џpulsante 	nastro_on     џ	contatore 	nastro_on     џ	pistone_indietropezzo_magazzinoKtimer 
pistone_on     џpistone_avanti 
pistone_on     џ		nastro_onEtimer_nastro At#5sTON  mytime      timer     џ	fine_corsa_nastroEconta_pezzi_nastro resetA3CTU  	mycounter      	contatored                   !   ,   ЂФ           prova О d
    @
  6>d   d                                                                                                         
    @        < Е Ox   џ        џ                                          	   START @                          ѓџ        @
    MAIN.nastro_on   MAIN.nastro_on             @                                                                                                          
    @        2 F Щ Ћ } x   џ        џ                                     MAIN.nastro_on    
   NASTRO @                          ѓџ        @
                       @                                                                                                          
    @        6ЙTw  џџџ     џџџ                                            RESET COUNTER @                          ѓџ        @
     
   MAIN.reset             @             џ   џџ   џ   џџ   џ џ џ РРР                                      §џџџ, 4 4             STANDARD.LIB @fаw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                џџџџџџџџџџџџџџџџ  
             њџџџ  pЬр_`0к        јџџџ   MЈ                        POUs                MAIN      џџџџ          
   Data types  џџџџ              Visualizations                prova  !   џџџџ               Global Variables                 Global_Variables                     Variable_Configuration  	   џџџџ                                                              %Ж d                         	   localhost            P      	   localhost            P      	   localhost            P            =*hр