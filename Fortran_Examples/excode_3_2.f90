PROGRAM ex_3_2
  !
  ! VARIABLE DEFINITION
  IMPLICIT NONE
  REAL :: Total=0.0, Average=0.0
  REAL , DIMENSION(:), ALLOCATABLE :: Lab_Hours
  INTEGER :: Day, Number_Days
  !
  PRINT *,' Number of workdays:'
  READ *, Number_Days
  !
  ALLOCATE(Lab_Hours(1:Number_Days))
  !
  PRINT *,' Daily hours of work in ', Number_Days, ' days.'
  DO Day = 1, Number_Days
     READ *, Lab_Hours(Day)
  ENDDO
  !
  DO Day=1, Number_Days
     Total = Total + Lab_Hours(Day)
  ENDDO
  Average = Total / Number_Days
!
  PRINT *,' Average daily workhours in ',Number_Days, ' days : '
  PRINT *, Average, ' hours'
!
END PROGRAM ex_3_2
