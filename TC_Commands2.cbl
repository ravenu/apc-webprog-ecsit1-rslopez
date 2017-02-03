      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TC_Commands2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 Cash          PIC 9(4).
           01 Total         PIC 9(4).
           01 Cheques       PIC 9(4).
           01 Males         PIC 9(4).
           01 Females       PIC 9(4).
           01 TotalStudents PIC 9(4).

           01 Tax           PIC 9(4).
           01 GrossPlay     PIC 9(4).
           01 PRSI          PIC 9(4).
           01 Pension       PIC 9(4).
           01 Pay           PIC 9(4).
           01 Deduction     PIC 9(4).
           01 NetPay        PIC 9(4).

           01 VatRate       PIC 9(4)v99       VALUE 0.21.
           01 Sales         PIC 9(4)v99       VALUE 1245.50.
           01 Vat           PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "ADDITION"
            move 123 TO Cash.
            move 1000 TO Total.
            DISPLAY "Cash = " Cash, ", Total = " Total.
            ADD Cash TO Total.
            DISPLAY "Cash + Total = " Total.

            move 123 TO Cash.
            move 1000 TO Total.
            ADD Cash,20 TO Total.
            DISPLAY "Add cash and 20 to total = " Total.
            DISPLAY " "

            move 123 TO Cash.
            move 7777 TO Total.
            move 1533 TO Cheques.
            DISPLAY "Cash = " Cash, ", Total = " Total,
               ", Cheques = " Cheques.
            ADD Cash, Cheques GIVING Total.
            DISPLAY "Add cash, Cheques Giving Total = "Total.
            DISPLAY " "

            MOVE 611 TO Males.
            MOVE 1255 to Females.
            ADD Females TO Males GIVING TotalStudents.
            DISPLAY"Males (" Males, ") + Females(" Females,") = "
               TotalStudents.
           DISPLAY " "
           Display " "


           DISPLAY "SUBTRACTION"

           move 250 to Tax.
           move 1000 to GrossPlay.
           SUBTRACT Tax FROM GrossPlay GIVING Total.
           DISPLAY"Subtract Tax("Tax, ") From Grossplay("GrossPlay,
               ") Giving Total("Total ")".

           MOVE 750 to Tax.
           move 175 to PRSI.
           move 125 to Pension.
           move 2750 to Pay.

           SUBTRACT Tax, PRSI, Pension FROM Pay GIVING Total.
           DISPLAY "Subtract Tax("Tax, "), PRSI("PRSI,"), Pension("
               Pension,") from Pay("Pay, ") = Total("Total")".
           DISPLAY" "
           DISPLAY" "


           DISPLAY "MULTIPLICATION"
           MULTIPLY VatRate BY Sales GIVING Vat.
           DISPLAY "MULTIPLY VatRate("VatRate, ") by Sales"Sales,") "
               " = Vat("Vat,")"


           DISPLAY "DIVISION"
            STOP RUN.
       END PROGRAM TC_Commands2.
