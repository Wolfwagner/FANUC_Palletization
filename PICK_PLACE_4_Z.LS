/PROG  PICK_PLACE_4_Z
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1254;
CREATE		= DATE 24-09-23  TIME 02:48:58;
MODIFIED	= DATE 24-09-23  TIME 04:56:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 1598;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !FRAMES ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:   ;
   5:  !VARIABLES ;
   6:  R[1:counter]=0    ;
   7:  R[2:speed]=2000    ;
   8:  PR[3,3:z_offset]=0    ;
   9:   ;
  10:  !HOME POSITION ;
  11:J PR[2:Home_pos] 100% FINE    ;
  12:   ;
  13:  !LOOP ;
  14:  FOR R[1:counter]=1 TO 4 ;
  15:   ;
  16:   ;
  17:   ;
  18:  !CONVEYOR BELT ;
  19:  CALL CONVEYOR_MOVEMENT    ;
  20:   ;
  21:  !PICK UP ;
  22:J P[2] 100% FINE    ;
  23:L P[1] R[2:speed]mm/sec FINE    ;
  24:  CALL PICK_UP    ;
  25:  WAIT    .50(sec) ;
  26:L P[2] R[2:speed]mm/sec FINE    ;
  27:   ;
  28:  !DROP OFF ;
  29:J P[4] 100% FINE Offset,PR[3:z_offset]    ;
  30:L P[3] R[2:speed]mm/sec FINE Offset,PR[3:z_offset]    ;
  31:  CALL DROP_OFF    ;
  32:  WAIT    .50(sec) ;
  33:L P[4] R[2:speed]mm/sec FINE Offset,PR[3:z_offset]    ;
  34:   ;
  35:  !HOME POSITION ;
  36:J PR[2:Home_pos] 100% FINE    ;
  37:   ;
  38:  !ADD TO POSITION Z ;
  39:  PR[3,3:z_offset]=PR[3,3:z_offset]+200    ;
  40:  ENDFOR ;
  41:  WAIT   5.00(sec) ;
  42:   ;
  43:   ;
  44:   ;
  45:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   650.000  mm,	Y = -1245.000  mm,	Z =   260.586  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -90.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   650.000  mm,	Y = -1245.000  mm,	Z =   600.000  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -90.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1600.000  mm,	Y =   550.000  mm,	Z =  -299.414  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -90.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1600.000  mm,	Y =   550.000  mm,	Z =     -.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
};
/END
