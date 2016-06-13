PROGRAM ex_9_1
  !
  IMPLICIT NONE
  ! Simple program with two subroutines.
  ! subroutine (1):: Interact :: Data input.
  ! subroutine (2):: Solve :: Solve second order Eq.
  !
  ! Variables
  REAL :: P, Q, R, Root1, Root2
  INTEGER :: IFail=0
  LOGICAL :: OK=.TRUE.
  !
  CALL Interact(P,Q,R,OK) ! Subrutina (1)
  !
  IF (OK) THEN
     !
     CALL Solve(P,Q,R,Root1,Root2,IFail) ! Subrutina (2)
     !
     IF (IFail == 1) THEN
        PRINT *,' Complex roots'
        PRINT *,' calculation aborted'
     ELSE
        PRINT *,' Roots are ',Root1,' ',Root2
     ENDIF
     !
  ELSE
     !
     PRINT*,' Error in data input program ends'
     !
  ENDIF
  !
END PROGRAM ex_9_1
!
!
SUBROUTINE Interact(A,B,C,OK)
  IMPLICIT NONE
  REAL , INTENT(OUT) :: A
  REAL , INTENT(OUT) :: B
  REAL , INTENT(OUT) :: C
  LOGICAL , INTENT(OUT) :: OK
  INTEGER :: IO_Status=0
  PRINT*,' Type in the coefficients A, B AND C'
  READ(UNIT=*,FMT=*,IOSTAT=IO_Status) A,B,C
  IF (IO_Status == 0) THEN
     OK=.TRUE.
  ELSE
     OK=.FALSE.
  ENDIF
END SUBROUTINE Interact
!
!
SUBROUTINE Solve(E,F,G,Root1,Root2,IFail)
  IMPLICIT NONE
  REAL , INTENT(IN) :: E
  REAL , INTENT(IN) :: F
  REAL , INTENT(IN) :: G
  REAL , INTENT(OUT) :: Root1
  REAL , INTENT(OUT) :: Root2
  INTEGER , INTENT(INOUT) :: IFail
  ! Local variables
  REAL :: Term
  REAL :: A2
  Term = F*F - 4.*E*G
  A2 = E*2.0
  ! if term < 0, roots are complex
  IF(Term < 0.0)THEN
     IFail=1
  ELSE
     Term = SQRT(Term)
     Root1 = (-F+Term)/A2
     Root2 = (-F-Term)/A2
  ENDIF
END SUBROUTINE Solve
