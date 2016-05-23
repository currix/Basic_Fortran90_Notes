PROGRAM ex_6_7
  !
  IMPLICIT NONE
  !
  REAL , DIMENSION(:), ALLOCATABLE :: X_vec, Y_vec ! Data Vectors
  INTEGER :: Index, Ierr, Numpoints = 0
  REAL :: Max_x, Min_y
  CHARACTER(LEN=64) :: Filename
  !
  ! READ FILENAME
  READ(5,*) Filename
  ! OPEN FILE (READONLY)
  OPEN( UNIT=10, FILE=Filename, STATUS='OLD', ACTION='READ' )
  !
  DO
     READ(UNIT=10, FMT=100, ERR=10) Numpoints
     IF (Numpoints /= 0) EXIT
10   READ (UNIT=10, FMT=*) ! JUMP ONE LINE
     CYCLE
  ENDDO
  !
  PRINT*, 'NUMPOINTS = ', Numpoints
  !
  ! ALLOCATE X, Y VECTORS
  ALLOCATE(X_vec(1:NUMPOINTS), STAT = IERR)
  IF (Ierr /= 0) STOP 'X_vec MEM ALLOCATION FAILED'
  ALLOCATE(Y_vec(1:NUMPOINTS), STAT = IERR)
  IF (Ierr /= 0) STOP 'Y_vec MEM ALLOCATION FAILED'
  !
  DO I = 1, Numpoints
     !
     READ(UNIT=10, FMT=110) X_vec(I), Y_vec(I)
     !
  ENDDO
  !
  Max_x = MAXVAL(X_vec)
  Min_y = MINVAL(Y_vec)
  !
  PRINT*, "MAXIMUM X VALUE = ", Max_x
  PRINT*, "MINIMUM Y VALUE = ", Min_y
  ! DEALLOCATE AND CLOSE FILE
  DEALLOCATE(X_vec, STAT = IERR)
  IF (Ierr /= 0) STOP 'X_vec MEM DEALLOCATION FAILED'
  DEALLOCATE(Y_vec, STAT = IERR)
  IF (Ierr /= 0) STOP 'Y_vec MEM DEALLOCATION FAILED'
  !
  CLOSE(10)
  ! FORMAT STATEMENTS
100 FORMAT(19X,I3)
110 FORMAT(F6.3,1X,F6.3)
  !
END PROGRAM ex_6_7
!# Remark 1
!# Remark 2
!Useless line 1
!Useless line 2
!Number of points = 4
!+1.300;-2.443
!+1.265;-1.453
!+1.345;-8.437
!+1.566;+4.455
!+1.566;+4.455
!+3.566;+7.755
!+1.566;+4.457
!+2.366;+2.454
!+1.566;+4.405
!+0.566;+9.450
!+1.545;+4.465
!+9.566;+6.455
!+1.466;+8.405
!+0.566;+7.055


