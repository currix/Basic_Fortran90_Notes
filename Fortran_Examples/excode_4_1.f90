PROGRAM ex_4_1
  !
  ! VARIABLE DEFINITION
  IMPLICIT NONE
  REAL :: Total=0.0, Average=0.0
  REAL , DIMENSION(:), ALLOCATABLE :: t_worked
  ! Correction Factor
  REAL :: correction =1.05 
  INTEGER :: day, num_days
  !
  PRINT *,' Number of workdays: '
  READ *, num_days
  ! Dynamic storage definition
  ALLOCATE(t_worked(1:num_days))
  !
  PRINT *,' Worked hours per day in ', num_days, ' days.'
  ! I/O
  READ *, t_worked
  !
  t_worked(num_days-1:num_days) = correction*t_worked(num_days-1:num_days)
  !
  DO day=1,num_days
     Total = Total + t_worked(day)
  ENDDO
  Average = Total / num_days
  !
  PRINT *,' Average daily hours of work in ',num_days, ' days : '
  PRINT *, Average
  !
END PROGRAM ex_4_1
