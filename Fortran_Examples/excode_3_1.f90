PROGRAM ex_3_1
!
! VARIABLES DEFINITION 
  IMPLICIT NONE
  REAL :: Total=0.0, Average=0.0
  INTEGER, PARAMETER :: Week=7
  REAL , DIMENSION(1:Week) :: Lab_Hours
  INTEGER :: Day
!
  PRINT *,' Labor Time (hours per day during a week):'
  DO Day= 1, Week
     READ *, Lab_Hours(Day)
  ENDDO
!
  DO Day = 1, Week
     Total = Total + Lab_Hours(Day)
  ENDDO
  Average = Total / Week
!
  PRINT *,' Average Weekly Workload: '
  PRINT *, Average, ' hours'
END PROGRAM ex_3_1
