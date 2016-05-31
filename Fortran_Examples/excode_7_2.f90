PROGRAM ex_7_2
! Second degree equation solver
! y = A*x**2 + B*x + C
  IMPLICIT NONE
  ! Variables
  REAL :: A = 0.0
  REAL :: B = 0.0
  REAL :: C = 0.0
  REAL, DIMENSION(2) :: SOL
  REAL :: TEMP
  INTEGER :: I
  !
  ! Input: A, B, C
  READ*, A 
  READ*, B
  READ*, C 
  !
  ! Calculations
  TEMP = SQRT(B*B-4.0*A*C)
  !
  SOL(1) = (-B+TEMP)/(2.0*A)
  SOL(2) = (-B-TEMP)/(2.0*A)
  !
  !
  ! 
  DO I=1, 2
     PRINT 200, I, SOL(I)
200  FORMAT(1X,'SOLUTION ', I2,' = ',F18.6)
  END DO
!
END PROGRAM EX_7_2
