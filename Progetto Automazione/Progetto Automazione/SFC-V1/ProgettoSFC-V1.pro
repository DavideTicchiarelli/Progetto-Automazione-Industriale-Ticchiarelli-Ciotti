CoDeSys+S                      @        @   2.3.9.59    @/    @                             [Ud +    @      Јd                   хb        Џ<   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         фљ66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             фљ66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             фљ66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             фљ66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         фљ66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     фљ66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         фљ66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         фљ66     џџџџ           LEN               STR               §џ                 LEN                                     фљ66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         фљ66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         фљ66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         фљ66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       фљ66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       фљ66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       фљ66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             фљ66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             фљ66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             фљ66     џџџџ    o   C:\TwinCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS    §џ              L_TMR                    TON    §џ              D_TMR                    TON    §џ              P_TRIG                 R_TRIG    §џ              SD_TMR                    TON    §џ              SD_FF                 RS    §џ              DS_FF                 RS    §џ              DS_TMR                    TON    §џ              SL_FF                 RS    §џ              SL_TMR                    TON    §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       TX5      џџџџ    R    @                                                                                          MAIN           pezzo_magazzino                   IX                    %    9   sensore che segnala la presenza di un pezzo nel magazzino   pistone_avanti                   IX                   %    *   sensore che segnala se il pistone ш avanti   pistone_indietro                   IX                   %    ,   sensore che segnala se il pistone ш indietro   N_pezzi_spinti              	       E   variabile che incrementa di 1 quando viene spinto un pezzo sul nastro
   pistone_on                   QX                   %       attuatore del pistone   fine_corsa_nastro                   IX                   %    :   sensore che segnala il passaggio di un pezzo a fine nastro	   nastro_on                   QX                    %       attuatore del nastro   Giostra   	                      POSTO                        array di 8 posti   i                     V   indice che incrementa ad ogni movimento della giostra e usato per lavorare con l'array   giostra_busy                   IX                  %    .   sensore che segnala il movimento della giostra   movimento_giostra                   QX                  %    )   attuatore giostra che la muove di 1 posto	   T_giostra                    TON                timer giostra di 1s   mytimegiostra                            timer_giostra                             reset_timer_giostra                             sensore_colore                   IX                  %    +   sensore che segnala i pezzi di colore rosso   trapano_basso                    IX                  %    )   sensore che segnala se il trapano ш basso   trapano_alto               !    IX                  %    '   ensore che segnala se il trapano ш alto
   trapano_on               "    QX                  %    3   attuatore per l'attivazione della punta del trapano   trapano_down               #    QX                   %    /   attuatore per fare scendere o salire il trapano	   T_trapano                    TON      %          timer trapano di 1s   mytimetrapano              &              timer_trapano               '              reset_timer_trapano               (              tastatore_basso               *    IX                  %    +   sensore che segnala se il tastatore ш basso   tastatore_alto               +    IX                  %    *   sensore che segnala se il tastatore ш alto   tastatore_down               ,    QX                  %       attuatore tastatore   tastatore_lettura             -       *   fornisce la lettura dell'altezza dei pezzi   T_tastatore                    TON      /          timer tastatore di 1s   mytimetastatore              0              timer_tastatore               1              reset_timer_tastatore               2              pennarello_alto               4    IX                  %    +   sensore che segnala se il pennarello ш alto   pennarello_basso               5    IX                  %    ,   sensore che segnala se il pennarello ш basso   pennarello_down               6    QX                  %       attuatore pennarello   T_pennarello                    TON      8          timer pennarello di 1s   mytimepennarello              9              timer_pennarello               :              reset_timer_pennarello               ;              pistone_PT5_avanti               =    IX                   %    ,   sensore che segnala se il pistone 5 ш avanti   pistone_PT5_indietro               >    IX                  %    .   sensore che segnala se il pistone 5 ш indietro   pistone_PT5_on               ?    QX                  %       attuatore pistone 5   pistone_PT6_avanti               A    IX                  %    ,   sensore che segnala se il pistone 6 ш avanti   pistone_PT6_indietro               B    IX                  %    .   sensore che segnala se il pistone 6 ш indietro   pistone_PT6_on               C    QX                  %       attuatore pistone 6
   pezzo_baia               D    IX                  %    6   sensore che segnala la presenza di un pezzo sulla baia   j              I          Indice  FOR 1_posto_true
   posto_true               J       0   Condizione di ALMENO 1 posto con presenza a TRUE   k              L          Indice  FOR solo_pezzi_rossi   solo_pezzi_rossi               M       ,   Condizione SOLO pezzi rossi e  baia occupata   h              O          Indice FOR giostra_piena   giostra_piena               P       *   Condizione TUTTI i pezzi con presenza TRUE   p              R          Indice FOR giostra_vuota   giostra_vuota               S       1   Condizione se ho TUTTI i pezzi con presenza FALSE   blocco_giostra               U       X   Condizione per bloccare la giostra se ho un pezzo rosso in PT6 e la  baia ш giр occupata   INIT          (x := TRUE, _x := TRUE)                  SFCStepType                   NASTRO_RIPOSO                            _NASTRO_RIPOSO                            PISTONE_RIPOSO                            _PISTONE_RIPOSO                            GIOSTRA_RIPOSO                            _GIOSTRA_RIPOSO                         	   P1_RIPOSO                         
   _P1_RIPOSO                            P1_OCCUPATO                            _P1_OCCUPATO                            P1_FINE                            _P1_FINE                            COLORE_RIPOSO                            _COLORE_RIPOSO                            PEZZO_SU_SENSORE                            _PEZZO_SU_SENSORE                            COLORE_ROSSO                            _COLORE_ROSSO                            ALTRO_COLORE                            _ALTRO_COLORE                            COLORE_FINE                            _COLORE_FINE                            TRAPANO_RIPOSO                            _TRAPANO_RIPOSO                            TRAPANO_GIU                            _TRAPANO_GIU                            TRAPANO_AVVIO                            _TRAPANO_AVVIO                         
   TRAPANO_SU                            _TRAPANO_SU                            TRAPANO_FINE                            _TRAPANO_FINE                            TASTATORE_RIPOSO                            _TASTATORE_RIPOSO                            TASTATORE_GIU                            _TASTATORE_GIU                            TASTATORE_SU                            _TASTATORE_SU                            TASTATORE_FINE                            _TASTATORE_FINE                            PENNARELLO_RIPOSO                            _PENNARELLO_RIPOSO                            PENNARELLO_GIU                            _PENNARELLO_GIU                            PENNARELLO_SU                            _PENNARELLO_SU                            PENNARELLO_FINE                            _PENNARELLO_FINE                         
   PT5_RIPOSO                            _PT5_RIPOSO                         
   PT5_AVANTI                            _PT5_AVANTI                            PT5_INDIETRO                            _PT5_INDIETRO                            PT5_FINE                         	   _PT5_FINE                         
   PT6_RIPOSO                            _PT6_RIPOSO                            PEZZO_PRESENTE                            _PEZZO_PRESENTE                         
   PT6_AVANTI                            _PT6_AVANTI                            PT6_INDIETRO                            _PT6_INDIETRO                            PT6_FINE                         	   _PT6_FINE                         
   PT7_RIPOSO                            _PT7_RIPOSO                            GIOSTRA_PRONTA                            _GIOSTRA_PRONTA                         
   GIOSTRA_ON                            _GIOSTRA_ON                            CONTROLLO_GIOSTRA                            _CONTROLLO_GIOSTRA                            BAIA2_ATTESA                            _BAIA2_ATTESA                            BAIA2_LIBERA                            _BAIA2_LIBERA                            PISTONEAVANTI                            _PISTONEAVANTI                            NASTRO_AVANTI                            _NASTRO_AVANTI                                             [Ud  @  џџџџ            
 З   §џџџ   #   $   "   !   	       ;   +   2   B   ?   =   L   3   D   .   <   ( к=      K   ш=     K   і=     K   >     K   >                 &>         +     КЛlocalhost  TР&ие obsw           U        Lе     №ж РЬ^w   аd   >Ё     Иk!@Р&                      Ф       ќ      Uј№ж ќе Ю]swи№@ Ю]sw          ! 8ж    и№@       и№@ d№ и №ж d№ №dџџџџќж ;№     ,   ,                                                        K        @   ХЮbћ?  /*BECKCONFI3*/
        !9О @   @           3               
   Standard            	[Ud       *sЃ           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 мЗ             Standard
         MAINџџџџ               [Ud                 $ћџџџ                           џџњ             Standard хb	хb                                      	[Ud                       VAR_CONFIG
END_VAR
                                                                                   '                  Н              Global_Variables ХЮb	ђ
d                        VAR_GLOBAL
END_VAR
                                                                                               '           ,                        TwinCAT_Configuration fСKd	[Ud,     р?џџ           t   (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	MAIN.tastatore_lettura AT %IB8 : WORD;
END_VAR                                                                                               '           	   , h h D]           Variable_Configuration OПKd	OПKd	                        VAR_CONFIG

END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   $   ,   цP           ALTEZZA [	d	ХЮb                      <   TYPE ALTEZZA: (nienteA,basso, alto);
END_TYPE






             #   ,   Ь6           COLORE Вd	ХЮb                      .   TYPE COLORE: (nienteC,rosso, altro);
END_TYPE             "   , h h В           PEZZO JUd	JUd                         TYPE PEZZO :
STRUCT
	Colore : COLORE;
	Altezza : ALTEZZA;
	Trapanato:BOOL:=FALSE;
	Tastato:BOOL:=FALSE;
END_STRUCT
END_TYPE


             !   , g 4 ~ш           POSTO цбd	цбd      иџ            S   TYPE POSTO :
STRUCT
	Presenza :BOOL:=FALSE;
	Pezzo :PEZZO;
END_STRUCT
END_TYPE                  ,   Rf           MAIN [Ud	[Ud                      Ш  PROGRAM MAIN
VAR

(*Variabili Pistone*)
         (*Ingressi*)
	pezzo_magazzino  AT%IX0.0:BOOL; (*sensore che segnala la presenza di un pezzo nel magazzino*)
	pistone_avanti AT%IX0.2:BOOL; (*sensore che segnala se il pistone ш avanti*)
	pistone_indietro AT%IX0.4:BOOL; (*sensore che segnala se il pistone ш indietro*)
         N_pezzi_spinti: INT:=0; (*variabile che incrementa di 1 quando viene spinto un pezzo sul nastro*)
         (*Uscite*)
	pistone_on  AT%QX0.2:BOOL; (*attuatore del pistone*)

(*Variabili Nastro*)
         (*Ingressi*)
	fine_corsa_nastro  AT%IX0.6:BOOL; (*sensore che segnala il passaggio di un pezzo a fine nastro*)
         (*Uscite*)
	nastro_on  AT%QX0.0:BOOL; (*attuatore del nastro*)

(*Variabili Giostra*)
        Giostra: ARRAY[0..7] OF POSTO;(*array di 8 posti*)
	i: INT :=0; (*indice che incrementa ad ogni movimento della giostra e usato per lavorare con l'array*)
        giostra_busy AT %IX6.1: BOOL; (*sensore che segnala il movimento della giostra*)
        movimento_giostra AT %QX3.4: BOOL; (*attuatore giostra che la muove di 1 posto*)

        T_giostra: TON; (*timer giostra di 1s*)
        mytimegiostra: TIME;
        timer_giostra: BOOL;
        reset_timer_giostra: BOOL;

        sensore_colore AT %IX2.1: BOOL; (*sensore che segnala i pezzi di colore rosso*)

        trapano_basso AT %IX2.5: BOOL ; (*sensore che segnala se il trapano ш basso*)
        trapano_alto AT %IX2.3: BOOL; (*ensore che segnala se il trapano ш alto*)
        trapano_on AT %QX3.7:BOOL; (*attuatore per l'attivazione della punta del trapano*)
        trapano_down AT %QX7.0: BOOL; (*attuatore per fare scendere o salire il trapano*)

        T_trapano: TON; (*timer trapano di 1s*)
        mytimetrapano: TIME;
        timer_trapano: BOOL;
        reset_timer_trapano: BOOL;

        tastatore_basso AT %IX5.3: BOOL; (*sensore che segnala se il tastatore ш basso*)
        tastatore_alto AT %IX2.7: BOOL; (*sensore che segnala se il tastatore ш alto*)
        tastatore_down AT %QX3.6: BOOL; (*attuatore tastatore*)
        tastatore_lettura AT%I*:WORD; (*fornisce la lettura dell'altezza dei pezzi*)

        T_tastatore: TON; (*timer tastatore di 1s*)
        mytimetastatore: TIME;
        timer_tastatore: BOOL;
        reset_timer_tastatore: BOOL;

        pennarello_alto AT %IX5.4: BOOL; (*sensore che segnala se il pennarello ш alto*)
        pennarello_basso AT %IX5.5: BOOL; (*sensore che segnala se il pennarello ш basso*)
        pennarello_down AT %QX3.3: BOOL; (*attuatore pennarello*)

        T_pennarello: TON;(*timer pennarello di 1s*)
        mytimepennarello: TIME;
        timer_pennarello: BOOL;
        reset_timer_pennarello: BOOL;

        pistone_PT5_avanti AT %IX5.0: BOOL; (*sensore che segnala se il pistone 5 ш avanti*)
        pistone_PT5_indietro AT %IX5.1: BOOL; (*sensore che segnala se il pistone 5 ш indietro*)
        pistone_PT5_on AT %QX3.1:BOOL ; (*attuatore pistone 5*)

        pistone_PT6_avanti AT %IX5.7: BOOL;  (*sensore che segnala se il pistone 6 ш avanti*)
        pistone_PT6_indietro AT %IX5.6: BOOL; (*sensore che segnala se il pistone 6 ш indietro*)
        pistone_PT6_on AT%QX3.5: BOOL; (*attuatore pistone 6*)
        pezzo_baia AT %IX5.2: BOOL; (*sensore che segnala la presenza di un pezzo sulla baia*)


(*Variabili utilizzate nel FOR per la verificare alcune condizioni *)

	j: INT; (*Indice  FOR 1_posto_true*)
	posto_true: BOOL; (*Condizione di ALMENO 1 posto con presenza a TRUE*)

	k: INT; (*Indice  FOR solo_pezzi_rossi*)
	solo_pezzi_rossi: BOOL; (*Condizione SOLO pezzi rossi e  baia occupata*)

	h: INT; (*Indice FOR giostra_piena*)
	giostra_piena: BOOL; (*Condizione TUTTI i pezzi con presenza TRUE*)

	p: INT; (*Indice FOR giostra_vuota*)
	giostra_vuota: BOOL; (*Condizione se ho TUTTI i pezzi con presenza FALSE*) (*forse ridondante*)

	blocco_giostra: BOOL; (*Condizione per bloccare la giostra se ho un pezzo rosso in PT6 e la  baia ш giр occupata*)

END_VAR       Init  3        TRUE           nastro_riposo (     р?џџ              Action nastro_riposo XUd      џ  	nastro_ond                 pistone_riposo R     р?џџ              Action pistone_riposo XUd      џ  
pistone_ond               giostra_riposo      1   NOT giostra_busy OR  Giostra[(8-i)MOD 8].Presenza        	   p1_riposo ;     р?џџ              Action p1_riposo XUdє   (*controlla se ho solo almeno un pezzo con presenza true, se ш vera la giostra puђ passare il ramo dl posto1 *)

FOR j:=0 TO 7 BY 1  DO
IF(Giostra[j].Presenza) THEN posto_true:=TRUE;
EXIT;
ELSE posto_true:=FALSE;
END_IF;


END_FOR;

         NOT fine_corsa_nastro         p1_occupato B     р?џџ              Action p1_occupato XUdF   Giostra[(8-i)MOD 8].Presenza:=TRUE;
N_pezzi_spinti:=N_pezzi_spinti-1;       Giostra[(8-i)MOD 8].Presenza   M   posto_true AND(  N_pezzi_spinti <0 OR ( NOT nastro_on AND N_pezzi_spinti =0))         p1_fine              colore_riposo        !   NOT giostra[(9-i) MOD 8].Presenza      giostra[(9-i) MOD 8].Presenza         pezzo_su_sensore           sensore_colore         colore_rosso 8     р?џџ              Action colore_rosso XUd+   Giostra[(9-i) MOD 8].Pezzo.Colore := rosso;    )   Giostra[(9-i) MOD 8].Pezzo.Colore = rosso      NOT sensore_colore         altro_colore @     р?џџ              Action altro_colore XUd+   Giostra[(9-i) MOD 8].Pezzo.Colore := altro;    )   Giostra[(9-i) MOD 8].Pezzo.Colore = altro         colore_fine              trapano_riposo        Ѓ   trapano_alto AND  Giostra[(10-i) MOD 8].Pezzo.Colore=rosso AND Giostra[(10-i) MOD 8].Presenza AND NOT giostra_busy  AND  NOT Giostra [(10-i) MOD 8].Pezzo.Trapanato         trapano_giu >     р?џџ              Action trapano_giu XUd      џ  trapano_downd          trapano_basso         trapano_avvio ?     р?џџ              Action trapano_avvio XUd      џ  
trapano_on     џ	reset_timer_trapanoE	T_trapano At#1sTON  mytimetrapano      timer_trapano reset_timer_trapanod          timer_trapano AND trapano_down      
   trapano_su F     р?џџ              Action trapano_su XUd      џ  trapano_down     џ  
trapano_ond      6     р?џџ              Action trapano_su - Exit XUd,   Giostra[(10-i) MOD 8].Pezzo.Trapanato:=TRUE;   trapano_alto   e   trapano_alto AND ( Giostra[(10-i) MOD 8].Presenza=FALSE OR Giostra[(10-i) MOD 8].Pezzo.Colore=altro )   ;   Giostra[(10-i) MOD 8].Pezzo.Trapanato=TRUE AND trapano_alto         trapano_fine              tastatore_riposo        r   tastatore_alto AND Giostra[(11-i) MOD 8].Presenza AND NOT giostra_busy AND NOT Giostra[(11-i) MOD 8].Pezzo.Tastato         tastatore_giu 3     р?џџ              Action tastatore_giu XUd      џ  tastatore_down     џ	reset_timer_tastatoreET_tastatore At#1sTON  mytimetastatore      timer_tastatore reset_timer_tastatored          tastatore_basso         tastatore_su =     р?џџ              Action tastatore_su XUd      џ  tastatore_downd      L     р?џџ              Action tastatore_su - Exit XUd*   Giostra[(11-i) MOD 8].Pezzo.Tastato:=TRUE;   tastatore_alto   a   tastatore_alto AND NOT Giostra[(11-i) MOD 8].Presenza AND NOT Giostra[(11-i) MOD 8].Pezzo.Tastato   ;   Giostra[(11-i) MOD 8].Pezzo.Tastato=TRUE AND tastatore_alto         tastatore_fine              pennarello_riposo N     р?џџ              Action pennarello_riposo XUdb   IF(Giostra[(12-i) MOD 8].Pezzo.Trapanato) THEN Giostra[(12-i) MOD 8].Pezzo.Colore:=rosso;
END_IF;      u   pennarello_alto AND  Giostra[(12-i) MOD 8].Pezzo.Colore=altro AND Giostra[(12-i) MOD 8].Presenza AND NOT giostra_busy         pennarello_giu .     р?џџ              Action pennarello_giu XUd      џ  pennarello_down     џ	reset_timer_pennarelloET_pennarello At#1sTON  mytimepennarello      timer_pennarello reset_timer_pennarellod       %    pennarello_down AND timer_pennarello         pennarello_su D     р?џџ              Action pennarello_su XUd      џ  pennarello_downd           pennarello_alto   g   pennarello_alto AND ( Giostra[(12-i) MOD 8].Presenza=FALSE OR Giostra[(12-i) MOD 8].Pezzo.Colore=rosso)         pennarello_fine           
   PT5_riposo        z   pistone_PT5_indietro AND  Giostra[(13-i) MOD 8].Pezzo.Colore=altro AND Giostra[(13-i) MOD 8].Presenza AND NOT giostra_busy      
   PT5_Avanti 0     р?џџ              Action PT5_Avanti XUd      џ  pistone_PT5_ond      7     р?џџ              Action PT5_Avanti - Exit XUdК   Giostra[(13-i) MOD 8].Presenza := FALSE;
Giostra[(13-i) MOD 8].Pezzo.Altezza := nienteA;
Giostra[(13-i) MOD 8].Pezzo.Colore := nienteC;
Giostra[(13-i) MOD 8].Pezzo.Tastato := FALSE;
   pistone_PT5_avanti         PT5_Indietro I     р?џџ              Action PT5_Indietro XUd      џ  pistone_PT5_ond          pistone_PT5_indietro   l   pistone_PT5_indietro AND ( Giostra[(13-i) MOD 8].Presenza=FALSE OR Giostra[(13-i) MOD 8].Pezzo.Colore=rosso)         PT5_fine           
   PT6_riposo            Giostra[(14-i) MOD 8].Presenza         Pezzo_presente        i   pistone_PT6_Indietro AND Giostra[(14-i) MOD 8].Pezzo.Colore=Rosso AND NOT Pezzo_Baia AND NOT Giostra_Busy      
   PT6_Avanti 9     р?џџ              Action PT6_Avanti XUd      џ  pistone_PT6_ond          pistone_PT6_avanti         PT6_Indietro /     р?џџ              Action PT6_Indietro XUd      џ  pistone_PT6_ond      E     р?џџ              Action PT6_Indietro - Exit XUdх   Giostra[(14-i) MOD 8].Presenza := FALSE;
Giostra[(14-i) MOD 8].Pezzo.Altezza := nienteA;
Giostra[(14-i) MOD 8].Pezzo.Colore := nienteC;
Giostra[(14-i) MOD 8].Pezzo.Trapanato:=FALSE;
Giostra[(14-i) MOD 8].Pezzo.Tastato:=FALSE;   pistone_PT6_Indietro   0   NOT (Giostra[(14-i) MOD 8].Pezzo.Colore = Rosso)   ;   Pezzo_Baia AND (Giostra[(14-i) MOD 8].Pezzo.Colore = Rosso)   #   NOT  Giostra[(14-i) MOD 8].Presenza         PT6_fine           
   PT7_riposo          e   trapano_alto AND tastatore_alto AND pennarello_alto AND pistone_PT5_indietro AND pistone_PT6_indietro         giostra_pronta 2     р?џџ              Action giostra_pronta XUd      џ	reset_timer_giostraE	T_giostra At#1sTON  mytimegiostra      reset_timer_giostra timer_giostrad    A     р?џџ              Action giostra_pronta - Entry XUdљ   (*controlla se il vettore dei posti ш vuoto e se ш vera attiva la transizione che  rimanda allo stato giostra riposo*)
FOR p:=0 TO 7 BY 1  DO
IF(NOT Giostra[p].Presenza) THEN giostra_vuota:=TRUE;
ELSE giostra_vuota:=FALSE; EXIT;
END_IF;
END_FOR       timer_giostra      
   giostra_on 1     р?џџ              Action giostra_on XUd      џ  movimento_giostrad          TRUE         controllo_giostra C     р?џџ              Action controllo_giostra XUdЊ  IF( i=7) THEN i:=0;
ELSE i:=i+1;
END_IF;

(*se la baia ш occupata controlla s e ho solo pezzi rossi, se ш vera la giostra continua a girare senza utilizzare attuatori (rimanda allo stato giostra_pronta) *)
IF(pezzo_baia=TRUE) THEN

FOR k:=0 TO 7 BY 1  DO
IF(Giostra[k].Pezzo.Colore=rosso  ) THEN solo_pezzi_rossi:=TRUE;
ELSE IF  (Giostra[k].Pezzo.Colore=altro) THEN solo_pezzi_rossi:=FALSE ; EXIT; END_IF;
END_IF;
END_FOR;

END_IF;

(*se la baia non ш occupata controlla se ho almeno 1 pezzo NON rosso*)
IF(pezzo_baia=FALSE) THEN

FOR k:=0 TO 7 BY 1  DO
IF(Giostra[k].Pezzo.Colore=altro  ) THEN solo_pezzi_rossi:=FALSE; EXIT; END_IF;
END_FOR;

END_IF




 H     р?џџ               Action controllo_giostra - Entry XUd      џ  movimento_giostrad       )   NOT giostra_BUSY AND NOT solo_pezzi_rossi   %   NOT giostra_busy AND solo_pezzi_rossi         baia2_attesa :     р?џџ              Action baia2_attesa XUdГ  (*controlla se la baia ш occupata e ha davanti un pezzo rosso se ш vera blocca tutto*)


IF(pezzo_baia AND Giostra[(14-i) MOD 8].Presenza)
THEN blocco_giostra:=TRUE;

ELSE blocco_giostra:=FALSE;

END_IF;


(*FOR t:=0 TO 7 BY 1  DO
IF(NOT Giostra[t].Pezzo.Trapanato ) THEN lavorati:=FALSE;
ELSE  lavorati:=TRUE ; EXIT;
END_IF;
IF(NOT Giostra[t].Pezzo.Tastato ) THEN lavorati:=FALSE;
ELSE  lavorati:=TRUE ; EXIT;
END_FOR;*)      )   NOT blocco_giostra  AND fine_corsa_nastro         baia2_libera         TRUE   (   blocco_giostra AND NOT fine_corsa_nastro     giostra_riposo    giostra_vuota     giostra_riposo    `   pistone_indietro AND pezzo_magazzino  AND NOT Giostra[(8-i) MOD 8].Presenza AND N_pezzi_spinti=0         pistoneAvanti -     р?џџ              Action pistoneAvanti XUd      џ  
pistone_ond      *     р?џџ              Action pistoneAvanti - Exit XUd!   N_pezzi_spinti:=N_pezzi_spinti+1;   pistone_avanti     pistone_riposo    K   N_pezzi_spinti>0 AND NOT giostra_busy AND NOT Giostra[(8-i) MOD 8].Presenza         nastro_avanti +     р?џџ              Action nastro_avanti XUd      џ  	nastro_ond    <     р?џџ              Action nastro_avanti - Entry XUdЋ   (*controlla se la giostra ш piena o no *)
FOR h:=0 TO 7 BY 1  DO
IF(Giostra[h].Presenza) THEN giostra_piena:=TRUE;
ELSE giostra_piena:=FALSE; EXIT;
END_IF;

END_FOR;     giostra_busy OR giostra_piena     nastro_riposod                    §џџџ,   '            STANDARD.LIB @fаw5!   Iecsfc.lib 12.5.98 13:03:00 @d,X5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @                                             2                џџџџџџџџџџџџџџџџ  
             њџџџ                  јџџџ  XСаСhУУ                      POUs               MAIN      џџџџ           
   Data types                 ALTEZZA  $                   COLORE  #                  PEZZO  "                   POSTO  !   џџџџ              Visualizations  џџџџ              Global Variables                 Global_Variables                     TwinCAT_Configuration  ,                   Variable_Configuration  	   џџџџ                                                              хb                         	   localhost            P      	   localhost            P      	   localhost            P          rW