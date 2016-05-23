PROGRAM ex_6_1
  !
  IMPLICIT NONE
  !
  ! Variables
  INTEGER :: i, big=10
  !
  DO i=1,20
     PRINT 100, i, big
     big=big*10
  END DO
  !
  ! Format Statements
100 FORMAT(1X, '10 to the ',I3,2X,'=',2X,I12)
  !
END PROGRAM ex_6_1
