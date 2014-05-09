'<A simple message decoder program>
'
'Copyright (C) <2014> <Navin Ipe>
'Contact: navinipe at gmail dot com
'
'This program is free software: you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation, either version 3 of the License, or
'(at your option) any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
'GNU General Public License for more details.
'
'You should have received a copy of the GNU General Public License
'along with this program. If not, see <http://www.gnu.org/licenses/>.

1 CLS : KEY OFF: SCREEN 0, 0, 0: DIM A$(36), B$(36), C$(36), D$(36): COLOR 10
11 FOR I = 1 TO 36
21 READ A$(I)
31 READ B$(I)
41 READ C$(I)
51 READ D$(I)
61 NEXT I
62 'the data below has purposely been converted to junk data
71 DATA A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A
81 DATA A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A
91 DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
101 LOCATE 10, 9: A$ = "Welcome to Navin's Secret Language Decoding Facility. This Facility is  Top secret & will be accessed only by the person who types the "
111 B$ = "correct password asked for.On typing the correct password,you will be allowed to de"
121 C$ = "code any  letter which is coded in the S.D.N.T.L code or the S.D.N.A.T code."
131 FOR I = 1 TO LEN(A$)
141 PRINT MID$(A$, I, 1); : SOUND 350, .3
151 T = TIMER + .01: WHILE T > TIMER: WEND
161 NEXT I
171 FOR I = 1 TO LEN(B$)
181 PRINT MID$(B$, I, 1); : SOUND 350, .3
191 T = TIMER + .01: WHILE T > TIMER: WEND
201 NEXT I
211 FOR I = 1 TO LEN(C$)
221 PRINT MID$(C$, I, 1); : SOUND 350, .3
231 T = TIMER + .01: WHILE T > TIMER: WEND
241 NEXT I
251 FOR I% = 440 TO 1000 STEP 100
261 SOUND I%, I% / 1000
271 NEXT I%
281 LOCATE 16, 15: PRINT "здддддддддддддддддддддддддддддддддддддддддд©"
291 LOCATE 17, 15: PRINT "Ё  Type the Password or press Esc to Exit  Ё"
301 LOCATE 18, 15: PRINT "цдддддддддддддддддддддддддддддддддддддддддд╢"
311 LOCATE 19, 15: PRINT "Ё                                          Ё"
321 LOCATE 20, 15: PRINT "юдддддддддддддддддддддддддддддддддддддддддды"
331 I = 20: P$ = ""
341 I = I + 2
351 IF I >= 50 OR I < 22 THEN 441
361 X$ = INPUT$(1)
371 IF X$ = CHR$(27) THEN CLS : SYSTEM
381 IF X$ = CHR$(8) THEN I = I - 2 ELSE 401
391 IF I < 22 THEN 321 ELSE LOCATE 19, I: PRINT " ": P$ = LEFT$(P$, LEN(P$) - 1): : GOTO 351
401 P$ = P$ + X$
411 IF P$ = "SOMEPASSWORD" THEN CLS : LOCATE 10, 6: GOTO 471
421 LOCATE 19, I: PRINT "*"
431 GOTO 341
441 LOCATE 21, 25: PRINT "╝  Wrong Password  ╞"
451 T = TIMER + 1: WHILE T > TIMER: WEND
461 LOCATE 21, 25: PRINT STRING$(20, " "): GOTO 281
471 COLOR 12: A$ = "Warning to Navin : Another password is going to be asked Just to confirm if it is really you.Remember, the main menu contains the full form of SOME WORD."
481 FOR I = 1 TO LEN(A$): SOUND 350, .3: PRINT MID$(A$, I, 1); : T = TIMER + .01: WHILE T > TIMER: WEND: NEXT I
491 LOCATE 16, 15: PRINT "здддддддддддддддддддддддддддддддддддддддддд©"
501 LOCATE 17, 15: PRINT "Ё  Type the Password or press Esc to Exit  Ё"
511 LOCATE 18, 15: PRINT "цдддддддддддддддддддддддддддддддддддддддддд╢"
521 LOCATE 19, 15: PRINT "Ё                                          Ё"
531 LOCATE 20, 15: PRINT "юдддддддддддддддддддддддддддддддддддддддддды"
541 I = 20: P$ = ""
551 I = I + 2
561 IF I >= 50 OR I < 22 THEN 651
571 X$ = INPUT$(1)
581 IF X$ = CHR$(27) THEN CLS : SYSTEM
591 IF X$ = CHR$(8) THEN I = I - 2 ELSE 611
601 IF I < 22 THEN 531 ELSE LOCATE 19, I: PRINT " ": P$ = LEFT$(P$, LEN(P$) - 1): : GOTO 561
611 P$ = P$ + X$
621 IF P$ = "SOME PASSWORD" THEN 681
631 LOCATE 19, I: PRINT "*"
641 GOTO 551
651 LOCATE 21, 25: PRINT "╝  Wrong Password  ╞"
661 T = TIMER + 1: WHILE T > TIMER: WEND
671 LOCATE 21, 25: PRINT STRING$(20, " "): GOTO 491
681 GOSUB 2781
691 COLOR 4, 1: CLS : COLOR 7, 2: GOSUB 941: GOSUB 2861: CLOSE #1
701 LOCATE 9, 15: PRINT "зддддддддддддддддддддддддддддддддддддддддддддддддддд©"
711 LOCATE 10, 15: PRINT "Ё Ч Code or Decode ?                                Ё"
721 LOCATE 11, 15: PRINT "Ё Ч A CERTAIN TYPE OF MESSAGE code  [SDNAT]         Ё"
731 LOCATE 12, 15: PRINT "Ё Ч A CERTAIN TYPE OF MESSAGE code    [SDNTL]       Ё"
741 IF WATCH = 1 THEN LOCATE 11, 19: PRINT STRING$(32, " ")
751 IF WATCH = 1 THEN LOCATE 12, 19: PRINT STRING$(26, " ")
761 LOCATE 13, 15: PRINT "Ё Ч Store Secret Information in a file by encryptionЁ"
771 LOCATE 14, 15: PRINT "Ё Ч De-encrypt a Secret Information file            Ё"
781 LOCATE 15, 15: PRINT "Ё Ч Invent a new set of codes                       Ё"
791 LOCATE 16, 15: PRINT "юддддддддддддддддддддддддддддддддддддддддддддддддддды"
801 COLOR 30: LOCATE 10, 17: PRINT "Ч": COLOR 10: LOCATE 11, 17: PRINT "Ч"
811 LOCATE 13, 17: PRINT "Ч": LOCATE 14, 17: PRINT "Ч"
821 LOCATE 13, 17: PRINT "Ч": R = 10: NR = 10
831 X$ = INKEY$
841 IF X$ = CHR$(27) THEN CLS : SYSTEM
851 IF X$ = CHR$(0) + CHR$(72) THEN NR = NR - 1: GOTO 891
861 IF X$ = CHR$(0) + CHR$(80) THEN NR = NR + 1: GOTO 891
871 IF X$ = CHR$(13) THEN GOTO 1071
881 GOTO 831
891 IF NR < 10 THEN NR = 15
901 IF NR > 15 THEN NR = 10
911 COLOR 10: LOCATE R, 17: PRINT "Ч"
921 COLOR 30: LOCATE NR, 17: PRINT "Ч"
931 R = NR: GOTO 831
941 LOCATE 5, 39: PRINT "и" + " ╩": LOCATE 6, 39: PRINT "╨" + "╨"
951 LOCATE 7, 39: PRINT "х" + " ╪": A$ = " The SOME WORD Decoder. "
961 C1 = 39: C2 = 42: L1 = 13: L2 = 14
971 LOCATE 5, C1: PRINT "и": LOCATE 5, C1 + 1: PRINT STRING$((C2 - C1) - 1, " "): LOCATE 5, C2: PRINT "╩"
981 X$ = INKEY$: IF X$ = CHR$(27) THEN CLS : SYSTEM
991 LOCATE 6, C1: PRINT "╨": LOCATE 6, C1 + 1: PRINT MID$(A$, L1, 1): LOCATE 6, C2 - 1: PRINT MID$(A$, L2, 1): LOCATE 6, C2: PRINT "╨"
1001 IF WATCH = 1 THEN LOCATE 6, 1: PRINT STRING$(80, " ")
1011 LOCATE 7, C1: PRINT "х": LOCATE 7, C1 + 1: PRINT STRING$((C2 - C1) - 1, " "): LOCATE 7, C2: PRINT "╪"
1021 C1 = C1 - 1: C2 = C2 + 1: L1 = L1 - 1: L2 = L2 + 1
1031 IF C2 = 55 THEN 1061
1041 T = TIMER + .1: WHILE T > TIMER: WEND
1051 GOTO 971
1061 RETURN
1071 IF NR = 10 THEN 1081 ELSE 1181
1081 COLOR 10: LOCATE 18, 15: PRINT "зддддддддддддддддддддддддддддддддддддддддддддддддддд©"
1091 LOCATE 19, 15: PRINT "Ё         < Code >                < De-code >       Ё"
1101 LOCATE 20, 15: PRINT "юддддддддддддддддддддддддддддддддддддддддддддддддддды"
1111 COLOR 30: LOCATE 19, 25: PRINT "< Code >": COLOR 10: LOCATE 19, 49: PRINT "< De-code >": CODE = 1
1121 Y$ = INKEY$
1131 IF Y$ = CHR$(27) THEN 691
1141 IF Y$ = CHR$(0) + CHR$(77) THEN COLOR 10: LOCATE 19, 25: PRINT "< Code >": COLOR 30: LOCATE 19, 49: PRINT "< De-code >": CODE = 0
1151 IF Y$ = CHR$(0) + CHR$(75) THEN COLOR 30: LOCATE 19, 25: PRINT "< Code >": COLOR 10: LOCATE 19, 49: PRINT "< De-code >": CODE = 1
1161 IF Y$ = CHR$(13) THEN GOTO 691
1171 GOTO 1121
1181 IF NR = 11 THEN 1191 ELSE 1541
1191 COLOR 10: S$ = ""
1201 LOCATE 18, 1: PRINT "з" + STRING$(78, "д") + "©"
1211 LOCATE 19, 1: PRINT "Ё" + STRING$(78, " ") + "Ё"
1221 LOCATE 20, 1: PRINT "ю" + STRING$(78, "д") + "ы": I = 1
1231 I = I + 1
1241 X$ = INPUT$(1)
1251 IF X$ = CHR$(27) THEN 691
1261 IF X$ = CHR$(13) THEN 1341
1271 IF X$ = CHR$(8) THEN I = I - 1 ELSE 1301
1281 IF S$ = "" THEN S$ = " ": BEEP
1291 IF I = 1 THEN I = 2: LOCATE 19, I: PRINT " ": S$ = LEFT$(S$, LEN(S$) - 1): GOTO 1241 ELSE LOCATE 19, I: PRINT " ": S$ = LEFT$(S$, LEN(S$) - 1): GOTO 1241
1301 IF LEN(S$) >= 255 THEN BEEP: GOTO 1241
1311 IF I > 79 THEN I = 79
1321 LOCATE 19, I: S$ = S$ + X$: LOCATE 19, 2: PRINT RIGHT$(S$, 78)
1331 GOTO 1231
1341 CLS : LOCATE 1, 1: PRINT "з" + STRING$(78, "д") + "©": LOCATE 23, 1: PRINT "ю" + STRING$(78, "д") + "ы": R = 2
1351 LOCATE R, 1: PRINT "Ё": LOCATE R, 80: PRINT "Ё"
1361 IF R = 22 THEN 1371 ELSE R = R + 1: GOTO 1351
1371 FOR I = 1 TO LEN(S$)
1381 A = 0
1391 FOR J = 1 TO 36
1401 IF CODE = 1 THEN 1431
1411 IF B$(J) = MID$(S$, I, 1) THEN MID$(S$, I, 1) = A$(J): GOTO 1451
1421 GOTO 1441
1431 IF A$(J) = MID$(S$, I, 1) THEN MID$(S$, I, 1) = B$(J): GOTO 1451
1441 NEXT J
1451 LOCATE 1, 35: PRINT "[ WAIT ]": NEXT I
1461 A = 0
1471 IF CODE = 1 THEN LOCATE 1, 35: PRINT "[ CODED ]" ELSE LOCATE 1, 35: PRINT "[ DECODED ]"
1481 C = 2: R = 2: I = 1
1491 LOCATE R, C: PRINT MID$(S$, I, 1)
1501 IF I >= LEN(S$) THEN 1531
1511 IF C = 79 THEN C = 2: R = R + 1: I = I + 1 ELSE C = C + 1: I = I + 1
1521 IF R = 22 THEN 1531 ELSE GOTO 1491
1531 X$ = INPUT$(1): S$ = "": GOTO 691
1541 IF NR = 12 THEN 1551 ELSE 1901
1551 COLOR 10: S$ = ""
1561 LOCATE 18, 1: PRINT "з" + STRING$(78, "д") + "©"
1571 LOCATE 19, 1: PRINT "Ё" + STRING$(78, " ") + "Ё"
1581 LOCATE 20, 1: PRINT "ю" + STRING$(78, "д") + "ы": I = 1
1591 I = I + 1
1601 X$ = INPUT$(1)
1611 IF X$ = CHR$(27) THEN 691
1621 IF X$ = CHR$(13) THEN 1701
1631 IF X$ = CHR$(8) THEN I = I - 1: GOTO 1641 ELSE 1661
1641 IF S$ = "" THEN S$ = " ": BEEP
1651 IF I = 1 THEN I = 2: LOCATE 19, I: PRINT " ": S$ = LEFT$(S$, LEN(S$) - 1): GOTO 1601 ELSE LOCATE 19, I: PRINT " ": S$ = LEFT$(S$, LEN(S$) - 1): GOTO 1601
1661 IF LEN(S$) >= 255 THEN BEEP: GOTO 1601
1671 IF I > 79 THEN I = 79
1681 LOCATE 19, I: S$ = S$ + X$: LOCATE 19, 2: PRINT RIGHT$(S$, 78)
1691 GOTO 1591
1701 CLS : LOCATE 1, 1: PRINT "з" + STRING$(78, "д") + "©": LOCATE 23, 1: PRINT "ю" + STRING$(78, "д") + "ы": R = 2
1711 LOCATE R, 1: PRINT "Ё": LOCATE R, 80: PRINT "Ё"
1721 IF R = 22 THEN 1731 ELSE R = R + 1: GOTO 1711
1731 FOR I = 1 TO LEN(S$)
1741 A = 0
1751 FOR J = 1 TO 36
1761 IF CODE = 1 THEN 1791
1771 IF D$(J) = MID$(S$, I, 1) THEN MID$(S$, I, 1) = C$(J): GOTO 1811
1781 GOTO 1801
1791 IF C$(J) = MID$(S$, I, 1) THEN MID$(S$, I, 1) = D$(J): GOTO 1811
1801 NEXT J
1811 LOCATE 1, 35: PRINT "[ WAIT ]": NEXT I
1821 A = 0
1831 IF CODE = 1 THEN LOCATE 1, 35: PRINT "[ CODED ]" ELSE LOCATE 1, 35: PRINT "[ DECODED ]"
1841 C = 2: R = 2: I = 1
1851 LOCATE R, C: PRINT MID$(S$, I, 1)
1861 IF I >= LEN(S$) THEN 1891
1871 IF C = 79 THEN C = 2: R = R + 1: I = I + 1 ELSE C = C + 1: I = I + 1
1881 IF R = 22 THEN 1891 ELSE GOTO 1851
1891 X$ = INPUT$(1): S$ = "": GOTO 691
1901 IF NR = 13 THEN 1911 ELSE 2351
1911 COLOR 10: S$ = ""
1921 LOCATE 18, 1: PRINT "з" + STRING$(78, "д") + "©"
1931 LOCATE 19, 1: PRINT "Ё" + STRING$(78, " ") + "Ё"
1941 LOCATE 20, 1: PRINT "ю" + STRING$(78, "д") + "ы": I = 1
1951 I = I + 1
1961 X$ = INPUT$(1)
1971 IF X$ = CHR$(27) THEN 691
1981 IF X$ = CHR$(13) THEN 2061
1991 IF X$ = CHR$(8) THEN I = I - 1: GOTO 2001 ELSE 2021
2001 IF S$ = "" THEN S$ = " ": BEEP
2011 IF I = 1 THEN I = 2: LOCATE 19, I: PRINT " ": S$ = LEFT$(S$, LEN(S$) - 1): GOTO 1961 ELSE LOCATE 19, I: PRINT " ": S$ = LEFT$(S$, LEN(S$) - 1): GOTO 1961
2021 IF LEN(S$) >= 255 THEN BEEP: GOTO 1961
2031 IF I > 79 THEN I = 79
2041 LOCATE 19, I: S$ = S$ + X$: LOCATE 19, 2: PRINT RIGHT$(S$, 78)
2051 GOTO 1951
2061 FOR I = 1 TO LEN(S$)
2071 MID$(S$, I, 1) = CHR$(ASC(MID$(S$, I, 1)) + 26): I = I + 1
2081 IF I > LEN(S$) THEN 2111
2091 MID$(S$, I, 1) = CHR$(ASC(MID$(S$, I, 1)) + 36)
2101 NEXT I
2111 IF MORE = 1 THEN 2261
2121 ST$ = "": LOCATE 19, 2: PRINT STRING$(78, " ")
2131 LOCATE 19, 2: PRINT "Enter name of file to store in : ": I = 35: ST$ = ""
2141 X$ = INPUT$(1)
2151 IF X$ = CHR$(8) THEN 2111
2161 IF X$ = CHR$(27) THEN GOTO 691
2171 IF X$ = CHR$(13) THEN 2241
2181 IF ASC(X$) = 46 THEN 2241
2191 IF ASC(X$) > 47 AND ASC(X$) < 58 THEN 2221
2201 IF ASC(X$) > 64 AND ASC(X$) < 91 THEN 2221
2211 IF ASC(X$) > 96 AND ASC(X$) < 123 THEN 2221 ELSE 2141
2221 ST$ = ST$ + X$: I = I + 1: LOCATE 19, I: PRINT X$
2231 IF I >= 42 THEN 2241 ELSE 2141
2241 ST$ = ST$ + ".COD"
2251 OPEN "O", #1, ST$: GOTO 2271
2261 OPEN "A", #1, ST$: MORE = 0
2271 WRITE #1, S$
2281 CLOSE #1
2291 LOCATE 19, 2: PRINT STRING$(78, " ")
2301 LOCATE 19, 2: PRINT "File saved with name :  "; ST$: X$ = INPUT$(1)
2311 LOCATE 19, 2: PRINT STRING$(78, " ")
2321 LOCATE 19, 2: PRINT "Press A to add more information to the file or Esc to Exit.": X$ = INPUT$(1)
2331 IF X$ = "A" THEN MORE = 1: GOTO 1911
2341 IF X$ = CHR$(27) THEN 691 ELSE 2311
2351 IF NR = 14 THEN 2361 ELSE 2611
2361 COLOR 10: LOCATE 18, 1: PRINT "з" + STRING$(78, "д") + "©"
2371 LOCATE 19, 1: PRINT "Ё" + STRING$(78, " ") + "Ё"
2381 LOCATE 20, 1: PRINT "ю" + STRING$(78, "д") + "ы"
2391 LOCATE 19, 2: PRINT STRING$(78, " "): I = 20
2401 LOCATE 19, 2: PRINT "Enter file name : ": FIL$ = ""
2411 X$ = INPUT$(1)
2421 IF X$ = CHR$(27) THEN GOTO 691
2431 IF X$ = CHR$(13) THEN 2471
2441 IF X$ = CHR$(8) THEN 2391
2451 LOCATE 19, I: PRINT X$: FIL$ = FIL$ + X$: I = I + 1
2461 IF I = 9 THEN 2471 ELSE 2411
2471 ON ERROR GOTO 2601
2481 OPEN "I", #1, FIL$ + ".COD": S$ = ""
2491 IF EOF(1) THEN 2591
2501 INPUT #1, S$
2511 FOR I = 1 TO LEN(S$)
2521 X$ = INKEY$: IF X$ = CHR$(27) THEN 691
2531 MID$(S$, I, 1) = CHR$(ASC(MID$(S$, I, 1)) - 26): I = I + 1
2541 IF I > LEN(S$) THEN 2571
2551 MID$(S$, I, 1) = CHR$(ASC(MID$(S$, I, 1)) - 36)
2561 NEXT I
2571 PRINT S$
2581 GOTO 2491
2591 CLOSE #1: X$ = INPUT$(1): GOTO 691
2601 LOCATE 24, 30: PRINT "<< FILE NOT FOUND >>": X$ = INPUT$(1): GOTO 691
2611 COLOR 10: LOCATE 18, 1: PRINT "з" + STRING$(78, "д") + "©"
2621 LOCATE 19, 1: PRINT "Ё" + STRING$(78, " ") + "Ё"
2631 LOCATE 20, 1: PRINT "ю" + STRING$(78, "д") + "ы"
2641 LOCATE 19, 2: PRINT "You will not be able to use the S.D.N.A.T code temporarily since you are...": X$ = INPUT$(1)
2651 LOCATE 19, 2: PRINT STRING$(78, " ")
2661 LOCATE 19, 2: PRINT "going to input a new set of codes.You can now use the S.D.N.A.T option for..": X$ = INPUT$(1)
2671 LOCATE 19, 2: PRINT STRING$(78, " ")
2681 LOCATE 19, 2: PRINT "Coding or Decoding with your new code (Only Temporarily).": X$ = INPUT$(1)
2691 LOCATE 19, 2: PRINT STRING$(78, " ")
2701 FOR I = 1 TO 36
2711 LOCATE 19, 2: PRINT "What do you use for "; A$(I)
2721 X$ = INPUT$(1)
2731 IF X$ = CHR$(27) THEN CLEAR : GOTO 1
2741 B$(I) = X$: LOCATE 19, 25: PRINT B$(I): T = TIMER + 1: WHILE T > TIMER: WEND
2751 LOCATE 19, 25: PRINT " "
2761 NEXT I
2771 GOTO 691
2781 CLS : COLOR 10: LOCATE 18, 1: PRINT "з" + STRING$(78, "д") + "©"
2791 LOCATE 19, 1: PRINT "Ё" + STRING$(78, " ") + "Ё"
2801 LOCATE 20, 1: PRINT "ю" + STRING$(78, "д") + "ы"
2811 LOCATE 19, 2: PRINT "Is someone else watching the screen ? [y/n] : Press enter for No": X$ = INPUT$(1)
2821 IF X$ = CHR$(27) THEN CLS : SYSTEM
2831 IF X$ = CHR$(13) OR X$ = "N" OR X$ = "n" THEN WATCH = 0
2841 IF X$ = "Y" OR X$ = "y" THEN WATCH = 1
2851 CLS : RETURN
2861 LOCATE 1, 25: PRINT "здддддддддддддддддддддддддддддд©"
2871 LOCATE 2, 25: PRINT "Ё Type in Capital letters only Ё"
2881 LOCATE 3, 25: PRINT "юдддддддддддддддддддддддддддддды"
2891 RETURN
