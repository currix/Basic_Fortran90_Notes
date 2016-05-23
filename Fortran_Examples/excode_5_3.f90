PROGRAM ex_5_3
  !
  IMPLICIT NONE
  !
  REAL :: PIover2 = ASIN(1.0)
  REAL :: ANGLE1 = 0.0, ANGLE2 = 0.0
  INTEGER :: I
  !
  DO I = 0, 16, 2
     ANGLE1 = I*PIO2/4.0
     !
     WRITE(*,*)
     WRITE(*,*) 'Cos(',I/2,'PI/4) = ',COS(ANGLE1),'; Cos(',I/2,'PI/4) = ',COS(ANGLE2)
     WRITE(*,*) 'Sin(',I/2,'PI/4) = ',SIN(ANGLE1),'; Sin(',I/2,'PI/4) = ',SIN(ANGLE2)
     WRITE(*,*) 
     !
     ANGLE2 = ANGLE2 + PIO2/2.0
     !
  ENDDO
END PROGRAM ex_5_3
