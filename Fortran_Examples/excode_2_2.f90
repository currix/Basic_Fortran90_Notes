PROGRAM ex_2_2
  IMPLICIT NONE
  REAL :: A,B,C
  INTEGER :: I
  A = 1.5
  B = 2.0
  C = A / B
  I = A / B
  PRINT *
  PRINT *, 'Case (1), Float variable'
  PRINT *,A,'/',B,' = ',C
  PRINT *, 'Case (2), Integer variable'
  PRINT *,A,'/',B,' = ',I
END PROGRAM ex_2_2
