CoDeSys+I   �                   @        @   2.3.9.59    @/    @                             ��d +    @      �d                   ��b        t2   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    o   C:\TwinCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS    ��              L_TMR                    TON    ��              D_TMR                    TON    ��              P_TRIG                 R_TRIG    ��              SD_TMR                    TON    ��              SD_FF                 RS    ��              DS_FF                 RS    ��              DS_TMR                    TON    ��              SL_FF                 RS    ��              SL_TMR                    TON    ��           
      N            ��              R0            ��              S0            ��              L            ��              D            ��              P            ��              SD            ��	              DS            ��
              SL            ��              T           ��                 Q            ��                       TX5  �    ����    R    @                                                                                          MAIN     r      pezzo_magazzino                   IX                    %           pistone_avanti                   IX                   %           pistone_indietro                   IX                   %           N_pezzi_spinti              	          Uscite
   pistone_on                   QX                   %       TimerPistone	   T_pistone                    TON                    mytimepistone                            timer_pistone                             reset_timer                         Variabili Nastro   fine_corsa_nastro                   IX                   %       Uscite	   nastro_on                   QX                    %       Variabili Giostra   Giostra   	                      POSTO                            i                        Ingressi   giostra_busy                   IX                  %           sensore_colore                    IX                  %           trapano_basso               "    IX                  %           trapano_alto               #    IX                  %           tastatore_basso               %    IX                  %           tastatore_alto               &    IX                  %           pennarello_alto               (    IX                  %           pennarello_basso               )    IX                  %           pistone_PT5_avanti               +    IX                   %           pistone_PT5_indietro               ,    IX                  %           pistone_PT6_avanti               .    IX                  %           pistone_PT6_indietro               /    IX                  %        
   pezzo_baia               1    IX                  %       Uscite   movimento_giostra               4    QX                  %        
   trapano_on               6    QX                  %           trapano_down               7    QX                   %           tastatore_down               9    QX                  %           pennarello_down               ;    QX                  %           pistone_PT5_on               =    QX                  %           pistone_PT6_on               >    QX                  %        	   T_giostra                    TON      @              mytimegiostra              A              timer_giostra               B              reset_timer_giostra               C           	   T_trapano                    TON      E              mytimetrapano              F              timer_trapano               G              reset_timer_trapano               H       F   T_p1: TON;
	mytimep1: TIME;
	timer_p1: BOOL;
	reset_timer_p1: BOOL;   T_pennarello                    TON      O              mytimepennarello              P              timer_pennarello               Q              reset_timer_pennarello               R              mytimep1              T              T_p1                    TON      U              reset_timer_p1               V              timer_p1               W              reset_timer_tastatore               X              mytimetastatore              Y              T_tastatore                    TON      Z              timer_tastatore               [              j              \           
   condizione               ]              INIT          (x := TRUE, _x := TRUE)                  SFCStepType                   NASTRO_RIPOSO                            _NASTRO_RIPOSO                            PISTONE_RIPOSO                            _PISTONE_RIPOSO                            GIOSTRA_RIPOSO                            _GIOSTRA_RIPOSO                         	   P1_RIPOSO                         
   _P1_RIPOSO                            P1_OCCUPATO                            _P1_OCCUPATO                            STEP32                            _STEP32                            COLORE_RIPOSO                            _COLORE_RIPOSO                            TEST_COLORE                            _TEST_COLORE                            TRAPANO_RIPOSO                            _TRAPANO_RIPOSO                            TRAPANO_GIU                            _TRAPANO_GIU                            TRAPANO_AVVIO                            _TRAPANO_AVVIO                         
   TRAPANO_SU                            _TRAPANO_SU                            TASTATORE_RIPOSO                            _TASTATORE_RIPOSO                            TASTATORE_GIU                            _TASTATORE_GIU                            TASTATORE_SU                            _TASTATORE_SU                            PENNARELLO_RIPOSO                            _PENNARELLO_RIPOSO                            PENNARELLO_GIU                            _PENNARELLO_GIU                            PENNARELLO_SU                            _PENNARELLO_SU                         
   PT5_RIPOSO                            _PT5_RIPOSO                         
   PT5_AVANTI                            _PT5_AVANTI                            PT5_FINE                         	   _PT5_FINE                         
   PT6_RIPOSO                            _PT6_RIPOSO                         
   PT6_AVANTI                            _PT6_AVANTI                            PT6_FINE                         	   _PT6_FINE                         
   PT7_RIPOSO                            _PT7_RIPOSO                            GIOSTRA_PRONTA                            _GIOSTRA_PRONTA                         
   GIOSTRA_ON                            _GIOSTRA_ON                            PISTONEAVANTI                            _PISTONEAVANTI                            NASTRO_AVANTI                            _NASTRO_AVANTI                                             ?�d  @    ����            
 �   ����   #   $   "   !   <   A   H   /   +   *   B       ( �3      K   �3     K   �3     K   �3     K   �3                 �3         +     ��localhost  T�&�� obsw           U        L�     �� ��^w   ��d   >��     �k!@�&          �            ���       ��      U���� �� �]sw��@ �]sw          !� 8�    ��@       ��@ ��d�� � �� d�� �d������ ;�     ,   ,                                                        K        @   ��b�5  /*BECKCONFI3*/
        !9� @   @   �   �     3               
   Standard            	��d       *s��           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 ��             Standard
         MAIN����               ��b                 $����                           ����             Standard ��b	��b                                      	�d                       VAR_CONFIG
