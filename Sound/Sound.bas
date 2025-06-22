 10 ' PitchA : SOUND1 & 0xf | SOUND0 & 0xff
 20 ' PitchB : SOUND3 & 0xf | SOUND2 & 0xff
 30 ' PitchC : SOUND5 & 0xf | SOUND4 & 0xff
 40 ' Noise : SOUND6 & 0x1f
 50 ' Mode : SOUND7 & 10CBAcba
 60 '  CBA = Noise of CBA, cba = Tone of CBA (0=ON, 1=OFF)
 70 ' VolA : SOUND8 & 0x1f
 80 ' VolB : SOUND9 & 0x1f
 90 ' VolC : SOUND10 & 0x1f
100 ' Env : SOUND12 & 0xff | SOUND11 & 0xff
110 ' EnvPat : SOUND13 & 0x1f
120 FOR I=0 TO 15
130     ' ChA Pitch
140     SOUND 1,I
150     ' ChA Vol
160     SOUND 8,15-I
170 NEXT
180 SOUND 8,0