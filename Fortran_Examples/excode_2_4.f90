PROGRAM ex_2_4
  ! Program to compute the time that takes to light to travel 
  ! a given distance in AU.
  ! 1 AU = 149597870700 m
  !
  ! Definition of variables
  IMPLICIT NONE
  ! a_u : astronomic unit in km
  REAL , PARAMETER :: a_u=1.49597871*10.0**8
  ! y_l : year light --> distance travelled by light during a year in km
  REAL , PARAMETER :: y_l=9.46*10.0**12
  ! m_l : minute light --> distance travelled by light during a minute
  REAL :: m_l
  ! dist : distance travelled in AUs (INPUT)
  REAL :: dist
  ! t_min : time in minutes needed to travel the distance dist
  REAL :: t_min
  !
  ! min : integer part of t_min
  ! sec : seconds from the decimal digits of t_min
  INTEGER :: min, sec
  !
  m_l = y_l/(365.25 * 24.0 * 60.0) ! m_l Calculation
  !
  PRINT *
  PRINT *,'Distance in AUs'
  READ *, dist
  PRINT *
  !
  t_min = (dist*a_u)/m_l
  min = t_min; sec = (t_min - min) * 60
  !
  PRINT *,' It takes light ' , min,' minutes and ', sec,' seconds'
  Print *,' to travel a distance of ',dist,' AU.'
END PROGRAM ex_2_4 