END_VAR
                                                                                   '                  �              Global_Variables ��b	�
d                        VAR_GLOBAL
END_VAR
                                                                                               '           	     r g t (            Variable_Configuration ��b	��b	                        VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   $   , � � �P           ALTEZZA ��d	��b                      .   TYPE ALTEZZA: (nienteA,basso, alto);
END_TYPE             #   , � � �6           COLORE ��d	��b                      .   TYPE COLORE: (nienteC,rosso, altro);
END_TYPE             "   , h h �           PEZZO ��b	��b                      R   TYPE PEZZO :
STRUCT
	Colore : COLORE;
	Altezza : ALTEZZA;
END_STRUCT
END_TYPE             !   , g 4 ~�           POSTO ��d	��d      ��    ��        S   TYPE POSTO :
STRUCT
	Presenza :BOOL:=FALSE;
	Pezzo :PEZZO;
END_STRUCT
END_TYPE                  ,   Rf           MAIN ��d	?�d                        PROGRAM MAIN
VAR

(*Variabili Pistone*)
         (*Ingressi*)
	pezzo_magazzino  AT%IX0.0:BOOL;
	pistone_avanti AT%IX0.2:BOOL;
	pistone_indietro AT%IX0.4:BOOL;
         N_pezzi_spinti: INT:=0;
         (*Uscite*)
	pistone_on  AT%QX0.2:BOOL;
        (*TimerPistone*)
	T_pistone: TON;
	mytimepistone: TIME;
	timer_pistone: BOOL;
	reset_timer: BOOL;

(*Variabili Nastro*)
         (*Ingressi*)
	fine_corsa_nastro  AT%IX0.6:BOOL;
         (*Uscite*)
	nastro_on  AT%QX0.0:BOOL;


(*Variabili Giostra*)
        Giostra: ARRAY[0..7] OF POSTO;
	i: INT :=0;

        (*Ingressi*)
        giostra_busy AT %IX6.1: BOOL;

        sensore_colore AT %IX2.1: BOOL;

        trapano_basso AT %IX2.5: BOOL ;
        trapano_alto AT %IX2.3: BOOL;

        tastatore_basso AT %IX5.3: BOOL;
        tastatore_alto AT %IX2.7: BOOL;

        pennarello_alto AT %IX5.4: BOOL;
        pennarello_basso AT %IX5.5: BOOL;

        pistone_PT5_avanti AT %IX5.0: BOOL;
        pistone_PT5_indietro AT %IX5.1: BOOL;

        pistone_PT6_avanti AT %IX5.7: BOOL;
        pistone_PT6_indietro AT %IX5.6: BOOL;

        pezzo_baia AT %IX5.2: BOOL;

        (*Uscite*)
        movimento_giostra AT %QX3.4: BOOL;

        trapano_on AT %QX3.7:BOOL;
        trapano_down AT %QX7.0: BOOL;

        tastatore_down AT %QX3.6: BOOL;

        pennarello_down AT %QX3.3: BOOL;

        pistone_PT5_on AT %QX3.1:BOOL ;
        pistone_PT6_on AT%QX3.5: BOOL;

	T_giostra: TON;
         mytimegiostra: TIME;
	timer_giostra: BOOL;
	reset_timer_giostra: BOOL;

	T_trapano: TON;
	mytimetrapano: TIME;
	timer_trapano: BOOL;
	reset_timer_trapano: BOOL;

	(*T_p1: TON;
	mytimep1: TIME;
	timer_p1: BOOL;
	reset_timer_p1: BOOL;*)

	T_pennarello: TON;
	mytimepennarello: TIME;
	timer_pennarello: BOOL;
	reset_timer_pennarello: BOOL;

	mytimep1: TIME;
	T_p1: TON;
	reset_timer_p1: BOOL;
	timer_p1: BOOL;
	reset_timer_tastatore: BOOL;
	mytimetastatore: TIME;
	T_tastatore: TON;
	timer_tastatore: BOOL;
	j: INT;
	condizione: BOOL;
