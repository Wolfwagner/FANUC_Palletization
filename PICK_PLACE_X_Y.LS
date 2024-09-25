/PROG  PICK_PLACE_X_Y
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1451;
CREATE		= DATE 24-09-23  TIME 19:19:26;
MODIFIED	= DATE 24-09-24  TIME 01:48:00;
FILE_NAME	= PICK_PLA;
VERSION		= 0;
LINE_COUNT	= 54;
MEMORY_SIZE	= 1759;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !FRAMES ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:   ;
   5:  !VARIABLES ;
   6:  R[3:COLUMN_COUNTER]=0    ;
   7:  R[4:ROW_COUNTER]=0    ;
   8:  R[2:speed]=2000    ;
   9:  PR[4,1:X_Y_OFFSET]=0    ;
  10:  PR[4,2:X_Y_OFFSET]=0    ;
  11:  PR[5,3:TOOL_OFFSET]=(-250)    ;
  12:   ;
  13:  !HOME POSITION ;
  14:J PR[2:Home_pos] 100% FINE    ;
  15:   ;
  16:  !LOOPS ;
  17:  FOR R[3:COLUMN_COUNTER]=1 TO 2 ;
  18:  FOR R[4:ROW_COUNTER]=1 TO 3 ;
  19:   ;
  20:   ;
  21:   ;
  22:  !CONVEYOR BELT ;
  23:  CALL CONVEYOR_MOVEMENT    ;
  24:   ;
  25:  !PICK UP ;
  26:J P[2] 100% FINE    ;
  27:L P[1] R[2:speed]mm/sec FINE    ;
  28:  CALL PICK_UP    ;
  29:  WAIT    .50(sec) ;
  30:L P[2] R[2:speed]mm/sec FINE    ;
  31:   ;
  32:  !DROP OFF ;
  33:J P[5] 100% FINE Tool_Offset,PR[5:TOOL_OFFSET] Offset,PR[4:X_Y_OFFSET]    ;
  34:L P[5] R[2:speed]mm/sec FINE Offset,PR[4:X_Y_OFFSET]    ;
  35:  CALL DROP_OFF    ;
  36:  WAIT    .50(sec) ;
  37:L P[5] R[2:speed]mm/sec FINE Tool_Offset,PR[5:TOOL_OFFSET] Offset,PR[4:X_Y_OFFSET]    ;
  38:   ;
  39:  !HOME POSITION ;
  40:J PR[2:Home_pos] 100% FINE    ;
  41:   ;
  42:  !ADD TO POSITION X ;
  43:  PR[4,1:X_Y_OFFSET]=PR[4,1:X_Y_OFFSET]+300    ;
  44:  ENDFOR ;
  45:   ;
  46:  !ADD TO POSITION Y ;
  47:  PR[4,1:X_Y_OFFSET]=0    ;
  48:  PR[4,2:X_Y_OFFSET]=PR[4,2:X_Y_OFFSET]+450    ;
  49:  ENDFOR ;
  50:  WAIT   5.00(sec) ;
  51:   ;
  52:   ;
  53:   ;
  54:   ;
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1300.000  mm,	Y =   325.000  mm,	Z =  -299.414  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -90.000 deg
};
/END
