PROGRAM RPN_CALC
  !
  ! SIMPLE INTEGER RPN CALCULATOR (ONLY SUM AND SUBSTRACT)
  !
  USE Stack                 !!        (1)
  !
  IMPLICIT NONE
  !
  INTEGER :: KEYB_DATA
  CHARACTER(LEN=10) :: INPDAT
  !
  INTEGER :: I, J, K, DATL, NUM, RES
  !
  !
  inloop: DO      !! MAIN LOOP        (2)
     !
     READ 100, INPDAT
     !
     SELECT CASE (INPDAT)   !!        (3)
        !
     CASE ('Q','q','quit')  !! EXIT          (4)
        PRINT*, "End of program"
        EXIT inloop
     CASE ('plus','Plus','PLUS','+')   !! SUM              (5)        
        CALL POP(J)
        CALL POP(K)
        RES = K + J
        PRINT 120, K, J, RES
        CALL PUSH(RES)
     CASE ('minus','Minus','MINUS','-')   !! SUBSTRACT        (6)
        CALL POP(J)
        CALL POP(K)
        RES = K - J
        PRINT 130, K, J, RES
        CALL PUSH(RES)
     CASE DEFAULT !! NUMBER TO STACK  (7)
        !
        DATL = LEN_TRIM(INPDAT)
        !
        RES = 0
        DO I = DATL, 1, -1
           NUM = IACHAR(INPDAT(I:I)) - 48
           RES = RES + NUM*10**(DATL-I)
        ENDDO
        !
        PRINT 110, RES
        CALL PUSH(RES)
     END SELECT
     !
  ENDDO inloop
  !
100 FORMAT(A10)
110 FORMAT(1X, I10)
120 FORMAT(1X, I10,' + ', I10,' = ', I20)
130 FORMAT(1X, I10,' - ', I10,' = ', I20)
END PROGRAM RPN_CALC