END_VAR       Init  3        TRUE           nastro_riposo (      A pnall           Action nastro_riposo ��d      �  	nastro_ond                 pistone_riposo )     12) D .P           Action pistone_riposo ��d      �pistone_avanti 
pistone_ond       	        giostra_riposo ,     ) D .Pzo           Action giostra_riposo ��d      �  movimento_giostrad       (   NOT giostra_busy OR  Giostra[i].Presenza        	   p1_riposo A     tr(1i)OD           Action p1_riposo ��d      �T_p1 At#2sTON  mytimep1      timer_p1 reset_timer_p1d    H      A pnall           Action p1_riposo - Entry ��dy   FOR j:=0 TO 7 BY 1  DO
IF(Giostra[j].Presenza) THEN condizione:=TRUE;
EXIT;
ELSE condizione:=FALSE;
END_IF;
END_FOR;       NOT fine_corsa_nastro         p1_occupato B      A pnall           Action p1_occupato ��dF   Giostra[(8-i)MOD 8].Presenza:=TRUE;
N_pezzi_spinti:=N_pezzi_spinti-1;       TRUE   M   condizione AND(  N_pezzi_spinti <0 OR ( NOT nastro_on AND N_pezzi_spinti =0))         Step32              colore_riposo      B   Giostra[(9-i) MOD 8].Presenza OR NOT Giostra[(9-i) MOD 8].Presenza         test_colore :     12) D .P           Action test_colore ��d�   IF (sensore_colore=TRUE) THEN
Giostra[(9-i) MOD 8].Pezzo.Colore:=rosso;
ELSE
Giostra[(9-i) MOD 8].Pezzo.Colore:=altro;
END_IF
            trapano_riposo        r   trapano_alto AND  Giostra[(10-i) MOD 8].Pezzo.Colore=rosso AND Giostra[(10-i) MOD 8].Presenza AND NOT giostra_busy         trapano_giu >     ) D .Pzo           Action trapano_giu ��d      �  trapano_downd          trapano_basso         trapano_avvio ?     tr(1i)OD           Action trapano_avvio ��d      �  
trapano_on     �	�reset_timer_trapanoE	T_trapano At#2sTON  mytimetrapano      timer_trapano reset_timer_trapanod          timer_trapano AND trapano_down   e   trapano_alto AND ( Giostra[(10-i) MOD 8].Presenza=FALSE OR Giostra[(10-i) MOD 8].Pezzo.Colore=altro )      
   trapano_su =     12) D .P           Action trapano_su ��d      �  trapano_down     �  
