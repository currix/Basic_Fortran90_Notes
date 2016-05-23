PROGRAM ex_4_2
  !
  ! Program to characterize an array making use of inquiry functions
  !
  IMPLICIT NONE
  !
  REAL, DIMENSION(:,:), ALLOCATABLE :: X_grid
  INTEGER :: Ierr
  !
  ! 
  ALLOCATE(X_grid(-20:20,0:50), STAT = Ierr)
  IF (Ierr /= 0) THEN
     STOP 'X_grid allocation failed'
  ENDIF
  !
  WRITE(*, 100) SHAPE(X_grid)
100 FORMAT(1X, "Shape :        ", 7I7)
  !
  WRITE(*, 110) SIZE(X_grid)
110 FORMAT(1X, "Size :         ", I7)
  !
  WRITE(*, 120) LBOUND(X_grid)
120 FORMAT(1X, "Lower bounds : ", 7I6)
  !
  WRITE(*, 130) UBOUND(X_grid)
130 FORMAT(1X, "Upper bounds : ", 7I6)
  !
  DEALLOCATE(X_grid, STAT = Ierr)
  IF (Ierr /= 0) THEN
     STOP 'X_grid deallocation failed'
  ENDIF
  !
END PROGRAM EX_4_2
