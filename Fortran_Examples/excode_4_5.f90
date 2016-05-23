PROGRAM ex_4_5
  !
  ! VARIABLE DEFINITION 
  IMPLICIT NONE
  REAL, DIMENSION(1:7) :: VA = (/1.2,2.3,3.4,4.5,5.6,6.7,7.8/)
  REAL, DIMENSION(1:7) :: VA1 = 0.0, VA2 = 0.0
  INTEGER I
  !
  VA1 = VA
  VA2 = VA
  !
  DO I = 2, 7
     VA1(I) = VA1(I) + VA1(I-1)
  ENDDO
  !
  VA2(2:7) = VA2(2:7) + VA2(1:6)
  !
  ! Previous two operations with VA1 and VA2 seem that
  ! should provide the same result. Which is not the case.
  PRINT*, VA1
  PRINT*, VA2
  !
  ! To obtain the same effect without an explicit DO loop we can do 
  ! the following
  VA2 = VA
  VA2(2:7) = (/ (SUM(VA2(1:I)), I = 2,7) /)
  !
  PRINT*, VA1
  PRINT*, VA2
END PROGRAM ex_4_5
