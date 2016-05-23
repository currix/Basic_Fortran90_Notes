PROGRAM ex_1_2
  !
  ! This program reads three numbers and compute their sum and mean value 
  !
  IMPLICIT NONE
  REAL :: N1, N2, N3, Average = 0.0, Total = 0.0
  INTEGER :: N = 3
  PRINT *,' Input three numbers (return, coma, or space separated).'
  PRINT *,' '
  READ *,N1,N2,N3
  Total =  N1 + N2 + N3
  Average = Total/N
  PRINT *,'Sum: ',Total
  PRINT *,'Mean value: ',Average
END PROGRAM ex_1_2
