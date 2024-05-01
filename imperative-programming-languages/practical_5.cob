000100 IDENTIFICATION DIVISION.                                         -- Program metadata
000200 PROGRAM-ID. statistics_program.                                  -- Program name
000300 DATA DIVISION.                                                   -- Start of data declaration
000400 WORKING-STORAGE SECTION.                                         -- Variables available throughout the program
000500     01  arr             OCCURS 5 TIMES PIC 9.                    -- Array to hold 5 integers
000600     01  smallest        PIC 9.                                   -- Variable to hold the smallest number
000700     01  largest         PIC 9.                                   -- Variable to hold the largest number
000800     01  mode_value      PIC 9.                                   -- Variable to hold the mode
000900     01  i               PIC 9.                                   -- Loop counter for various loops
001000     01  j               PIC 9.                                   -- Loop counter for nested loops
001100     01  COUNTER         PIC 9.                                   -- Counter for mode calculation
001200     01  max_count       PIC 9.                                   -- Variable to hold the maximum count for mode calculation
001300 PROCEDURE DIVISION.                                              -- Start of program logic
001400     PERFORM readData                                             -- Call subroutine to read data
001500     PERFORM findSmallest                                         -- Call subroutine to find smallest number
001600     PERFORM findLargest                                          -- Call subroutine to find largest number
001700     PERFORM findMode                                             -- Call subroutine to find mode
001800     DISPLAY "Smallest value: " smallest                          -- Display smallest number
001900     DISPLAY "Largest value: " largest                            -- Display largest number
002000     DISPLAY "Mode value: " mode_value                            -- Display mode
002100     STOP RUN.                                                    -- End the program
002200 readData.                                                        -- Subroutine to read data
002300     DISPLAY "Enter five integer values: "                        -- Prompt for input
002400     PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5                    -- Loop to read 5 numbers
002500         ACCEPT arr(i)                                            -- Read a number into the array
002600     END-PERFORM.                                                 -- End of loop
002700 findSmallest.                                                    -- Subroutine to find smallest number
002800     MOVE arr(1) TO smallest                                      -- Initialize smallest with first number
002900     PERFORM VARYING i FROM 2 BY 1 UNTIL i > 5                    -- Loop over the rest of the array
003000         IF arr(i) < smallest                                     -- If current number is smaller than smallest...
003100             MOVE arr(i) TO smallest                              -- ...then update smallest
003200         END-IF                                                   -- End of if statement
003300     END-PERFORM.                                                 -- End of loop
003400 findLargest.                                                     -- Subroutine to find largest number
003500     MOVE arr(1) TO largest                                       -- Initialize largest with first number
003600     PERFORM VARYING i FROM 2 BY 1 UNTIL i > 5                    -- Loop over the rest of the array
003700         IF arr(i) > largest                                      -- If current number is larger than largest...
003800             MOVE arr(i) TO largest                               -- ...then update largest
003900         END-IF                                                   -- End of if statement
004000     END-PERFORM.                                                 -- End of loop
004100 findMode.                                                        -- Subroutine to find mode
004200     MOVE 0 TO mode_value                                         -- Initialize mode_value with 0
004300     MOVE 0 TO max_count                                          -- Initialize max_count with 0
004400     PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5                    -- Loop over the array
004500         MOVE 0 TO COUNTER                                        -- Initialize COUNTER with 0
004600         PERFORM VARYING j FROM 1 BY 1 UNTIL j > 5                -- Nested loop over the array
004700             IF arr(j) = arr(i)                                   -- If current number equals outer loop number...
004800                 ADD 1 TO COUNTER                                 -- ...then increment COUNTER
004900             END-IF                                               -- End of if statement
005000         END-PERFORM                                              -- End of nested loop
005100         IF COUNTER > max_count                                   -- If COUNTER is greater than max_count...
005200             MOVE COUNTER TO max_count                            -- ...then update max_count...
005300             MOVE arr(i) TO mode_value                            -- ...and update mode_value
005400         END-IF                                                   -- End of if statement
005500     END-PERFORM.                                                 -- End of outer loop
005600 END PROGRAM statistics_program.                                  -- End of program