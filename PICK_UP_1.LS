/PROG  PICK_UP_1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 957;
CREATE		= DATE 24-09-24  TIME 03:34:04;
MODIFIED	= DATE 24-09-24  TIME 03:34:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1277;
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
   1:  !FANUC America Corp. ;
   2:  !ROBOGUIDE Generated This TPP ;
   3:  !Run SimPRO.cf to setup frame and ;
   4:  UTOOL_NUM[GP1]=1 ;
   5:  UFRAME_NUM[GP1]=0 ;
   6:J P[1] 100% FINE    ;
   7:  CALL CONVEYOR_MOVEMENT    ;
   8:  UTOOL_NUM[GP1]=1 ;
   9:  UFRAME_NUM[GP1]=0 ;
  10:J P[2] 100% FINE    ;
  11:L P[3] 2000mm/sec FINE    ;
  12:  ! Pickup ('box_1') From ('conveyo ;
  13:  !WAIT 0.00 (sec) ;
  14:L P[4] 3000mm/sec FINE    ;
  15:J P[5] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1592.000  mm,	Y =     0.000  mm,	Z =   898.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   650.000  mm,	Y = -1245.000  mm,	Z =   500.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   650.000  mm,	Y = -1245.000  mm,	Z =   260.590  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   650.000  mm,	Y = -1245.000  mm,	Z =   500.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1592.000  mm,	Y =     0.000  mm,	Z =   898.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
