/PROG  PICK_PLACE_X_Y_Z
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1677;
CREATE		= DATE 24-09-24  TIME 02:51:38;
MODIFIED	= DATE 24-09-24  TIME 03:14:52;
FILE_NAME	= PICK_PLA;
VERSION		= 0;
LINE_COUNT	= 67;
MEMORY_SIZE	= 2061;
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
   8:  R[5:Z_OFFSET]=0    ;
   9:  R[2:speed]=2000    ;
  10:  PR[4,1:X_Y_OFFSET]=0    ;
  11:  PR[4,2:X_Y_OFFSET]=0    ;
  12:  PR[4,3:X_Y_OFFSET]=0    ;
  13:  PR[5,3:TOOL_OFFSET]=(-250)    ;
  14:   ;
  15:  !HOME POSITION ;
  16:J PR[2:Home_pos] 100% FINE    ;
  17:   ;
  18:  !LOOPS ;
  19:  FOR R[5:Z_OFFSET]=1 TO 2 ;
  20:  FOR R[3:COLUMN_COUNTER]=1 TO 2 ;
  21:  FOR R[4:ROW_COUNTER]=1 TO 3 ;
  22:   ;
  23:   ;
  24:   ;
  25:  !CONVEYOR BELT ;
  26:  CALL CONVEYOR_MOVEMENT    ;
  27:   ;
  28:  !PICK UP ;
  29:J P[2] 100% FINE    ;
  30:L P[1] R[2:speed]mm/sec FINE    ;
  31:  CALL PICK_UP    ;
  32:  WAIT    .50(sec) ;
  33:L P[2] R[2:speed]mm/sec FINE    ;
  34:   ;
  35:  !DROP OFF ;
  36:J P[5] 100% FINE Tool_Offset,PR[5:TOOL_OFFSET] Offset,PR[4:X_Y_OFFSET]    ;
  37:L P[5] R[2:speed]mm/sec FINE Offset,PR[4:X_Y_OFFSET]    ;
  38:  CALL DROP_OFF    ;
  39:  WAIT    .50(sec) ;
  40:L P[5] R[2:speed]mm/sec FINE Tool_Offset,PR[5:TOOL_OFFSET] Offset,PR[4:X_Y_OFFSET]    ;
  41:   ;
  42:  !HOME POSITION ;
  43:J PR[2:Home_pos] 100% FINE    ;
  44:   ;
  45:  !ADD TO POSITION X(ROWS) ;
  46:  PR[4,1:X_Y_OFFSET]=PR[4,1:X_Y_OFFSET]+300    ;
  47:   ;
  48:  ENDFOR ;
  49:   ;
  50:  !ADD TO POSITION Y(COLUMNS) ;
  51:  PR[4,1:X_Y_OFFSET]=0    ;
  52:  PR[4,2:X_Y_OFFSET]=PR[4,2:X_Y_OFFSET]+450    ;
  53:   ;
  54:  ENDFOR ;
  55:   ;
  56:  !ADD TO POSITION Z(HEIGHT) ;
  57:  PR[4,1:X_Y_OFFSET]=0    ;
  58:  PR[4,2:X_Y_OFFSET]=0    ;
  59:  PR[4,3:X_Y_OFFSET]=PR[4,3:X_Y_OFFSET]+200    ;
  60:   ;
  61:  ENDFOR ;
  62:   ;
  63:  WAIT   5.00(sec) ;
  64:   ;
  65:   ;
  66:   ;
  67:   ;
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
