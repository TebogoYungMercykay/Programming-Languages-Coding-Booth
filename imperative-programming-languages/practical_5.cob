000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. statistics_program.
000300 DATA DIVISION.
000400 WORKING-STORAGE SECTION.
000500     01  arr             OCCURS 5 TIMES PIC 9.
000600     01  smallest        PIC 9.
000700     01  largest         PIC 9.                                   
000800     01  mode_value      PIC 9.
000900     01  i               PIC 9.
001000     01  j               PIC 9.
001100     01  COUNTER         PIC 9.
001200     01  max_count       PIC 9.
001300 PROCEDURE DIVISION.
001400     PERFORM readData
001500     PERFORM findSmallest
001600     PERFORM findLargest
001700     PERFORM findMode
001800     DISPLAY "Smallest value: " smallest
001900     DISPLAY "Largest value: " largest
002000     DISPLAY "Mode value: " mode_value
002100     STOP RUN.
002200 readData.
002300     DISPLAY "Enter five integer values: "
002400     PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5
002500         ACCEPT arr(i)
002600     END-PERFORM.
002700 findSmallest.
002800     MOVE arr(1) TO smallest
002900     PERFORM VARYING i FROM 2 BY 1 UNTIL i > 5
003000         IF arr(i) < smallest
003100             MOVE arr(i) TO smallest
003200         END-IF
003300     END-PERFORM.
003400 findLargest.
003500     MOVE arr(1) TO largest
003600     PERFORM VARYING i FROM 2 BY 1 UNTIL i > 5
003700         IF arr(i) > largest
003800             MOVE arr(i) TO largest
003900         END-IF
004000     END-PERFORM.
004100 findMode.
004200     MOVE 0 TO mode_value
004300     MOVE 0 TO max_count
004400     PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5
004500         MOVE 0 TO COUNTER
004600         PERFORM VARYING j FROM 1 BY 1 UNTIL j > 5
004700             IF arr(j) = arr(i)
004800                 ADD 1 TO COUNTER
004900             END-IF
005000         END-PERFORM
005100         IF COUNTER > max_count
005200             MOVE COUNTER TO max_count
005300             MOVE arr(i) TO mode_value
005400         END-IF
005500     END-PERFORM.
005600 END PROGRAM statistics_program.
