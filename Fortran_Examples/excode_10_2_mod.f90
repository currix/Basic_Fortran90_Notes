MODULE Stack
  ! 
  ! MODULE THAT DEFINES A BASIC STACK
  !
  IMPLICIT NONE
  !
  SAVE
  !
  INTEGER, PARAMETER :: STACK_SIZE = 500
  INTEGER, DIMENSION(STACK_SIZE) :: STORE = 0
  INTEGER :: STACK_POS = 0
  !
  PRIVATE :: STORE, STACK_POS, STACK_SIZE
  PUBLIC :: POP, PUSH
  !
  CONTAINS
    !
    SUBROUTINE PUSH(I)
      !
      INTEGER, INTENT(IN) :: I
      !
      IF (STACK_POS < STACK_SIZE) THEN
         !
         STACK_POS = STACK_POS + 1; STORE(STACK_POS) = I
         !
      ELSE
         !
         STOP "FULL STACK ERROR"
         !
      ENDIF
      !
    END SUBROUTINE PUSH
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    SUBROUTINE POP(I)
      !
      INTEGER, INTENT(OUT) :: I
      !
      IF (STACK_POS > 0) THEN
         !
         I = STORE(STACK_POS); STACK_POS = STACK_POS - 1
         !
      ELSE
         !
         STOP "EMPTY STACK ERROR"
         !
      ENDIF
      !
    END SUBROUTINE POP
    !
END MODULE Stack
