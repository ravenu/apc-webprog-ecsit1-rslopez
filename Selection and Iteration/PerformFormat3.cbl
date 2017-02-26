      ******************************************************************
      * Author:Raphael Ervin S. Lopez
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformFormat3.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 IterCount           PIC 99  VALUE ZEROS.
           88 MaxCountReached  VALUE 99.
       01 UserInput           PIC 99  VALUE ZEROS.
           88 EndOfUserInput   VALUE ZEROS.
       01 RunningTotal        PIC 999 VALUE ZEROS.
       01 AverageValue        PIC 99  VALUES ZEROS.

       PROCEDURE DIVISION.
       Begin.
           PERFORM UNTIL IterCount = 5
               DISPLAY "It       FILE SECTION.erCount = " IterCount
               ADD 1 TO IterCount
           END-PERFORM
           DISPLAY "Finished in line Perform."

           INITIALIZE Itercount

           DISPLAY "Enter a stream of up to 99 numbers."
           DISPLAY "Each number must be in the range 1-99."
           "Enter 0 to stop."
           DISPLAY "Enter number :- " WITH NO ADVANCING
           ACCEPT UserInput
           PERFORM GetUserInput UNTIL EndOfUserInput OR MaxCountReached

           DISPLAY "The final total is - " RunningTotal
           DISPLAY "The final count is - " IterCount
           COMPUTE AverageValue = RunningTotal / IterCount
           DISPLAY "The average value entered is - " AverageValue
           STOP RUN.

       GetUserInput.
           ADD UserInput TO RunningTotal
               ON SIZE ERROR DISPLAY "Error - new total too large for "
                       "data-item."
               NOT ON SIZE ERROR ADD 1 TO IterCount END-ADD
           END-ADD
           DISPLAY "Total so far is - " RunningTotal
           DISPLAY "Count so far is - " IterCount
            DISPLAY "Enter number :- " WITH NO ADVANCING
           ACCEPT UserInput.
       END PROGRAM PerformFormat3.
