PROGRAM ex_6_4
  ! Program to produce numeric overflow and underflow
   IMPLICIT NONE
  INTEGER :: I
  REAL     :: small = 1.0
  REAL     :: big   = 1.0
!
  DO i=1,45
     PRINT 100, I, small, big
100  FORMAT(' ',I3,' ',E10.4,' ',E10.4)
     !
     small = small/10.0
     big = big*10.0
     !
  END DO
END PROGRAM ex_6_4