trapano_ond               tastatore_riposo        F   tastatore_alto AND Giostra[(11-i) MOD 8].Presenza AND NOT giostra_busy         tastatore_giu 3      A pnall           Action tastatore_giu ��d      �  tastatore_down     �	�reset_timer_tastatoreET_tastatore At#2sTON  mytimetastatore      timer_tastatore reset_timer_tastatored          tastatore_basso   5   tastatore_alto AND NOT Giostra[(11-i) MOD 8].Presenza         tastatore_su 4     ) D .Pzo           Action tastatore_su ��d      �  tastatore_downd               pennarello_riposo        u   pennarello_alto AND  Giostra[(12-i) MOD 8].Pezzo.Colore=altro AND Giostra[(12-i) MOD 8].Presenza AND NOT giostra_busy         pennarello_giu .     12) D .P           Action pennarello_giu ��d      �  pennarello_down     �	�reset_timer_pennarelloET_pennarello At#2sTON  mytimepennarello      timer_pennarello reset_timer_pennarellod       %    pennarello_down AND timer_pennarello   h   pennarello_alto AND ( Giostra[(12-i) MOD 8].Presenza=FALSE OR Giostra[(12-i) MOD 8].Pezzo.Colore=rosso )         pennarello_su 6     tr(1i)OD           Action pennarello_su ��d      �  pennarello_downd            
   PT5_riposo        z   pistone_PT5_indietro AND  Giostra[(13-i) MOD 8].Pezzo.Colore=altro AND Giostra[(13-i) MOD 8].Presenza AND NOT giostra_busy      
   PT5_Avanti 0      A pnall           Action PT5_Avanti ��d      �  pistone_PT5_ond      7     �?��              Action PT5_Avanti - Exit ��dT   Giostra[(13-i) MOD 8].Presenza:=FALSE;
Giostra[(13-i) MOD 8].Pezzo.Colore:=nienteC;   pistone_PT5_avanti   m   pistone_PT5_indietro AND ( Giostra[(13-i) MOD 8].Presenza=FALSE OR Giostra[(13-i) MOD 8].Pezzo.Colore=rosso )         PT5_fine 5     �?��              Action PT5_fine ��d      �  pistone_PT5_ond            
   PT6_riposo        �   pistone_PT6_indietro AND Giostra[(14-i) MOD 8].Presenza AND  Giostra[(14-i) MOD 8].Pezzo.Colore=rosso  AND NOT giostra_busy AND NOT pezzo_baia      
   PT6_Avanti 9     �?��              Action PT6_Avanti ��d      �  pistone_PT6_ond      <     �?��              Action PT6_Avanti - Exit ��dT   Giostra[(14-i) MOD 8].Presenza:=FALSE;
Giostra[(14-i) MOD 8].Pezzo.Colore:=nienteC;   pistone_PT6_avanti   
   pezzo_baia   �   (pistone_PT6_indietro AND NOT giostra_busy OR ( Giostra[(14-i) MOD 8].Presenza=FALSE OR  Giostra[(14-i) MOD 8].Pezzo.Colore=altro))         PT6_fine ;     �?��              Action PT6_fine ��d      �  pistone_PT6_ond            
   PT7_riposo          r   trapano_alto AND tastatore_alto AND pennarello_alto AND pistone_PT5_indietro AND pistone_PT6_indietro AND timer_p1         giostra_pronta 2     �?��              Action giostra_pronta ��d      �	�reset_timer_giostraE	T_giostra At#1.5sTON  mytimegiostra      reset_timer_giostra timer_giostrad          timer_giostra      
   giostra_on 1     �?��              Action giostra_on ��d      �  movimento_giostrad    /     �?��              Action giostra_on - Entry ��d+   IF( i=7) THEN i:=0;
ELSE i:=i+1;
END_IF
     NOT giostra_BUSY     giostra_riposo    D   pistone_indietro AND pezzo_magazzino  AND  i<8 AND N_pezzi_spinti =0         pistoneAvanti -     �?��              Action pistoneAvanti ��d      �  
pistone_ond      *     �?��              Action pistoneAvanti - Exit ��d!   N_pezzi_spinti:=N_pezzi_spinti+1;   pistone_avanti     pistone_riposo    %   N_pezzi_spinti>0 AND NOT giostra_busy         nastro_avanti +     �?��              Action nastro_avanti ��d      �  	nastro_ond       �   giostra_busy OR (Giostra[0].Presenza AND Giostra[1].Presenza AND Giostra[2].Presenza AND Giostra[3].Presenza AND Giostra[4].Presenza AND Giostra[5].Presenza AND Giostra[6].Presenza AND Giostra[7].Presenza)     nastro_riposod                    ����, � � '            STANDARD.LIB @f�w5!   Iecsfc.lib 12.5.98 12:03:00 @d,X5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @                                             2                ����������������  
             ����                  ����  X���hÀ�                      POUs               MAIN      ����           
   Data types                ALTEZZA  $                   COLORE  #                   PEZZO  "                   POSTO  !   ����              Visualizations  ����              Global Variables                 Global_Variables                     Variable_Configuration  	   ����                                                              ��b                         	   localhost            P      	   localhost            P      	   localhost            P            �g�q