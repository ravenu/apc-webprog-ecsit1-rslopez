      ******************************************************************
      * Author:Raphael Ervin S Lopez
      * Date:2-14-17
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Iteration-If.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01  Num1           PIC 99  VALUE ZEROS.
           01  Num2           PIC 99  VALUE ZEROS.
           01  Result         PIC 99999 VALUE ZEROS.
           01  Operator       PIC X  VALUE SPACE.
       PROCEDURE DIVISION.
           Calculator.
       PERFORM 3 TIMES
       DISPLAY "Enter First Number      : " WITH NO ADVANCING
       ACCEPT Num1
       DISPLAY "Enter Second Number     : " WITH NO ADVANCING
       ACCEPT Num2
       DISPLAY "Enter operator (+ or *) : " WITH NO ADVANCING
       ACCEPT Operator
       IF Operator = "+" THEN
          ADD Num1, Num2 GIVING Result
       END-IF
       IF Operator = "*" THEN
          MULTIPLY Num1 BY Num2 GIVING Result
       END-IF
       DISPLAY "Result is = ", Result
       END-PERFORM.
       STOP RUN.

       END PROGRAM Iteration-If.
