 10 ' [CHR$(0), CHR$(255)]
 20 PRINT "ABCABCABCABC"
 30 FOR I=0 TO 512:NEXT
 40 FOR I=0 TO 7
 50     READ DT$
 60     ' Over write to VRAM of 'A'
 70     VPOKE 65*8+I,VAL("&B"+DT$)
 80 NEXT
 90 ' Change color, by 8ch at same time, &H<Fore><Back>
 100 VPOKE &H2000+65/8,&H28
 110 END
 120 ' To recover, screen 1 in direct mode
 200 DATA 00011000
 210 DATA 00111100
 220 DATA 01111110
 230 DATA 11011011
 240 DATA 11111111
 250 DATA 01011010
 260 DATA 10000001
 270 DATA 01000010



