PROGRAM ex_8_5
  !
  ! Simple program to compute the prime divisors of a given integer number.
  !
  IMPLICIT NONE
  INTEGER :: NUMVAL
  INTEGER :: NUM
  !
  READ*, NUMVAL ! input
  !
  DO
     NUM = QUOT(NUMVAL)
     IF (NUM == NUMVAL) THEN
        PRINT*, NUM
        EXIT
     ELSE
        PRINT*, NUMVAL/NUM, NUM
        NUMVAL = NUM
     ENDIF
  ENDDO
  !
CONTAINS
  ! 
  INTEGER FUNCTION QUOT(NUM1)
    !
    INTEGER, INTENT(IN) :: NUM1
    INTEGER :: I
    !
    QUOT = NUM1
    !
    DO I = 2, NUM1-1
       IF (MOD(NUM1,I) == 0) THEN
          QUOT = NUM1/I
          EXIT
       ENDIF
    ENDDO
    !
  END FUNCTION QUOT
  !
END PROGRAM ex_8_5
